-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 02:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloggydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `comment` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post`, `comment`, `author`, `date`) VALUES
(7, 6, 'this is the best article i have ever come across\r\n', 'hamber harness', '2023-07-04 16:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `topic_id` int(3) UNSIGNED ZEROFILL DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(225) NOT NULL,
  `published` tinytext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `token` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `user_id`, `title`, `topic_id`, `image`, `body`, `author`, `published`, `created_at`, `token`) VALUES
(1, 1, 'Exploring the Wonders of Stargazing: A Celestial Adventure', 033, '1687179328_Stargazing-tips-ffe8d19.jpg', '&lt;p&gt;Introduction: Step outside on a clear, moonless night, and you&#039;ll be greeted by a breathtaking display of twinkling stars. Stargazing has captivated humanity for centuries, inviting us to ponder the mysteries of the universe. In this blog post, we will embark on a celestial adventure, delving into the wonders of stargazing and the secrets it holds.&lt;/p&gt;&lt;p&gt;Paragraph 1: The night sky is a canvas adorned with shimmering jewels, each representing a distant world or galaxy. Whether you&#039;re a seasoned astronomer or a curious novice, stargazing offers a serene escape from the chaos of everyday life. With just your eyes or a telescope, you can unlock the secrets of the cosmos and witness the beauty of celestial bodies.&lt;/p&gt;&lt;p&gt;Paragraph 2: One of the most enchanting aspects of stargazing is the opportunity to observe constellations. These patterns formed by groups of stars have sparked legends and stories across cultures. From the recognizable Big Dipper to the mythical Orion, constellations connect us to ancient civilizations and their rich narratives. With a star chart or a stargazing app, you can trace the outlines of these celestial artworks and marvel at their significance.&lt;/p&gt;&lt;p&gt;Paragraph 3: Beyond constellations, stargazing allows us to witness remarkable astronomical events. From meteor showers painting the sky with streaks of light to the awe-inspiring dance of planets, there&#039;s always something happening in the celestial sphere. Mark your calendar for events like eclipses or planetary alignments, and you&#039;ll have a front-row seat to extraordinary spectacles that remind us of our place in the vastness of the universe.&lt;/p&gt;&lt;p&gt;Paragraph 4: For those seeking deeper exploration, a telescope opens a gateway to distant galaxies, nebulas, and star clusters. With each glimpse through the eyepiece, you can uncover breathtaking sights that reveal the grandeur and diversity of the cosmos. From the delicate rings of Saturn to the vibrant swirls of the Orion Nebula, these celestial wonders inspire a sense of awe and ignite a passion for further discovery.&lt;/p&gt;&lt;p&gt;Conclusion: Stargazing is a humbling and awe-inspiring activity that reminds us of the vastness and beauty of the universe we inhabit. Whether you choose to explore constellations, witness astronomical events, or delve into the depths of space with a telescope, the wonders of stargazing await you. So, on the next clear night, embrace the quiet solitude, look up to the heavens, and embark on a celestial adventure that will leave you with a profound appreciation for the mysteries that lie beyond our world.&lt;/p&gt;', 'Kato', '1', '2023-06-19 15:55:28', 1687179328),
(2, 1, 'Mastering the Art of Productivity: 7 Strategies to Supercharge Your Day', 027, '1687179534_1613531180153.jpg', '&lt;p&gt;Introduction: Step outside on a clear, moonless night, and you&#039;ll be greeted by a breathtaking display of twinkling stars. Stargazing has captivated humanity for centuries, inviting us to ponder the mysteries of the universe. In this blog post, we will embark on a celestial adventure, delving into the wonders of stargazing and the secrets it holds.&lt;/p&gt;&lt;p&gt;Paragraph 1: The night sky is a canvas adorned with shimmering jewels, each representing a distant world or galaxy. Whether you&#039;re a seasoned astronomer or a curious novice, stargazing offers a serene escape from the chaos of everyday life. With just your eyes or a telescope, you can unlock the secrets of the cosmos and witness the beauty of celestial bodies.&lt;/p&gt;&lt;p&gt;Paragraph 2: One of the most enchanting aspects of stargazing is the opportunity to observe constellations. These patterns formed by groups of stars have sparked legends and stories across cultures. From the recognizable Big Dipper to the mythical Orion, constellations connect us to ancient civilizations and their rich narratives. With a star chart or a stargazing app, you can trace the outlines of these celestial artworks and marvel at their significance.&lt;/p&gt;&lt;p&gt;Paragraph 3: Beyond constellations, stargazing allows us to witness remarkable astronomical events. From meteor showers painting the sky with streaks of light to the awe-inspiring dance of planets, there&#039;s always something happening in the celestial sphere. Mark your calendar for events like eclipses or planetary alignments, and you&#039;ll have a front-row seat to extraordinary spectacles that remind us of our place in the vastness of the universe.&lt;/p&gt;&lt;p&gt;Paragraph 4: For those seeking deeper exploration, a telescope opens a gateway to distant galaxies, nebulas, and star clusters. With each glimpse through the eyepiece, you can uncover breathtaking sights that reveal the grandeur and diversity of the cosmos. From the delicate rings of Saturn to the vibrant swirls of the Orion Nebula, these celestial wonders inspire a sense of awe and ignite a passion for further discovery.&lt;/p&gt;&lt;p&gt;Conclusion: Stargazing is a humbling and awe-inspiring activity that reminds us of the vastness and beauty of the universe we inhabit. Whether you choose to explore constellations, witness astronomical events, or delve into the depths of space with a telescope, the wonders of stargazing await you. So, on the next clear night, embrace the quiet solitude, look up to the heavens, and embark on a celestial adventure that will leave you with a profound appreciation for the mysteries that lie beyond our world.&lt;/p&gt;', 'Elias Muhoozi', '1', '2023-06-19 15:58:54', 1687179534),
(3, 1, 'From Couch Potato to Marathon Runner: How I Transformed My Lifestyle', 027, '1687179727_DSC_0745.JPG', '&lt;p&gt;&lt;strong&gt;Introduction:&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Welcome to an inspiring journey of personal transformation from a sedentary lifestyle to becoming a marathon runner. In this blog post, I will share my own experiences, challenges, and the steps I took to embark on this incredible journey. If you&#039;ve ever dreamed of embracing an active lifestyle or conquering a fitness goal, this post is for you. So, lace up your shoes and join me as I share how I went from being a couch potato to a marathon runner.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Embracing the Decision:&lt;/strong&gt; Every transformation begins with a decision, and for me, it was the realization that my sedentary lifestyle was taking a toll on my physical and mental well-being. I made a firm commitment to myself to embrace a healthier and more active lifestyle. This decision was the crucial first step towards achieving my goal of becoming a marathon runner.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Starting Small:&lt;/strong&gt; I knew that going from zero to marathon overnight was unrealistic, so I began my transformation by starting small. I incorporated short walks into my daily routine and gradually increased the duration and intensity. These initial steps helped me build endurance and develop a habit of regular physical activity.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Setting Incremental Goals:&lt;/strong&gt; To stay motivated and track my progress, I set incremental goals along the way. I aimed for milestones such as running a 5K, then a 10K, and eventually a half-marathon. These smaller goals provided a sense of accomplishment and kept me focused on the larger goal of completing a full marathon.&lt;/p&gt;&lt;p&gt;Creating a Training Plan: Training for a marathon requires structure and consistency. I researched various training plans and tailored one to fit my fitness level and schedule. This plan incorporated a mix of running, cross-training, and rest days. Following a well-designed training plan helped me gradually increase my mileage and build endurance while minimizing the risk of injuries.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Overcoming Challenges:&lt;/strong&gt; The journey from couch potato to marathon runner was not without its challenges. I faced moments of self-doubt, fatigue, and the temptation to give up. However, I persevered by reminding myself of my initial commitment and the progress I had already made. I sought support from friends, joined running communities, and found inspiration in the stories of other runners who had overcome similar challenges.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Nourishing my Body:&lt;/strong&gt; Transforming my lifestyle also involved adopting healthier eating habits. I focused on nourishing my body with whole, nutrient-dense foods that provided the energy I needed for training and recovery. I learned to balance my macronutrients, stay hydrated, and prioritize post-run recovery meals to support my overall well-being.&lt;/p&gt;&lt;p&gt;Celebrating Milestones and Achievements: Throughout my journey, I celebrated every milestone and achievement, no matter how small. Completing my first 5K, achieving a new personal record, and crossing the finish line of my first marathon were all moments of immense pride and joy. Celebrating these milestones kept me motivated and fueled my determination to continue pushing my limits.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Conclusion:&lt;/strong&gt; Transforming from a couch potato to a marathon runner is a testament to the power of perseverance, commitment, and self-belief. My journey taught me that anyone can achieve remarkable fitness goals with dedication and a willingness to step out of their comfort zone. Whether it&#039;s a marathon or any other personal goal, know that the power to transform lies within you. So, take that first step, embrace the journey, and watch yourself soar to new heights of physical and mental achievement.&lt;/p&gt;', 'Elias Muhhozi', '1', '2023-06-19 16:02:07', 1687179727),
(4, 1, 'The Power of Fiction: Unleashing Imagination and Empathy', 024, '1688468075_fiction.jpg', '&lt;p&gt;&lt;strong&gt;Introduction:&lt;/strong&gt;&lt;br&gt;Fiction has captivated the human imagination for centuries, weaving tales of wonder, adventure, and emotion. From ancient myths and legends to modern novels and films, fiction has the unique ability to transport us to new worlds, introduce us to diverse characters, and evoke powerful emotions. In this article, we will explore the power of fiction and its impact on our lives, highlighting the ways in which it nurtures our imagination and fosters empathy.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;1. Igniting the Imagination:&lt;/strong&gt;&lt;br&gt;Fiction ignites our imagination, taking us on extraordinary journeys beyond the confines of reality. Through rich descriptions, vibrant settings, and imaginative storytelling, fiction allows us to escape the ordinary and explore the extraordinary. It enables us to envision different cultures, fantastical landscapes, and futuristic technologies, expanding our minds and stimulating our creativity.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;2. Emotional Connection:&lt;/strong&gt;&lt;br&gt;One of the remarkable aspects of fiction is its ability to evoke deep emotional connections within readers. Whether it&#039;s joy, sorrow, fear, or love, well-crafted stories have the power to elicit a wide range of emotions. By immersing ourselves in the lives of fictional characters, we experience their triumphs and tribulations, fostering empathy and understanding for diverse perspectives.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;3. Expanding Horizons:&lt;/strong&gt;&lt;br&gt;Fiction introduces us to a diverse array of characters from various backgrounds, cultures, and experiences. Through these characters, we gain insights into the human condition and develop a broader understanding of the world. By encountering different viewpoints and grappling with complex moral dilemmas, fiction encourages us to question our own beliefs and biases, ultimately expanding our horizons.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;4. Mirror to Reality:&lt;/strong&gt;&lt;br&gt;While fiction often ventures into the realm of imagination, it also serves as a mirror to reality. By exploring societal issues, historical events, and contemporary challenges, fiction can shed light on complex topics in a way that engages and resonates with readers. It allows us to reflect on our own lives and the world around us, prompting introspection and inspiring action.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;5. Empathy and Understanding:&lt;/strong&gt;&lt;br&gt;One of fiction&#039;s greatest gifts is its ability to cultivate empathy and understanding. As we delve into the lives of fictional characters, we step into their shoes, experiencing their triumphs and hardships firsthand. This immersion fosters empathy, enabling us to develop a deeper appreciation for the experiences of others. By fostering empathy, fiction nurtures compassion and encourages us to become more understanding and inclusive individuals.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Conclusion:&lt;/strong&gt;&lt;br&gt;Fiction is not merely a form of entertainment; it is a powerful tool that fuels our imagination, evokes emotions, expands our horizons, and nurtures empathy. Through its ability to transport us to new worlds and connect us with diverse characters, fiction has the potential to shape our perspectives, deepen our understanding of the human experience, and inspire positive change in our lives. So, let us embrace the magic of fiction and allow it to enrich our minds and hearts, for it has the power to transform us in ways both profound and extraordinary.&lt;/p&gt;', 'Kato Emmanuel', '1', '2023-07-04 13:54:35', 1688468075),
(5, 1, 'The Art of Coding: Unlocking the Power of Programming', 028, '1688472958_codecode.jpg', '&lt;p&gt;&lt;strong&gt;Introduction:&lt;/strong&gt;&lt;br&gt;Coding, also known as programming, is the creative process of designing, writing, and implementing instructions for computers to perform specific tasks. It is the language that enables humans to communicate with machines and build amazing applications, websites, software, and more. Coding is not just about typing lines of code; it is a skill that empowers individuals to bring their ideas to life and solve real-world problems. In this article, we will explore the art of coding and the endless possibilities it presents.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;1. The Power of Logic and Problem Solving:&lt;/strong&gt;&lt;br&gt;Coding is all about solving problems and finding logical solutions. It encourages individuals to break down complex problems into smaller, manageable parts and develop step-by-step solutions. The process of coding enhances critical thinking, analytical skills, and the ability to approach challenges with a structured mindset. Whether it&#039;s debugging code or designing algorithms, coding sharpens problem-solving abilities that can be applied in various areas of life.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;2. Creativity Unleashed:&lt;/strong&gt;&lt;br&gt;Contrary to popular belief, coding is not limited to just numbers and algorithms. It is a canvas for creativity. Through coding, programmers can bring their ideas to life, creating unique and innovative applications. From designing intuitive user interfaces to crafting visually appealing websites, coding empowers individuals to express their creativity and build digital experiences that leave an impact.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;3. Collaboration and Teamwork:&lt;/strong&gt;&lt;br&gt;Coding is not a solitary endeavor. In the world of software development, teamwork is essential. Coding projects often require collaboration between programmers, designers, and other professionals. Working together, individuals can leverage their diverse skills and perspectives to build robust and scalable solutions. Collaborative coding fosters communication, sharing of knowledge, and the opportunity to learn from others&#039; expertise, ultimately leading to better outcomes.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;4. Lifelong Learning and Adaptability:&lt;/strong&gt;&lt;br&gt;The field of coding is constantly evolving. New programming languages, frameworks, and technologies emerge regularly. As a coder, embracing lifelong learning is crucial. It means staying updated with the latest trends, continuously improving coding skills, and adapting to changes. The ability to learn and adapt is what sets successful coders apart. It opens doors to exciting opportunities and ensures that they remain at the forefront of technological advancements.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;5. Empowering the World:&lt;/strong&gt;&lt;br&gt;Coding has the power to change lives and transform communities. From creating educational platforms to developing solutions for healthcare, finance, and environmental issues, coders can make a positive impact on a global scale. Coding opens doors to endless possibilities, enabling individuals to create meaningful change and contribute to building a better future.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Conclusion:&lt;/strong&gt;&lt;br&gt;Coding is not just a technical skill; it is an art form that combines logic, creativity, problem-solving, and collaboration. It empowers individuals to shape the digital world and bring their ideas to reality. Whether you are a beginner or an experienced programmer, coding offers a journey of continuous learning and self-improvement. So, embrace the art of coding, unlock its power, and embark on an exciting adventure of innovation and exploration.&lt;/p&gt;', 'Kato Emmanuel', '1', '2023-07-04 15:15:58', 1688472958),
(6, 1, 'Exploring the Power and Flexibility of Laravel: A Comprehensive Guide', 028, '1688474959_laravel.jpg', '&lt;p&gt;&lt;strong&gt;Introduction:&lt;/strong&gt;&lt;br&gt;Laravel has emerged as one of the most popular and powerful PHP web development frameworks. Developed by Taylor Otwell, it has gained widespread adoption due to its expressive syntax, elegant design, and rich set of features. In this article, we will explore the fundamentals of Laravel and understand why it has become the go-to choice for building modern web applications.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;1. What is Laravel?&lt;/strong&gt;&lt;br&gt;Laravel is an open-source PHP web application framework that follows the Model-View-Controller (MVC) architectural pattern. It aims to simplify and expedite the development process by providing a robust set of tools and features, promoting code maintainability and scalability.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;2. Key Features of Laravel:&lt;/strong&gt;&lt;br&gt;&amp;nbsp; a. Eloquent ORM: Laravel&#039;s Eloquent ORM offers a simple and intuitive way to interact with databases, making it easy to perform CRUD operations on database records.&lt;br&gt;&amp;nbsp; b. Blade Templating Engine: Blade provides a powerful templating engine that allows developers to write clean and reusable templates with conditional statements, loops, and inheritance.&lt;br&gt;&amp;nbsp; c. Artisan CLI: Laravel&#039;s command-line interface, Artisan, provides various helpful commands to automate repetitive tasks and streamline development.&lt;br&gt;&amp;nbsp; d. Authentication and Authorization: Laravel offers built-in authentication and authorization mechanisms, making it effortless to implement secure user authentication.&lt;br&gt;&amp;nbsp; e. Middleware: Middleware in Laravel allows you to filter HTTP requests entering your application, enabling tasks like authentication, logging, etc.&lt;br&gt;&amp;nbsp; f. Laravel Mix: Laravel Mix simplifies asset compilation and provides support for popular CSS and JavaScript pre-processors like SASS and TypeScript.&lt;br&gt;&amp;nbsp; g. Testing Support: Laravel comes with testing capabilities, including unit testing and browser testing with the Dusk package.&lt;/p&gt;&lt;p&gt;3. Installation and Setup:&lt;br&gt;&amp;nbsp; We&#039;ll walk you through the steps to install Laravel using Composer and create a new Laravel project. Additionally, we&#039;ll explore the project structure and important configuration files.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;4. Routing and Controllers:&lt;/strong&gt;&lt;br&gt;&amp;nbsp; Understand how to define routes and create controllers to handle HTTP requests effectively. We&#039;ll explore different types of routes and route parameters.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;5. Database Interaction with Eloquent ORM:&lt;/strong&gt;&lt;br&gt;&amp;nbsp; Dive into the world of Eloquent ORM and learn how to define models, perform CRUD operations, and create relationships between different database tables.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;6. Views and Blade Templating:&lt;/strong&gt;&lt;br&gt;&amp;nbsp; Discover the power of Blade templates and explore how to create reusable views, use layout inheritance, and include partial views.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;7. Forms and Validation:&lt;/strong&gt;&lt;br&gt;&amp;nbsp; Learn how to create forms, handle form submissions, and implement validation using Laravel&#039;s built-in validation rules.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;8. User Authentication and Authorization:&lt;/strong&gt;&lt;br&gt;&amp;nbsp; Implement user authentication with Laravel&#039;s authentication scaffolding, and understand how to control access to specific routes using middleware.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;9. API Development with Laravel:&lt;/strong&gt;&lt;br&gt;&amp;nbsp; Explore how to build robust RESTful APIs using Laravel, and learn about API authentication and versioning.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;10. Error Handling and Logging:&lt;/strong&gt;&lt;br&gt;&amp;nbsp; Discover different error handling techniques, including logging and debugging, to maintain application stability and security.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Conclusion:&lt;/strong&gt;&lt;br&gt;Laravel has undoubtedly revolutionized the PHP development landscape with its powerful features and elegant syntax. In this comprehensive guide, we&#039;ve covered the basics of Laravel, its key features, and how to build modern web applications using this framework. Armed with this knowledge, you&#039;ll be well on your way to developing sophisticated, scalable, and secure web applications with Laravel. Happy coding!&lt;/p&gt;', 'Kato Emmanuel', '1', '2023-07-04 15:49:19', 1688474959);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `description`, `logo`, `favicon`) VALUES
(1, 'News Room', 'blog', '1686151983_sphrerere-removebg-preview.png', '1686151983_VGbsTi0e.ico');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(024, 'Fiction', '<p>for imaginations</p>'),
(025, 'travel', '<p>journeys</p>'),
(026, 'Food and Recipes', '<p>healthy eating, restaurant</p>'),
(027, 'Personal Development', '<p>Goal setting, productivity, time management, self-improvement techniques, mindfulness, motivation.</p>'),
(028, 'Technology', '<p>Product reviews, gadget updates, software tutorials, programming languages, tech news, cybersecurity.</p>'),
(029, 'Fashion and Style', '<p>Fashion trends, seasonal fashion tips, outfit ideas, personal style, fashion history, sustainable fashion.</p>'),
(030, 'Parenting', '<p>Tips for new parents, child development, parenting hacks, family-friendly activities, pregnancy advice, parenting challenges.</p>'),
(031, 'Finance and Money', '<p>Budgeting, saving strategies, investment tips, financial planning, debt management, passive income.</p>'),
(032, 'Entrepreneurship', '<p>Startup advice, business strategies, marketing techniques, success stories, industry insights.</p>'),
(033, 'Sports', '<p>News updates, sports analysis, athlete profiles, sports betting tips, fitness regimes for specific sports.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(020, 1, 'Kato Emmanuel', 'africate@admin.com', '$2y$10$kq/CYhMsU5Kw9jimM8uWnuCQPdBVEPnYOy2aTNpeFRPSKm3yEfrdO', '2023-12-18 13:11:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_title` (`post`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post`) REFERENCES `post` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
