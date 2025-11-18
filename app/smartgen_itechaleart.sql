-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2025 at 10:23 AM
-- Server version: 11.4.9-MariaDB
-- PHP Version: 8.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartgen_itechaleart`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_generals`
--

CREATE TABLE `about_us_generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_area_title` varchar(255) DEFAULT NULL,
  `gallery_area_subtitle` text DEFAULT NULL,
  `gallery_third_image` varchar(255) DEFAULT NULL,
  `gallery_second_image` varchar(255) DEFAULT NULL,
  `gallery_first_image` varchar(255) DEFAULT NULL,
  `our_history_title` varchar(255) DEFAULT NULL,
  `our_history_subtitle` text DEFAULT NULL,
  `upgrade_skill_logo` varchar(255) DEFAULT NULL,
  `upgrade_skill_title` varchar(255) DEFAULT NULL,
  `upgrade_skill_subtitle` text DEFAULT NULL,
  `upgrade_skill_button_name` varchar(255) DEFAULT NULL,
  `team_member_logo` varchar(255) DEFAULT NULL,
  `team_member_title` varchar(255) DEFAULT NULL,
  `team_member_subtitle` text DEFAULT NULL,
  `instructor_support_title` varchar(255) DEFAULT NULL,
  `instructor_support_subtitle` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_generals`
--

INSERT INTO `about_us_generals` (`id`, `gallery_area_title`, `gallery_area_subtitle`, `gallery_third_image`, `gallery_second_image`, `gallery_first_image`, `our_history_title`, `our_history_subtitle`, `upgrade_skill_logo`, `upgrade_skill_title`, `upgrade_skill_subtitle`, `upgrade_skill_button_name`, `team_member_logo`, `team_member_title`, `team_member_subtitle`, `instructor_support_title`, `instructor_support_subtitle`, `created_at`, `updated_at`) VALUES
(1, 'Mere Tranquil Existence, That I Neglect My Talents Should', 'Possession Of My Entire Soul, Like These Sweet Mornings Of Spring Which I Enjoy With My Whole Heart. I Am Alone, And Charm Of Existence In This Spot, Which Was Created For The Bliss Of Souls Like Mine. I Am So Happy, My Dear Friend, So Absorbed In The Exquisite Sense Of Mere Tranquil Existence', 'uploads/about_us_general/1762846604-wKva29OH4A.webp', 'uploads/about_us_general/1762846604-CErxYz5ldi.webp', 'uploads/about_us_general/1762846584-41s955w0b3.webp', 'Our Story — Democratizing AI-Powered Learning', 'ITechAleart was founded to make high-quality, AI-enhanced education accessible to learners worldwide. We combine expert instructors with smart AI tooling to help people build real skills faster.', 'uploads/about_us_general/1762846738-4gT8tgnQRm.webp', 'Upgrade Your Skills with AI', 'From curriculum generation to personalized practice, our platform supports learners and instructors with AI-driven tools.', 'Find Your Course', 'uploads_demo/about_us_general/team-members-heading-img.png', 'Meet the ITechAleart Team', 'A diverse team of educators, engineers, and AI researchers committed to learner success', 'Quality Course, Instructor And Support', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', NULL, '2025-11-11 02:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_history`
--

CREATE TABLE `affiliate_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(191) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) DEFAULT NULL,
  `consultation_slot_id` bigint(20) DEFAULT NULL,
  `actual_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=due,1=paid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_request`
--

CREATE TABLE `affiliate_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) DEFAULT NULL,
  `comments` varchar(191) DEFAULT NULL,
  `letter` varchar(191) DEFAULT NULL,
  `affiliate_code` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_option_id` bigint(20) NOT NULL,
  `take_exam_id` bigint(20) NOT NULL,
  `multiple_choice_answer` mediumtext DEFAULT NULL,
  `is_correct` varchar(10) NOT NULL COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 2=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_files`
--

CREATE TABLE `assignment_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submits`
--

CREATE TABLE `assignment_submits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assignment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` double(8,2) DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active,0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `beneficiary_name` varchar(191) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `card_number` varchar(191) DEFAULT NULL,
  `card_holder_name` varchar(191) DEFAULT NULL,
  `expire_month` varchar(191) DEFAULT NULL,
  `expire_year` varchar(191) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `bank_account_number` varchar(191) DEFAULT NULL,
  `bank_account_name` varchar(191) DEFAULT NULL,
  `bank_routing_number` varchar(191) DEFAULT NULL,
  `paypal_email` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` mediumtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=published, 0=unpublished',
  `blog_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `uuid`, `user_id`, `title`, `slug`, `details`, `image`, `status`, `blog_category_id`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `created_at`, `updated_at`) VALUES
