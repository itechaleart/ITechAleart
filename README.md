# ITechAleart — AI-powered Learning Management System (LMS)

ITechAleart is a modern, production-ready Learning Management System (LMS) built with Laravel. It combines a familiar course marketplace and instructor workflows with AI-powered tools to help create, market, and personalize online learning experiences.

This repository contains the full application code for the ITechAleart platform, including the frontend UI, instructor and student flows, course & bundle management, and integrations for payments and analytics.

## Key Highlights

-   Modern, responsive frontend built with Laravel Blade and Bootstrap.
-   Course marketplace with support for single courses, bundles, and product add-ons.
-   Instructor onboarding and dashboard for course creation and management.
-   Student dashboard, cart, wishlist and learning progress tracking.
-   AI-powered features: content generation, course suggestions, and assistant tools to speed up course creation and personalization.
-   Scoped, modular CSS for home page theming (under `public/frontend/assets/css/custom/home_scoped.css`).
-   Integration-ready: payments (PayPal, Stripe, Paystack, Razorpay, etc.), analytics hooks, and optional add-ons.

## Repo Layout (top-level)

-   `app/` — Laravel application code (Controllers, Models, Providers, etc.)
-   `resources/views/` — Blade views and front-end templates
-   `public/frontend/` — Compiled frontend assets, images, CSS and JS
-   `routes/` — All route definitions for web and api
-   `database/` — Migrations and seeders
-   `tests/` — PHPUnit tests

## Quick local setup (Windows / XAMPP)

1. Prerequisites

    - PHP 8.x (matching project's composer.json)
    - Composer
    - Node.js (for frontend asset tooling)
    - MySQL (or MariaDB) — XAMPP includes this

2. Create project `.env`

    Copy the example and update DB/APP keys:

    ```powershell
    copy .env.example .env
    php artisan key:generate
    ```

    Edit `.env` and set the database credentials used by XAMPP (commonly `DB_USERNAME=root` and an empty `DB_PASSWORD`), and other settings like `APP_URL`.

3. Install dependencies

    ```powershell
    composer install --no-interaction --prefer-dist
    npm install
    ```

4. Database

    Create a database in MySQL (phpMyAdmin or CLI) and update `.env` accordingly.

    Then run migrations and seeders:

    ```powershell
    php artisan migrate --seed
    ```

5. Storage & permissions

    ```powershell
    php artisan storage:link
    ```

6. Build frontend assets (development)

    ```powershell
    npm run dev
    ```

7. Start the application (development)

    If you use XAMPP, put this project under `htdocs` and enable Apache/MySQL. Alternatively run the local server:

    ```powershell
    php artisan serve
    ```

8. Visit

    Open `http://localhost:8000` (or your XAMPP host) in a browser.

## Important files to know

-   `resources/views/frontend/home/home.blade.php` — Home page layout and sections (special features, course sliders, testimonials, etc.)
-   `public/frontend/assets/css/custom/home_scoped.css` — Scoped home-only styles (logo sizing, glass effects, course-card overrides)
-   `resources/views/frontend/partials/course.blade.php` — Course card partial used in sliders and listings
-   `resources/views/frontend/layouts/navbar.blade.php` — Global navbar include (logo swap JS placed here to make it work site-wide)
-   `storage/logs/laravel.log` — Check here for runtime errors (useful when diagnosing HTTP 500s)

## AI features

ITechAleart ships with optional AI-powered features and add-ons (when enabled):

-   Content generation helpers to draft course descriptions, lesson outlines, and promo copy.
-   Course suggestion engine that uses learner signals and metadata to recommend courses.
-   Assistant tools in the instructor dashboard to speed up content creation.

These features are gated by configuration flags and rely on environment variables for API keys (e.g., OpenAI or other providers). See the app configuration for `isEnableOpenAI()` and add-on toggles.

## Troubleshooting tips

-   500 Errors: check `storage/logs/laravel.log` for the root cause. Common causes are missing `.env` values (DB credentials) or Blade syntax errors.
-   Assets not reflecting changes: clear caches and rebuild assets:

```powershell
php artisan view:clear; php artisan config:clear; php artisan cache:clear; php artisan route:clear; php artisan optimize:clear
npm run dev
```

-   If navbar logo swap isn't working on a page, verify `resources/views/frontend/layouts/navbar.blade.php` contains both `.logo-default` and `.logo-scrolled` images and that the swap script runs (it should be included in the navbar include by default).

## Tests

Run PHPUnit tests:

```powershell
vendor\\bin\\phpunit
```

## Contributing

We welcome contributions. Please follow these steps:

1. Fork the repository and create a topic branch.
2. Keep changes small and focused, with descriptive commit messages.
3. Open a Pull Request describing the change and include any necessary migration or config notes.

If you're adding or modifying styles, prefer scoped styles (for example `home_scoped.css`) so changes don't unexpectedly affect other pages.

---

## Architecture & Diagrams

See `docs/ARCHITECTURE.md` for a compact ASCII architecture diagram, component responsibilities, deployment checklist, and integration notes. If you'd like a visual diagram (Mermaid, PlantUML, or PNG), tell me which format you prefer and I can add one.
