# ITechAleart Architecture Overview

This document provides a compact architecture diagram (ASCII) and explanations for the main components of the ITechAleart LMS. It is intended as a quick reference for contributors and architects.

## ASCII Architecture Diagram (high-level)

```
Browser / Mobile App
  (Students, Instructors, Admin)
        |
        | HTTPS
        v
  +--------------------+            +------------------+
  |      CDN /         | <--Optional| Object Storage   |
  |  Static Assets     |            | (S3, Blob, etc.) |
  +--------------------+            +------------------+
        |                                 ^
        v                                 |
  +----------------------------------------------------+
  |  Web Server (Apache / Nginx - XAMPP in dev)        |
  |  - Serves `public/` assets                         |
  |  - Passes requests to PHP-FPM / artisan            |
  +----------------------------------------------------+
                        |
                        v
  +---------------------------------------------------+
  |              Laravel Application                  |
  |  - Routes, Controllers, Middleware                |
  |  - Blade Views / API endpoints                    |
  |  - Service Integrations (Payments, AI, etc.)      |
  |  - Scheduler (cron)                               |
  +---------------------------------------------------+
     |           |             |             |
     v           v             v             v
  +--------+  +---------+   +-----------+  +-----------+
  | MySQL  |  | Redis   |   | Queue     |  | Storage   |
  | (Data) |  | (Cache) |   | workers   |  | (local /  |
  +--------+  +---------+   +-----------+  | remote)   |
                                           +-----------+
```

External Integrations

-   Payments (PayPal / Stripe / Paystack / Razorpay)
-   AI Providers (OpenAI / Azure OpenAI / other) for content generation
-   Email (SMTP, Mailgun, SES)
-   Analytics (Matomo / Google Analytics)

Background / Asynchronous

-   `php artisan queue:work` or supervisor-managed workers process background jobs (email, thumbnails, AI calls).
-   `php artisan schedule:run` expected to be executed every minute via crontab to run scheduled tasks.

Optional Production Components

-   Reverse proxy & TLS: Load balancer (Cloud LB, NGINX) and SSL termination.
-   Container orchestration: Docker + Kubernetes or Docker Compose for scalable deployment.
-   CDN and object storage for static assets and media uploads.
-   Monitoring & logging: Prometheus, Grafana, ELK/EFK stack, or cloud provider monitoring.

## Component responsibilities

-   Frontend (Blade + JS): UI rendering, initial page load, and in-browser interactions (carousels, modals).
-   Backend (Laravel): Business logic, authentication, authorization, data access, integrations, and APIs.
-   Database (MySQL): Persistent data — users, courses, enrollments, orders, settings.
-   Cache (Redis): Session store, cache, and fast lookups (optional but recommended for production).
-   Queue system: Offload long-running tasks, email sending, thumbnail generation, AI processing.
-   Storage: Course media and user uploads; prefer remote object store for production.
-   External APIs: Payment providers, AI providers, analytics and optional add-ons.

## Important environment variables (examples)

-   APP_URL, APP_ENV, APP_KEY
-   DB_CONNECTION, DB_HOST, DB_PORT, DB_DATABASE, DB_USERNAME, DB_PASSWORD
-   CACHE_DRIVER=redis (optional)
-   SESSION_DRIVER=redis (optional)
-   QUEUE_CONNECTION=redis
-   FILESYSTEM_DRIVER=s3 or local
-   MAIL\_\* (SMTP or service provider credentials)
-   OPENAI_API_KEY or other AI provider keys
-   PAYMENT*PROVIDER*\* keys (Stripe / PayPal / Paystack)

## Deployment checklist (production-ready)

1. Use remote object storage for media (S3, Azure Blob). Set `FILESYSTEM_DRIVER` to `s3` and provide credentials.
2. Use Redis for cache and queues; run multiple `queue:work` processes behind a process manager (Supervisor/systemd).
3. Use a process manager (Supervisor, systemd) to keep `php artisan queue:work` and `php-fpm` running.
4. Configure SSL and a reverse proxy or load balancer.
5. Set proper filesystem permissions and create `storage` symlink (`php artisan storage:link`).
6. Backup MySQL and offload logs/metrics to a logging system.
7. Use CI/CD to run tests and deploy assets (npm build, composer install) to the server.

## Quick diagram for local dev (XAMPP)

Browser -> Apache (XAMPP) -> Laravel (public/index.php) -> MySQL (local) ; optional: `php artisan serve` used for quick dev server.

## Notes & next steps

-   I can also generate a PNG/SVG diagram (PlantUML or Mermaid) and add it to `docs/` if you'd like visual diagrams embedded in the README. Tell me which format you prefer (Mermaid / PlantUML / PNG).
-   If you want, I can add a `docker-compose.yml` skeleton to simplify local dev parity with production (Redis, MySQL, app service).

---

Generated on: 2025-11-08