(5, '98b57d53-b92f-11f0-be99-90b11c0f962c', 1, 'The Rise of AI-Powered Web Development in 2025', 'the-rise-of-ai-powered-web-development-in-2025', 'In 2025, web development is entering a new era driven by artificial intelligence (AI) and automation. Developers are leveraging tools like GitHub Copilot, ChatGPT, and NVIDIA Triton Inference Server to accelerate design, testing, and deployment cycles. AI can now generate front-end layouts, suggest database schemas, and even debug code in real-time.\r\n\r\nOne of the most transformative shifts is the integration of predictive analytics into web applications. This enables businesses to deliver personalized user experiences based on behavioral data. Frameworks such as Next.js and Astro are evolving to support dynamic, AI-driven content rendering.\r\n\r\nSecurity is another major focus in 2025. With AI tools capable of detecting vulnerabilities automatically, development teams are reducing risk exposure before deployment. However, ethical AI use and maintaining human oversight remain essential to ensuring that web automation benefits everyone responsibly.\r\n\r\nFor aspiring developers, learning how to combine traditional web stacks (HTML, React, Node.js) with AI-powered services will be the key skill of the future.', 'uploads/blog/1762855329-iifbYHTdJJ.webp', 1, 7, 'AI in Web Development 2025', 'Explore how AI is reshaping the future of web development with smarter automation, faster deployment, and enhanced security.', 'AI, web development, automation, Next.js, Triton', 'uploads_demo/blog/og/ai_webdev_og.jpg', '2025-11-04 03:37:29', '2025-11-11 04:32:09'),
(6, '98b582e7-b92f-11f0-be99-90b11c0f962c', 1, 'Predictive Analytics Trends Transforming Businesses in 2025', 'predictive-analytics-trends-transforming-businesses-in-2025', 'Predictive analytics has become one of the most influential technologies shaping decision-making in 2025. From financial forecasting to supply chain optimization, AI-driven insights are enabling businesses to act with precision and confidence.\r\n\r\nCloud-native platforms like NVIDIA Triton and TensorFlow Serving are allowing organizations to deploy large-scale models with minimal latency. The result: predictive dashboards that can forecast demand, customer churn, and risk factors in real time.\r\n\r\nSmall and mid-sized companies are also embracing predictive analytics through no-code AI tools, democratizing data intelligence. The integration of IoT sensors and AI models has further expanded predictive capabilities in industries like agriculture, energy, and healthcare.\r\n\r\nLooking ahead, the biggest challenge is ensuring data quality and ethical model governance. As AI becomes embedded in every business workflow, organizations must focus not only on insights but also on transparency, fairness, and accountability.', 'uploads/blog/1762855366-kGm68gevI9.webp', 1, 7, 'Predictive Analytics Trends 2025', 'Discover how predictive analytics is revolutionizing industries with real-time forecasting, AI-driven decision-making, and IoT integration.', 'predictive analytics, AI, data science, business intelligence', 'uploads_demo/blog/og/predictive_analytics_og.jpg', '2025-11-04 03:37:29', '2025-11-11 04:32:46'),
(7, '98b5846f-b92f-11f0-be99-90b11c0f962c', 1, 'Future-Proofing Your Business with Digital Transformation', 'future-proofing-your-business-with-digital-transformation', 'Digital transformation is no longer optional — it’s the foundation of survival in a rapidly evolving market. Businesses that adopt automation, cloud computing, and AI early are outpacing competitors in both speed and customer satisfaction.\r\n\r\nIn 2025, digital transformation strategies are focused on three pillars: cloud scalability, customer experience, and intelligent automation. Cloud infrastructure powered by AI optimization ensures that businesses can handle surges in demand without unnecessary cost.\r\n\r\nAnother major shift is the integration of machine learning into CRM systems, enabling businesses to predict customer needs before they arise. Predictive marketing campaigns are replacing guesswork with data-backed personalization.\r\n\r\nOrganizations that combine human expertise with AI automation are seeing remarkable gains in productivity. Yet, the human element remains crucial — empathy, creativity, and strategy continue to be the driving forces behind successful transformations.', 'uploads/blog/1762855387-wH2jD3pCvZ.webp', 1, 7, 'Digital Transformation 2025', 'Learn how businesses are leveraging AI, cloud, and automation to future-proof operations and outperform competitors in 2025.', 'digital transformation, automation, cloud computing, AI business', 'uploads_demo/blog/og/digital_transformation_og.jpg', '2025-11-04 03:37:29', '2025-11-11 04:33:07'),
(8, '98b58527-b92f-11f0-be99-90b11c0f962c', 1, 'The Future of AI in Digital Marketing: Beyond Automation', 'the-future-of-ai-in-digital-marketing-beyond-automation', 'AI has changed digital marketing forever, but 2025 marks the shift from automation to intelligence. Instead of just scheduling posts or generating reports, marketers are now using AI to understand deep behavioral patterns and emotional engagement.\r\n\r\nPredictive targeting is allowing campaigns to adapt in real-time. For example, AI models can determine the best time, platform, and tone for each audience segment. Tools like ChatGPT Enterprise and Google Gemini enable teams to craft dynamic ad copy that evolves with consumer trends.\r\n\r\nIn addition, video marketing is being redefined through generative AI tools capable of creating hyper-personalized content. As marketers gain access to powerful automation, the focus must return to storytelling — using data to connect with people, not just algorithms.\r\n\r\nThe most successful marketing teams in 2025 will blend creative intuition with AI-powered analytics, creating campaigns that are not only efficient but emotionally resonant.', 'uploads/blog/1762855406-Rs5GF2sAbJ.webp', 1, 7, 'AI in Marketing 2025', 'Explore how artificial intelligence is transforming digital marketing strategies, from predictive targeting to personalized storytelling.', 'AI marketing, automation, advertising, generative AI, SEO', 'uploads_demo/blog/og/ai_marketing_og.jpg', '2025-11-04 03:37:29', '2025-11-11 04:33:26'),
(9, '98b585b4-b92f-11f0-be99-90b11c0f962c', 1, 'Design Thinking Meets Artificial Intelligence', 'design-thinking-meets-artificial-intelligence', 'In 2025, the design industry is embracing a powerful partnership between human creativity and artificial intelligence. Designers are no longer limited by traditional workflows — AI is becoming a true collaborator.\r\n\r\nAI tools like Figma AI, Adobe Firefly, and Midjourney are accelerating the prototyping phase, turning ideas into high-fidelity mockups within minutes. Designers can now experiment more, iterate faster, and focus on the strategic aspects of user experience.\r\n\r\nThe concept of “co-designing with AI” is transforming creative education as well. Students are learning how to guide AI tools with intent and purpose, combining human empathy with machine precision.\r\n\r\nEthical design is also at the forefront. As algorithms shape how people interact with digital spaces, designers must ensure inclusivity, accessibility, and cultural sensitivity. The best design in 2025 is not just beautiful — it’s conscious, data-informed, and human-centered.', 'uploads/blog/1762855466-SZuV8j7ltN.webp', 1, 7, 'AI in Design 2025', 'How artificial intelligence is reshaping design processes, from prototyping to ethical user experience design.', 'AI design, UX, Figma AI, generative design, ethics in AI', 'uploads_demo/blog/og/ai_design_og.jpg', '2025-11-04 03:37:29', '2025-11-11 04:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=active, 0=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `uuid`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '28828707-9415-4068-adef-12641516486a', 'Development', 'development', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'ebe375f1-0a4a-4b3a-bf56-028824c9507f', 'IT & Software', 'it-software', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, '61efe125-6f32-4c7a-b6fe-061a3df3dbd2', 'Data Science', 'data-science', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, '890e77d8-0b8a-4073-9e91-c24d675e1d39', 'Soft Skills', 'soft-skills', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, '911dcac5-1200-4fc4-94f2-2caea6251453', 'Business', 'business', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'ad757f0e-a7db-4a60-8efb-0858880690c8', 'Marketing', 'marketing', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'e0637550-8560-4e2d-b4c4-fddc8b7bf1a6', 'Design', 'design', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 2=deactivate',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `user_id`, `name`, `email`, `comment`, `status`, `parent_id`, `created_at`, `updated_at`) VALUES
(5, 5, NULL, 'Ravi Perera', 'ravi.perera87@gmail.com', 'This article perfectly captures how AI is streamlining development workflows. Great insights!', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(6, 5, NULL, 'Melissa Tan', 'melissa.tan214@gmail.com', 'As a frontend dev, I’ve started using AI-based code assistants — totally agree with this trend.', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(7, 5, NULL, 'John Mendez', 'john.mendez93@gmail.com', 'Interesting mention about security automation. Would love a follow-up guide!', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(8, 6, NULL, 'Nadia Khan', 'nadia.khan1024@gmail.com', 'Predictive analytics is transforming supply chain management. Well-written!', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(9, 6, NULL, 'Liam Thompson', 'liam.thompson764@gmail.com', 'Loved the section on no-code AI tools. Perfect for small businesses.', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(10, 6, NULL, 'Anuj Sharma', 'anuj.sharma559@gmail.com', 'Would you recommend a starter platform for predictive dashboards?', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(11, 7, NULL, 'Sarah Fernando', 'sarah.fernando25@gmail.com', 'A great overview of how digital transformation impacts teams, not just tools.', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(12, 7, NULL, 'Kevin Ho', 'kevin.ho301@gmail.com', 'Love the focus on human empathy in automation strategies.', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(13, 7, NULL, 'Maria Lopez', 'maria.lopez742@gmail.com', 'This resonates with what we are seeing in our cloud migration project.', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(14, 8, NULL, 'Priya Menon', 'priya.menon940@gmail.com', 'The shift from automation to intelligence is spot on. Great writing!', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(15, 8, NULL, 'Hassan Alvi', 'hassan.alvi219@gmail.com', 'I think predictive targeting is the most exciting change in marketing.', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(16, 8, NULL, 'Emily Jones', 'emily.jones658@gmail.com', 'Can you share more examples of real-time personalization tools?', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(17, 9, NULL, 'Taro Yamamoto', 'taro.yamamoto415@gmail.com', 'As a designer, I love how AI tools boost creativity instead of replacing it.', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(18, 9, NULL, 'Elena Dimitrova', 'elena.dimitrova833@gmail.com', 'Ethical design discussions are much needed in 2025. Thank you for this.', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(19, 9, NULL, 'Lucas Smith', 'lucas.smith275@gmail.com', 'Midjourney and Firefly are changing the design landscape completely.', 1, NULL, '2025-11-04 03:51:26', '2025-11-04 03:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `blog_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(16, 5, 10, '2025-11-11 04:32:09', '2025-11-11 04:32:09'),
(17, 5, 11, '2025-11-11 04:32:09', '2025-11-11 04:32:09'),
(18, 5, 17, '2025-11-11 04:32:09', '2025-11-11 04:32:09'),
(19, 6, 10, '2025-11-11 04:32:46', '2025-11-11 04:32:46'),
(20, 6, 12, '2025-11-11 04:32:46', '2025-11-11 04:32:46'),
(21, 6, 18, '2025-11-11 04:32:46', '2025-11-11 04:32:46'),
(22, 7, 13, '2025-11-11 04:33:07', '2025-11-11 04:33:07'),
(23, 7, 17, '2025-11-11 04:33:07', '2025-11-11 04:33:07'),
(24, 7, 19, '2025-11-11 04:33:07', '2025-11-11 04:33:07'),
(25, 8, 10, '2025-11-11 04:33:26', '2025-11-11 04:33:26'),
(26, 8, 14, '2025-11-11 04:33:26', '2025-11-11 04:33:26'),
(27, 8, 17, '2025-11-11 04:33:26', '2025-11-11 04:33:26'),
(28, 9, 10, '2025-11-11 04:34:26', '2025-11-11 04:34:26'),
(29, 9, 15, '2025-11-11 04:34:26', '2025-11-11 04:34:26'),
(30, 9, 16, '2025-11-11 04:34:26', '2025-11-11 04:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `booking_histories`
--

CREATE TABLE `booking_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_user_id` bigint(20) UNSIGNED NOT NULL,
  `student_user_id` bigint(20) UNSIGNED NOT NULL,
  `consultation_slot_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `time` varchar(191) NOT NULL,
  `duration` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=Pending,1=Approve,2=Cancel,3=Completed',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=In-person,2=Online',
  `start_url` mediumtext DEFAULT NULL,
  `join_url` mediumtext DEFAULT NULL,
  `meeting_id` varchar(191) DEFAULT NULL,
  `meeting_password` varchar(191) DEFAULT NULL,
  `meeting_host_name` varchar(191) DEFAULT NULL COMMENT 'zoom,bbb,jitsi',
  `moderator_pw` varchar(191) DEFAULT NULL COMMENT 'use only for bbb',
  `attendee_pw` varchar(191) DEFAULT NULL COMMENT 'use only for bbb',
  `cancel_reason` mediumtext DEFAULT NULL,
  `send_back_money_status` tinyint(4) DEFAULT 0 COMMENT '1=Yes, 0=No',
  `back_admin_commission` varchar(191) DEFAULT NULL COMMENT 'Admin Commission',
  `back_owner_balance` varchar(191) DEFAULT NULL COMMENT 'Instructor Commission',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `overview` longtext DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=active,0=disable',
  `is_subscription_enable` tinyint(4) NOT NULL DEFAULT 1,
  `access_period` int(11) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_courses`
--

CREATE TABLE `bundle_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_management`
--

CREATE TABLE `cart_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_info` text DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shipping_charge` decimal(12,2) NOT NULL DEFAULT 0.00,
  `consultation_slot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultation_details` text DEFAULT NULL,
  `consultation_date` varchar(191) DEFAULT NULL,
  `consultation_available_type` varchar(191) DEFAULT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bundle_course_ids` text DEFAULT NULL,
  `promotion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_subscription_enable` bigint(20) UNSIGNED NOT NULL,
  `main_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_feature` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `name`, `image`, `is_feature`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '31c77dbb-0271-406e-afdd-da92e4a37f92', 'Development', 'uploads/category/1762839584-sQxUoSvZKt.webp', 'yes', 'Development', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2025-11-11 00:09:44'),
(2, 'ac42d76f-65cc-463a-8428-733c305215e4', 'IT & Software', 'uploads/category/1762839602-prcAlmMq3L.webp', 'yes', 'IT-Software', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2025-11-11 00:10:02'),
(3, 'd8cde16c-e98b-4991-adf9-f2b150789c90', 'Office Productivity', 'uploads/category/1762839618-BThfSnSEk7.webp', 'yes', 'Office-Productivity', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2025-11-11 00:10:18'),
(4, '07e99f6a-c5b7-4fe1-9503-f180bb8484f9', 'Personal Development', 'uploads/category/1762839631-Qk9YDfdEng.webp', 'yes', 'Personal-Development', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2025-11-11 00:10:31'),
(5, '44b94434-0327-4e77-b3b7-ad2523809bce', 'Business', NULL, 'no', 'business', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, '57e18cf4-0050-4baf-8e10-3d9a65eaf8ed', 'Marketing', NULL, 'no', 'marketing', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, '90cd37ac-b804-4095-a471-3651ec40718a', 'Design', NULL, 'no', 'design', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, '4441d186-fab2-4e8e-a4ed-ab7fc24f6e71', 'Health & Fitness', NULL, 'no', 'health-fitness', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, 'a1d1c370-5ce4-4bbc-9b27-5e8645282259', 'Finance & Accounting', NULL, 'no', 'finance-accounting', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `certificate_number` varchar(50) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `show_number` varchar(10) DEFAULT 'yes' COMMENT 'yes, no',
  `number_x_position` int(11) DEFAULT 0,
  `number_y_position` int(11) DEFAULT 0,
  `number_font_size` int(11) DEFAULT 18,
  `number_font_color` varchar(25) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `title_x_position` int(11) DEFAULT 0,
  `title_y_position` int(11) DEFAULT 0,
  `title_font_size` int(11) DEFAULT 20,
  `title_font_color` varchar(25) DEFAULT NULL,
  `show_date` varchar(10) NOT NULL DEFAULT 'yes' COMMENT 'yes, no',
  `date_x_position` int(11) DEFAULT 0,
  `date_y_position` int(11) DEFAULT 16,
  `date_font_size` int(11) DEFAULT 30,
  `date_font_color` varchar(25) DEFAULT NULL,
  `show_student_name` varchar(10) NOT NULL DEFAULT 'yes' COMMENT 'yes, no',
  `student_name_x_position` int(11) DEFAULT 0,
  `student_name_y_position` int(11) DEFAULT 16,
  `student_name_font_size` int(11) DEFAULT 32,
  `student_name_font_color` varchar(25) DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `body_max_length` int(11) DEFAULT 80,
  `body_x_position` int(11) DEFAULT 0,
  `body_y_position` int(11) DEFAULT 16,
  `body_font_size` int(11) DEFAULT 20,
  `body_font_color` varchar(25) DEFAULT NULL,
  `role_1_show` varchar(10) DEFAULT NULL COMMENT 'yes, no',
  `role_1_title` varchar(191) DEFAULT NULL,
  `role_1_signature` varchar(191) DEFAULT NULL,
  `role_1_x_position` int(11) DEFAULT 16,
  `role_1_y_position` int(11) DEFAULT 16,
  `role_1_font_size` int(11) DEFAULT 18,
  `role_1_font_color` varchar(25) DEFAULT NULL,
  `role_2_show` varchar(10) DEFAULT NULL COMMENT 'yes, no',
  `role_2_title` varchar(191) DEFAULT NULL,
  `role_2_x_position` int(11) DEFAULT 0,
  `role_2_y_position` int(11) DEFAULT 0,
  `role_2_font_size` int(11) DEFAULT 18,
  `role_2_font_color` varchar(25) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `uuid`, `certificate_number`, `image`, `show_number`, `number_x_position`, `number_y_position`, `number_font_size`, `number_font_color`, `title`, `title_x_position`, `title_y_position`, `title_font_size`, `title_font_color`, `show_date`, `date_x_position`, `date_y_position`, `date_font_size`, `date_font_color`, `show_student_name`, `student_name_x_position`, `student_name_y_position`, `student_name_font_size`, `student_name_font_color`, `body`, `body_max_length`, `body_x_position`, `body_y_position`, `body_font_size`, `body_font_color`, `role_1_show`, `role_1_title`, `role_1_signature`, `role_1_x_position`, `role_1_y_position`, `role_1_font_size`, `role_1_font_color`, `role_2_show`, `role_2_title`, `role_2_x_position`, `role_2_y_position`, `role_2_font_size`, `role_2_font_color`, `path`, `status`, `created_at`, `updated_at`) VALUES
(8, '5e38c5ce-3923-4b75-ae88-bebded33e1e1', '7699771', NULL, 'no', NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, '#000000', 'yes', NULL, NULL, NULL, '#363234', 'yes', NULL, NULL, NULL, '#363234', NULL, 80, NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, NULL, '#000000', NULL, 0, '2025-11-03 00:18:57', '2025-11-03 00:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_by_instructors`
--

CREATE TABLE `certificate_by_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `certificate_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_x_position` int(11) NOT NULL DEFAULT 0,
  `title_y_position` int(11) NOT NULL DEFAULT 0,
  `title_font_size` int(11) NOT NULL DEFAULT 20,
  `title_font_color` varchar(25) DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `body_max_length` int(11) NOT NULL DEFAULT 80,
  `body_x_position` int(11) NOT NULL DEFAULT 0,
  `body_y_position` int(11) NOT NULL DEFAULT 16,
  `body_font_size` int(11) NOT NULL DEFAULT 20,
  `body_font_color` varchar(25) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `role_2_x_position` int(11) NOT NULL DEFAULT 0,
  `role_2_y_position` int(11) NOT NULL DEFAULT 10,
  `path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `incoming_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `outgoing_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `view` tinyint(4) DEFAULT 2 COMMENT '1=seen,2=not seen',
  `created_user_type` tinyint(4) DEFAULT NULL COMMENT '1=student,2=instructor',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Birmingham', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(2, 1, 'Montgomery', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(3, 1, 'Mobile', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(4, 1, 'Huntsville', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(5, 1, 'Tuscaloosa', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(6, 1, 'Dothan', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(7, 2, 'Anchorage', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(8, 2, 'Fairbanks', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(9, 2, 'Juneau', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(10, 2, 'Wasilla', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(11, 2, 'Sitka', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(12, 2, 'Ketchikan', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(13, 3, 'Phoenix', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(14, 3, 'Tucson', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(15, 3, 'Mesa', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(16, 3, 'Chandler', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(17, 3, 'Scottsdale', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(18, 3, 'Glendale', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(19, 4, 'Little Rock', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(20, 4, 'Fort Smith', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(21, 4, 'Fayetteville', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(22, 4, 'Springdale', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(23, 4, 'Jonesboro', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(24, 4, 'Conway', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(25, 5, 'Los Angeles', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(26, 5, 'San Diego', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(27, 5, 'San Jose', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(28, 5, 'San Francisco', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(29, 5, 'Fresno', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(30, 5, 'Sacramento', '2025-11-03 03:41:23', '2025-11-03 03:41:23'),
(31, 6, 'Denver', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(32, 6, 'Colorado Springs', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(33, 6, 'Aurora', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(34, 6, 'Fort Collins', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(35, 6, 'Lakewood', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(36, 6, 'Thornton', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(37, 7, 'Bridgeport', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(38, 7, 'New Haven', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(39, 7, 'Stamford', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(40, 7, 'Hartford', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(41, 7, 'Waterbury', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(42, 7, 'Norwalk', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(43, 8, 'Wilmington', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(44, 8, 'Dover', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(45, 8, 'Newark', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(46, 8, 'Middletown', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(47, 8, 'Smyrna', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(48, 8, 'Milford', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(49, 9, 'Jacksonville', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(50, 9, 'Miami', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(51, 9, 'Tampa', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(52, 9, 'Orlando', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(53, 9, 'St. Petersburg', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(54, 9, 'Hialeah', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(55, 10, 'Atlanta', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(56, 10, 'Augusta', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(57, 10, 'Columbus', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(58, 10, 'Macon', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(59, 10, 'Savannah', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(60, 10, 'Athens', '2025-11-03 03:42:07', '2025-11-03 03:42:07'),
(61, 11, 'Honolulu', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(62, 11, 'Hilo', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(63, 11, 'Kailua', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(64, 11, 'Kapolei', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(65, 11, 'Waipahu', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(66, 11, 'Kaneohe', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(67, 12, 'Boise', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(68, 12, 'Meridian', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(69, 12, 'Nampa', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(70, 12, 'Idaho Falls', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(71, 12, 'Pocatello', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(72, 12, 'Caldwell', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(73, 13, 'Chicago', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(74, 13, 'Aurora', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(75, 13, 'Naperville', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(76, 13, 'Joliet', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(77, 13, 'Rockford', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(78, 13, 'Springfield', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(79, 14, 'Indianapolis', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(80, 14, 'Fort Wayne', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(81, 14, 'Evansville', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(82, 14, 'South Bend', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(83, 14, 'Carmel', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(84, 14, 'Bloomington', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(85, 15, 'Des Moines', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(86, 15, 'Cedar Rapids', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(87, 15, 'Davenport', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(88, 15, 'Sioux City', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(89, 15, 'Iowa City', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(90, 15, 'Waterloo', '2025-11-03 03:43:37', '2025-11-03 03:43:37'),
(91, 16, 'Wichita', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(92, 16, 'Overland Park', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(93, 16, 'Kansas City', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(94, 16, 'Topeka', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(95, 16, 'Olathe', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(96, 16, 'Lawrence', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(97, 17, 'Louisville', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(98, 17, 'Lexington', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(99, 17, 'Bowling Green', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(100, 17, 'Owensboro', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(101, 17, 'Covington', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(102, 17, 'Richmond', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(103, 18, 'New Orleans', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(104, 18, 'Baton Rouge', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(105, 18, 'Shreveport', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(106, 18, 'Lafayette', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(107, 18, 'Lake Charles', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(108, 18, 'Kenner', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(109, 19, 'Portland', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(110, 19, 'Lewiston', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(111, 19, 'Bangor', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(112, 19, 'South Portland', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(113, 19, 'Auburn', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(114, 19, 'Biddeford', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(115, 20, 'Baltimore', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(116, 20, 'Columbia', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(117, 20, 'Germantown', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(118, 20, 'Silver Spring', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(119, 20, 'Waldorf', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(120, 20, 'Frederick', '2025-11-03 03:43:56', '2025-11-03 03:43:56'),
(121, 21, 'Boston', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(122, 21, 'Worcester', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(123, 21, 'Springfield', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(124, 21, 'Cambridge', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(125, 21, 'Lowell', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(126, 21, 'Brockton', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(127, 22, 'Detroit', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(128, 22, 'Grand Rapids', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(129, 22, 'Warren', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(130, 22, 'Sterling Heights', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(131, 22, 'Ann Arbor', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(132, 22, 'Lansing', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(133, 23, 'Minneapolis', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(134, 23, 'St. Paul', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(135, 23, 'Rochester', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(136, 23, 'Duluth', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(137, 23, 'Bloomington', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(138, 23, 'Brooklyn Park', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(139, 24, 'Jackson', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(140, 24, 'Gulfport', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(141, 24, 'Southaven', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(142, 24, 'Hattiesburg', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(143, 24, 'Biloxi', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(144, 24, 'Meridian', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(145, 25, 'Kansas City', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(146, 25, 'St. Louis', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(147, 25, 'Springfield', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(148, 25, 'Columbia', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(149, 25, 'Independence', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(150, 25, 'Lee\'s Summit', '2025-11-03 03:44:25', '2025-11-03 03:44:25'),
(151, 26, 'Billings', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(152, 26, 'Missoula', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(153, 26, 'Great Falls', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(154, 26, 'Bozeman', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(155, 26, 'Butte', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(156, 26, 'Helena', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(157, 27, 'Omaha', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(158, 27, 'Lincoln', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(159, 27, 'Bellevue', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(160, 27, 'Grand Island', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(161, 27, 'Kearney', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(162, 27, 'Fremont', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(163, 28, 'Las Vegas', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(164, 28, 'Henderson', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(165, 28, 'Reno', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(166, 28, 'North Las Vegas', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(167, 28, 'Sparks', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(168, 28, 'Carson City', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(169, 29, 'Manchester', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(170, 29, 'Nashua', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(171, 29, 'Concord', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(172, 29, 'Derry', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(173, 29, 'Dover', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(174, 29, 'Rochester', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(175, 30, 'Newark', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(176, 30, 'Jersey City', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(177, 30, 'Paterson', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(178, 30, 'Elizabeth', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(179, 30, 'Edison', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(180, 30, 'Trenton', '2025-11-03 03:44:43', '2025-11-03 03:44:43'),
(181, 31, 'Albuquerque', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(182, 31, 'Las Cruces', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(183, 31, 'Rio Rancho', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(184, 31, 'Santa Fe', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(185, 31, 'Roswell', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(186, 31, 'Farmington', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(187, 32, 'New York City', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(188, 32, 'Buffalo', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(189, 32, 'Rochester', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(190, 32, 'Yonkers', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(191, 32, 'Syracuse', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(192, 32, 'Albany', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(193, 33, 'Charlotte', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(194, 33, 'Raleigh', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(195, 33, 'Greensboro', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(196, 33, 'Durham', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(197, 33, 'Winston-Salem', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(198, 33, 'Fayetteville', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(199, 34, 'Fargo', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(200, 34, 'Bismarck', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(201, 34, 'Grand Forks', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(202, 34, 'Minot', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(203, 34, 'West Fargo', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(204, 34, 'Williston', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(205, 35, 'Columbus', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(206, 35, 'Cleveland', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(207, 35, 'Cincinnati', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(208, 35, 'Toledo', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(209, 35, 'Akron', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(210, 35, 'Dayton', '2025-11-03 03:44:59', '2025-11-03 03:44:59'),
(211, 36, 'Oklahoma City', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(212, 36, 'Tulsa', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(213, 36, 'Norman', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(214, 36, 'Broken Arrow', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(215, 36, 'Lawton', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(216, 36, 'Edmond', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(217, 37, 'Portland', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(218, 37, 'Eugene', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(219, 37, 'Salem', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(220, 37, 'Gresham', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(221, 37, 'Hillsboro', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(222, 37, 'Beaverton', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(223, 38, 'Philadelphia', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(224, 38, 'Pittsburgh', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(225, 38, 'Allentown', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(226, 38, 'Erie', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(227, 38, 'Reading', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(228, 38, 'Scranton', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(229, 39, 'Providence', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(230, 39, 'Warwick', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(231, 39, 'Cranston', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(232, 39, 'Pawtucket', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(233, 39, 'East Providence', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(234, 39, 'Woonsocket', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(235, 40, 'Columbia', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(236, 40, 'Charleston', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(237, 40, 'North Charleston', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(238, 40, 'Mount Pleasant', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(239, 40, 'Rock Hill', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(240, 40, 'Greenville', '2025-11-03 03:45:13', '2025-11-03 03:45:13'),
(241, 41, 'Sioux Falls', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(242, 41, 'Rapid City', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(243, 41, 'Aberdeen', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(244, 41, 'Brookings', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(245, 41, 'Watertown', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(246, 41, 'Mitchell', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(247, 42, 'Nashville', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(248, 42, 'Memphis', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(249, 42, 'Knoxville', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(250, 42, 'Chattanooga', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(251, 42, 'Clarksville', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(252, 42, 'Murfreesboro', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(253, 43, 'Houston', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(254, 43, 'San Antonio', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(255, 43, 'Dallas', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(256, 43, 'Austin', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(257, 43, 'Fort Worth', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(258, 43, 'El Paso', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(259, 44, 'Salt Lake City', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(260, 44, 'West Valley City', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(261, 44, 'Provo', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(262, 44, 'West Jordan', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(263, 44, 'Orem', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(264, 44, 'Sandy', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(265, 45, 'Burlington', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(266, 45, 'South Burlington', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(267, 45, 'Rutland', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(268, 45, 'Barre', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(269, 45, 'Montpelier', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(270, 45, 'St. Albans', '2025-11-03 03:45:32', '2025-11-03 03:45:32'),
(271, 46, 'Virginia Beach', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(272, 46, 'Norfolk', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(273, 46, 'Chesapeake', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(274, 46, 'Richmond', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(275, 46, 'Newport News', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(276, 46, 'Alexandria', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(277, 47, 'Seattle', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(278, 47, 'Spokane', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(279, 47, 'Tacoma', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(280, 47, 'Vancouver', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(281, 47, 'Bellevue', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(282, 47, 'Kent', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(283, 48, 'Charleston', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(284, 48, 'Huntington', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(285, 48, 'Morgantown', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(286, 48, 'Parkersburg', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(287, 48, 'Wheeling', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(288, 48, 'Weirton', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(289, 49, 'Milwaukee', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(290, 49, 'Madison', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(291, 49, 'Green Bay', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(292, 49, 'Kenosha', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(293, 49, 'Racine', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(294, 49, 'Appleton', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(295, 50, 'Cheyenne', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(296, 50, 'Casper', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(297, 50, 'Laramie', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(298, 50, 'Gillette', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(299, 50, 'Rock Springs', '2025-11-03 03:46:00', '2025-11-03 03:46:00'),
(300, 50, 'Sheridan', '2025-11-03 03:46:00', '2025-11-03 03:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `client_logos`
--

CREATE TABLE `client_logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_logos`
--

INSERT INTO `client_logos` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Inoxsoft', 'uploads/client_logo/1762517503-HDywzTdgt5.png', '2022-12-04 17:05:33', '2025-11-07 06:52:37'),
(2, 'Matellio', 'uploads/client_logo/1762517968-56AIiIbsxS.png', '2022-12-04 17:05:33', '2025-11-07 06:52:37'),
(3, 'Geniusee', 'uploads/client_logo/1762518157-h13Kmrp71G.png', '2022-12-04 17:05:33', '2025-11-07 06:52:37'),
(4, 'Mindsmith', 'uploads/client_logo/1762517503-NNJ0RI63GD.png', '2022-12-04 17:05:33', '2025-11-07 06:52:37'),
(5, 'NeuroSYS', 'uploads/client_logo/1762517503-fBwo4A0DcO.png', '2022-12-04 17:05:33', '2025-11-07 06:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `consultation_slots`
--

CREATE TABLE `consultation_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `time` varchar(191) NOT NULL,
  `duration` varchar(191) NOT NULL,
  `hour_duration` varchar(191) NOT NULL,
  `minute_duration` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_us_issue_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_issues`
--

CREATE TABLE `contact_us_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=active, 0=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_name` varchar(10) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `phonecode` varchar(255) NOT NULL,
  `continent` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `country_name`, `flag`, `slug`, `phonecode`, `continent`, `created_at`, `updated_at`) VALUES
(1, 'USA', 'United States', '', 'united-states', '+1', 'North America', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `coupon_code_name` varchar(255) NOT NULL,
  `coupon_type` tinyint(4) NOT NULL COMMENT '1=Global,2=Instructor, 3=Course',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=activate, 0=deactivated',
  `creator_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'creator_id=user_id',
  `percentage` decimal(8,2) DEFAULT 0.00,
  `minimum_amount` int(11) DEFAULT NULL,
  `maximum_use_limit` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `uuid`, `coupon_code_name`, `coupon_type`, `status`, `creator_id`, `percentage`, `minimum_amount`, `maximum_use_limit`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(3, '21468015-5857-42a3-beb3-76bd5b05721b', 'Special-Nov', 1, 1, 1, 15.00, 50, NULL, '2025-10-29', '2025-11-30', '2025-11-03 00:18:17', '2025-11-03 00:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_courses`
--

CREATE TABLE `coupon_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_courses`
--

INSERT INTO `coupon_courses` (`id`, `coupon_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 3, 38, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(2, 3, 40, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(3, 3, 43, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(4, 3, 46, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(5, 3, 49, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(6, 3, 50, '2025-11-03 07:05:46', '2025-11-03 07:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_instructors`
--

CREATE TABLE `coupon_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=general, 2=scorm',
  `instructor_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL,
  `course_language_id` bigint(20) DEFAULT NULL,
  `difficulty_level_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` text DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `feature_details` mediumtext DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `old_price` decimal(8,2) DEFAULT 0.00,
  `learner_accessibility` varchar(50) DEFAULT NULL COMMENT 'paid,free',
  `image` varchar(255) DEFAULT NULL,
  `intro_video_check` tinyint(4) DEFAULT NULL COMMENT '1=normal video, 2=youtube_video',
  `video` varchar(255) DEFAULT NULL,
  `youtube_video_id` varchar(255) DEFAULT NULL,
  `is_subscription_enable` tinyint(4) NOT NULL DEFAULT 1,
  `private_mode` tinyint(4) NOT NULL DEFAULT 0,
  `slug` varchar(255) NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=published, 2=waiting_for_review, 3=hold, 4=draft',
  `average_rating` decimal(8,2) DEFAULT 0.00,
  `drip_content` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Show All, 2=sequence, 3=unlock after x day, 4=unlock by date, 5=unlock after finish pre-requisite',
  `access_period` int(11) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `uuid`, `user_id`, `course_type`, `instructor_id`, `category_id`, `subcategory_id`, `course_language_id`, `difficulty_level_id`, `title`, `subtitle`, `description`, `feature_details`, `price`, `old_price`, `learner_accessibility`, `image`, `intro_video_check`, `video`, `youtube_video_id`, `is_subscription_enable`, `private_mode`, `slug`, `is_featured`, `status`, `average_rating`, `drip_content`, `access_period`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `created_at`, `updated_at`, `organization_id`) VALUES
(37, '87211473-b883-11f0-be99-90b11c0f962c', 71, 1, 11, 1, 1, 1, 2, 'Advanced React & State Management', 'Patterns for large-scale React apps.', 'In-depth React patterns, hooks, context, and state-management solutions (Redux, Zustand).', 'Project-based, real-world examples\nCode walkthroughs\nPerformance tips', 129.00, 199.00, 'paid', 'uploads_demo/course/react_advanced.webp', 1, 'uploads_demo/course/videos/react_adv_intro.mp4', NULL, 1, 0, 'advanced-react-state-management', 1, 1, 4.90, 1, 365, 'Advanced React & State Management', 'Scale React apps with confidence', 'react,redux,frontend', 'uploads_demo/course/og/react_adv_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(38, '87287cb3-b883-11f0-be99-90b11c0f962c', 69, 1, 9, 2, 2, 1, 2, 'Data Engineering with Python & SQL', 'Build reliable data pipelines.', 'ETL patterns, Airflow basics, SQL for analytics, and productionizing pipelines.', 'Hands-on labs\nAirflow examples\nSQL best practices', 139.00, 199.00, 'paid', 'uploads_demo/course/data_eng.webp', 1, 'uploads_demo/course/videos/dataeng_intro.mp4', NULL, 0, 0, 'data-engineering-python-sql', 1, 1, 4.70, 1, 365, 'Data Engineering with Python & SQL', 'Build production-ready data pipelines', 'data engineering,airflow,sql', 'uploads_demo/course/og/dataeng_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(39, '872b27ea-b883-11f0-be99-90b11c0f962c', 68, 1, 8, 3, 3, 1, 1, 'Productivity Hacks for Professionals', 'Boost your daily productivity.', 'Time management, task automation, and workflow improvements for busy professionals.', 'Templates, checklists, quick wins', 0.00, 0.00, 'free', 'uploads_demo/course/productivity.webp', 1, 'uploads_demo/course/videos/productivity_intro.mp4', NULL, 0, 0, 'productivity-hacks', 0, 1, 4.50, 1, 0, 'Productivity Hacks', 'Work smarter, not harder', 'productivity,time management,automation', 'uploads_demo/course/og/productivity_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(40, '872c6e6c-b883-11f0-be99-90b11c0f962c', 74, 1, 14, 4, 4, 1, 1, 'Leadership Essentials', 'Lead teams with empathy and strategy.', 'Core leadership skills: communication, feedback, decision-making, and team motivation.', 'Case studies\nAction plans\nRole-play exercises', 59.00, 89.00, 'paid', 'uploads_demo/course/leadership.webp', 1, 'uploads_demo/course/videos/leadership_intro.mp4', NULL, 0, 0, 'leadership-essentials', 1, 1, 4.60, 1, 180, 'Leadership Essentials', 'Become an effective leader', 'leadership,management,communication', 'uploads_demo/course/og/leadership_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(41, '872e664e-b883-11f0-be99-90b11c0f962c', 77, 1, 17, 5, 5, 1, 2, 'Startup Finance & Fundraising', 'Financial planning for startups.', 'Budgeting, forecasts, investor decks, and fundraising strategies for early-stage startups.', 'Templates\nPitch deck examples\nValuation basics', 149.00, 249.00, 'paid', 'uploads_demo/course/startup_finance.webp', 1, 'uploads_demo/course/videos/startup_finance_intro.mp4', NULL, 0, 0, 'startup-finance-fundraising', 1, 1, 4.80, 1, 365, 'Startup Finance & Fundraising', 'Finance essentials for founders', 'startup,finance,fundraising', 'uploads_demo/course/og/startup_fin_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(42, '873018c8-b883-11f0-be99-90b11c0f962c', 70, 1, 10, 6, 6, 1, 1, 'Intro to Content Marketing', 'Foundations of storytelling and content strategy.', 'Content planning, distribution, and measuring success across channels.', 'Templates, calendars, KPIs', 0.00, 0.00, 'free', 'uploads_demo/course/content_marketing.webp', 1, 'uploads_demo/course/videos/content_intro.mp4', NULL, 1, 0, 'intro-content-marketing', 0, 1, 4.40, 1, 0, 'Intro to Content Marketing', 'Foundations of content success', 'content marketing,seo,copywriting', 'uploads_demo/course/og/content_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(43, '873192ba-b883-11f0-be99-90b11c0f962c', 76, 1, 16, 7, 7, 1, 2, 'UI/UX Design: From Wireframe to Prototype', 'Design user-centered interfaces.', 'UX research, wireframing, prototyping, Figma workflows, usability testing.', 'Figma files\nCase studies\nUsability methods', 99.00, 149.00, 'paid', 'uploads_demo/course/uiux.webp', 1, 'uploads_demo/course/videos/uiux_intro.mp4', NULL, 0, 0, 'ui-ux-wireframe-prototype', 1, 1, 4.70, 1, 180, 'UI/UX Design: From Wireframe to Prototype', 'Design meaningful experiences', 'uiux,figma,usability', 'uploads_demo/course/og/uiux_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(44, '8732a0e4-b883-11f0-be99-90b11c0f962c', 78, 1, 18, 8, 8, 1, 1, 'Foundations of Health & Nutrition', 'Evidence-based nutrition for everyday life.', 'Macros, meal planning, basic physiology, habit formation.', 'Meal plans\nShopping lists\nSimple workouts', 39.00, 59.00, 'paid', 'uploads_demo/course/nutrition.webp', 1, 'uploads_demo/course/videos/nutrition_intro.mp4', NULL, 0, 0, 'foundations-health-nutrition', 0, 1, 4.50, 1, 180, 'Foundations of Health & Nutrition', 'Practical nutrition for busy lives', 'nutrition,health,wellness', 'uploads_demo/course/og/nutrition_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(45, '8733b0e7-b883-11f0-be99-90b11c0f962c', 79, 1, 19, 9, 9, 1, 1, 'Personal Finance 101', 'Manage money, budgets, and savings.', 'Budgeting frameworks, emergency funds, basics of investing, and debt management.', 'Worksheets\nBudget templates\nSimple investment primer', 0.00, 0.00, 'free', 'uploads_demo/course/personal_finance.webp', 1, 'uploads_demo/course/videos/finance_intro.mp4', NULL, 0, 0, 'personal-finance-101', 0, 1, 4.30, 1, 0, 'Personal Finance 101', 'Learn to manage your personal finances', 'budgeting,saving,investing', 'uploads_demo/course/og/finance_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(46, '87370b2c-b883-11f0-be99-90b11c0f962c', 72, 1, 12, 1, 1, 1, 2, 'Backend APIs with Node & Express', 'Design RESTful and GraphQL APIs.', 'Auth, testing, rate-limiting, and deploying APIs to cloud providers.', 'Auth labs\nTesting examples\nDeployment guide', 119.00, 169.00, 'paid', 'uploads_demo/course/node_apis.webp', 1, 'uploads_demo/course/videos/node_api_intro.mp4', NULL, 1, 0, 'backend-apis-node-express', 1, 1, 4.60, 1, 365, 'Backend APIs with Node & Express', 'Build robust APIs', 'nodejs,express,api', 'uploads_demo/course/og/node_api_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(47, '87390c28-b883-11f0-be99-90b11c0f962c', 73, 1, 13, 2, 2, 1, 2, 'Intro to Cybersecurity', 'Protect systems and applications.', 'Threat modeling, secure coding, incident response, and basic penetration testing.', 'Labs, checklists, sample policies', 129.00, 179.00, 'paid', 'uploads_demo/course/cybersec.webp', 1, 'uploads_demo/course/videos/cybersec_intro.mp4', NULL, 0, 0, 'intro-cybersecurity', 1, 1, 4.70, 1, 365, 'Intro to Cybersecurity', 'Basics of security for developers', 'cybersecurity,infosec,security', 'uploads_demo/course/og/cybersec_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(48, '873ab6ef-b883-11f0-be99-90b11c0f962c', 75, 1, 15, 7, 7, 1, 1, 'Graphic Design Basics', 'From color to composition.', 'Fundamentals of layout, typography, color theory and visual hierarchy.', 'Design exercises\nStarter kit\nTemplates', 0.00, 0.00, 'free', 'uploads_demo/course/graphic_design.webp', 1, 'uploads_demo/course/videos/graphic_intro.mp4', NULL, 0, 0, 'graphic-design-basics', 0, 1, 4.40, 1, 0, 'Graphic Design Basics', 'Learn foundational design skills', 'graphic design,color theory,typography', 'uploads_demo/course/og/design_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(49, '873ead66-b883-11f0-be99-90b11c0f962c', 70, 1, 10, 6, 6, 1, 2, 'Performance Marketing & Analytics', 'Paid media and conversion tracking.', 'Ads strategy, tracking pixels, A/B testing and attribution models.', 'Campaign templates\nTracking guides\nA/B testing labs', 139.00, 199.00, 'paid', 'uploads_demo/course/perf_marketing.webp', 1, 'uploads_demo/course/videos/perf_marketing_intro.mp4', NULL, 1, 0, 'performance-marketing-analytics', 1, 1, 4.70, 1, 365, 'Performance Marketing & Analytics', 'Run profitable ad campaigns', 'ads,analytics,optimization', 'uploads_demo/course/og/perf_marketing_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(50, '8740b355-b883-11f0-be99-90b11c0f962c', 77, 1, 17, 5, 5, 1, 2, 'Product Management: From Idea to Launch', 'Build & ship/iterate products.', 'Roadmapping, prioritization, user research, metrics and launching successful products.', 'Templates, roadmap examples, prioritization frameworks', 129.00, 179.00, 'paid', 'uploads_demo/course/product_mgmt.webp', 1, 'uploads_demo/course/videos/product_mgmt_intro.mp4', NULL, 0, 0, 'product-management-idea-launch', 1, 1, 4.80, 1, 365, 'Product Management: From Idea to Launch', 'Ship products users love', 'product management,roadmap,metrics', 'uploads_demo/course/og/product_mgmt_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1),
(51, '8741f03e-b883-11f0-be99-90b11c0f962c', 75, 1, 15, 1, 1, 1, 1, 'Intro to HTML & CSS', 'Start building webpages today.', 'Basics of markup, layout, responsive design, and modern HTML5/CSS3 practices.', 'Starter templates\nLive examples\nExercises', 0.00, 0.00, 'free', 'uploads_demo/course/html_css.webp', 1, 'uploads_demo/course/videos/html_css_intro.mp4', NULL, 0, 0, 'intro-html-css', 0, 1, 4.20, 1, 0, 'Intro to HTML & CSS', 'Build your first webpages', 'html,css,responsive design', 'uploads_demo/course/og/html_css_og.jpg', '2025-11-03 07:05:46', '2025-11-03 07:05:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_instructor`
--

CREATE TABLE `course_instructor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `share` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_instructor`
--

INSERT INTO `course_instructor` (`id`, `course_id`, `instructor_id`, `share`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(27, 37, 11, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(28, 38, 9, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(29, 39, 8, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(30, 40, 14, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(31, 41, 17, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(32, 42, 10, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(33, 43, 16, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(34, 44, 18, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(35, 45, 19, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(36, 46, 12, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(37, 47, 13, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(38, 48, 15, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(39, 49, 10, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(40, 50, 17, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(41, 51, 15, 100, 1, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `course_languages`
--

CREATE TABLE `course_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_languages`
--

INSERT INTO `course_languages` (`id`, `uuid`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fec398b5-c9e5-45ee-94b4-1495ddbd75db', 'English', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `course_lectures`
--

CREATE TABLE `course_lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `lesson_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lecture_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=free, 2=paid',
  `file_path` varchar(255) DEFAULT NULL,
  `url_path` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `file_duration` varchar(255) DEFAULT NULL,
  `file_duration_second` double DEFAULT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'uploaded_video' COMMENT 'video, youtube, vimeo, resource',
  `vimeo_upload_type` tinyint(4) DEFAULT 1 COMMENT '1=video file upload, 2=vimeo uploaded video id',
  `text` longtext DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `pdf` varchar(191) DEFAULT NULL,
  `slide_document` varchar(191) DEFAULT NULL,
  `audio` varchar(191) DEFAULT NULL,
  `after_day` int(11) DEFAULT NULL,
  `unlock_date` date DEFAULT NULL,
  `pre_ids` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_lectures`
--

INSERT INTO `course_lectures` (`id`, `uuid`, `course_id`, `lesson_id`, `title`, `lecture_type`, `file_path`, `url_path`, `file_size`, `file_duration`, `file_duration_second`, `type`, `vimeo_upload_type`, `text`, `image`, `pdf`, `slide_document`, `audio`, `after_day`, `unlock_date`, `pre_ids`, `created_at`, `updated_at`) VALUES
(267, '8724eb64-b883-11f0-be99-90b11c0f962c', 37, 146, 'JSX & Components', 1, 'uploads_demo/lectures/jsx_components.mp4', NULL, NULL, '12:20', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(268, '87250a8f-b883-11f0-be99-90b11c0f962c', 37, 146, 'Hooks Deep Dive', 2, 'uploads_demo/lectures/hooks_deep.mp4', NULL, NULL, '25:15', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(269, '87250bbe-b883-11f0-be99-90b11c0f962c', 37, 146, 'Routing & Performance', 2, 'uploads_demo/lectures/routing_perf.mp4', NULL, NULL, '18:40', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(270, '87250d06-b883-11f0-be99-90b11c0f962c', 37, 147, 'Redux Patterns', 2, 'uploads_demo/lectures/redux_patterns.mp4', NULL, NULL, '30:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(271, '87250dc0-b883-11f0-be99-90b11c0f962c', 37, 147, 'Zustand & Alternatives', 2, 'uploads_demo/lectures/zustand.mp4', NULL, NULL, '15:12', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(272, '872967f3-b883-11f0-be99-90b11c0f962c', 38, 148, 'Intro to ETL', 1, 'uploads_demo/lectures/etl_intro.mp4', NULL, NULL, '14:10', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(273, '87296ad4-b883-11f0-be99-90b11c0f962c', 38, 148, 'SQL for Analytics', 2, 'uploads_demo/lectures/sql_analytics.mp4', NULL, NULL, '22:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(274, '87296bec-b883-11f0-be99-90b11c0f962c', 38, 149, 'Airflow DAGs', 2, 'uploads_demo/lectures/airflow_dags.mp4', NULL, NULL, '28:30', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(275, '872c04d0-b883-11f0-be99-90b11c0f962c', 39, 150, 'Pomodoro & Scheduling', 1, 'uploads_demo/lectures/pomodoro.mp4', NULL, NULL, '10:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(276, '872c06fe-b883-11f0-be99-90b11c0f962c', 39, 150, 'Task Prioritization', 2, 'uploads_demo/lectures/prioritization.mp4', NULL, NULL, '12:30', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(277, '872c07d3-b883-11f0-be99-90b11c0f962c', 39, 151, 'Zapier Basics', 2, 'uploads_demo/lectures/zapier_basics.mp4', NULL, NULL, '18:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(278, '872d41a8-b883-11f0-be99-90b11c0f962c', 40, 152, 'Building Team Culture', 1, 'uploads_demo/lectures/team_culture.mp4', NULL, NULL, '20:10', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(279, '872d4347-b883-11f0-be99-90b11c0f962c', 40, 152, 'Giving Feedback', 2, 'uploads_demo/lectures/feedback.mp4', NULL, NULL, '15:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(280, '872d43c5-b883-11f0-be99-90b11c0f962c', 40, 153, 'Decision Frameworks', 2, 'uploads_demo/lectures/decision_frameworks.mp4', NULL, NULL, '22:25', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(281, '872f7775-b883-11f0-be99-90b11c0f962c', 41, 154, 'Revenue Forecasting', 1, 'uploads_demo/lectures/revenue_forecasting.mp4', NULL, NULL, '26:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(282, '872f7960-b883-11f0-be99-90b11c0f962c', 41, 154, 'Unit Economics', 2, 'uploads_demo/lectures/unit_economics.mp4', NULL, NULL, '18:30', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(283, '872f79ff-b883-11f0-be99-90b11c0f962c', 41, 155, 'Investor Deck Template', 2, 'uploads_demo/lectures/investor_deck.mp4', NULL, NULL, '20:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(284, '8730d6e3-b883-11f0-be99-90b11c0f962c', 42, 156, 'Content Calendars', 1, 'uploads_demo/lectures/calendars.mp4', NULL, NULL, '11:45', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(285, '8730d8c7-b883-11f0-be99-90b11c0f962c', 42, 157, 'Repurposing Content', 2, 'uploads_demo/lectures/repurpose.mp4', NULL, NULL, '13:50', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(286, '87320ad1-b883-11f0-be99-90b11c0f962c', 43, 158, 'Interview Techniques', 1, 'uploads_demo/lectures/interviews.mp4', NULL, NULL, '16:20', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(287, '87320d33-b883-11f0-be99-90b11c0f962c', 43, 159, 'Figma Prototyping', 2, 'uploads_demo/lectures/figma_prototype.mp4', NULL, NULL, '24:10', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(288, '87333567-b883-11f0-be99-90b11c0f962c', 44, 160, 'Macros & Meals', 1, 'uploads_demo/lectures/macros_meals.mp4', NULL, NULL, '19:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(289, '87333722-b883-11f0-be99-90b11c0f962c', 44, 161, 'Habit Formation', 2, 'uploads_demo/lectures/habit_formation.mp4', NULL, NULL, '14:45', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(290, '87352b59-b883-11f0-be99-90b11c0f962c', 45, 162, '50/30/20 Budget Rule', 1, 'uploads_demo/lectures/502020.mp4', NULL, NULL, '9:30', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(291, '87352d62-b883-11f0-be99-90b11c0f962c', 45, 163, 'Intro to Index Funds', 2, 'uploads_demo/lectures/index_funds.mp4', NULL, NULL, '14:50', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(292, '8737aa43-b883-11f0-be99-90b11c0f962c', 46, 164, 'RESTful Design', 1, 'uploads_demo/lectures/rest_design.mp4', NULL, NULL, '21:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(293, '8737ac3e-b883-11f0-be99-90b11c0f962c', 46, 165, 'JWT & OAuth', 2, 'uploads_demo/lectures/jwt_oauth.mp4', NULL, NULL, '19:45', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(294, '873a0d35-b883-11f0-be99-90b11c0f962c', 47, 166, 'Threat Modeling 101', 1, 'uploads_demo/lectures/threat_modeling.mp4', NULL, NULL, '23:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(295, '873a0f30-b883-11f0-be99-90b11c0f962c', 47, 167, 'Secure Coding Checklist', 2, 'uploads_demo/lectures/secure_coding.mp4', NULL, NULL, '17:30', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(296, '873dbf9c-b883-11f0-be99-90b11c0f962c', 48, 168, 'Color Harmony', 1, 'uploads_demo/lectures/color_harmony.mp4', NULL, NULL, '13:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(297, '873dc17a-b883-11f0-be99-90b11c0f962c', 48, 169, 'Grid Systems', 2, 'uploads_demo/lectures/grid_systems.mp4', NULL, NULL, '14:30', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(298, '873fed78-b883-11f0-be99-90b11c0f962c', 49, 170, 'Facebook Ads Setup', 1, 'uploads_demo/lectures/facebook_ads.mp4', NULL, NULL, '25:00', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(299, '873fefce-b883-11f0-be99-90b11c0f962c', 49, 171, 'Attribution Models', 2, 'uploads_demo/lectures/attribution.mp4', NULL, NULL, '20:30', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(300, '87414a1d-b883-11f0-be99-90b11c0f962c', 50, 172, 'Interviewing Users', 1, 'uploads_demo/lectures/user_interviews.mp4', NULL, NULL, '16:40', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(301, '87414b68-b883-11f0-be99-90b11c0f962c', 50, 173, 'Launch Checklist', 2, 'uploads_demo/lectures/launch_checklist.mp4', NULL, NULL, '14:20', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(302, '8742d39c-b883-11f0-be99-90b11c0f962c', 51, 174, 'HTML Elements Overview', 1, 'uploads_demo/lectures/html_elements.mp4', NULL, NULL, '12:12', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(303, '8742d626-b883-11f0-be99-90b11c0f962c', 51, 175, 'Flexbox & Grid', 2, 'uploads_demo/lectures/flexbox_grid.mp4', NULL, NULL, '18:05', NULL, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 07:05:46', '2025-11-03 07:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `course_lecture_views`
--

CREATE TABLE `course_lecture_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `course_lecture_id` bigint(20) NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_lessons`
--

CREATE TABLE `course_lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_lessons`
--

INSERT INTO `course_lessons` (`id`, `uuid`, `course_id`, `name`, `short_description`, `created_at`, `updated_at`) VALUES
(147, '87246d8c-b883-11f0-be99-90b11c0f962c', 37, 'React Fundamentals', 'Core React concepts', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(148, '87247fbf-b883-11f0-be99-90b11c0f962c', 37, 'Advanced State', 'State patterns & performance', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(149, '8729172c-b883-11f0-be99-90b11c0f962c', 38, 'ETL & Pipelines', 'ETL design and pipelines', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(150, '87291939-b883-11f0-be99-90b11c0f962c', 38, 'Scheduling & Monitoring', 'Airflow & observability', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(151, '872bdb7b-b883-11f0-be99-90b11c0f962c', 39, 'Time Management', 'Prioritize effectively', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(152, '872bddbe-b883-11f0-be99-90b11c0f962c', 39, 'Automation Tricks', 'Save hours with simple automations', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(153, '872d12e1-b883-11f0-be99-90b11c0f962c', 40, 'Leading Teams', 'Motivation & culture', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(154, '872d14ad-b883-11f0-be99-90b11c0f962c', 40, 'Decision Making', 'Frameworks for choices', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(155, '872f1d95-b883-11f0-be99-90b11c0f962c', 41, 'Financial Modeling', 'Build models for decisions', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(156, '872f1f62-b883-11f0-be99-90b11c0f962c', 41, 'Pitching', 'Investor-ready presentations', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(157, '87308fe3-b883-11f0-be99-90b11c0f962c', 42, 'Content Strategy', 'Planning & goals', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(158, '873091ac-b883-11f0-be99-90b11c0f962c', 42, 'Content Production', 'Writing & repurposing', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(159, '8731d905-b883-11f0-be99-90b11c0f962c', 43, 'User Research', 'Understanding users', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(160, '8731dad6-b883-11f0-be99-90b11c0f962c', 43, 'Prototyping', 'Figma & usability', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(161, '8732f14f-b883-11f0-be99-90b11c0f962c', 44, 'Nutrition Basics', 'Macros, calories, and meals', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(162, '8732f34b-b883-11f0-be99-90b11c0f962c', 44, 'Healthy Habits', 'Sleep, stress, and routines', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(163, '87340241-b883-11f0-be99-90b11c0f962c', 45, 'Budgeting', 'Create a sustainable budget', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(164, '87340422-b883-11f0-be99-90b11c0f962c', 45, 'Investing Basics', 'Intro to simple investing', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(165, '8737616e-b883-11f0-be99-90b11c0f962c', 46, 'API Design', 'REST & GraphQL principles', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(166, '87376349-b883-11f0-be99-90b11c0f962c', 46, 'Security & Testing', 'Auth, tests, and best practices', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(167, '8739b71d-b883-11f0-be99-90b11c0f962c', 47, 'Threat Modeling', 'Identify and prioritize threats', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(168, '8739b8ef-b883-11f0-be99-90b11c0f962c', 47, 'Secure Coding', 'Practices for developers', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(169, '873cfc46-b883-11f0-be99-90b11c0f962c', 48, 'Color & Typography', 'Basics of color theory', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(170, '873cfe41-b883-11f0-be99-90b11c0f962c', 48, 'Layout & Composition', 'Designing balanced layouts', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(171, '873f5c02-b883-11f0-be99-90b11c0f962c', 49, 'Ad Platforms', 'Facebook & Google setup', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(172, '873f5dcc-b883-11f0-be99-90b11c0f962c', 49, 'Measurement', 'Analytics & attribution', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(173, '8741028a-b883-11f0-be99-90b11c0f962c', 50, 'Discovery & Research', 'Find product-market fit', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(174, '8741043f-b883-11f0-be99-90b11c0f962c', 50, 'Delivery & Launch', 'Ship with confidence', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(175, '87427466-b883-11f0-be99-90b11c0f962c', 51, 'HTML Basics', 'Elements, tags, and structure', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(176, '87427674-b883-11f0-be99-90b11c0f962c', 51, 'CSS Fundamentals', 'Styling and responsive basics', '2025-11-03 07:05:46', '2025-11-03 07:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `course_resources`
--

CREATE TABLE `course_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_tags`
--

CREATE TABLE `course_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_upload_rules`
--

CREATE TABLE `course_upload_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `currency_placement` varchar(255) NOT NULL DEFAULT 'before' COMMENT 'before, after',
  `current_currency` varchar(255) NOT NULL DEFAULT 'no' COMMENT 'on, off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_code`, `symbol`, `currency_placement`, `current_currency`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 'before', 'on', NULL, '2025-11-10 22:21:01'),
(2, 'BDT', '৳', 'before', 'off', NULL, '2025-11-10 22:21:01'),
(3, 'INR', '₹', 'before', 'off', NULL, '2025-11-10 22:21:01'),
(4, 'GBP', '£', 'after', 'off', NULL, '2025-11-10 22:21:01'),
(5, 'MXN', '$', 'before', 'off', NULL, '2025-11-10 22:21:01'),
(6, 'SAR', 'SR', 'before', 'off', NULL, '2025-11-10 22:21:01'),
(7, 'TRY', '₺', 'after', 'off', NULL, '2025-11-10 22:21:01'),
(8, 'ARS', '$', 'before', 'off', NULL, '2025-11-10 22:21:01'),
(9, 'EUR', '€', 'before', 'off', NULL, '2025-11-10 22:21:01'),
(10, 'LKR', 'Rs.', 'before', 'off', NULL, '2025-11-10 22:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_uuid` varchar(191) NOT NULL,
  `device_type` varchar(191) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `device_hijacked_at` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_user`
--

CREATE TABLE `device_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_id` bigint(20) UNSIGNED NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `difficulty_levels`
--

CREATE TABLE `difficulty_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `difficulty_levels`
--

INSERT INTO `difficulty_levels` (`id`, `uuid`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fc89a122-5918-4a2c-88c3-1c21f1967fbd', 'Higher', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'c4cf5296-ad64-462c-9be7-c072ce09a833', 'Medium', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 2=deactivate',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment_as` tinyint(4) NOT NULL COMMENT '1=Instructor, 2=Student',
  `view` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=seen,2=not seen',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_notification_settings`
--

CREATE TABLE `email_notification_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `updates_from_classes` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `updates_from_teacher_discussion` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `activity_on_your_project` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `activity_on_your_discussion_comment` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `reply_comment` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_follower` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_class_by_someone_you_follow` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_live_session` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=inactive, 1-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `owner_user_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `consultation_slot_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) DEFAULT NULL,
  `user_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `completed_time` double DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `marks_per_question` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL COMMENT 'multiple_choice, true_false',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=unpublish, 1=published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_questions`
--

CREATE TABLE `faq_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_questions`
--

INSERT INTO `faq_questions` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'How does ITechAleart use AI to personalize learning?', 'ITechAleart leverages advanced AI algorithms to analyze your learning patterns, preferences, and goals. Our system recommends courses, adjusts difficulty levels, and suggests personalized learning paths to help you master skills faster and more effectively.', '2025-11-10 02:56:06', '2025-11-10 02:56:06'),
(2, 'What makes ITechAleart different from other LMS platforms?', 'ITechAleart stands out with its AI-powered features including automated course recommendations, intelligent content generation tools for instructors, real-time progress analytics, and adaptive learning paths that evolve based on student performance.', '2025-11-10 02:56:06', '2025-11-10 02:56:06'),
(3, 'Can instructors use AI tools to create course content?', 'Yes! ITechAleart provides instructors with AI-powered content generation tools that help create engaging quizzes, assignments, and learning materials. Our system can suggest relevant examples, generate practice questions, and even help structure course modules.', '2025-11-10 02:56:06', '2025-11-10 02:56:06'),
(4, 'How does the certification process work?', 'Upon completing a course, you\'ll receive an AI-verified certificate that validates your skills. Our system tracks your progress, assesses your understanding through adaptive quizzes, and ensures you\'ve mastered the key concepts before certification.', '2025-11-10 02:56:06', '2025-11-10 02:56:06'),
(5, 'Is my learning data secure and private?', 'Absolutely. ITechAleart prioritizes data privacy and security. Your learning data is encrypted, stored securely, and never shared with third parties. We use your data solely to improve your learning experience and provide personalized recommendations.', '2025-11-10 02:56:06', '2025-11-10 02:56:06'),
(6, 'What types of courses are available on ITechAleart?', 'ITechAleart offers courses in AI, Data Science, Machine Learning, Web Development, Cybersecurity, and more. Our platform features both self-paced courses and instructor-led programs, with content ranging from beginner to advanced levels.', '2025-11-10 02:56:06', '2025-11-10 02:56:06'),
(7, 'How does the AI recommendation system work?', 'Our AI analyzes your current skill level, learning history, career goals, and industry trends to recommend the most relevant courses. As you progress, the system continuously refines its recommendations to keep you on the optimal learning path.', '2025-11-10 02:56:06', '2025-11-10 02:56:06'),
(8, 'Can I track my learning progress and get insights?', 'Yes! ITechAleart provides detailed analytics and insights into your learning journey. You can view progress charts, identify knowledge gaps, compare your performance with peers, and receive AI-generated study recommendations.', '2025-11-10 02:56:06', '2025-11-10 02:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `forum_categories`
--

CREATE TABLE `forum_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `title` varchar(191) NOT NULL,
  `subtitle` varchar(191) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text NOT NULL,
  `forum_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=disable',
  `total_seen` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_post_comments`
--

CREATE TABLE `forum_post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `forum_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generate_contents`
--

CREATE TABLE `generate_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_image` tinyint(4) NOT NULL DEFAULT 0,
  `service` tinyint(4) NOT NULL,
  `keywords` text NOT NULL,
  `prompt` text NOT NULL,
  `creativity` tinyint(4) NOT NULL,
  `variation` tinyint(4) NOT NULL,
  `language` varchar(191) NOT NULL,
  `output` longtext NOT NULL,
  `token` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmeet_settings`
--

CREATE TABLE `gmeet_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `calender_id` varchar(191) NOT NULL,
  `timezone` varchar(191) NOT NULL,
  `token` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_mini_words_title` text DEFAULT NULL,
  `banner_first_line_title` varchar(255) DEFAULT NULL,
  `banner_second_line_title` varchar(255) DEFAULT NULL,
  `banner_second_line_changeable_words` text DEFAULT NULL,
  `banner_third_line_title` varchar(255) DEFAULT NULL,
  `banner_subtitle` text DEFAULT NULL,
  `banner_first_button_name` varchar(255) DEFAULT NULL,
  `banner_first_button_link` text DEFAULT NULL,
  `banner_second_button_name` varchar(255) DEFAULT NULL,
  `banner_second_button_link` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `special_feature_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `courses_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `product_area` tinyint(4) NOT NULL DEFAULT 0,
  `bundle_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `top_category_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `consultation_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `instructor_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `video_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `customer_says_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `achievement_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `faq_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `instructor_support_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `category_courses_area` tinyint(4) NOT NULL DEFAULT 0,
  `upcoming_courses_area` tinyint(4) NOT NULL DEFAULT 0,
  `subscription_show` tinyint(4) NOT NULL DEFAULT 1,
  `saas_show` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `banner_mini_words_title`, `banner_first_line_title`, `banner_second_line_title`, `banner_second_line_changeable_words`, `banner_third_line_title`, `banner_subtitle`, `banner_first_button_name`, `banner_first_button_link`, `banner_second_button_name`, `banner_second_button_link`, `banner_image`, `special_feature_area`, `courses_area`, `product_area`, `bundle_area`, `top_category_area`, `consultation_area`, `instructor_area`, `video_area`, `customer_says_area`, `achievement_area`, `faq_area`, `instructor_support_area`, `category_courses_area`, `upcoming_courses_area`, `subscription_show`, `saas_show`, `created_at`, `updated_at`) VALUES
(1, '[\"Imporve\",\"with\",\"AI\"]', 'Build your skills', 'Master', '[\"AI\",\"Data Science\",\"Machine Learning\"]', 'and launch your career', 'ITechAleart helps learners and instructors accelerate outcomes with AI-driven course recommendations, automated content tools, and practical projects.', 'Take A Tour', '#', 'Popular Courses', '#', 'uploads/home/1762833170-QD5yjL5SrD.png', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, '2022-12-04 17:05:33', '2025-11-10 22:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `home_special_features`
--

CREATE TABLE `home_special_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `professional_title` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `consultancy_area` tinyint(4) NOT NULL DEFAULT 3,
  `about_me` mediumtext DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `social_link` mediumtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_private` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `remove_from_web_search` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `auto_content_approval` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=approved, 0=pending',
  `is_subscription_enable` tinyint(4) DEFAULT 0,
  `is_offline` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'offline status',
  `offline_message` varchar(191) DEFAULT NULL COMMENT 'offline message',
  `consultation_available` tinyint(4) DEFAULT 0 COMMENT '1=yes, 0=no',
  `hourly_rate` int(11) DEFAULT 0,
  `hourly_old_rate` decimal(10,2) DEFAULT NULL,
  `available_type` tinyint(4) DEFAULT 3 COMMENT '1=In-person, 0=Online, 3=Both',
  `cv_file` varchar(255) DEFAULT NULL,
  `cv_filename` varchar(255) DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `uuid`, `user_id`, `organization_id`, `country_id`, `province_id`, `state_id`, `city_id`, `first_name`, `last_name`, `professional_title`, `phone_number`, `postal_code`, `address`, `consultancy_area`, `about_me`, `gender`, `social_link`, `slug`, `is_private`, `remove_from_web_search`, `auto_content_approval`, `status`, `is_subscription_enable`, `is_offline`, `offline_message`, `consultation_available`, `hourly_rate`, `hourly_old_rate`, `available_type`, `cv_file`, `cv_filename`, `level_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'e5148f0e-3965-40e5-8058-d891f9b006e5', 68, NULL, 1, NULL, 5, 29, 'Emily', 'Carter', 'Senior UX Designer', '2135550198', '90001', '123 Sunset Blvd, Los Angeles, CA', 3, 'Passionate about crafting intuitive digital experiences.', 'Female', '{\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"pinterest\":null}', 'Emily-Carter-256721', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 22:28:43', '2025-11-11 01:32:10', NULL),
(9, '65af3797-d319-45a6-a6e3-e8a013eb3c8a', 69, NULL, 1, NULL, 9, 50, 'James', 'Henderson', 'Data Analyst', '3055550142', '33101', '456 Ocean Dr, Miami, FL', 3, 'Helping teams make data-driven decisions.', 'Male', '{\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"pinterest\":null}', 'James-Henderson-881762', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 22:42:35', '2025-11-11 01:30:36', NULL),
(10, 'cf931830-6c2e-4a3c-bad4-c06a721b3916', 70, NULL, 1, NULL, 43, 256, 'Sophia', 'Nguyen', 'Marketing Strategist', '5125550177', '73301', '789 Congress Ave, Austin, TX', 3, 'Strategic thinker with a love for storytelling.', 'Female', '{\"facebook\":\"fb.com\\/sophia.nguyen\",\"twitter\":\"twitter.com\\/sophiamarkets\",\"linkedin\":\"linkedin.com\\/in\\/sophianguyen\",\"pinterest\":\"pinterest.com\\/sophianguyen\"}', 'Sophia-Nguyen-154144', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 22:49:14', '2025-11-11 01:31:57', NULL),
(11, '4e134bcc-000f-47b5-99f5-3fa49b34f300', 71, NULL, 1, NULL, 5, 28, 'Michael', 'Brown', 'Software Engineer', '8185550133', '91331', '321 Valley Rd, San Fernando, CA', 3, 'Building scalable web applications with empathy.', 'Male', '{\"facebook\":\"fb.com\\/michael.brown\",\"twitter\":\"twitter.com\\/mikecodes\",\"linkedin\":\"linkedin.com\\/in\\/michaelbrown\",\"pinterest\":\"pinterest.com\\/mikebrown\"}', 'Michael-Brown-523195', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 22:51:00', '2025-11-11 01:29:33', NULL),
(12, '53fe97c4-db28-4142-b3b5-9695311e5c7a', 72, NULL, 1, NULL, 9, 52, 'Olivia', 'Martinez', 'Instructional Designer', '4075550188', '32801', '654 Pine St, Orlando, FL', 3, 'Designing learning experiences that inspire.', 'Female', '{\"facebook\":\"fb.com\\/olivia.martinez\",\"twitter\":\"twitter.com\\/oliviateaches\",\"linkedin\":\"linkedin.com\\/in\\/oliviamartinez\",\"pinterest\":\"pinterest.com\\/oliviamartinez\"}', 'Olivia-Martinez-946233', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 22:53:03', '2025-11-11 01:31:39', NULL),
(13, 'fca92d20-6848-439b-bb8b-b982a6b92bb0', 73, NULL, 1, NULL, 43, 253, 'Daniel', 'Lee', 'Cybersecurity Consultant', '4695550166', '75001', '987 Elm St, Addison, TX', 3, 'Protecting digital assets with precision.', 'Male', '{\"facebook\":\"fb.com\\/daniel.lee\",\"twitter\":\"twitter.com\\/danielsecure\",\"linkedin\":\"linkedin.com\\/in\\/daniellee\",\"pinterest\":\"pinterest.com\\/daniellee\"}', 'Daniel-Lee-316098', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 22:55:43', '2025-11-11 01:29:15', NULL),
(14, '32dc7d14-6650-469c-8a38-b445a9afc4e6', 74, NULL, 1, NULL, 5, 26, 'Ava', 'Robinson', 'Content Strategist', '9495550122', '92602', '159 Maple Ave, Irvine, CA', 3, 'Crafting content that connects and converts.', 'Female', '{\"facebook\":\"fb.com\\/ava.robinson\",\"twitter\":\"twitter.com\\/avacontent\",\"linkedin\":\"linkedin.com\\/in\\/avarobinson\",\"pinterest\":\"pinterest.com\\/avarobinson\"}', 'Ava-Robinson-743215', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 22:57:19', '2025-11-11 01:31:24', NULL),
(15, 'ee262966-304c-42de-af88-1a6c8b95ff0f', 75, NULL, 1, NULL, 9, 53, 'William', 'Scott', 'AI Researcher', '9545550155', '33301', '753 Tech Blvd, Fort Lauderdale, FL', 3, 'Exploring the future of intelligent systems.', 'Male', '{\"facebook\":\"fb.com\\/william.scott\",\"twitter\":\"twitter.com\\/williamai\",\"linkedin\":\"linkedin.com\\/in\\/williamscott\",\"pinterest\":\"pinterest.com\\/williamscott\"}', 'William-Scott-507528', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 23:01:24', '2025-11-11 01:28:57', NULL),
(16, 'cbae2124-bb3c-44d5-9f02-da5f703a3581', 76, NULL, 1, NULL, 43, 254, 'Isabella', 'Turner', 'Graphic Designer', '2105550111', '78201', '852 Design Ln, San Antonio, TX', 3, 'Designing with purpose and personality.', 'Female', '{\"facebook\":\"fb.com\\/isabella.turner\",\"twitter\":\"twitter.com\\/isabelladesign\",\"linkedin\":\"linkedin.com\\/in\\/isabellaturner\",\"pinterest\":\"pinterest.com\\/isabellaturner\"}', 'Isabella-Turner-877200', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 23:03:11', '2025-11-11 01:31:09', NULL),
(17, 'e57e66d8-8397-4ce8-9e6c-33936b2c0362', 77, NULL, 1, NULL, 5, 30, 'Benjamin', 'Clark', 'Project Manager', '3105550199', '90210', '963 Beverly Hills Rd, Beverly Hills, CA', 3, 'Delivering results through collaboration.', 'Male', '{\"facebook\":\"fb.com\\/benjamin.clark\",\"twitter\":\"twitter.com\\/benproject\",\"linkedin\":\"linkedin.com\\/in\\/benjaminclark\",\"pinterest\":\"pinterest.com\\/benjaminclark\"}', 'Benjamin-Clark-303515', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 23:04:38', '2025-11-11 01:28:42', NULL),
(18, '73f864a0-7239-4e8b-be75-9c1388bcf668', 78, NULL, 1, NULL, 9, 51, 'Mia', 'Walker', 'Health Coach', '7865550105', '33133', '147 Wellness Way, Coconut Grove, FL', 3, 'Empowering people to live healthier lives.', 'Female', '{\"facebook\":\"fb.com\\/mia.walker\",\"twitter\":\"twitter.com\\/miawellness\",\"linkedin\":\"linkedin.com\\/in\\/miawalker\",\"pinterest\":\"pinterest.com\\/miawalker\"}', 'Mia-Walker-927244', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 23:06:16', '2025-11-11 01:30:52', NULL),
(19, '639ca90f-45e6-4511-b769-d43b1a23982a', 79, NULL, 1, NULL, 43, 253, 'Henry', 'Adams', 'DevOps Engineer', '8325550170', '77001', '369 Cloud St, Houston, TX', 3, 'Automating infrastructure for seamless deployment.', 'Male', '{\"facebook\":\"fb.com\\/henry.adams\",\"twitter\":\"twitter.com\\/henrydevops\",\"linkedin\":\"linkedin.com\\/in\\/henryadams\",\"pinterest\":\"pinterest.com\\/henryadams\"}', 'Henry-Adams-369438', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-11-02 23:07:53', '2025-11-11 01:28:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instructor_awards`
--

CREATE TABLE `instructor_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `winning_year` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_certificates`
--

CREATE TABLE `instructor_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `passing_year` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_consultation_day_statuses`
--

CREATE TABLE `instructor_consultation_day_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_features`
--

CREATE TABLE `instructor_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructor_features`
--

INSERT INTO `instructor_features` (`id`, `logo`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/instructor_feature/build-brand.png', 'Build your Bran', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'uploads_demo/instructor_feature/instructor-support-2.png', 'Inspire learners', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'uploads_demo/instructor_feature/top-instructor-heading-img.png', 'Get rewarded', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_procedures`
--

CREATE TABLE `instructor_procedures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructor_procedures`
--

INSERT INTO `instructor_procedures` (`id`, `image`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/instructor_procedure/become-instructor-1.jpg', 'Plan Your Curriculum', 'Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'uploads_demo/instructor_procedure/become-instructor-2.jpg', 'Plan Your Curriculum', 'Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'uploads_demo/instructor_procedure/become-instructor-3.jpg', 'Plan Your Curriculum', 'Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_skill`
--

CREATE TABLE `instructor_skill` (
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_supports`
--

CREATE TABLE `instructor_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `button_name` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructor_supports`
--

INSERT INTO `instructor_supports` (`id`, `logo`, `title`, `subtitle`, `button_name`, `button_link`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/instructor_support/instructor-support-1.png', 'Courses', 'Single stroke at the present moment and yet I feel that was', 'Popular Courses', '/courses', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'uploads_demo/instructor_support/instructor-support-2.png', 'Expert instructor', 'Single stroke at the present moment and yet I feel that was', 'Explore Instructor', '/all-instructor', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'uploads_demo/instructor_support/instructor-support-3.png', '27/4 online support', 'Single stroke at the present moment and yet I feel that was', 'Support Center', '/support-ticket-faq', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) NOT NULL,
  `iso_code` varchar(255) NOT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=active,2=inactive',
  `default_language` varchar(255) DEFAULT NULL COMMENT 'on,off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `iso_code`, `flag`, `rtl`, `status`, `default_language`, `created_at`, `updated_at`) VALUES
(1, 'EN ( English )', 'en', 'uploads_demo/default/en.png', 0, 1, 'on', NULL, '2025-11-10 22:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `learn_key_points`
--

CREATE TABLE `learn_key_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learn_key_points`
--

INSERT INTO `learn_key_points` (`id`, `course_id`, `name`, `created_at`, `updated_at`) VALUES
(143, 37, 'Design scalable React architectures', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(144, 37, 'Optimize React app performance', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(145, 37, 'Choose the right state management tool', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(146, 38, 'Design ETL pipelines', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(147, 38, 'Schedule and monitor workflows', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(148, 38, 'Write effective analytics SQL', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(149, 39, 'Better time management', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(150, 39, 'Automate repetitive tasks', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(151, 39, 'Use templates for consistency', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(152, 40, 'Drive team performance', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(153, 40, 'Provide impactful feedback', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(154, 40, 'Make data-informed decisions', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(155, 41, 'Create investor-ready financials', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(156, 41, 'Model key business drivers', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(157, 41, 'Prepare a compelling pitch deck', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(158, 42, 'Plan content that converts', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(159, 42, 'Measure content ROI', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(160, 42, 'Repurpose effectively', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(161, 43, 'Conduct user research', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(162, 43, 'Prototype in Figma', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(163, 43, 'Run usability tests', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(164, 44, 'Plan balanced meals', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(165, 44, 'Build healthy habits', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(166, 44, 'Simple exercise routines', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(167, 45, 'Create a realistic budget', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(168, 45, 'Start investing simply', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(169, 45, 'Plan for emergencies', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(170, 46, 'Design stable APIs', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(171, 46, 'Secure your endpoints', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(172, 46, 'Automated testing for APIs', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(173, 47, 'Recognize security risks', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(174, 47, 'Write secure code', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(175, 47, 'Respond to incidents', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(176, 48, 'Use color thoughtfully', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(177, 48, 'Choose readable typography', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(178, 48, 'Structure layouts with grids', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(179, 49, 'Scale ads profitably', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(180, 49, 'Measure campaigns effectively', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(181, 49, 'Run proper A/B tests', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(182, 50, 'Validate product ideas', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(183, 50, 'Prioritize work effectively', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(184, 50, 'Measure product success', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(185, 51, 'Write semantic HTML', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(186, 51, 'Lay out responsive UIs', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(187, 51, 'Use modern CSS layout', '2025-11-03 07:05:46', '2025-11-03 07:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `live_classes`
--

CREATE TABLE `live_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_topic` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` varchar(255) NOT NULL COMMENT 'duration must be minutes',
  `start_url` mediumtext DEFAULT NULL,
  `join_url` mediumtext DEFAULT NULL,
  `meeting_id` varchar(255) DEFAULT NULL,
  `meeting_password` varchar(255) DEFAULT NULL,
  `meeting_host_name` varchar(255) DEFAULT NULL COMMENT 'zoom,bbb,jitsi',
  `moderator_pw` varchar(255) DEFAULT NULL COMMENT 'use only for bbb',
  `attendee_pw` varchar(255) DEFAULT NULL COMMENT 'use only for bbb',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1=static, 2=dynamic',
  `status` tinyint(4) DEFAULT NULL COMMENT '1=active, 2=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `url`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Blogs', 'blogs', NULL, 1, 2, '2022-12-04 17:05:33', '2025-11-07 22:25:44'),
(2, 'About', 'about', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'Contact', 'contact', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'Support', 'support-ticket-faq', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, 'Privacy Policy', 'privacy-policy', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'Cookie Policy', 'cookie-policy', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'Terms & Conditions', 'terms-conditions', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'About', 'about', 'https://itechaleart.com/about-us', 3, 1, '2022-12-04 17:05:33', '2025-11-03 04:29:00'),
(9, 'FAQ', 'faq', 'https://itechaleart.com/faq', 3, 1, '2022-12-04 17:05:33', '2025-11-03 04:28:11'),
(10, 'Blogs', 'blogs', 'https://itechaleart.com/blogs', 3, 1, '2022-12-04 17:05:33', '2025-11-03 04:28:33'),
(11, 'Contact', 'contact-us', 'https://itechaleart.com/contact-us', 4, 1, '2022-12-04 17:05:33', '2025-11-03 04:29:17'),
(12, 'Support', 'support-ticket-faq', 'https://itechaleart.com/support-ticket-faq', 4, 1, '2022-12-04 17:05:33', '2025-11-03 04:30:12'),
(13, 'Courses', 'courses', 'https://itechaleart.com/courses', 4, 1, '2022-12-04 17:05:33', '2025-11-03 04:29:39'),
(14, 'Refund Policy', 'refund-policy', NULL, 1, 2, '2022-12-04 23:05:33', '2025-11-03 00:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `meta_title` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `uuid`, `slug`, `page_name`, `meta_title`, `meta_description`, `meta_keyword`, `og_image`, `created_at`, `updated_at`) VALUES
(1, '4bcd0b6f-5692-4966-8a4e-8884d72edaa4', 'home', 'Home', 'ITechAleart — AI-powered LMS', 'ITechAleart offers AI-powered course creation, personalized learning paths, and verified certificates to accelerate careers.', 'Lmszai, Lms, Learning, Course', NULL, NULL, '2023-07-18 07:44:59'),
(2, '3c3ef58d-d459-441b-9b90-370f840b2da1', 'course', 'Course List', 'Courses', 'LMSZai Course List', 'Lmszai, Lms, Learning, Course', NULL, NULL, '2023-07-18 07:44:59'),
(5, '62892323-3220-408d-81ea-8875dc1065f4', 'blog', 'Blog List', 'Blog', 'LMSZAI Blog', 'blog, course', NULL, NULL, '2023-07-18 07:44:59'),
(7, '4869c7e6-9635-4203-850a-09a41f4954cc', 'about_us', 'About Us', 'About ITechAleart', 'Learn about ITechAleart — our mission, team, and how we use AI to improve learning outcomes.', 'about us', NULL, NULL, '2023-07-18 07:44:59'),
(8, 'b7b70870-0248-4781-a9a3-a76cffefb534', 'contact_us', 'Contact Us', 'Contact ITechAleart', 'Contact our support and partnerships team at ITechAleart for help, instructor onboarding, and collaborations.', 'lmszai, contact us', NULL, NULL, '2023-07-18 07:44:59'),
(9, '07d0a702-7a57-428f-8003-c172679ecbd2', 'support_faq', 'Support Page', 'Support', 'LMSZAI support ticket', 'lmszai, support, ticket', NULL, NULL, '2023-07-18 07:44:59'),
(10, 'f00f9d36-6b9c-47ee-8649-8f50a2f9fe7a', 'privacy_policy', 'Privacy Policy', 'Privacy Policy', 'LMSZAI Privacy Policy', 'lmszai, privacy, policy', NULL, NULL, '2023-07-18 07:44:59'),
(11, 'f74400a5-415f-4604-849e-a03e4896ff99', 'cookie_policy', 'Cookie Policy', 'Cookie Policy', 'LMSZAI Cookie Policy', 'lmszai, cookie, policy', NULL, NULL, '2023-07-18 07:44:59'),
(12, '2e0f0a6e-c573-475c-8913-95e241504c1a', 'faq', 'FAQ', 'ITechAleart FAQ', 'Common questions about AI features, personalization and instructor tools at ITechAleart.', 'lmszai, faq', NULL, NULL, '2023-07-18 07:44:59'),
(13, '2e0f0a6e-c573-479c-8913-95e241504c1a', 'terms_and_condition', 'Terms & Conditions', 'Terms & Conditions', 'LMSZAI Terms & Conditions Policy', 'Terms,Conditions', NULL, NULL, '2023-07-18 07:44:59'),
(14, '2e0f0a6e-c573-479c-8913-95e24150000a', 'refund_policy', 'Refund Policy', 'Refund Policy', 'LMSZAI Refund Policy', 'Refund Policies', NULL, NULL, '2023-07-18 07:44:59'),
(51, 'd538d469-265f-44fc-95b9-dc57d10f8c81', 'default', 'Default', 'Demo Title', 'Demo Description', 'Demo Keywords', '', NULL, NULL),
(52, 'a241f1cb-3711-4609-90b2-976cb1ab53f7', 'auth', 'Auth Page', 'Auth Page', 'Auth Page Meta Description', 'Auth Page Meta Keywords', '', NULL, NULL),
(53, '26092a11-6aea-44ce-8880-41b47c692324', 'bundle', 'Bundle List', 'Bundle List', 'Bundle List Page Meta Description', 'Bundle List Page Meta Keywords', '', NULL, NULL),
(54, '42c68cfa-028f-4ffd-b4a0-b8da50978854', 'consultation', 'Consultation List', 'Consultation List', 'Consultation List Page Meta Description', 'Consultation List Page Meta Keywords', '', NULL, NULL),
(55, '857e3c5c-8430-4c5d-b009-e8f7e33dceb0', 'instructor', 'Instructor List', 'Instructor List', 'Instructor List Page Meta Description', 'Instructor List Page Meta Keywords', '', NULL, NULL),
(56, '2f9557c3-c10e-4b47-bf1c-040b6f0182e3', 'saas', 'Saas List', 'Saas List', 'Saas List Page Meta Description', 'Saas List Page Meta Keywords', '', NULL, NULL),
(57, 'b945d05c-d72b-4d1e-838d-f552c769d28f', 'subscription', 'Subscription List', 'Subscription List', 'Subscription List Page Meta Description', 'Subscription List Page Meta Keywords', '', NULL, NULL),
(58, 'a26d5ab1-1fd5-4eeb-9b32-04469f751cbf', 'verify_certificate', 'Verify certificate List', 'Verify certificate List', 'Verify certificate List Page Meta Description', 'Verify certificate List Page Meta Keywords', '', NULL, NULL),
(59, 'e5089c78-bca2-4d57-9cd4-2f3792d09810', 'forum', 'Forum', 'ITechAleart Community Forum', 'Join the ITechAleart community to ask questions, share knowledge, and discover AI-powered learning resources.', 'Forum Page Meta Keywords', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_10_13_140209_create_devices_table', 1),
(6, '2020_10_13_150113_create_device_user_table', 1),
(7, '2022_03_08_120002_create_categories_table', 1),
(8, '2022_03_08_124911_create_blogs_table', 1),
(9, '2022_03_10_113530_create_subcategories_table', 1),
(10, '2022_03_10_114913_create_tags_table', 1),
(11, '2022_03_10_120141_create_difficulty_levels_table', 1),
(12, '2022_03_10_120351_create_course_languages_table', 1),
(13, '2022_03_12_120608_create_currencies_table', 1),
(14, '2022_03_13_084533_create_instructors_table', 1),
(15, '2022_03_13_084819_create_settings_table', 1),
(16, '2022_03_13_100229_create_instructor_certificates_table', 1),
(17, '2022_03_14_052503_create_instructor_awards_table', 1),
(18, '2022_03_14_123059_create_metas_table', 1),
(19, '2022_03_15_092420_create_languages_table', 1),
(20, '2022_03_21_105943_create_countries_table', 1),
(21, '2022_03_21_110018_create_states_table', 1),
(22, '2022_03_21_110027_create_cities_table', 1),
(23, '2022_03_22_123520_create_user_cards_table', 1),
(24, '2022_03_23_061124_create_email_notification_settings_table', 1),
(25, '2022_03_23_104316_create_courses_table', 1),
(26, '2022_03_23_104847_create_course_tags_table', 1),
(27, '2022_03_29_130632_create_course_lessons_table', 1),
(28, '2022_03_29_130734_create_course_lectures_table', 1),
(29, '2022_04_02_104955_create_exams_table', 1),
(30, '2022_04_02_111930_create_questions_table', 1),
(31, '2022_04_02_112024_create_question_options_table', 1),
(32, '2022_04_02_124631_create_take_exams_table', 1),
(33, '2022_04_02_131147_create_answers_table', 1),
(34, '2022_04_02_132217_create_course_lecture_views_table', 1),
(35, '2022_04_03_093413_create_products_table', 1),
(36, '2022_04_07_105025_create_cart_management_table', 1),
(37, '2022_04_08_081131_create_wishlists_table', 1),
(38, '2022_04_09_060811_create_contact_us_issues_table', 1),
(39, '2022_04_09_060926_create_contact_us_table', 1),
(40, '2022_04_11_041217_create_about_us_generals_table', 1),
(41, '2022_04_11_041343_create_our_histories_table', 1),
(42, '2022_04_11_041419_create_team_members_table', 1),
(43, '2022_04_11_043000_create_instructor_supports_table', 1),
(44, '2022_04_11_043147_create_client_logos_table', 1),
(45, '2022_04_14_094216_create_instructor_features_table', 1),
(46, '2022_04_14_094313_create_instructor_procedures_table', 1),
(47, '2022_04_15_051038_create_faq_questions_table', 1),
(48, '2022_04_15_075433_create_home_special_features_table', 1),
(49, '2022_04_15_093248_create_homes_table', 1),
(50, '2022_04_16_085648_create_blog_categories_table', 1),
(51, '2022_04_16_111415_create_blog_tags_table', 1),
(52, '2022_04_18_071259_create_blog_comments_table', 1),
(53, '2022_04_18_103636_create_students_table', 1),
(54, '2022_04_20_090721_create_assignments_table', 1),
(55, '2022_04_21_063711_create_assignment_submits_table', 1),
(56, '2022_04_21_072930_create_assignment_files_table', 1),
(57, '2022_04_22_084931_create_course_resources_table', 1),
(58, '2022_04_22_101227_create_notice_boards_table', 1),
(59, '2022_04_23_044138_create_live_classes_table', 1),
(60, '2022_04_24_121452_create_orders_table', 1),
(61, '2022_04_24_121712_create_order_items_table', 1),
(62, '2022_04_24_122152_create_order_billing_addresses_table', 1),
(63, '2022_04_26_143537_create_coupons_table', 1),
(64, '2022_04_26_145556_create_coupon_instructors_table', 1),
(65, '2022_04_26_145742_create_coupon_courses_table', 1),
(66, '2022_04_27_124958_create_withdraws_table', 1),
(67, '2022_04_29_140534_create_reviews_table', 1),
(68, '2022_04_30_140200_create_discussions_table', 1),
(69, '2022_05_01_015615_create_learn_key_points_table', 1),
(70, '2022_05_01_015853_add_average_rating_to_courses_table', 1),
(71, '2022_05_08_183053_create_certificates_table', 1),
(72, '2022_05_09_122033_create_ranking_levels_table', 1),
(73, '2022_05_10_130657_add_video_to_courses_table', 1),
(74, '2022_05_11_113029_add_original_name_and_size_to_assignments_table', 1),
(75, '2022_05_11_122523_add_original_name_and_size_to_assignment_submits_table', 1),
(76, '2022_05_11_182134_add_view_to_discussions_table', 1),
(77, '2022_05_11_192633_create_support_ticket_questions_table', 1),
(78, '2022_05_12_121255_create_tickets_table', 1),
(79, '2022_05_12_121306_create_ticket_messages_table', 1),
(80, '2022_05_12_121540_create_ticket_departments_table', 1),
(81, '2022_05_12_121557_create_ticket_related_services_table', 1),
(82, '2022_05_12_121621_create_ticket_priorities_table', 1),
(83, '2022_05_12_175640_create_certificate_by_instructors_table', 1),
(84, '2022_05_13_165207_create_chat_messages_table', 1),
(85, '2022_05_15_112035_create_permission_tables', 1),
(86, '2022_05_16_125530_add_provider_id_and_avatar_to_users_table', 1),
(87, '2022_05_18_125922_create_pages_table', 1),
(88, '2022_05_18_152824_create_notifications_table', 1),
(89, '2022_05_18_161357_create_menus_table', 1),
(90, '2022_05_19_192216_create_email_templates_table', 1),
(91, '2022_05_22_165419_create_user_paypals_table', 1),
(92, '2022_05_25_131858_add_images_to_about_us_generals_table', 1),
(93, '2022_05_25_220619_create_student_certificates_table', 1),
(94, '2022_05_26_171757_create_promotions_table', 1),
(95, '2022_05_26_172008_create_promotion_courses_table', 1),
(96, '2022_05_27_154633_create_special_promotion_tags_table', 1),
(97, '2022_05_27_154757_create_special_promotion_tag_courses_table', 1),
(98, '2022_05_28_185325_add_subtitle_to_courses', 1),
(99, '2022_05_28_191647_create_course_upload_rules_table', 1),
(100, '2022_05_31_131109_add_forgot_token_to_users', 1),
(101, '2022_06_01_114750_add_cv_file_and_filename_to_instructors', 1),
(102, '2022_06_13_132354_create_policies_table', 1),
(103, '2022_06_14_180425_add_conversion_rate_and_current_currency_and_currency_amount_to_orders', 1),
(104, '2022_06_15_181443_add_default_language_to_languages', 1),
(105, '2022_07_05_171632_create_banks_table', 1),
(106, '2022_07_06_171634_add_field_to_orders_table', 1),
(107, '2022_07_20_114546_add_meeting_host_name_and_moderator_pw_and_attendee_pw_to_live_classes_table', 1),
(108, '2022_07_22_123555_add_paystack_refrence_number_to_orders_table', 1),
(109, '2022_07_25_151244_add_intro_video_check_and_into_youtube_video_id_to_courses_table', 1),
(110, '2022_08_04_160730_add_city_id_to_instructors', 1),
(111, '2022_08_06_140811_create_bundles_table', 1),
(112, '2022_08_06_140834_create_bundle_courses_table', 1),
(113, '2022_08_08_134556_add_bundle_id_to_wishlists', 1),
(114, '2022_08_08_181304_add_bundle_id_and_bundle_course_ids_to_cart_management', 1),
(115, '2022_08_08_193241_add_bundle_id_to_order_items', 1),
(116, '2022_08_11_180251_create_forum_categories_table', 1),
(117, '2022_08_11_183543_create_forum_posts_table', 1),
(118, '2022_08_12_113405_create_forum_post_comments_table', 1),
(119, '2022_08_13_170419_add_available_and_hourly_rate_to_instructors_table', 1),
(120, '2022_08_13_175625_create_consultation_slots_table', 1),
(121, '2022_08_16_152302_create_instructor_consultation_day_statuses_table', 1),
(122, '2022_08_16_180220_create_booking_histories_table', 1),
(123, '2022_08_18_160213_add_consultation_slot_id_and_consultation_details_and_consultation_date_to_cart_management_table', 1),
(124, '2022_08_19_114213_add_consultation_slot_id_and_consultation_date_to_order_items_table', 1),
(125, '2022_08_22_160209_add_some_new_fields_to_course_lectures_table', 1),
(126, '2022_08_30_115403_add_new_attributes_to_homes_table', 1),
(127, '2022_09_07_185945_add_start_url_to_live_classes_table', 1),
(128, '2022_09_07_193347_add_start_url_to_booking_histories_table', 1),
(129, '2022_09_08_124610_add_is_affiliator_in_user_table', 1),
(130, '2022_09_08_124610_add_is_reference_in_cart_management_table', 1),
(131, '2022_09_08_124610_create_affiliate_request_table', 1),
(132, '2022_09_08_124610_create_zoom_settings_table', 1),
(133, '2022_09_24_121452_create_affiliate_history_table', 1),
(134, '2022_09_24_121452_create_transaction_table', 1),
(135, '2022_10_10_151609_create_scorm_tables', 1),
(136, '2022_10_10_163101_add_scorm_related_column_in_tables', 1),
(137, '2022_10_10_163914_add_vimeo_upload_type_to_course_lectures', 1),
(138, '2022_10_13_163940_add_two_columns_in_scorm_table', 1),
(139, '2022_10_13_172655_add_completed_time_in_order_items_table', 1),
(140, '2022_10_15_122521_add_drip_content_in_courses_table', 1),
(141, '2022_10_15_122738_add_columns_in_course_lessons_table', 1),
(142, '2022_10_17_124610_add_error_msg_in_order_table', 1),
(143, '2022_10_18_154121_create_enrollments_table', 1),
(144, '2022_10_18_200250_add_ranking_level_column_in_instructures_table', 1),
(145, '2022_10_19_120829_add_access_period_in_bundles_table', 1),
(146, '2022_10_19_182826_add_enrollment_id_in_course_lecture_views_table', 1),
(147, '2022_10_23_161315_add_status_column_in_certificates_table', 1),
(148, '2022_10_24_171913_add_column_in_certificate_by_instructors_table', 1),
(149, '2022_10_25_155804_add_certificate_number_in_student_certificates_table', 1),
(150, '2022_10_25_184424_add_mobile_number_filed_in_users_table', 1),
(151, '2022_10_26_113449_create_gmeet_seetings_table', 1),
(152, '2022_10_28_121109_create_course_instructors_table', 1),
(153, '2022_11_01_135508_create_packages_table', 1),
(154, '2022_11_01_171131_create_user_packages_table', 1),
(155, '2022_11_01_183602_add_is_subscription_enable_in_courses_table', 1),
(156, '2022_11_03_132149_add_column_in_homes_table', 1),
(157, '2022_11_03_170747_create_payments_table', 1),
(158, '2022_11_05_171546_add_consultancy_area_to_instructors_table', 1),
(159, '2022_11_05_171546_add_lat_long_to_users_table', 1),
(160, '2022_11_07_155848_add_level_column_in_packages_table', 1),
(161, '2022_11_08_154156_add_user_package_id_in_enrollments_table', 1),
(162, '2022_11_08_185200_add_column_in_cart_management_table', 1),
(163, '2022_11_10_164850_create_monthly_distribution_histories_table', 1),
(164, '2022_11_11_121955_add_field_to_ranking_levels_table', 1),
(165, '2022_11_11_160210_create_subscription_commission_histories_table', 1),
(166, '2022_11_11_175319_create_skills_table', 1),
(167, '2022_11_11_195218_create_instructor_skills_table', 1),
(168, '2022_11_12_151558_add_old_price_to_courses_table', 1),
(169, '2022_11_12_160731_create_follow_user_table', 1),
(170, '2022_11_12_170058_add_hourly_old_rate_to_instructors_table', 1),
(171, '2022_11_14_084533_create_organizations_table', 1),
(172, '2022_11_15_120508_add_organigation_id_to_courses_table', 1),
(173, '2022_11_15_122138_add_organigation_id_to_instructor_certificates_table', 1),
(174, '2022_11_15_122314_add_organigation_id_to_instructor_awards_table', 1),
(175, '2022_11_16_122011_add_organigation_id_to_instructors_table', 1),
(176, '2022_11_16_184045_change_column_in_user_packages_table', 1),
(177, '2022_11_16_194601_add_organigation_id_to_students_table', 1),
(178, '2022_11_19_150640_create_organization_skill_table', 1),
(179, '2022_11_19_151659_change_column_in_tables', 1),
(180, '2022_11_21_154849_create_user_badges_table', 1),
(181, '2022_11_24_150320_add_soft_delete_in_users_table', 1),
(182, '2022_11_24_195705_add_private_mode_column_in_courses_table', 1),
(183, '2022_11_25_162623_change_column_in_instructors_table', 1),
(184, '2022_11_28_193527_add_is_subscription_enable_to_instructors_table', 1),
(185, '2022_11_29_184848_change_column_in_user_packages_table', 1),
(186, '2022_11_29_190107_add_is_default_column_in_packages_table', 1),
(187, '2022_12_09_153943_create_table_beneficiaries_table', 1),
(188, '2022_12_09_154915_add_benificiary_id_column_in_withdraws_table', 1),
(189, '2023_01_14_192049_update_menus_table', 1),
(190, '2023_05_07_154147_add_column_in_instructors_table', 1),
(191, '2023_05_08_115352_is_featured_in_courses_table', 1),
(192, '2023_05_08_122911_add_filed_in_homes_table', 1),
(193, '2023_05_14_072415_create_chats_table', 1),
(194, '2023_05_14_115545_create_refunds_table', 1),
(195, '2023_05_15_155921_add_column_in_transactions_table', 1),
(196, '2023_05_17_113730_add_receiver_id_in_cart_management_table', 1),
(197, '2023_05_17_113928_add_receiver_id_in_order_items_table', 1),
(198, '2023_05_24_115218_create_wallet_recharges_table', 1),
(199, '2023_05_24_115534_add_column_in_payments_table', 1),
(200, '2023_05_29_130753_create_generate_contents_table', 1),
(201, '2023_05_29_153039_create_open_a_i_prompts_table', 1),
(202, '2023_06_07_114213_change_special_promotion_tags_table', 1),
(203, '2023_07_17_152902_change_meta_tables', 2),
(204, '2023_08_13_131615_create_product_categories_table', 3),
(205, '2023_08_13_131620_change_products_table', 3),
(206, '2023_08_13_131630_create_product_tags_table', 3),
(207, '2023_08_13_131759_create_product_images_table', 3),
(208, '2023_08_13_132308_create_product_reviews_table', 3),
(209, '2023_08_13_134843_create_tag_products_table', 3),
(210, '2023_08_20_114637_add_column_in_homes_table', 3),
(211, '2023_08_20_180919_add_quantity_in_cart_managements', 3),
(212, '2023_08_22_131208_add_column_in_order_items_table', 3),
(213, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(214, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(215, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(216, '2016_06_01_000004_create_oauth_clients_table', 4),
(217, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(218, '2023_08_23_164733_add_shipping_charge_to_cart_management_table', 4),
(219, '2023_09_03_190525_add_column_in_live_classes_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_distribution_histories`
--

CREATE TABLE `monthly_distribution_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(191) NOT NULL DEFAULT '0',
  `total_subscription` int(11) NOT NULL DEFAULT 0,
  `total_enroll_course` int(11) NOT NULL DEFAULT 0,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(12,2) NOT NULL DEFAULT 0.00,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_boards`
--

CREATE TABLE `notice_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `topic` text NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_boards`
--

INSERT INTO `notice_boards` (`id`, `uuid`, `user_id`, `course_id`, `topic`, `details`, `created_at`, `updated_at`) VALUES
(1, 'eca01a69-cb5b-4a9b-9b1f-f0a363247fad', 2, 1, 'Topic for Notice Board', 'This is a description', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `text` varchar(255) NOT NULL,
  `target_url` varchar(255) DEFAULT NULL,
  `is_seen` varchar(255) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `user_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=admin, 2=instructor, 3=student',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `open_a_i_prompts`
--

CREATE TABLE `open_a_i_prompts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_image` tinyint(4) NOT NULL DEFAULT 0,
  `category` varchar(191) NOT NULL,
  `prompt` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `sub_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `platform_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `current_currency` varchar(255) DEFAULT NULL,
  `grand_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_currency` varchar(255) DEFAULT NULL,
  `conversion_rate` decimal(28,8) DEFAULT 0.00000000,
  `grand_total_with_conversation_rate` decimal(28,8) DEFAULT 0.00000000,
  `payment_method` varchar(100) DEFAULT NULL,
  `paystack_reference_number` varchar(255) DEFAULT NULL,
  `deposit_by` varchar(255) DEFAULT NULL,
  `deposit_slip` varchar(255) DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_comment` mediumtext DEFAULT NULL,
  `payment_status` varchar(15) NOT NULL DEFAULT 'due' COMMENT 'paid, due, free',
  `delivery_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=complete',
  `created_by_type` tinyint(4) DEFAULT 1 COMMENT '1=student, 2=admin',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `error_msg` varchar(191) DEFAULT NULL,
  `payment_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_billing_addresses`
--

CREATE TABLE `order_billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `set_as_shipping_address` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `receiver_info` text DEFAULT NULL,
  `owner_user_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `consultation_slot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultation_date` varchar(191) DEFAULT NULL,
  `unit` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `owner_balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `sell_commission` int(11) NOT NULL DEFAULT 0 COMMENT 'How much percentage get admin and calculate in admin_commission',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=course, 2=product',
  `delivery_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `professional_title` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `consultancy_area` tinyint(4) NOT NULL DEFAULT 3,
  `about_me` mediumtext DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `social_link` mediumtext DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `is_private` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `remove_from_web_search` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `auto_content_approval` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=approved, 2=blocked',
  `is_subscription_enable` tinyint(4) DEFAULT 0,
  `is_offline` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'offline status',
  `offline_message` varchar(191) NOT NULL DEFAULT '0' COMMENT 'offline message',
  `consultation_available` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=yes, 0=no',
  `hourly_rate` int(11) DEFAULT 0,
  `hourly_old_rate` decimal(8,2) DEFAULT NULL,
  `available_type` tinyint(4) NOT NULL DEFAULT 3 COMMENT '1=In-person, 0=Online, 3=Both',
  `cv_file` varchar(191) DEFAULT NULL,
  `cv_filename` varchar(191) DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organization_skill`
--

CREATE TABLE `organization_skill` (
  `organization_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `our_histories`
--

CREATE TABLE `our_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_histories`
--

INSERT INTO `our_histories` (`id`, `year`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, '1998', 'Mere tranquil existence', 'Possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart am alone', NULL, NULL),
(2, '1998', 'Incapable of drawing', 'Exquisite sense of mere tranquil existence that I neglect my talents add should be incapable of drawing', NULL, NULL),
(3, '1998', 'Foliage access trees', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my', NULL, NULL),
(4, '1998', 'Among grass trickling', 'Should be incapable of drawing a single stroke at the present moment; and yet I feel that I never', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `package_type` enum('1','2','3') NOT NULL COMMENT '1=subscription, 2=instructor saas, 3=organization saas',
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL,
  `discounted_monthly_price` decimal(12,2) NOT NULL,
  `monthly_price` decimal(12,2) NOT NULL,
  `discounted_yearly_price` decimal(12,2) NOT NULL,
  `yearly_price` decimal(12,2) NOT NULL,
  `icon` varchar(191) NOT NULL,
  `student` int(11) NOT NULL DEFAULT 0,
  `instructor` int(11) NOT NULL DEFAULT 0,
  `course` int(11) NOT NULL DEFAULT 0,
  `consultancy` int(11) NOT NULL DEFAULT 0,
  `subscription_course` int(11) NOT NULL DEFAULT 0,
  `bundle_course` int(11) NOT NULL DEFAULT 0,
  `product` int(11) NOT NULL DEFAULT 0,
  `device` int(11) NOT NULL DEFAULT 0,
  `admin_commission` int(11) NOT NULL DEFAULT 0,
  `in_home` tinyint(4) NOT NULL DEFAULT 1,
  `recommended` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `uuid`, `package_type`, `title`, `slug`, `description`, `discounted_monthly_price`, `monthly_price`, `discounted_yearly_price`, `yearly_price`, `icon`, `student`, `instructor`, `course`, `consultancy`, `subscription_course`, `bundle_course`, `product`, `device`, `admin_commission`, `in_home`, `recommended`, `status`, `is_default`, `order`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '4ec8c672-7d46-43e8-9a3b-dded2a43d721', '1', 'Starter Plan', 'starter-plan', 'Ideal for beginners exploring individual courses.', 0.00, 0.00, 0.00, 0.00, 'uploads/packages/1762840706-cJTEX4kng0.webp', 0, 0, 5, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, NULL, '2022-12-04 17:05:34', '2025-11-11 01:14:51'),
(10, 'a9548175-c9ec-418f-81b7-96b759e61c7b', '1', 'Pro Access', 'pro-access-406709', 'Designed for professionals seeking full access.', 30.00, 40.00, 300.00, 400.00, 'uploads/packages/1762840727-tvKRygW1aM.webp', 0, 0, 25, 3, 0, 5, 0, 3, 0, 1, 1, 1, 0, 2, 1, NULL, '2025-11-01 02:29:53', '2025-11-11 00:57:25'),
(11, 'b5027b20-a07f-43c1-ad62-c6b5f6885861', '1', 'Team Bundle', 'team-bundle-276587', 'Best for small teams with shared device access.', 80.00, 100.00, 800.00, 1000.00, 'uploads/packages/1762840966-6oqhcFe1T4.webp', 0, 0, 100, 10, 0, 20, 0, 10, 0, 1, 0, 1, 0, 3, 1, NULL, '2025-11-03 00:16:25', '2025-11-11 01:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `en_title` text DEFAULT NULL,
  `en_description` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `payment_id` varchar(191) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `order_number` varchar(50) NOT NULL,
  `sub_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_currency` varchar(191) DEFAULT NULL,
  `platform_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `conversion_rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `grand_total_with_conversation_rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `deposit_by` varchar(191) DEFAULT NULL,
  `deposit_slip` varchar(191) DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grand_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `payment_status` varchar(15) NOT NULL DEFAULT 'due' COMMENT 'paid, due, free, pending, cancelled',
  `created_by_type` tinyint(4) DEFAULT 1 COMMENT '1=student, 2=instructor',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'pending_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'hold_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'approved_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, 'all_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'manage_course_reference', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'manage_course_category', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'manage_course_subcategory', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, 'manage_course_tag', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(10, 'manage_course_language', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(11, 'manage_course_difficulty_level', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(12, 'manage_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(13, 'pending_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(14, 'approved_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(15, 'all_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(16, 'add_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(17, 'manage_student', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(18, 'manage_coupon', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(19, 'manage_promotion', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(20, 'manage_blog', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(21, 'payout', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(22, 'finance', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(23, 'manage_certificate', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(24, 'ranking_level', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(25, 'manage_language', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(26, 'account_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(27, 'support_ticket', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(28, 'manage_contact', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(29, 'application_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(30, 'global_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(31, 'home_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(32, 'mail_configuration', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(33, 'payment_option', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(34, 'content_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(35, 'user_management', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(36, 'manage_affiliate', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(37, 'manage_subscriptions', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(38, 'manage_saas', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(39, 'manage_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(40, 'pending_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(41, 'approved_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(42, 'all_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(43, 'add_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(44, 'skill', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(45, 'distribute_subscription', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(46, 'manage_version_update', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(47, 'manage_wallet_recharge', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(48, 'page_management', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(49, 'menu_management', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(50, 'policy_management', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(51, 'forum_management', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(55, 'product_module_product', 'web', NULL, NULL),
(56, 'product_module_tag', 'web', NULL, NULL),
(57, 'product_module_category', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=privacy, 2=cookie',
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(4, 1, '<h1>Privacy Policy</h1>\r\n<p>Last updated: November 08, 2025</p>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h3>Interpretation</h3>\r\n<p>The words whose initial letters are capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h3>Definitions</h3>\r\n<p>For the purposes of this Privacy Policy:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Affiliate</strong> means an entity that controls, is controlled by, or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n</li>\r\n<li>\r\n<p><strong>Company</strong> (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to ITechAleart, 58 Bauddhaloka Mawatha, Colombo 04, Colombo.</p>\r\n</li>\r\n<li>\r\n<p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n</li>\r\n<li>\r\n<p><strong>Country</strong> refers to:  Sri Lanka</p>\r\n</li>\r\n<li>\r\n<p><strong>Device</strong> means any device that can access the Service such as a computer, a cell phone or a digital tablet.</p>\r\n</li>\r\n<li>\r\n<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong> refers to the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n</li>\r\n<li>\r\n<p><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n</li>\r\n<li>\r\n<p><strong>Website</strong> refers to ITechAleart, accessible from <a href=\"https://itechaleart.com\" rel=\"external nofollow noopener\" target=\"_blank\">https://itechaleart.com</a></p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h2>Collecting and Using Your Personal Data</h2>\r\n<h3>Types of Data Collected</h3>\r\n<h4>Personal Data</h4>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<ul>\r\n<li>\r\n<p>Email address</p>\r\n</li>\r\n<li>\r\n<p>First name and last name</p>\r\n</li>\r\n<li>\r\n<p>Usage Data</p>\r\n</li>\r\n</ul>\r\n<h4>Usage Data</h4>\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n<p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device\'s unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit Our Service or when You access the Service by or through a mobile device.</p>\r\n<h4>Tracking Technologies and Cookies</h4>\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies We use include beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n<ul>\r\n<li><strong>Cookies or Browser Cookies.</strong> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li>\r\n<li><strong>Web Beacons.</strong> Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li>\r\n</ul>\r\n<p>Cookies can be \"Persistent\" or \"Session\" Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser.</p>\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Necessary / Essential Cookies</strong></p>\r\n<p>Type: Session Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n</li>\r\n<li>\r\n<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Functionality Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n</li>\r\n</ul>\r\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\r\n<h3>Use of Your Personal Data</h3>\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n<ul>\r\n<li>\r\n<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n</li>\r\n<li>\r\n<p><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n</li>\r\n<li>\r\n<p><strong>To provide You</strong> with news, special offers, and general information about other goods, services and events which We offer that are similar to those that you have already purchased or inquired about unless You have opted not to receive such information.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p>\r\n</li>\r\n<li>\r\n<p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n</li>\r\n<li>\r\n<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n</li>\r\n</ul>\r\n<p>We may share Your personal information in the following situations:</p>\r\n<ul>\r\n<li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service,  to contact You.</li>\r\n<li><strong>For business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n<li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n<li><strong>With business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n<li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n<h3>Retention of Your Personal Data</h3>\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer periods.</p>\r\n<h3>Transfer of Your Personal Data</h3>\r\n<p>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ from those from Your jurisdiction.</p>\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n<h3>Delete Your Personal Data</h3>\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n<h3>Disclosure of Your Personal Data</h3>\r\n<h4>Business Transactions</h4>\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n<h4>Law enforcement</h4>\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n<h4>Other legal requirements</h4>\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<ul>\r\n<li>Comply with a legal obligation</li>\r\n<li>Protect and defend the rights or property of the Company</li>\r\n<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n<li>Protect the personal safety of Users of the Service or the public</li>\r\n<li>Protect against legal liability</li>\r\n</ul>\r\n<h3>Security of Your Personal Data</h3>\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially reasonable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n<h2>Children\'s Privacy</h2>\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.</p>\r\n<h2>Links to Other Websites</h2>\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party\'s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n<h2>Changes to this Privacy Policy</h2>\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.</p>\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n<h2>Contact Us</h2>\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n<ul>\r\n<li>\r\n<p>By email: contact@techaleart.com</p>\r\n</li>\r\n<li>\r\n<p>By visiting this page on our website: <a href=\"https://itechaleart.com/support-ticket-faq\" rel=\"external nofollow noopener\" target=\"_blank\">https://itechaleart.com/support-ticket-faq</a></p>\r\n</li>\r\n<li>\r\n<p>By phone: +94764591823</p>\r\n</li>\r\n</ul>', '2025-11-07 22:03:49', '2025-11-07 22:04:31'),
(5, 3, '<h2>Terms and Conditions</h2>\r\n<p>Last updated: November 08, 2025</p>\r\n<p>Please read these terms and conditions carefully before using Our Service.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h3>Interpretation</h3>\r\n<p>The words whose initial letters are capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h3>Definitions</h3>\r\n<p>For the purposes of these Terms and Conditions:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Affiliate</strong> means an entity that controls, is controlled by, or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n</li>\r\n<li>\r\n<p><strong>Country</strong> refers to:  Sri Lanka</p>\r\n</li>\r\n<li>\r\n<p><strong>Company</strong> (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to ITechAleart, 58 Bauddhaloka Mawatha, Colombo 04, Colombo.</p>\r\n</li>\r\n<li>\r\n<p><strong>Device</strong> means any device that can access the Service such as a computer, a cell phone or a digital tablet.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong> refers to the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Terms and Conditions</strong> (also referred as \"Terms\") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Third-party Social Media Service</strong> means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Website</strong> refers to ITechAleart, accessible from <a href=\"https://itechaleart.com\" rel=\"external nofollow noopener\" target=\"_blank\">https://itechaleart.com</a></p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h2>Acknowledgment</h2>\r\n<p>These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.</p>\r\n<p>Your access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.</p>\r\n<p>By accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service.</p>\r\n<p>You represent that you are over the age of 18. The Company does not permit those under 18 to use the Service.</p>\r\n<p>Your access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.</p>\r\n<h2>Links to Other Websites</h2>\r\n<p>Our Service may contain links to third-party web sites or services that are not owned or controlled by the Company.</p>\r\n<p>The Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.</p>\r\n<p>We strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.</p>\r\n<h2>Termination</h2>\r\n<p>We may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.</p>\r\n<p>Upon termination, Your right to use the Service will cease immediately.</p>\r\n<h2>Limitation of Liability</h2>\r\n<p>Notwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven\'t purchased anything through the Service.</p>\r\n<p>To the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.</p>\r\n<p>Some states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party\'s liability will be limited to the greatest extent permitted by law.</p>\r\n<h2>\"AS IS\" and \"AS AVAILABLE\" Disclaimer</h2>\r\n<p>The Service is provided to You \"AS IS\" and \"AS AVAILABLE\" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.</p>\r\n<p>Without limiting the foregoing, neither the Company nor any of the company\'s provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.</p>\r\n<p>Some jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.</p>\r\n<h2>Governing Law</h2>\r\n<p>The laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.</p>\r\n<h2>Disputes Resolution</h2>\r\n<p>If You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.</p>\r\n<h2>For European Union (EU) Users</h2>\r\n<p>If You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which You are resident.</p>\r\n<h2>United States Legal Compliance</h2>\r\n<p>You represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a \"terrorist supporting\" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.</p>\r\n<h2>Severability and Waiver</h2>\r\n<h3>Severability</h3>\r\n<p>If any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.</p>\r\n<h3>Waiver</h3>\r\n<p>Except as provided herein, the failure to exercise a right or to require performance of an obligation under these Terms shall not affect a party\'s ability to exercise such right or require such performance at any time thereafter nor shall the waiver of a breach constitute a waiver of any subsequent breach.</p>\r\n<h2>Translation Interpretation</h2>\r\n<p>These Terms and Conditions may have been translated if We have made them available to You on our Service.\r\nYou agree that the original English text shall prevail in the case of a dispute.</p>\r\n<h2>Changes to These Terms and Conditions</h2>\r\n<p>We reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days\' notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.</p>\r\n<p>By continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.</p>\r\n<h2>Contact Us</h2>\r\n<p>If you have any questions about these Terms and Conditions, You can contact us:</p>\r\n<ul>\r\n<li>\r\n<p>By email: contact@itechaleart.com</p>\r\n</li>\r\n<li>\r\n<p>By visiting this page on our website: <a href=\"https://itechaleart.com/support-ticket-faq\" rel=\"external nofollow noopener\" target=\"_blank\">https://itechaleart.com/support-ticket-faq</a></p>\r\n</li>\r\n<li>\r\n<p>By phone: +9476 459 1823</p>\r\n</li>\r\n</ul>', '2025-11-07 22:08:44', '2025-11-07 22:08:44'),
(6, 2, '<h1>Cookies Policy</h1>\r\n<p>Last updated: November 08, 2025</p>\r\n<p>This Cookies Policy explains what Cookies are and how We use them. You should read this policy so You can understand what type of cookies We use, or the information We collect using Cookies and how that information is used.</p>\r\n<p>Cookies do not typically contain any information that personally identifies a user, but personal information that we store about You may be linked to the information stored in and obtained from Cookies. For further information on how We use, store and keep your personal data secure, see our Privacy Policy.</p>\r\n<p>We do not store sensitive personal information, such as mailing addresses, account passwords, etc. in the Cookies We use.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h4>Interpretation</h4>\r\n<p>The words whose initial letters are capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h4>Definitions</h4>\r\n<p>For the purposes of this Cookies Policy:</p>\r\n<ul>\r\n<li><strong>Company</strong> (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Cookies Policy) refers to ITechAleart, 58 Bauddhaloka Mawatha, Colombo 04, Colombo.</li>\r\n<li><strong>Cookies</strong> means small files that are placed on Your computer, mobile device or any other device by a website, containing details of your browsing history on that website among its many uses.</li>\r\n<li><strong>Website</strong> refers to ITechAleart, accessible from <a href=\"https://itechaleart.com\" rel=\"external nofollow noopener\" target=\"_blank\">https://itechaleart.com</a></li>\r\n<li><strong>You</strong> means the individual accessing or using the Website, or a company, or any legal entity on behalf of which such individual is accessing or using the Website, as applicable.</li>\r\n</ul>\r\n<h2>The use of the Cookies</h2>\r\n<h4>Type of Cookies We Use</h4>\r\n<p>Cookies can be \"Persistent\" or \"Session\" Cookies. Persistent Cookies remain on your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close your web browser.</p>\r\n<p>We use both session and persistent Cookies for the purposes set out below:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Necessary / Essential Cookies</strong></p>\r\n<p>Type: Session Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n</li>\r\n<li>\r\n<p><strong>Functionality Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n</li>\r\n</ul>\r\n<h4>Your Choices Regarding Cookies</h4>\r\n<p>If You prefer to avoid the use of Cookies on the Website, first You must disable the use of Cookies in your browser and then delete the Cookies saved in your browser associated with this website. You may use this option for preventing the use of Cookies at any time.</p>\r\n<p>If You do not accept Our Cookies, You may experience some inconvenience in your use of the Website and some features may not function properly.</p>\r\n<p>If You\'d like to delete Cookies or instruct your web browser to delete or refuse Cookies, please visit the help pages of your web browser.</p>\r\n<ul>\r\n<li>\r\n<p>For the Chrome web browser, please visit this page from Google: <a href=\"https://support.google.com/accounts/answer/32050\" rel=\"external nofollow noopener\" target=\"_blank\">https://support.google.com/accounts/answer/32050</a></p>\r\n</li>\r\n<li>\r\n<p>For the Internet Explorer web browser, please visit this page from Microsoft: <a href=\"http://support.microsoft.com/kb/278835\" rel=\"external nofollow noopener\" target=\"_blank\">http://support.microsoft.com/kb/278835</a></p>\r\n</li>\r\n<li>\r\n<p>For the Firefox web browser, please visit this page from Mozilla: <a href=\"https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored\" rel=\"external nofollow noopener\" target=\"_blank\">https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored</a></p>\r\n</li>\r\n<li>\r\n<p>For the Safari web browser, please visit this page from Apple: <a href=\"https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac\" rel=\"external nofollow noopener\" target=\"_blank\">https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac</a></p>\r\n</li>\r\n</ul>\r\n<p>For any other web browser, please visit your web browser\'s official web pages.</p>\r\n<h4>More Information about Cookies</h4>\r\n<p>You can learn more about cookies: <a href=\"https://www.freeprivacypolicy.com/blog/cookies/\" target=\"_blank\">Cookies: What Do They Do?</a>.</p>\r\n<h4>Contact Us</h4>\r\n<p>If you have any questions about this Cookies Policy, You can contact us:</p>\r\n<ul>\r\n<li>\r\n<p>By email: contact@itechaleart.com</p>\r\n</li>\r\n<li>\r\n<p>By visiting this page on our website: <a href=\"https://itechaleart.com/support-ticket-faq\" rel=\"external nofollow noopener\" target=\"_blank\">https://itechaleart.com/support-ticket-faq</a></p>\r\n</li>\r\n<li>\r\n<p>By phone: +9476 459 1823</p>\r\n</li>\r\n</ul>', '2025-11-07 22:11:42', '2025-11-07 22:11:42'),
(7, 4, '<h2>Return and Refund Policy</h2>\r\n<p>Last updated: November 08, 2025</p>\r\n<p>Thank you for shopping at ITechAleart.</p>\r\n<p>If, for any reason, You are not completely satisfied with a purchase We invite You to review our policy on refunds and returns.</p>\r\n<p>The following terms are applicable for any products that You purchased with Us.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h3>Interpretation</h3>\r\n<p>The words whose initial letters are capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h3>Definitions</h3>\r\n<p>For the purposes of this Return and Refund Policy:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Company</strong> (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to ITechAleart, 58 Bauddhaloka Mawatha, Colombo 04, Colombo.</p>\r\n</li>\r\n<li>\r\n<p><strong>Goods</strong> refer to the items offered for sale on the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Orders</strong> mean a request by You to purchase Goods from Us.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong> refers to the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Website</strong> refers to ITechAleart, accessible from <a href=\"https://itechaleart.com\" rel=\"external nofollow noopener\" target=\"_blank\">https://itechaleart.com</a></p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h2>Your Order Cancellation Rights</h2>\r\n<p>You are entitled to cancel Your Order within 7 days without giving any reason for doing so.</p>\r\n<p>The deadline for cancelling an Order is 7 days from the date on which You received the Goods or on which a third party you have appointed, who is not the carrier, takes possession of the product delivered.</p>\r\n<p>In order to exercise Your right of cancellation, You must inform Us of your decision by means of a clear statement. You can inform us of your decision by:</p>\r\n<ul>\r\n<li>\r\n<p>By email: contact@itechaleart.com</p>\r\n</li>\r\n<li>\r\n<p>By visiting this page on our website: <a href=\"https://itechaleart.com/support-ticket-faq\" rel=\"external nofollow noopener\" target=\"_blank\">https://itechaleart.com/support-ticket-faq</a></p>\r\n</li>\r\n<li>\r\n<p>By phone: +9476 459 1823</p>\r\n</li>\r\n</ul>\r\n<p>We will reimburse You no later than 14 days from the day on which We receive the returned Goods. We will use the same means of payment as You used for the Order, and You will not incur any fees for such reimbursement.</p>\r\n<h2>Conditions for Returns</h2>\r\n<p>In order for the Goods to be eligible for a return, please make sure that:</p>\r\n<ul>\r\n<li>The Goods were purchased in the last 7 days</li>\r\n<li>The Goods are in the original packaging</li>\r\n</ul>\r\n<p>The following Goods cannot be returned:</p>\r\n<ul>\r\n<li>The supply of Goods made to Your specifications or clearly personalized.</li>\r\n<li>The supply of Goods which according to their nature are not suitable to be returned, deteriorate rapidly or where the date of expiry is over.</li>\r\n<li>The supply of Goods which are not suitable for return due to health protection or hygiene reasons and were unsealed after delivery.</li>\r\n<li>The supply of Goods which are, after delivery, according to their nature, inseparably mixed with other items.</li>\r\n</ul>\r\n<p>We reserve the right to refuse returns of any merchandise that does not meet the above return conditions in our sole discretion.</p>\r\n<p>Only regular priced Goods may be refunded. Unfortunately, Goods on sale cannot be refunded. This exclusion may not apply to You if it is not permitted by applicable law.</p>\r\n<h2>Returning Goods</h2>\r\n<p>You are responsible for the cost and risk of returning the Goods to Us. You should send the Goods at the following address:</p>\r\n<p>We cannot be held responsible for Goods damaged or lost in return shipment. Therefore, We recommend an insured and trackable mail service. We are unable to issue a refund without actual receipt of the Goods or proof of received return delivery.</p>\r\n<h2>Gifts</h2>\r\n<p>If the Goods were marked as a gift when purchased and then shipped directly to you, You\'ll receive a gift credit for the value of your return. Once the returned product is received, a gift certificate will be mailed to You.</p>\r\n<p>If the Goods weren\'t marked as a gift when purchased, or the gift giver had the Order shipped to themselves to give it to You later, We will send the refund to the gift giver.</p>\r\n<h3>Contact Us</h3>\r\n<p>If you have any questions about our Returns and Refunds Policy, please contact us:</p>\r\n<ul>\r\n<li>\r\n<p>By email: contact@itechaleart.com</p>\r\n</li>\r\n<li>\r\n<p>By visiting this page on our website: <a href=\"https://itechaleart.com/support-ticket-faq\" rel=\"external nofollow noopener\" target=\"_blank\">https://itechaleart.com/support-ticket-faq</a></p>\r\n</li>\r\n<li>\r\n<p>By phone: +9476 459 1823</p>\r\n</li>\r\n</ul>', '2025-11-07 22:15:08', '2025-11-07 22:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `old_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount_percentage` decimal(12,2) NOT NULL DEFAULT 0.00,
  `current_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `shipping_charge` decimal(12,2) NOT NULL DEFAULT 0.00,
  `average_review` decimal(8,2) NOT NULL DEFAULT 0.00,
  `thumbnail` varchar(191) NOT NULL,
  `main_file` varchar(191) DEFAULT NULL,
  `image_1` varchar(191) NOT NULL,
  `image_2` varchar(191) NOT NULL,
  `image_3` varchar(191) NOT NULL,
  `image_4` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `shipping_return` text DEFAULT NULL,
  `additional_information` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_feature` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `is_feature` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` varchar(191) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=deactivated',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_courses`
--

CREATE TABLE `promotion_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_option_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `is_correct_answer` varchar(255) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ranking_levels`
--

CREATE TABLE `ranking_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `from` decimal(10,2) DEFAULT 0.00,
  `to` decimal(10,2) DEFAULT 0.00,
  `description` varchar(191) DEFAULT NULL,
  `badge_image` varchar(191) DEFAULT NULL,
  `earning` int(11) DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ranking_levels`
--

INSERT INTO `ranking_levels` (`id`, `uuid`, `name`, `type`, `from`, `to`, `description`, `badge_image`, `earning`, `student`, `serial_no`, `created_at`, `updated_at`) VALUES
(1, '9a7537f0-581a-4227-9ff6-d641fec2e44a', '1 Years of Membership', 1, 0.00, 365.00, '1 Years of Membership', 'frontend/assets/img/ranking_badges/membership_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(2, 'b3152dec-79d6-49e8-b9ea-7d86d9a21f11', 'Author Level 1', 2, 0.00, 365.00, 'Author Level 1', 'frontend/assets/img/ranking_badges/rank_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(3, 'c90ca6ff-54c8-40ef-9fc3-4d93a85df344', '0 to 5 Course', 3, 0.00, 5.00, '0 to 5 Course', 'frontend/assets/img/ranking_badges/course_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(4, 'c28eea7b-2f8f-43d8-9434-07b7cd475d59', '0 to 10 Student', 4, 0.00, 10.00, '0 to 10 Student', 'frontend/assets/img/ranking_badges/student_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(5, '3a5f47a4-8dcc-479d-9f69-67d9231fee27', '0 to 10 Sold', 5, 0.00, 10.00, '0 to 10 Sold', 'frontend/assets/img/ranking_badges/sale_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(6, '0297f8b2-ef42-44ca-b459-698005154046', '2 Years of Membership', 1, 366.00, 731.00, '2 Years of Membership', 'frontend/assets/img/ranking_badges/membership_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(7, '12c02b42-e33a-4deb-a99d-3a4d5b3bdeb6', 'Author Level 2', 2, 366.00, 1096.00, 'Author Level 2', 'frontend/assets/img/ranking_badges/rank_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(8, 'bc720110-2d17-436e-8988-cb629fa9c5ab', '6 to 16 Course', 3, 6.00, 16.00, '6 to 16 Course', 'frontend/assets/img/ranking_badges/course_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(9, 'a1ff60d7-1f79-4f89-bad3-908368038283', '11 to 31 Student', 4, 11.00, 31.00, '11 to 31 Student', 'frontend/assets/img/ranking_badges/student_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(10, '578a889c-0dca-4960-8378-c8eebab75e97', '11 to 31 Sold', 5, 11.00, 31.00, '11 to 31 Sold', 'frontend/assets/img/ranking_badges/sale_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(11, '99786c82-1557-456f-abe6-fe6fae6cf5b7', '3 Years of Membership', 1, 732.00, 1097.00, '3 Years of Membership', 'frontend/assets/img/ranking_badges/membership_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(12, '2e925e84-4039-419c-be8e-8c8cca77de78', 'Author Level 3', 2, 1097.00, 2192.00, 'Author Level 3', 'frontend/assets/img/ranking_badges/rank_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(13, '0e39ae42-d219-4a7e-af3d-9cb652591ba0', '17 to 32 Course', 3, 17.00, 32.00, '17 to 32 Course', 'frontend/assets/img/ranking_badges/course_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(14, '54bc597b-5555-41f0-9795-f11b130666c6', '32 to 62 Student', 4, 32.00, 62.00, '32 to 62 Student', 'frontend/assets/img/ranking_badges/student_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(15, '467a09ba-3efc-4de8-a4b1-42ccdaf245fa', '32 to 62 Sold', 5, 32.00, 62.00, '32 to 62 Sold', 'frontend/assets/img/ranking_badges/sale_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(16, 'bc4d0595-ae9d-456c-b45e-19b4d94d835d', '4 Years of Membership', 1, 1098.00, 1463.00, '4 Years of Membership', 'frontend/assets/img/ranking_badges/membership_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(17, 'd6b95157-61a9-4676-ad78-311491ba7968', 'Author Level 4', 2, 2193.00, 3653.00, 'Author Level 4', 'frontend/assets/img/ranking_badges/rank_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(18, '9113cc9f-1e30-4af8-8621-67313f8c0b15', '33 to 53 Course', 3, 33.00, 53.00, '33 to 53 Course', 'frontend/assets/img/ranking_badges/course_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(19, '1379b683-63ad-4ddc-93b6-67d8679ec535', '63 to 103 Student', 4, 63.00, 103.00, '63 to 103 Student', 'frontend/assets/img/ranking_badges/student_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(20, '452d0645-4baf-482f-8211-84e35dfce809', '63 to 103 Sold', 5, 63.00, 103.00, '63 to 103 Sold', 'frontend/assets/img/ranking_badges/sale_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(21, '3bc3bf00-5042-4997-9807-45ab475a4c6c', '5 Years of Membership', 1, 1464.00, 5114.00, '5 Years of Membership', 'frontend/assets/img/ranking_badges/membership_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(22, '2bc790fc-498e-4c0e-a459-27faaa5f157c', 'Author Level 5', 2, 3654.00, 5479.00, 'Author Level 5', 'frontend/assets/img/ranking_badges/rank_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(23, '4f44e662-ff69-4b44-81d3-bc0ae337163d', '54 to 79 Course', 3, 54.00, 79.00, '54 to 79 Course', 'frontend/assets/img/ranking_badges/course_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(24, '07da9daa-cacb-4d6b-a760-dc8fd47b26fe', '104 to 154 Student', 4, 104.00, 154.00, '104 to 154 Student', 'frontend/assets/img/ranking_badges/student_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(25, 'f88eb0be-aab3-47d7-9505-ba0e5ab8c8d1', '104 to 154 Sold', 5, 104.00, 154.00, '104 to 154 Sold', 'frontend/assets/img/ranking_badges/sale_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_user_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `course_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(5, 120, 37, 5, 'Excellent deep-dive — very practical.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(6, 121, 37, 5, 'Loved the hooks examples and projects.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(7, 122, 37, 4, 'Great content, wished for more quizzes.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(8, 123, 38, 5, 'Practical and well-explained.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(9, 124, 38, 4, 'Great content — useful for my job.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(10, 125, 38, 5, 'Airflow section was superb.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(11, 126, 39, 5, 'Short and actionable — loved it.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(12, 127, 39, 4, 'Good tips; more templates please.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(13, 128, 39, 5, 'Saved me hours on workflows.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(14, 129, 40, 5, 'Practical leadership examples.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(15, 130, 40, 4, 'Insightful but could be longer.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(16, 101, 40, 5, 'Great frameworks to use immediately.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(17, 102, 41, 5, 'Exactly what founders need.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(18, 103, 41, 5, 'Valuable templates included.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(19, 104, 41, 4, 'Dense but worth it.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(20, 105, 42, 4, 'Good practical advice.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(21, 106, 42, 5, 'Useful content calendar template.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(22, 107, 42, 4, 'Short but helpful.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(23, 108, 43, 5, 'Excellent Figma walkthroughs.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(24, 109, 43, 4, 'Well-structured content.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(25, 110, 43, 5, 'Loved the case studies.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(26, 111, 44, 5, 'Clear and actionable guidance.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(27, 112, 44, 4, 'Useful meal plans.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(28, 113, 44, 5, 'Well explained science.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(29, 114, 45, 5, 'Super helpful for beginners.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(30, 115, 45, 4, 'Good intro to index funds.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(31, 116, 45, 4, 'Budget template was useful.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(32, 117, 46, 5, 'Great API security coverage.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(33, 118, 46, 5, 'Well explained concepts.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(34, 119, 46, 4, 'More examples would be nice.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(35, 121, 47, 5, 'A must for devs.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(36, 122, 47, 4, 'Practical examples were great.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(37, 123, 47, 5, 'Very informative and up-to-date.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(38, 124, 48, 5, 'Great intro for new designers.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(39, 125, 48, 4, 'Loved the exercises.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(40, 126, 48, 5, 'Perfect for beginners.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(41, 127, 49, 5, 'Clear ad setup steps.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(42, 128, 49, 4, 'Great measurement section.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(43, 129, 49, 5, 'Useful templates for ads.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(44, 130, 50, 5, 'Fantastic PM frameworks.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(45, 101, 50, 5, 'Practical and actionable.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(46, 102, 50, 4, 'Loved the launch checklist.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(47, 103, 51, 5, 'Perfect intro to web dev.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(48, 104, 51, 4, 'Concise and helpful.', '2025-11-03 07:05:46', '2025-11-03 07:05:46'),
(49, 105, 51, 5, 'Great starting point for beginners.', '2025-11-03 07:05:46', '2025-11-03 07:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scorm`
--

CREATE TABLE `scorm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(191) NOT NULL,
  `resource_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `origin_file` varchar(191) DEFAULT NULL,
  `version` varchar(191) NOT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `duration_in_second` double NOT NULL DEFAULT 0,
  `ratio` double DEFAULT NULL,
  `uuid` varchar(191) NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `entry_url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scorm_sco`
--

CREATE TABLE `scorm_sco` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scorm_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `sco_parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `entry_url` varchar(191) DEFAULT NULL,
  `identifier` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `visible` tinyint(4) NOT NULL,
  `sco_parameters` longtext DEFAULT NULL,
  `launch_data` longtext DEFAULT NULL,
  `max_time_allowed` varchar(191) DEFAULT NULL,
  `time_limit_action` varchar(191) DEFAULT NULL,
  `block` tinyint(4) NOT NULL,
  `score_int` int(11) DEFAULT NULL,
  `score_decimal` decimal(10,7) DEFAULT NULL,
  `completion_threshold` decimal(10,7) DEFAULT NULL,
  `prerequisites` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scorm_sco_tracking`
--

CREATE TABLE `scorm_sco_tracking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sco_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `progression` double NOT NULL,
  `score_raw` int(11) DEFAULT NULL,
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `score_scaled` decimal(10,7) DEFAULT NULL,
  `lesson_status` varchar(191) DEFAULT NULL,
  `completion_status` varchar(191) DEFAULT NULL,
  `session_time` int(11) DEFAULT NULL,
  `total_time_int` int(11) DEFAULT NULL,
  `total_time_string` varchar(191) DEFAULT NULL,
  `entry` varchar(191) DEFAULT NULL,
  `suspend_data` longtext DEFAULT NULL,
  `credit` varchar(191) DEFAULT NULL,
  `exit_mode` varchar(191) DEFAULT NULL,
  `lesson_location` varchar(191) DEFAULT NULL,
  `lesson_mode` varchar(191) DEFAULT NULL,
  `is_locked` tinyint(4) DEFAULT NULL,
  `details` longtext DEFAULT NULL COMMENT 'json_array',
  `latest_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_key` varchar(255) NOT NULL,
  `option_value` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option_key`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'ITechAleart', '2022-12-04 17:05:33', '2025-11-01 01:22:47'),
(2, 'app_email', 'contact@itechaleart.com', '2022-12-04 17:05:33', '2025-11-07 06:22:26'),
(3, 'app_contact_number', '+94 76 459 1823', '2022-12-04 17:05:33', '2025-11-07 09:39:37'),
(4, 'app_location', '58 Bauddhaloka Mawatha, Colombo 04, Colombo', '2022-12-04 17:05:33', '2025-11-07 09:39:37'),
(5, 'app_date_format', 'Y/m/d', '2022-12-04 17:05:33', '2025-11-01 01:22:47'),
(6, 'app_timezone', 'Asia/Dhaka', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'allow_preloader', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'app_preloader', 'uploads/setting/1762419502-VbdftE50rU.png', '2022-12-04 17:05:33', '2025-11-06 03:28:22'),
(9, 'app_logo', 'uploads/setting/1762495038-dz9Jv3OZB9.png', '2022-12-04 17:05:33', '2025-11-07 00:27:18'),
(10, 'app_fav_icon', 'uploads/setting/1762421179-I3SuD5kRgO.png', '2022-12-04 17:05:33', '2025-11-06 03:56:19'),
(11, 'app_copyright', '© 2025 ITechAleart. All Rights Reserved.', '2022-12-04 17:05:33', '2025-11-01 01:22:47'),
(12, 'app_developed', 'ITechAleart Team', '2022-12-04 17:05:33', '2025-11-01 01:22:47'),
(13, 'og_title', 'ITechAleart — AI-powered Learning Management System', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(14, 'og_description', 'ITechAleart helps instructors create intelligent, personalized courses and helps learners discover the best AI-tailored learning paths.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(15, 'zoom_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(16, 'bbb_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(17, 'jitsi_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(18, 'jitsi_server_base_url', 'https://meet.jit.si/', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(19, 'registration_email_verification', '0', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(20, 'footer_quote', 'Empower your learning with AI-driven recommendations, course generation, and personalized learning plans.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(21, 'paystack_currency', 'NGN', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(22, 'paystack_conversion_rate', '420', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(23, 'paystack_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(24, 'PAYSTACK_PUBLIC_KEY', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(25, 'PAYSTACK_SECRET_KEY', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(26, 'paypal_currency', 'USD', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(27, 'paypal_conversion_rate', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(28, 'paypal_status', '1', '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(29, 'PAYPAL_MODE', 'sandbox', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(30, 'PAYPAL_CLIENT_ID', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(31, 'PAYPAL_SECRET', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(32, 'stripe_currency', 'USD', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(33, 'stripe_conversion_rate', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(34, 'stripe_status', '0', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(35, 'STRIPE_MODE', 'sandbox', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(36, 'STRIPE_SECRET_KEY', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(37, 'STRIPE_PUBLIC_KEY', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(38, 'razorpay_currency', 'INR', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(39, 'razorpay_conversion_rate', '78.04', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(40, 'razorpay_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(41, 'RAZORPAY_KEY', 'rzp_test_jI4LNxngs3tF4n', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(42, 'RAZORPAY_SECRET', 'lZo8JpuK897uLRrnMB9imhIy', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(43, 'mollie_currency', 'EUR', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(44, 'mollie_conversion_rate', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(45, 'mollie_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(46, 'MOLLIE_KEY', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(47, 'im_currency', 'INR', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(48, 'im_conversion_rate', '79.84', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(49, 'im_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(50, 'IM_API_KEY', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(51, 'IM_AUTH_TOKEN', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(52, 'IM_URL', 'https://test.instamojo.com/api/1.1/payment-requests/', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(53, 'sslcommerz_currency', 'BDT', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(54, 'sslcommerz_conversion_rate', '92', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(55, 'sslcommerz_status', '0', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(56, 'sslcommerz_mode', 'sandbox', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(57, 'SSLCZ_STORE_ID', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(58, 'SSLCZ_STORE_PASSWD', NULL, '2022-12-04 17:05:33', '2025-11-03 00:46:43'),
(59, 'MAIL_DRIVER', 'smtp', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(60, 'MAIL_HOST', 'layer24.privilegeserver.com', '2022-12-04 17:05:33', '2025-11-01 01:53:04'),
(61, 'MAIL_PORT', '465', '2022-12-04 17:05:33', '2025-11-01 01:45:06'),
(62, 'MAIL_USERNAME', 'support@itechaleart.com', '2022-12-04 17:05:33', '2025-11-01 01:45:06'),
(63, 'MAIL_PASSWORD', 'K},7%1$cMl+@M2OY', '2022-12-04 17:05:33', '2025-11-01 01:50:53'),
(64, 'MAIL_ENCRYPTION', 'ssl', '2022-12-04 17:05:33', '2025-11-01 01:52:04'),
(65, 'MAIL_FROM_ADDRESS', 'support@itechaleart.com', '2022-12-04 17:05:33', '2025-11-01 01:45:06'),
(66, 'MAIL_FROM_NAME', '${APP_NAME}', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(67, 'MAIL_MAILER', 'smtp', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(68, 'update', 'Update', '2022-12-04 17:05:33', '2025-11-03 03:26:16'),
(69, 'sign_up_left_text', 'Discover AI-powered courses & personalized learning paths', '2022-12-04 17:05:33', '2025-11-03 00:25:52'),
(70, 'sign_up_left_image', 'uploads/setting/1762833060-Mk76WgEfZO.png', '2022-12-04 17:05:33', '2025-11-10 22:21:00'),
(71, 'forgot_title', 'Forgot Password?', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(72, 'forgot_subtitle', 'Enter the email address you used when you joined and we’ll send you instructions to reset your password.            For security reasons, we do NOT store your password. So rest assured that we will never send your password via email.', '2022-12-04 17:05:33', '2025-10-31 22:38:09'),
(73, 'forgot_btn_name', 'Send Reset Instructions', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(74, 'facebook_url', 'https://www.facebook.com/itechaleart', '2022-12-04 17:05:33', '2025-11-09 22:48:54'),
(75, 'twitter_url', 'https://x.com/itech_aleart', '2022-12-04 17:05:33', '2025-11-09 22:49:20'),
(76, 'linkedin_url', '#', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(77, 'pinterest_url', 'https://www.pinterest.com/itech_aleart', '2022-12-04 17:05:33', '2025-11-09 22:48:41'),
(78, 'app_instructor_footer_title', 'Join One Of The World’s Largest Learning Marketplaces.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(79, 'app_instructor_footer_subtitle', 'Donald valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my tree', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(80, 'get_in_touch_title', 'Get in Touch with ITechAleart', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(81, 'send_us_msg_title', 'Send us a message and our team (or AI assistant) will respond with guidance.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(82, 'contact_us_location', '123 ITech Avenue, Innovation City', '2022-12-04 17:05:33', '2025-11-07 21:59:35'),
(83, 'contact_us_email_one', 'support@itechaleart.example', '2022-12-04 17:05:33', '2025-11-07 21:59:35'),
(84, 'contact_us_email_two', 'hello@itechaleart.example', '2022-12-04 17:05:33', '2025-11-01 02:21:08'),
(85, 'contact_us_phone_one', '+1 (555) 123-4567', '2022-12-04 17:05:33', '2025-11-07 21:59:35'),
(86, 'contact_us_phone_two', '+1 (555) 987-6543', '2022-12-04 17:05:33', '2025-11-07 21:59:35'),
(87, 'contact_us_map_link', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.957129681789!2d79.85596919999999!3d6.8957314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25bdee2c0e73f%3A0x74624f2c943eb7ce!2s58%20Bauddhaloka%20Mawatha%2C%20Colombo%2000400%2C%20Sri%20Lanka!5e0!3m2!1sen!2sus!4v1762572536319!5m2!1sen!2sus', '2022-12-04 17:05:33', '2025-11-07 21:59:35'),
(88, 'contact_us_description', 'We are here to help — contact us for partnerships, instructor onboarding, or support.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(89, 'faq_title', 'Frequently Asked Questions', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(90, 'faq_subtitle', 'Answers to common questions about AI features, certification, and course creation.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(91, 'faq_image_title', 'Still no luck?', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(92, 'faq_image', 'uploads/setting/1762845342-VqpJqmotQJ.webp', '2022-12-04 17:05:33', '2025-11-11 01:45:42'),
(93, 'faq_tab_first_title', 'Item Support', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(94, 'faq_tab_first_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(95, 'faq_tab_sec_title', 'Licensing', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(96, 'faq_tab_sec_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(97, 'faq_tab_third_title', 'Your Account', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(98, 'faq_tab_third_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(99, 'faq_tab_four_title', 'Tax & Complications', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(100, 'faq_tab_four_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(101, 'home_special_feature_first_logo', 'uploads_demo/setting\\feature-icon1.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(102, 'home_special_feature_first_title', 'AI Course Designer', '2022-12-04 17:05:33', '2025-11-03 03:26:16'),
(103, 'home_special_feature_first_subtitle', 'Generate course outlines, quizzes and summaries with our AI assistant.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(104, 'home_special_feature_second_logo', 'uploads_demo/setting/feature-icon2.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(105, 'home_special_feature_second_title', 'Personalized Learning', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(106, 'home_special_feature_second_subtitle', 'Adaptive learning paths that evolve as you progress.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(107, 'home_special_feature_third_logo', 'uploads_demo/setting\\feature-icon3.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(108, 'home_special_feature_third_title', 'Verified Certificates', '2022-12-04 17:05:33', '2025-11-03 03:26:16'),
(109, 'home_special_feature_third_subtitle', 'Earn industry-recognized certificates powered by validated assessments.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(110, 'course_logo', 'uploads_demo/setting/courses-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(111, 'course_title', 'Discover AI-Enhanced Courses', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(112, 'course_subtitle', 'Explore curated courses and AI-generated learning paths to accelerate your career.', '2022-12-04 17:05:33', '2025-11-03 03:20:04'),
(113, 'bundle_course_logo', 'uploads_demo/setting/bundle-courses-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(114, 'bundle_course_title', 'Premium Bundles', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(115, 'bundle_course_subtitle', 'Comprehensive learning bundles crafted and optimized with AI assistance.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(116, 'top_category_logo', 'uploads_demo/setting/categories-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(117, 'top_category_title', 'Top Categories for Tech & AI', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(118, 'top_category_subtitle', 'Explore categories curated for AI, Data Science, and Software Engineering.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(119, 'top_instructor_logo', 'uploads_demo/setting\\top-instructor-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(120, 'top_instructor_title', 'Top-Rated Instructors & AI Mentors', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(121, 'top_instructor_subtitle', 'Learn from industry experts and AI-assisted curriculum designers.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(122, 'become_instructor_video', 'uploads_demo/setting/test.mp4', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(123, 'become_instructor_video_preview_image', 'uploads_demo/setting/video-poster.jpg', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(124, 'become_instructor_video_logo', 'uploads_demo/setting/top-instructor-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(125, 'become_instructor_video_title', 'Create Courses Faster with AI Assistance', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(126, 'become_instructor_video_subtitle', 'Use our AI tools to outline lessons, produce quizzes and publish professional courses in minutes.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(127, 'customer_say_logo', 'uploads_demo/setting/customers-say-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(128, 'customer_say_title', 'What learners say about ITechAleart', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(129, 'customer_say_first_name', 'DANIEL JHON', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(130, 'customer_say_first_position', 'UI/UX DESIGNER', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(131, 'customer_say_first_comment_title', 'Great instructor, great course', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(132, 'customer_say_first_comment_description', 'ITechAleart transformed my learning—personalized paths and practical projects.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(133, 'customer_say_first_comment_rating_star', '5', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(134, 'customer_say_second_name', 'NORTH', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(135, 'customer_say_second_position', 'DEVELOPER', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(136, 'customer_say_second_comment_title', 'Awesome course & good response', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(137, 'customer_say_second_comment_description', 'AI recommendations helped me find the right course quickly.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(138, 'customer_say_second_comment_rating_star', '4.5', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(139, 'customer_say_third_name', 'HIBRUPATH', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(140, 'customer_say_third_position', 'MARKETER', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(141, 'customer_say_third_comment_title', 'Fantastic course', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(142, 'customer_say_third_comment_description', 'Great hands-on projects and helpful instructors assisted by AI tools.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(143, 'customer_say_third_comment_rating_star', '5', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(144, 'achievement_first_logo', 'uploads_demo/setting\\1.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(145, 'achievement_first_title', 'Learners Trained', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(146, 'achievement_first_subtitle', '10,000+ learners', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(147, 'achievement_second_logo', 'uploads_demo/setting\\2.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(148, 'achievement_second_title', 'AI-Driven Courses', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(149, 'achievement_second_subtitle', '500+ courses', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(150, 'achievement_third_logo', 'uploads_demo/setting\\3.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(151, 'achievement_third_title', 'Expert Instructors', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(152, 'achievement_third_subtitle', 'Industry professionals & educators', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(153, 'achievement_four_logo', 'uploads_demo/setting\\4.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(154, 'achievement_four_title', 'Proudly Received', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(155, 'achievement_four_title', 'Proudly Received', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(156, 'achievement_four_subtitle', '2000+ students', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(157, 'support_faq_title', 'Frequently Ask Questions. 2', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(158, 'support_faq_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS 3', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(159, 'ticket_title', 'Is That Helpful?', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(160, 'ticket_subtitle', 'Are You Still Confusion?', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(161, 'cookie_button_name', 'Accept cookies', '2022-12-04 17:05:33', '2025-11-01 02:06:05'),
(162, 'cookie_msg', 'Your experience on this site will be improved by allowing cookies', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(163, 'COOKIE_CONSENT_STATUS', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(164, 'platform_charge', '2', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(165, 'sell_commission', '0', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(166, 'app_version', '20', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(167, 'current_version', '6.0', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(262, 'currency_id', '1', '2025-10-31 22:38:09', '2025-11-03 00:25:52'),
(263, 'language_id', '1', '2025-10-31 22:38:09', '2025-10-31 22:38:09'),
(264, 'TIMEZONE', 'UTC', '2025-10-31 22:38:09', '2025-10-31 22:38:09'),
(265, 'pwa_enable', '1', '2025-10-31 22:38:09', '2025-11-03 00:25:52'),
(266, 'youtube_url', 'https://www.youtube.com/@itechaleart', '2025-10-31 22:38:09', '2025-11-09 22:49:38'),
(267, 'tiktok_url', NULL, '2025-10-31 22:38:09', '2025-10-31 22:38:09'),
(268, 'f6s_url', '#', '2025-10-31 22:38:09', '2025-10-31 22:38:41'),
(269, 'crunchbase_url', '#', '2025-10-31 22:38:09', '2025-11-03 00:25:53'),
(270, 'maintenance_mode', '2', '2025-11-01 01:34:02', '2025-11-03 05:40:51'),
(271, 'maintenance_secret_key', NULL, '2025-11-01 01:34:02', '2025-11-03 05:40:54'),
(272, 'recaptcha_site_key', '', '2025-11-01 01:57:10', '2025-11-01 01:57:10'),
(273, 'recaptcha_secret_key', '', '2025-11-01 01:57:10', '2025-11-01 01:57:10'),
(274, 'measurement_id', 'G-', '2025-11-01 02:12:25', '2025-11-01 02:12:25'),
(275, 'subscription_mode', '1', '2025-11-01 02:15:24', '2025-11-01 02:15:25'),
(276, 'subscription_default_package_type', 'monthly', '2025-11-01 02:15:25', '2025-11-01 02:15:25'),
(277, 'registration_system_bonus_mode', '1', '2025-11-01 02:16:07', '2025-11-01 02:16:08'),
(278, 'registration_bonus_amount', '50', '2025-11-01 02:16:08', '2025-11-03 00:46:04'),
(279, 'refund_system_mode', '0', '2025-11-01 02:16:18', '2025-11-03 00:46:12'),
(280, 'gmeet_status', '1', '2025-11-03 00:36:46', '2025-11-03 00:36:46'),
(281, 'gmeet_client_id', '', '2025-11-03 00:36:46', '2025-11-03 00:36:46'),
(282, 'gmeet_client_secret', '', '2025-11-03 00:36:46', '2025-11-03 00:36:46'),
(283, 'map_api_key', '', '2025-11-03 00:44:25', '2025-11-03 04:14:24'),
(284, 'mercado_currency', 'AFA', '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(285, 'mercado_conversion_rate', '1', '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(286, 'mercado_status', NULL, '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(287, 'MERCADO_PAGO_CLIENT_ID', NULL, '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(288, 'MERCADO_PAGO_CLIENT_SECRET', NULL, '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(289, 'flutterwave_currency', 'AFA', '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(290, 'flutterwave_conversion_rate', '1', '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(291, 'flutterwave_status', NULL, '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(292, 'FLW_PUBLIC_KEY', NULL, '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(293, 'FLW_SECRET_KEY', NULL, '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(294, 'FLW_SECRET_HASH', NULL, '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(295, 'coinbase_currency', 'AFA', '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(296, 'coinbase_conversion_rate', '1', '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(297, 'coinbase_status', NULL, '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(298, 'coinbase_mode', 'sandbox', '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(299, 'coinbase_key', NULL, '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(300, 'zitopay_currency', 'AFA', '2025-11-03 00:46:43', '2025-11-03 00:46:43'),
(301, 'zitopay_conversion_rate', '1', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(302, 'zitopay_status', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(303, 'zitopay_username', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(304, 'iyzipay_currency', 'AFA', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(305, 'iyzipay_conversion_rate', '1', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(306, 'iyzipay_status', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(307, 'iyzipay_mode', 'sandbox', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(308, 'iyzipay_key', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(309, 'iyzipay_secret', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(310, 'bitpay_currency', 'AFA', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(311, 'bitpay_conversion_rate', '1', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(312, 'bitpay_status', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(313, 'bitpay_mode', 'testnet', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(314, 'bitpay_key', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(315, 'braintree_currency', 'AFA', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(316, 'braintree_conversion_rate', '1', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(317, 'braintree_status', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(318, 'braintree_test_mode', '0', '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(319, 'braintree_merchant_id', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(320, 'braintree_public_key', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(321, 'braintree_private_key', NULL, '2025-11-03 00:46:44', '2025-11-03 00:46:44'),
(322, 'app_color_design_type', '2', '2025-11-03 01:46:33', '2025-11-03 01:46:33'),
(323, 'app_theme_color', '#2b7a78', '2025-11-03 01:46:33', '2025-11-03 22:34:21'),
(324, 'app_navbar_background_color', '#1c313a', '2025-11-03 01:46:33', '2025-11-03 22:43:35'),
(325, 'app_body_font_color', '#333333', '2025-11-03 01:46:33', '2025-11-03 01:50:18'),
(326, 'app_heading_color', '#1a3c40', '2025-11-03 01:46:33', '2025-11-03 22:34:21'),
(327, 'app_gradiant_banner_color1', '#3aafa9', '2025-11-03 01:46:33', '2025-11-03 22:37:47'),
(328, 'app_gradiant_banner_color2', '#1c313a', '2025-11-03 01:46:33', '2025-11-03 22:45:49'),
(329, 'app_gradiant_banner_color', 'linear-gradient(to right, #3aafa9, #1c313a)', '2025-11-03 01:46:33', '2025-11-03 22:45:49'),
(330, 'app_gradiant_footer_color1', '#2b7a78', '2025-11-03 01:46:33', '2025-11-03 22:41:50'),
(331, 'app_gradiant_footer_color2', '#17252a', '2025-11-03 01:46:33', '2025-11-03 22:41:50'),
(332, 'app_gradiant_footer_color', 'linear-gradient(180deg, #2b7a78, #17252a)', '2025-11-03 01:46:33', '2025-11-03 22:41:50'),
(333, 'app_gradiant_overlay_background_color_opacity', '0', '2025-11-03 01:46:33', '2025-11-03 01:46:33'),
(334, 'app_pwa_icon', 'uploads/setting/1762413915-kO7iXJLfVD.png', '2025-11-06 01:55:15', '2025-11-06 01:55:15'),
(335, 'app_black_logo', 'uploads/setting/1762495038-G1d6G0CUYl.png', '2025-11-06 03:51:27', '2025-11-07 00:27:18'),
(336, 'broadcast_default', 'pusher', '2025-11-07 09:40:07', '2025-11-07 09:45:30'),
(337, 'pusher_app_id', '2074640', '2025-11-07 09:40:07', '2025-11-07 09:45:30'),
(338, 'pusher_app_key', '', '2025-11-07 09:40:07', '2025-11-07 09:45:30'),
(339, 'pusher_app_secret', '', '2025-11-07 09:40:07', '2025-11-07 09:45:30'),
(340, 'pusher_app_cluster', 'us2', '2025-11-07 09:40:07', '2025-11-07 09:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=deactivated',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Management', 'Management', 1, NULL, NULL, NULL),
(2, 'Web Development', 'Web Development', 1, NULL, NULL, NULL),
(3, 'Mobile Development', 'Mobile Development', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `special_promotion_tags`
--

CREATE TABLE `special_promotion_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `special_promotion_tag_courses`
--

CREATE TABLE `special_promotion_tag_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `special_promotion_tag_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alabama', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(2, 1, 'Alaska', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(3, 1, 'Arizona', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(4, 1, 'Arkansas', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(5, 1, 'California', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(6, 1, 'Colorado', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(7, 1, 'Connecticut', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(8, 1, 'Delaware', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(9, 1, 'Florida', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(10, 1, 'Georgia', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(11, 1, 'Hawaii', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(12, 1, 'Idaho', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(13, 1, 'Illinois', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(14, 1, 'Indiana', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(15, 1, 'Iowa', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(16, 1, 'Kansas', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(17, 1, 'Kentucky', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(18, 1, 'Louisiana', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(19, 1, 'Maine', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(20, 1, 'Maryland', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(21, 1, 'Massachusetts', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(22, 1, 'Michigan', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(23, 1, 'Minnesota', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(24, 1, 'Mississippi', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(25, 1, 'Missouri', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(26, 1, 'Montana', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(27, 1, 'Nebraska', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(28, 1, 'Nevada', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(29, 1, 'New Hampshire', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(30, 1, 'New Jersey', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(31, 1, 'New Mexico', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(32, 1, 'New York', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(33, 1, 'North Carolina', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(34, 1, 'North Dakota', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(35, 1, 'Ohio', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(36, 1, 'Oklahoma', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(37, 1, 'Oregon', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(38, 1, 'Pennsylvania', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(39, 1, 'Rhode Island', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(40, 1, 'South Carolina', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(41, 1, 'South Dakota', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(42, 1, 'Tennessee', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(43, 1, 'Texas', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(44, 1, 'Utah', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(45, 1, 'Vermont', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(46, 1, 'Virginia', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(47, 1, 'Washington', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(48, 1, 'West Virginia', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(49, 1, 'Wisconsin', '2025-11-03 03:35:27', '2025-11-03 03:35:27'),
(50, 1, 'Wyoming', '2025-11-03 03:35:27', '2025-11-03 03:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `about_me` mediumtext DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=approved, 0=pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `uuid`, `user_id`, `organization_id`, `country_id`, `province_id`, `state_id`, `city_id`, `first_name`, `last_name`, `phone_number`, `postal_code`, `address`, `about_me`, `gender`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(67, '33ec8304-60be-45ef-a55d-59936394abf3', 68, NULL, 1, NULL, 5, 29, 'Emily', 'Carter', '2135550198', '90001', '123 Sunset Blvd, Los Angeles, CA', 'Passionate about crafting intuitive digital experiences.', 'Female', 1, '2025-11-02 22:28:43', '2025-11-02 22:28:43', NULL),
(68, 'ab654835-d7dc-4147-a57d-6ec14233c9b4', 69, NULL, 1, NULL, 9, 50, 'James', 'Henderson', '3055550142', '33101', '456 Ocean Dr, Miami, FL', 'Helping teams make data-driven decisions.', 'Male', 1, '2025-11-02 22:42:35', '2025-11-02 22:42:35', NULL),
(69, '358688a7-b2f3-4317-b622-f839ab6b1605', 70, NULL, 1, NULL, 43, 256, 'Sophia', 'Nguyen', '5125550177', '73301', '789 Congress Ave, Austin, TX', 'Strategic thinker with a love for storytelling.', 'Female', 1, '2025-11-02 22:49:14', '2025-11-02 22:49:14', NULL),
(70, '32e26337-0716-4c00-abd8-23aefdaf939a', 71, NULL, 1, NULL, 5, 28, 'Michael', 'Brown', '8185550133', '91331', '321 Valley Rd, San Fernando, CA', 'Building scalable web applications with empathy.', 'Male', 1, '2025-11-02 22:51:00', '2025-11-02 22:51:00', NULL),
(71, '88405142-d5a3-4fb5-a05c-0adf2b3cc9cb', 72, NULL, 1, NULL, 9, 52, 'Olivia', 'Martinez', '4075550188', '32801', '654 Pine St, Orlando, FL', 'Designing learning experiences that inspire.', 'Female', 1, '2025-11-02 22:53:03', '2025-11-02 22:53:03', NULL),
(72, '5e52938a-92a2-4570-b8af-c00fe5dc190a', 73, NULL, 1, NULL, 43, 253, 'Daniel', 'Lee', '4695550166', '75001', '987 Elm St, Addison, TX', 'Protecting digital assets with precision.', 'Male', 1, '2025-11-02 22:55:43', '2025-11-02 22:55:43', NULL),
(73, '319d1dbc-49ca-4ad8-be23-8a89a2298152', 74, NULL, 1, NULL, 5, 26, 'Ava', 'Robinson', '9495550122', '92602', '159 Maple Ave, Irvine, CA', 'Crafting content that connects and converts.', 'Female', 1, '2025-11-02 22:57:19', '2025-11-02 22:57:19', NULL),
(74, '8df12868-1152-4e76-9a3b-a44d9cfb6b57', 75, NULL, 1, NULL, 9, 53, 'William', 'Scott', '9545550155', '33301', '753 Tech Blvd, Fort Lauderdale, FL', 'Exploring the future of intelligent systems.', 'Male', 1, '2025-11-02 23:01:24', '2025-11-02 23:01:24', NULL),
(75, 'ed660647-86b8-4b98-b67a-973c55eebe51', 76, NULL, 1, NULL, 43, 254, 'Isabella', 'Turner', '2105550111', '78201', '852 Design Ln, San Antonio, TX', 'Designing with purpose and personality.', 'Female', 1, '2025-11-02 23:03:11', '2025-11-02 23:03:11', NULL),
(76, 'd696bf97-7b50-4fad-a3e6-668352b3b06d', 77, NULL, 1, NULL, 5, 30, 'Benjamin', 'Clark', '3105550199', '90210', '963 Beverly Hills Rd, Beverly Hills, CA', 'Delivering results through collaboration.', 'Male', 1, '2025-11-02 23:04:38', '2025-11-02 23:04:38', NULL),
(77, '600e9ffb-3ca1-4157-9711-7324c6aad9eb', 78, NULL, 1, NULL, 9, 51, 'Mia', 'Walker', '7865550105', '33133', '147 Wellness Way, Coconut Grove, FL', 'Empowering people to live healthier lives.', 'Female', 1, '2025-11-02 23:06:16', '2025-11-02 23:06:16', NULL),
(78, 'f794d355-cd5a-408b-8dfa-91dc07a53411', 79, NULL, 1, NULL, 43, 253, 'Henry', 'Adams', '8325550170', '77001', '369 Cloud St, Houston, TX', 'Automating infrastructure for seamless deployment.', 'Male', 1, '2025-11-02 23:07:53', '2025-11-02 23:12:20', NULL),
(79, '925bf138-6392-4ff4-a7a3-233aaf615850', 80, NULL, 1, NULL, 5, 25, 'Ethan', 'Brooks', '2135550191', '90001', '101 Maple St, Los Angeles, CA', 'about', 'Male', 1, '2025-11-02 23:25:29', '2025-11-02 23:25:29', NULL),
(80, '3492bc6d-3fee-4812-acf5-3b4a3debc5de', 81, NULL, 1, NULL, 9, 50, 'Ava', 'Sanders', '3055550143', '33101', '202 Ocean Dr, Miami, FL', 'about', 'Female', 1, '2025-11-02 23:30:14', '2025-11-02 23:30:14', NULL),
(81, '7f80b343-8b04-4a0c-95a7-4d212405557f', 82, NULL, 1, NULL, 43, 256, 'Liam', 'Turner', '5125550176', '73301', '303 Congress Ave, Austin, TX', 'about', 'Male', 1, '2025-11-03 00:04:42', '2025-11-03 00:04:42', NULL),
(82, '41a54c19-eba1-4819-b99d-6c97bdfea67d', 83, NULL, 1, NULL, 5, 28, 'Isabella', 'Hayes', '8185550132', '91331', '404 Valley Rd, San Fernando, CA', 'about', 'Female', 1, '2025-11-03 00:05:40', '2025-11-03 00:05:40', NULL),
(83, 'a836af5f-e04c-4bd8-abb3-1be76416fd60', 84, NULL, 1, NULL, 9, 52, 'Noah', 'Rivera', '4075550187', '32801', '505 Pine St, Orlando, FL', 'about', 'Male', 1, '2025-11-03 00:07:14', '2025-11-03 00:07:14', NULL),
(84, 'ef31c9a6-42c5-4bde-852b-c91749b4c33d', 85, NULL, 1, NULL, 43, 257, 'Mia', 'Jenkins', '4695550167', '75001', '606 Elm St, Addison, TX', 'about', 'Female', 1, '2025-11-03 00:08:39', '2025-11-03 00:08:39', NULL),
(85, '0d08d1f8-0c2d-4def-a045-4d3653f6c1ff', 86, NULL, 1, NULL, 5, 27, 'Lucas', 'Perry', '9495550123', '92602', '707 Maple Ave, Irvine, CA', 'about', 'Male', 1, '2025-11-03 00:09:41', '2025-11-03 00:09:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_certificates`
--

CREATE TABLE `student_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `certificate_number` varchar(191) DEFAULT NULL,
  `course_id` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `uuid`, `category_id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `created_at`, `updated_at`) VALUES
(1, '9f2e9f01-4b48-40a3-9d11-d1badce66abe', 1, 'Web Development', 'web-development', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'ee7dbc19-7ad1-4567-9c4f-12b1d5447e2d', 1, 'Data Science', 'data-science', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, '7cc4d2f8-529f-4e89-b28a-ed3a9a243883', 1, 'Mobile Development', 'mobile-development', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, '50017599-5bf8-401e-b8e8-ac74a5483ec4', 1, 'Programming Language', 'programming-language', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, '2d9561f5-abb6-49a9-8f01-b9871e0e377f', 1, 'Game Development', 'game-development', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'e5bd8dee-2b3d-4b4c-bc1f-5717b4049a00', 2, 'IT Certifications', 'it-certifications', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'aee6a731-0f3d-4abf-87d4-59636ce657f2', 2, 'Network & Security', 'network-security', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, '04ec60ec-ee72-4bbf-a58e-bce7fe2e8cbb', 2, 'Hardware', 'hardware', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, 'b74c0ee8-81ac-4c87-bace-dbbfd17b1be3', 2, 'Operating System & Servers', 'operating-system-servers', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(10, 'ef6c46a4-e09c-4af6-96e2-1995eeeee9ae', 3, 'Microsoft', 'microsoft', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(11, 'c966ea96-e96f-44a6-9b5a-ef9ae56844d4', 3, 'Apple', 'apple', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(12, 'f02d2d08-4acb-4cb8-8ce7-8d1bdaa6ca7c', 3, 'Google', 'google', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(13, '3b377226-0b6e-4896-a679-e12e329d6ffd', 4, 'Career Development', 'career-development', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(14, '57c46b26-520f-4286-bfc5-6372a9cd924a', 4, 'Creativity', 'creativity', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(15, 'bad12e18-78bb-46c1-8e2b-e428bda8eb5d', 5, 'Communication', 'communication', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(16, 'e593cfab-7cdd-40d9-a0f2-27f18bf02b89', 5, 'Management', 'management', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(17, '37f7ed7e-d3da-470b-9be6-7655342457af', 5, 'Sales', 'sales', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(18, '9377e664-e92f-4839-ba85-829629ad296d', 7, 'Web Design', 'web-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(19, '0e3195ef-68c2-4044-8ee3-727cd504e586', 7, 'Graphic Design', 'graphic-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(20, '41c9906d-1a92-4529-93f3-75ee342dbdb3', 7, 'Game Design', 'game-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(21, '051ab930-2a76-4e6c-a1a6-2d6681427e4b', 7, 'Fashion Design', 'fashion-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(22, '5cafa706-4015-49e6-babf-0a7f0495012f', 7, 'User Experience Design', 'user-experience-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_commission_histories`
--

CREATE TABLE `subscription_commission_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `monthly_distribution_history_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sub_amount` decimal(12,2) NOT NULL,
  `commission_percentage` decimal(2,2) NOT NULL,
  `admin_commission` decimal(12,2) NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `paid_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_questions`
--

CREATE TABLE `support_ticket_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_ticket_questions`
--

INSERT INTO `support_ticket_questions` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Where can I see the status of my refund?', ' In the Refund Status column you can see the date your refund request was submitted or when it was processed.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'When will I receive my refund?', ' Refund requests are submitted immediately to your payment processor or financial institution after Udemy has received and processed your request. It may take  5 to 10 business days or longer to post the funds in your account, depending on your financial institution or location.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'Why was my refund request denied?', ' All eligible courses purchased on Udemy can be refunded within 30 days, provided the request meets the guidelines in our refund policy. ', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'What is a “credit refund”?', ' In cases where a transaction is not eligible for a refund to your original payment method, the refund will be granted using LMSZAI Credit', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, 'Where can I see the status of my refund?', ' In the Refund Status column you can see the date your refund request was submitted or when it was processed.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'When will I receive my refund?', ' Refund requests are submitted immediately to your payment processor or financial institution after Udemy has received and processed your request. It may take  5 to 10 business days or longer to post the funds in your account, depending on your financial institution or location.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'Why was my refund request denied?', ' All eligible courses purchased on Udemy can be refunded within 30 days, provided the request meets the guidelines in our refund policy. ', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'What is a “credit refund”?', ' In cases where a transaction is not eligible for a refund to your original payment method, the refund will be granted using LMSZAI Credit', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `uuid`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'd45fd1e7-a1e0-4d3f-954d-bd56dc95e48f', 'Design', 'design', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, '90bfec22-452f-42f4-b9aa-03c053aecc24', 'Development', 'development', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'b375ca10-66e9-43c1-8593-a6bdcc8ab3d9', 'IT', 'it', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'eecd9f5d-f023-4fe2-afcb-23b9ccc558b9', 'Programming', 'programming', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, '8f9fbd32-7878-443a-a531-faf1c4428b31', 'Travel', 'travel', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, '235b8c44-a340-4929-a48c-6238314d6af4', 'Music', 'music', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, '36ec1ef2-5bca-4d06-9446-a5d8ab6abdab', 'Digital marketing', 'digital-marketing', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'd8dc6caa-b578-49f6-aaca-e25783afe34b', 'Science', 'science', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, '346c01be-ab53-406f-acc4-73c5fddc0b6f', 'Math', 'math', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(10, '8be7636f-b931-11f0-be99-90b11c0f962c', 'AI', 'ai', '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(11, '8beaff97-b931-11f0-be99-90b11c0f962c', 'Web Development', 'web-development', '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(12, '8bed86bf-b931-11f0-be99-90b11c0f962c', 'Predictive Analytics', 'predictive-analytics', '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(13, '8bef8198-b931-11f0-be99-90b11c0f962c', 'Digital Transformation', 'digital-transformation', '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(14, '8bf04f91-b931-11f0-be99-90b11c0f962c', 'Marketing', 'marketing', '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(15, '8bf115cf-b931-11f0-be99-90b11c0f962c', 'Design Thinking', 'design-thinking', '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(16, '8bf1c112-b931-11f0-be99-90b11c0f962c', 'UX Design', 'ux-design', '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(17, '8bf26a4c-b931-11f0-be99-90b11c0f962c', 'Automation', 'automation', '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(18, '8bf30d10-b931-11f0-be99-90b11c0f962c', 'Data Science', 'data-science', '2025-11-04 03:51:26', '2025-11-04 03:51:26'),
(19, '8bf3b65c-b931-11f0-be99-90b11c0f962c', 'Innovation', 'innovation', '2025-11-04 03:51:26', '2025-11-04 03:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `tag_products`
--

CREATE TABLE `tag_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `take_exams`
--

CREATE TABLE `take_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `number_of_correct_answer` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `image`, `name`, `designation`, `created_at`, `updated_at`) VALUES
(5, 'uploads/team_member/1762852289-Vfj24b0VqP.webp', 'Dr. Aiden Matthews', 'Chief Technology Officer (CTO)', '2025-11-10 07:19:19', '2025-11-11 03:41:29'),
(6, 'uploads/team_member/1762852290-tWD5vGfz5U.webp', 'Sophia Ilankoon', 'Head of Product & UX', '2025-11-10 07:19:19', '2025-11-11 03:41:29'),
(7, 'uploads/team_member/1762852290-tjqw9ivNar.webp', 'Marcus D’Souza', 'Lead AI Engineer', '2025-11-10 07:19:19', '2025-11-11 03:41:29'),
(8, 'uploads/team_member/1762852290-78fygiQafY.webp', 'Tharushi Perera', 'Senior Cloud Infrastructure Engineer', '2025-11-10 07:19:19', '2025-11-11 03:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `ticket_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=Open, 2=Closed',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `related_service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `priority_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_departments`
--

CREATE TABLE `ticket_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reply_admin_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_priorities`
--

CREATE TABLE `ticket_priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_related_services`
--

CREATE TABLE `ticket_related_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(191) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(12,3) NOT NULL DEFAULT 0.000,
  `narration` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `area_code` varchar(10) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=admin, 2=instructor, 3=student',
  `phone_number` varchar(50) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `lat` decimal(12,8) DEFAULT NULL,
  `long` decimal(12,8) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `forgot_token` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_affiliator` tinyint(4) NOT NULL DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `area_code`, `mobile_number`, `email_verified_at`, `password`, `role`, `phone_number`, `address`, `lat`, `long`, `image`, `avatar`, `forgot_token`, `provider_id`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `remember_token`, `created_at`, `updated_at`, `is_affiliator`, `balance`, `deleted_at`) VALUES
(1, 'Administration', 'kevin@itechaleart.com', NULL, NULL, '2025-11-07 22:27:35', '$2y$10$q.DuVcHWT2qPqOOQZmKvre2nNSoLM.prXvsZPEod9vt3I5TJkojTe', 1, '+9476 459 1823', '58 Bauddhaloka Mawatha, Colombo 04, Colombo', NULL, NULL, 'uploads/user/1762149202-EVCAuSMcRR.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2025-11-07 22:27:35', 0, 0, NULL),
(68, 'Emily Carter', 'emily.carter@itechaleart.com', '1', '2135550198', '2025-11-02 22:28:43', '$2y$10$Y0Cc/l332QNyHaPkVLnJeOZeV/zVqbogpmhPUT.Y8Rli9wqKy7RfC', 2, '2135550198', NULL, NULL, NULL, 'uploads/user/1762844530-GMHLEWHXbs.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 22:28:43', '2025-11-11 01:32:10', 0, 0, NULL),
(69, 'James Henderson', 'james.henderson@itechaleart.com', '1', '3055550142', '2025-11-02 22:42:35', '$2y$10$hfZBfxkRp0FrQMFkyKorA.a6aAiwokBpW906ff1kj9/tobqFYoyCi', 2, '3055550142', NULL, NULL, NULL, 'uploads/user/1762844436-TbUNqp7Eq2.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 22:42:35', '2025-11-11 01:30:36', 0, 0, NULL),
(70, 'Sophia Nguyen', 'sophia.nguyen@itechaleart.com', '1', '5125550177', '2025-11-02 22:49:14', '$2y$10$sEIoJ6mZ2uoPXMCC09hkxuoTe48bnPPv1NIL9wynyG0zGrPWTDfky', 2, '5125550177', NULL, NULL, NULL, 'uploads/user/1762844517-O5s9CeAYLa.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 22:49:14', '2025-11-11 01:31:57', 0, 0, NULL),
(71, 'Michael Brown', 'michael.brown@itechaleart.com', '1', '8185550133', '2025-11-02 22:51:00', '$2y$10$HgwyV/yxCdhEXg0jcMIjTuThLpIL45IkM5zgeP..HS0lTmTqDJeF6', 2, '8185550133', NULL, NULL, NULL, 'uploads/user/1762844373-Z8TNJ2VkZq.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 22:51:00', '2025-11-11 01:29:33', 0, 0, NULL),
(72, 'Olivia Martinez', 'olivia.martinez@itechaleart.com', '1', '4075550188', '2025-11-02 22:53:03', '$2y$10$5O3NxAPNSX2btAp3Sveta.44q.InWDEVaQs5PIEMyhak1/NG5nE/a', 2, '4075550188', NULL, NULL, NULL, 'uploads/user/1762844499-9jLjr3uygv.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 22:53:03', '2025-11-11 01:31:39', 0, 0, NULL),
(73, 'Daniel Lee', 'daniel.lee@itechaleart.com', '1', '4695550166', '2025-11-02 22:55:43', '$2y$10$Is3yiu91KdZ31Otr7uZfNOwVkulck/3u/tiNdpTpJXq09BsvlevyK', 2, '4695550166', NULL, NULL, NULL, 'uploads/user/1762844355-2wUhhFbzvJ.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 22:55:43', '2025-11-11 01:29:15', 0, 0, NULL),
(74, 'Ava Robinson', 'ava.robinson@itechaleart.com', '1', '9495550122', '2025-11-02 22:57:19', '$2y$10$a9u4IUDZxsCYWmi30PvMpOUeblui64a6EE/3qsAQrixHVjE1Wj7by', 2, '9495550122', NULL, NULL, NULL, 'uploads/user/1762844484-lkRXhOfUQi.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 22:57:19', '2025-11-11 01:31:24', 0, 0, NULL),
(75, 'William Scott', 'william.scott@itechaleart.com', '1', '9545550155', '2025-11-02 23:01:24', '$2y$10$nbPuSTUU0otRBOA9f.t9zOLL1ZDbjZBXVC2ugsne5iq50tnFOck22', 2, '9545550155', NULL, NULL, NULL, 'uploads/user/1762844337-lCvEoi612z.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 23:01:24', '2025-11-11 01:28:57', 0, 0, NULL),
(76, 'Isabella Turner', 'isabella.turner@itechaleart.com', '1', '2105550111', '2025-11-02 23:03:10', '$2y$10$GFh4GT9DDxGgJMWol/sPXeKlYSxtsuOKkz3WwXUtgF/fG7Ri/yHLC', 2, '2105550111', NULL, NULL, NULL, 'uploads/user/1762844469-7LyFE4ElmZ.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 23:03:11', '2025-11-11 01:31:09', 0, 0, NULL),
(77, 'Benjamin Clark', 'benjamin.clark@itechaleart.com', '1', '3105550199', '2025-11-02 23:04:38', '$2y$10$4zxtzi7nHoJTL/xdYax0HumPJ1TSf97woQLt3PtJFF36/y5.GaU2q', 2, '3105550199', NULL, NULL, NULL, 'uploads/user/1762844322-GRpiG4qKwS.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 23:04:38', '2025-11-11 01:28:42', 0, 0, NULL),
(78, 'Mia Walker', 'mia.walker@itechaleart.com', '1', '7865550105', '2025-11-02 23:06:16', '$2y$10$GUYFFwOghymDBacogQnNtO5m39CSV.Ahj4HPxQWnPln6v4beF/POG', 2, '7865550105', NULL, NULL, NULL, 'uploads/user/1762844452-FpG6j3cCVU.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 23:06:16', '2025-11-11 01:30:52', 0, 0, NULL),
(79, 'Henry Adams', 'henry.adams@itechaleart.com', '1', '8325550170', '2025-11-02 23:07:53', '$2y$10$8Nroh8L0zTEAxeRktfCnxutGV9u6lUlx.aYiqlgIKqjNF0Zj5/K1u', 2, '8325550170', NULL, NULL, NULL, 'uploads/user/1762844301-6R3NMDyX4A.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 23:07:53', '2025-11-11 01:28:21', 0, 0, NULL),
(80, 'Ethan Brooks', 'ethan.brooks@itechaleart.com', '1', '2135550191', '2025-11-02 23:25:29', '$2y$10$8DCXrBclTRoSblqzJNDBHu4wFrVTPPetVRg9j.n6Wt6v5/avRtdlW', 3, '2135550191', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 23:25:29', '2025-11-02 23:25:29', 0, 0, NULL),
(81, 'Ava Sanders', 'ava.sanders@itechaleart.com', '1', '3055550143', '2025-11-02 23:30:13', '$2y$10$fBf8i6Zko5aN2DlBt5WFNOzx8WFXO/WXrDM1Fq11nJ/NFEgYDyr2K', 3, '3055550143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-02 23:30:14', '2025-11-02 23:30:14', 0, 0, NULL),
(82, 'Liam Turner', 'liam.turner@itechaleart.com', '1', '5125550176', '2025-11-03 00:04:41', '$2y$10$tySoH7wnvIPY76dP1Yefqu..A2lLLKzvwshTZjy3pTUI7q0BGU0Tu', 3, '5125550176', NULL, NULL, NULL, 'uploads/user/1762148082-fD2BZas0ZF.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 00:04:42', '2025-11-03 00:04:42', 0, 0, NULL),
(83, 'Isabella Hayes', 'isabella.hayes@itechaleart.com', '1', '8185550132', '2025-11-03 00:05:40', '$2y$10$XX6Gal7oCC8MvCPq.jucI.6EEKUNpNIyU.5k2fx5VOG0dleux2Tpu', 3, '8185550132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 00:05:40', '2025-11-03 00:05:40', 0, 0, NULL),
(84, 'Noah Rivera', 'noah.rivera@itechaleart.com', '1', '4075550187', '2025-11-03 00:07:14', '$2y$10$Sj279f4/x4rI99qUozlWd.zPvOJW58S4.qcEUKRxT8Yv40GIZNZ1K', 3, '4075550187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 00:07:14', '2025-11-03 00:07:14', 0, 0, NULL),
(85, 'Mia Jenkins', 'mia.jenkins@itechaleart.com', '1', '4695550167', '2025-11-03 00:08:39', '$2y$10$POLAIgRAdcaOuYPZG/TPq.YC.wKKdX1O71fz3OLQOLY57uSaIAIV.', 3, '4695550167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 00:08:39', '2025-11-03 00:08:39', 0, 0, NULL),
(86, 'Lucas Perry', 'lucas.perry@itechaleart.com', '1', '9495550123', '2025-11-03 00:09:40', '$2y$10$t9FGyS4syu3WrqyKSWOb0eZAplfV9lE2IClwuLNatwUgiR7ttJ9T2', 3, '9495550123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 00:09:41', '2025-11-03 00:09:41', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_badges`
--

CREATE TABLE `user_badges` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ranking_level_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_cards`
--

CREATE TABLE `user_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_holder_name` varchar(255) NOT NULL,
  `month` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_follower`
--

CREATE TABLE `user_follower` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_packages`
--

CREATE TABLE `user_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_type` tinyint(4) NOT NULL DEFAULT 1,
  `enroll_date` datetime NOT NULL,
  `expired_date` datetime NOT NULL,
  `student` int(11) NOT NULL DEFAULT 0,
  `instructor` int(11) NOT NULL DEFAULT 0,
  `course` int(11) NOT NULL DEFAULT 0,
  `consultancy` int(11) NOT NULL DEFAULT 0,
  `subscription_course` int(11) NOT NULL DEFAULT 0,
  `bundle_course` int(11) NOT NULL DEFAULT 0,
  `product` int(11) NOT NULL DEFAULT 0,
  `device` int(11) NOT NULL DEFAULT 0,
  `admin_commission` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_paypals`
--

CREATE TABLE `user_paypals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_recharges`
--

CREATE TABLE `wallet_recharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `beneficiary_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transection_id` varchar(80) NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(100) DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=complete, 2=rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_settings`
--

CREATE TABLE `zoom_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` varchar(191) NOT NULL,
  `api_key` varchar(191) NOT NULL,
  `api_secret` varchar(191) NOT NULL,
  `timezone` varchar(191) NOT NULL,
  `host_video` varchar(191) NOT NULL DEFAULT '0' COMMENT 'true, false',
  `participant_video` varchar(191) NOT NULL DEFAULT '0' COMMENT 'true, false',
  `waiting_room` varchar(191) NOT NULL DEFAULT '0' COMMENT 'true, false',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=disable, 1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_generals`
--
ALTER TABLE `about_us_generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_history`
--
ALTER TABLE `affiliate_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliate_history_hash_unique` (`hash`);

--
-- Indexes for table `affiliate_request`
--
ALTER TABLE `affiliate_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assignments_uuid_unique` (`uuid`);

--
-- Indexes for table `assignment_files`
--
ALTER TABLE `assignment_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_submits`
--
ALTER TABLE `assignment_submits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assignment_submits_uuid_unique` (`uuid`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beneficiaries_uuid_unique` (`uuid`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_uuid_unique` (`uuid`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_uuid_unique` (`uuid`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_histories`
--
ALTER TABLE `booking_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_histories_uuid_unique` (`uuid`);

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundles_uuid_unique` (`uuid`);

--
-- Indexes for table `bundle_courses`
--
ALTER TABLE `bundle_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_management`
--
ALTER TABLE `cart_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_uuid_unique` (`uuid`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificates_uuid_unique` (`uuid`);

--
-- Indexes for table `certificate_by_instructors`
--
ALTER TABLE `certificate_by_instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_by_instructors_uuid_unique` (`uuid`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_logos`
--
ALTER TABLE `client_logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultation_slots`
--
ALTER TABLE `consultation_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_issues`
--
ALTER TABLE `contact_us_issues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_us_issues_uuid_unique` (`uuid`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_uuid_unique` (`uuid`);

--
-- Indexes for table `coupon_courses`
--
ALTER TABLE `coupon_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_instructors`
--
ALTER TABLE `coupon_instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_uuid_unique` (`uuid`);

--
-- Indexes for table `course_instructor`
--
ALTER TABLE `course_instructor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_languages`
--
ALTER TABLE `course_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_languages_uuid_unique` (`uuid`);

--
-- Indexes for table `course_lectures`
--
ALTER TABLE `course_lectures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_lectures_uuid_unique` (`uuid`);

--
-- Indexes for table `course_lecture_views`
--
ALTER TABLE `course_lecture_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_lessons`
--
ALTER TABLE `course_lessons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_lessons_uuid_unique` (`uuid`);

--
-- Indexes for table `course_resources`
--
ALTER TABLE `course_resources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_resources_uuid_unique` (`uuid`);

--
-- Indexes for table `course_tags`
--
ALTER TABLE `course_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_upload_rules`
--
ALTER TABLE `course_upload_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `devices_device_uuid_unique` (`device_uuid`),
  ADD KEY `devices_device_type_index` (`device_type`),
  ADD KEY `devices_ip_index` (`ip`);

--
-- Indexes for table `device_user`
--
ALTER TABLE `device_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_user_user_id_device_id_index` (`user_id`,`device_id`),
  ADD KEY `device_user_user_id_index` (`user_id`),
  ADD KEY `device_user_device_id_index` (`device_id`);

--
-- Indexes for table `difficulty_levels`
--
ALTER TABLE `difficulty_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `difficulty_levels_uuid_unique` (`uuid`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_notification_settings`
--
ALTER TABLE `email_notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_notification_settings_uuid_unique` (`uuid`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_uuid_unique` (`uuid`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_uuid_unique` (`uuid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_categories_uuid_unique` (`uuid`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_posts_uuid_unique` (`uuid`);

--
-- Indexes for table `forum_post_comments`
--
ALTER TABLE `forum_post_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_post_comments_uuid_unique` (`uuid`);

--
-- Indexes for table `generate_contents`
--
ALTER TABLE `generate_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmeet_settings`
--
ALTER TABLE `gmeet_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_special_features`
--
ALTER TABLE `home_special_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_uuid_unique` (`uuid`);

--
-- Indexes for table `instructor_awards`
--
ALTER TABLE `instructor_awards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructor_awards_uuid_unique` (`uuid`);

--
-- Indexes for table `instructor_certificates`
--
ALTER TABLE `instructor_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructor_certificates_uuid_unique` (`uuid`);

--
-- Indexes for table `instructor_consultation_day_statuses`
--
ALTER TABLE `instructor_consultation_day_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_features`
--
ALTER TABLE `instructor_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_procedures`
--
ALTER TABLE `instructor_procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_supports`
--
ALTER TABLE `instructor_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_unique` (`language`),
  ADD UNIQUE KEY `languages_iso_code_unique` (`iso_code`);

--
-- Indexes for table `learn_key_points`
--
ALTER TABLE `learn_key_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_classes`
--
ALTER TABLE `live_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `live_classes_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metas_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `monthly_distribution_histories`
--
ALTER TABLE `monthly_distribution_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notice_boards_uuid_unique` (`uuid`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notifications_uuid_unique` (`uuid`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `open_a_i_prompts`
--
ALTER TABLE `open_a_i_prompts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_uuid_unique` (`uuid`);

--
-- Indexes for table `order_billing_addresses`
--
ALTER TABLE `order_billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_uuid_unique` (`uuid`);

--
-- Indexes for table `our_histories`
--
ALTER TABLE `our_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `packages_slug_unique` (`slug`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_uuid_unique` (`uuid`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_uuid_unique` (`uuid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promotions_uuid_unique` (`uuid`);

--
-- Indexes for table `promotion_courses`
--
ALTER TABLE `promotion_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `questions_uuid_unique` (`uuid`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_options_uuid_unique` (`uuid`);

--
-- Indexes for table `ranking_levels`
--
ALTER TABLE `ranking_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ranking_levels_uuid_unique` (`uuid`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `scorm`
--
ALTER TABLE `scorm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_resource_type_resource_id_index` (`resource_type`,`resource_id`);

--
-- Indexes for table `scorm_sco`
--
ALTER TABLE `scorm_sco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_sco_scorm_id_foreign` (`scorm_id`);

--
-- Indexes for table `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_sco_tracking_user_id_foreign` (`user_id`),
  ADD KEY `scorm_sco_tracking_sco_id_foreign` (`sco_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_promotion_tags`
--
ALTER TABLE `special_promotion_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `special_promotion_tags_uuid_unique` (`uuid`);

--
-- Indexes for table `special_promotion_tag_courses`
--
ALTER TABLE `special_promotion_tag_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_uuid_unique` (`uuid`);

--
-- Indexes for table `student_certificates`
--
ALTER TABLE `student_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_certificates_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `student_certificates_certificate_number_unique` (`certificate_number`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_uuid_unique` (`uuid`);

--
-- Indexes for table `subscription_commission_histories`
--
ALTER TABLE `subscription_commission_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_questions`
--
ALTER TABLE `support_ticket_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_uuid_unique` (`uuid`);

--
-- Indexes for table `tag_products`
--
ALTER TABLE `tag_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `take_exams`
--
ALTER TABLE `take_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_uuid_unique` (`uuid`);

--
-- Indexes for table `ticket_departments`
--
ALTER TABLE `ticket_departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_departments_uuid_unique` (`uuid`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_priorities_uuid_unique` (`uuid`);

--
-- Indexes for table `ticket_related_services`
--
ALTER TABLE `ticket_related_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_related_services_uuid_unique` (`uuid`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_hash_unique` (`hash`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_number_unique` (`mobile_number`);

--
-- Indexes for table `user_cards`
--
ALTER TABLE `user_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_cards_uuid_unique` (`uuid`);

--
-- Indexes for table `user_packages`
--
ALTER TABLE `user_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_paypals`
--
ALTER TABLE `user_paypals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_recharges`
--
ALTER TABLE `wallet_recharges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_recharges_uuid_unique` (`uuid`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `withdraws_uuid_unique` (`uuid`);

--
-- Indexes for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_generals`
--
ALTER TABLE `about_us_generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliate_history`
--
ALTER TABLE `affiliate_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliate_request`
--
ALTER TABLE `affiliate_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignment_files`
--
ALTER TABLE `assignment_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_submits`
--
ALTER TABLE `assignment_submits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `booking_histories`
--
ALTER TABLE `booking_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bundle_courses`
--
ALTER TABLE `bundle_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart_management`
--
ALTER TABLE `cart_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `certificate_by_instructors`
--
ALTER TABLE `certificate_by_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `client_logos`
--
ALTER TABLE `client_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `consultation_slots`
--
ALTER TABLE `consultation_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_us_issues`
--
ALTER TABLE `contact_us_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_courses`
--
ALTER TABLE `coupon_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupon_instructors`
--
ALTER TABLE `coupon_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `course_instructor`
--
ALTER TABLE `course_instructor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `course_languages`
--
ALTER TABLE `course_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_lectures`
--
ALTER TABLE `course_lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `course_lecture_views`
--
ALTER TABLE `course_lecture_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `course_lessons`
--
ALTER TABLE `course_lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `course_resources`
--
ALTER TABLE `course_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tags`
--
ALTER TABLE `course_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `course_upload_rules`
--
ALTER TABLE `course_upload_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_user`
--
ALTER TABLE `device_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `difficulty_levels`
--
ALTER TABLE `difficulty_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `email_notification_settings`
--
ALTER TABLE `email_notification_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_questions`
--
ALTER TABLE `faq_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forum_post_comments`
--
ALTER TABLE `forum_post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `generate_contents`
--
ALTER TABLE `generate_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `gmeet_settings`
--
ALTER TABLE `gmeet_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_special_features`
--
ALTER TABLE `home_special_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `instructor_awards`
--
ALTER TABLE `instructor_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructor_certificates`
--
ALTER TABLE `instructor_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructor_consultation_day_statuses`
--
ALTER TABLE `instructor_consultation_day_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `instructor_features`
--
ALTER TABLE `instructor_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instructor_procedures`
--
ALTER TABLE `instructor_procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instructor_supports`
--
ALTER TABLE `instructor_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learn_key_points`
--
ALTER TABLE `learn_key_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `live_classes`
--
ALTER TABLE `live_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `monthly_distribution_histories`
--
ALTER TABLE `monthly_distribution_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_boards`
--
ALTER TABLE `notice_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1369;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `open_a_i_prompts`
--
ALTER TABLE `open_a_i_prompts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `order_billing_addresses`
--
ALTER TABLE `order_billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_histories`
--
ALTER TABLE `our_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promotion_courses`
--
ALTER TABLE `promotion_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ranking_levels`
--
ALTER TABLE `ranking_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scorm`
--
ALTER TABLE `scorm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scorm_sco`
--
ALTER TABLE `scorm_sco`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `special_promotion_tags`
--
ALTER TABLE `special_promotion_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `special_promotion_tag_courses`
--
ALTER TABLE `special_promotion_tag_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `student_certificates`
--
ALTER TABLE `student_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subscription_commission_histories`
--
ALTER TABLE `subscription_commission_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket_questions`
--
ALTER TABLE `support_ticket_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tag_products`
--
ALTER TABLE `tag_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `take_exams`
--
ALTER TABLE `take_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_departments`
--
ALTER TABLE `ticket_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_related_services`
--
ALTER TABLE `ticket_related_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `user_cards`
--
ALTER TABLE `user_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_packages`
--
ALTER TABLE `user_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_paypals`
--
ALTER TABLE `user_paypals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_recharges`
--
ALTER TABLE `wallet_recharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scorm_sco`
--
ALTER TABLE `scorm_sco`
  ADD CONSTRAINT `scorm_sco_scorm_id_foreign` FOREIGN KEY (`scorm_id`) REFERENCES `scorm` (`id`);

--
-- Constraints for table `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  ADD CONSTRAINT `scorm_sco_tracking_sco_id_foreign` FOREIGN KEY (`sco_id`) REFERENCES `scorm_sco` (`id`),
  ADD CONSTRAINT `scorm_sco_tracking_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
