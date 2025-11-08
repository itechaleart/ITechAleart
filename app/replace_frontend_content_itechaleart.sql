-- SQL script to update frontend text content for ITechAleart (AI-powered LMS)
-- Run this on your development database after taking a backup.

START TRANSACTION;

-- Update core settings (site identity and homepage copy)
UPDATE `settings` SET `option_value` = 'ITechAleart' WHERE `option_key` = 'app_name';
UPDATE `settings` SET `option_value` = 'ITechAleart — AI-powered Learning Management System' WHERE `option_key` = 'og_title';
UPDATE `settings` SET `option_value` = 'ITechAleart helps instructors create intelligent, personalized courses and helps learners discover the best AI-tailored learning paths.' WHERE `option_key` = 'og_description';
UPDATE `settings` SET `option_value` = 'Empower your learning with AI-driven recommendations, course generation, and personalized learning plans.' WHERE `option_key` = 'footer_quote';

-- Hero / Signup area
UPDATE `settings` SET `option_value` = 'Discover AI-powered courses & personalized learning paths' WHERE `option_key` = 'sign_up_left_text';

-- Home special features (three highlights)
UPDATE `settings` SET `option_value` = 'AI Course Designer' WHERE `option_key` = 'home_special_feature_first_title';
UPDATE `settings` SET `option_value` = 'Generate course outlines, quizzes and summaries with our AI assistant.' WHERE `option_key` = 'home_special_feature_first_subtitle';

UPDATE `settings` SET `option_value` = 'Personalized Learning' WHERE `option_key` = 'home_special_feature_second_title';
UPDATE `settings` SET `option_value` = 'Adaptive learning paths that evolve as you progress.' WHERE `option_key` = 'home_special_feature_second_subtitle';

UPDATE `settings` SET `option_value` = 'Verified Certificates' WHERE `option_key` = 'home_special_feature_third_title';
UPDATE `settings` SET `option_value` = 'Earn industry-recognized certificates powered by validated assessments.' WHERE `option_key` = 'home_special_feature_third_subtitle';

-- Course / Bundle headings
UPDATE `settings` SET `option_value` = 'Discover AI-Enhanced Courses' WHERE `option_key` = 'course_title';
UPDATE `settings` SET `option_value` = 'Explore curated courses and AI-generated learning paths to accelerate your career.' WHERE `option_key` = 'course_subtitle';

UPDATE `settings` SET `option_value` = 'Premium Bundles' WHERE `option_key` = 'bundle_course_title';
UPDATE `settings` SET `option_value` = 'Comprehensive learning bundles crafted and optimized with AI assistance.' WHERE `option_key` = 'bundle_course_subtitle';

-- Categories & instructors
UPDATE `settings` SET `option_value` = 'Top Categories for Tech & AI' WHERE `option_key` = 'top_category_title';
UPDATE `settings` SET `option_value` = 'Explore categories curated for AI, Data Science, and Software Engineering.' WHERE `option_key` = 'top_category_subtitle';

UPDATE `settings` SET `option_value` = 'Top-Rated Instructors & AI Mentors' WHERE `option_key` = 'top_instructor_title';
UPDATE `settings` SET `option_value` = 'Learn from industry experts and AI-assisted curriculum designers.' WHERE `option_key` = 'top_instructor_subtitle';

-- Become instructor / video area
UPDATE `settings` SET `option_value` = 'Create Courses Faster with AI Assistance' WHERE `option_key` = 'become_instructor_video_title';
UPDATE `settings` SET `option_value` = 'Use our AI tools to outline lessons, produce quizzes and publish professional courses in minutes.' WHERE `option_key` = 'become_instructor_video_subtitle';

-- Testimonials (customer say)
UPDATE `settings` SET `option_value` = 'What learners say about ITechAleart' WHERE `option_key` = 'customer_say_title';
UPDATE `settings` SET `option_value` = 'ITechAleart transformed my learning—personalized paths and practical projects.' WHERE `option_key` = 'customer_say_first_comment_description';
UPDATE `settings` SET `option_value` = 'AI recommendations helped me find the right course quickly.' WHERE `option_key` = 'customer_say_second_comment_description';
UPDATE `settings` SET `option_value` = 'Great hands-on projects and helpful instructors assisted by AI tools.' WHERE `option_key` = 'customer_say_third_comment_description';

-- Achievements / Stats
UPDATE `settings` SET `option_value` = 'Learners Trained' WHERE `option_key` = 'achievement_first_title';
UPDATE `settings` SET `option_value` = '10,000+ learners' WHERE `option_key` = 'achievement_first_subtitle';

UPDATE `settings` SET `option_value` = 'AI-Driven Courses' WHERE `option_key` = 'achievement_second_title';
UPDATE `settings` SET `option_value` = '500+ courses' WHERE `option_key` = 'achievement_second_subtitle';

UPDATE `settings` SET `option_value` = 'Expert Instructors' WHERE `option_key` = 'achievement_third_title';
UPDATE `settings` SET `option_value` = 'Industry professionals & educators' WHERE `option_key` = 'achievement_third_subtitle';

-- FAQ section
UPDATE `settings` SET `option_value` = 'Frequently Asked Questions' WHERE `option_key` = 'faq_title';
UPDATE `settings` SET `option_value` = 'Answers to common questions about AI features, certification, and course creation.' WHERE `option_key` = 'faq_subtitle';

-- Contact page
UPDATE `settings` SET `option_value` = 'Get in Touch with ITechAleart' WHERE `option_key` = 'get_in_touch_title';
UPDATE `settings` SET `option_value` = 'Send us a message and our team (or AI assistant) will respond with guidance.' WHERE `option_key` = 'send_us_msg_title';
UPDATE `settings` SET `option_value` = '123 ITech Avenue, Innovation City' WHERE `option_key` = 'contact_us_location';
UPDATE `settings` SET `option_value` = 'support@itechaleart.example' WHERE `option_key` = 'contact_us_email_one';
UPDATE `settings` SET `option_value` = 'hello@itechaleart.example' WHERE `option_key` = 'contact_us_email_two';
UPDATE `settings` SET `option_value` = '+1 (555) 123-4567' WHERE `option_key` = 'contact_us_phone_one';
UPDATE `settings` SET `option_value` = '+1 (555) 987-6543' WHERE `option_key` = 'contact_us_phone_two';
UPDATE `settings` SET `option_value` = 'We are here to help — contact us for partnerships, instructor onboarding, or support.' WHERE `option_key` = 'contact_us_description';

-- About page: update the `about_us_generals` table (assumes id = 1)
UPDATE `about_us_generals` SET
  `our_history_title` = 'Our Story — Democratizing AI-Powered Learning',
  `our_history_subtitle` = 'ITechAleart was founded to make high-quality, AI-enhanced education accessible to learners worldwide. We combine expert instructors with smart AI tooling to help people build real skills faster.',
  `upgrade_skill_title` = 'Upgrade Your Skills with AI',
  `upgrade_skill_subtitle` = 'From curriculum generation to personalized practice, our platform supports learners and instructors with AI-driven tools.',
  `team_member_title` = 'Meet the ITechAleart Team',
  `team_member_subtitle` = 'A diverse team of educators, engineers, and AI researchers committed to learner success'
WHERE `id` = 1;

-- Metas (SEO) for home, about and contact
UPDATE `metas` SET `meta_title` = 'ITechAleart — AI-powered LMS' , `meta_description` = 'ITechAleart offers AI-powered course creation, personalized learning paths, and verified certificates to accelerate careers.' WHERE `slug` = 'home';
UPDATE `metas` SET `meta_title` = 'About ITechAleart' , `meta_description` = 'Learn about ITechAleart — our mission, team, and how we use AI to improve learning outcomes.' WHERE `slug` = 'about_us';
UPDATE `metas` SET `meta_title` = 'Contact ITechAleart' , `meta_description` = 'Contact our support and partnerships team at ITechAleart for help, instructor onboarding, and collaborations.' WHERE `slug` = 'contact_us';

COMMIT;

-- End of script
