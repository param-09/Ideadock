-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 07:05 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pnumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `pnumber`, `email`) VALUES
(1, 'admin', 'admin', '1234554321', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `adminpic`
--

CREATE TABLE IF NOT EXISTS `adminpic` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `active_flag` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminpic`
--

INSERT INTO `adminpic` (`id`, `admin_id`, `path`, `active_flag`, `updated_date`) VALUES
(1, 1, '31-3-2018-06-26-47.jpg', 0, '2018-03-31 18:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE IF NOT EXISTS `advertisement` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `title`, `link`, `active`) VALUES
(2, 'BurgerKing', 'https://online.kfc.co.in/', 0),
(3, 'Hostinger', 'https://www.hostinger.in/', 0),
(4, 'SANFRACUNI', 'https://www.usfca.edu/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `idea_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `message` longtext,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `idea_id`, `user_name`, `message`, `created_date`, `updated_date`) VALUES
(1, 2, 1, 'jay patel', 'Its a very good idea. ', '2018-03-24 16:01:44', NULL),
(2, 2, 4, 'arpit patel', 'Its a actually very good idea.', '2018-03-27 19:24:54', NULL),
(3, 5, 1, 'vaibhav patel', 'Yo .. its a brilliant idea ..  i am looking forward to meet with you..', '2018-03-27 21:14:59', NULL),
(4, 1, 1, 'param patel', 'it a good idea', '2018-04-01 13:44:21', NULL),
(5, 4, 1, 'sarthi mehta', 'its my dream project', '2018-04-02 09:08:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `cid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mes` longtext,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `mes`, `status`, `created_date`, `updated_date`) VALUES
(1, 'parampatel', 'parampatel@gmail.com', 'I Want to be part of your team', 0, '2018-03-24 16:34:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ddd`
--

CREATE TABLE IF NOT EXISTS `ddd` (
  `cc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddd`
--

INSERT INTO `ddd` (`cc`) VALUES
('2018-03-08 07:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_que` text,
  `faq_ans` text,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `faq_que`, `faq_ans`) VALUES
(1, 'How to login?', 'Create new Account'),
(2, 'how to logout?', 'Click on Logout Button on top left..'),
(3, 'How do I activate my account?', 'The instructions to activate your account will be sent to your email once you have submitted the registration form. If you did not receive this email, your email service provider’s mailing software may be blocking it. You can try checking your junk / spam'),
(4, 'What are the payment methods available?', 'At the moment, we only accept Credit/Debit cards and Paypal payment'),
(5, 'How can I track my orders & payment?\r\n\r\n', 'After logging into your account, the status of your checkout history can be found under Order History. For orders via registered postage, a tracking number (article tracking number) will be given to you after the receipt given from Singapore Post Limited (SingPost).');

-- --------------------------------------------------------

--
-- Table structure for table `investor_interest`
--

CREATE TABLE IF NOT EXISTS `investor_interest` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investor_interest`
--

INSERT INTO `investor_interest` (`id`, `user_id`, `topic`, `amount`, `description`, `created_date`, `updated_date`) VALUES
(1, 2, 'Interest 1', '60000000', 'Want to invest money for good return. and it also have public usage.', '2018-03-24 15:59:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `photo_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `active_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `title`, `photo`, `active_flag`) VALUES
(1, 'Test2', '29-12-2020-03-41-46.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `profilephoto`
--

CREATE TABLE IF NOT EXISTS `profilephoto` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `active_flag` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profilephoto`
--

INSERT INTO `profilephoto` (`id`, `user_id`, `path`, `active_flag`, `updated_date`) VALUES
(1, 1, '02-4-2018-11-39-03.jpg', 0, '2018-04-02 11:39:03'),
(2, 2, '24-3-2018-07-29-55.jpg', 0, '2018-03-24 19:29:56'),
(3, 3, '27-3-2018-09-02-24.jpg', 0, '2018-03-27 21:02:24'),
(4, 4, '27-3-2018-09-07-58.jpg', 0, '2018-03-27 21:07:58'),
(5, 5, '27-3-2018-09-13-45.jpg', 0, '2018-03-27 21:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `proposal`
--

CREATE TABLE IF NOT EXISTS `proposal` (
  `id` int(11) NOT NULL,
  `idea_id` int(11) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `name` longtext,
  `email` varchar(255) DEFAULT NULL,
  `message` longtext,
  `accept_status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposal`
--

INSERT INTO `proposal` (`id`, `idea_id`, `from_id`, `to_id`, `name`, `email`, `message`, `accept_status`, `created_date`, `updated_date`) VALUES
(1, 3, 1, 2, 'parampatel', 'parampatel9897@gmail.com', 'i read your interest .. i want you to meet me and invest in my dream.', 1, '2018-03-24 16:10:06', NULL),
(2, 4, 1, 2, 'arpitpatel', 'arpitpatel@gmail.com', 'i sreen your comment . its a proposal to work together', 0, '2018-03-27 19:26:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `active_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_type`, `active_flag`) VALUES
(1, 'ADMIN', '0'),
(2, 'ideaholder', '0'),
(3, 'investor', '0'),
(4, 'test', '1');

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE IF NOT EXISTS `story` (
  `id` int(11) NOT NULL,
  `proposal_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `story` longtext,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `proposal_id`, `user_id`, `likes`, `story`, `created_date`) VALUES
(1, 1, 2, 0, 'Its a great story of our achievement Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-03-24 16:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `useridea`
--

CREATE TABLE IF NOT EXISTS `useridea` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `description` longtext,
  `techdescription` longtext,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `title` (`title`)) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useridea`
--

INSERT INTO `useridea` (`id`, `user_id`, `title`, `field`, `cost`, `description`, `techdescription`, `created_date`, `updated_date`) VALUES
(1, 3, 'Border Surveillance Systems', 'National Defence', 5000000, 'Borders are extremely vulnerable and prone to terrorist attacks, smuggling and illegal immigration. To achieve enhanced situation awareness it is necessary to fuse sensor and information data. By automated fusion of referenced and associated data an aggregation of raw sensor data is achieved. Within the project SOBCAH (Surveillance of Borders, Coastlines and Harbors), an architecture was developed and tested that supports the sharing of information from heterogeneous sources. Additionally techniques of data fusion within video data were used to enhance information and provide operators with relevant details of an event.', 'Border surveillance makes use of a number of \r\nsystems that detect threats and conspicuous behavior. \r\nWithin an integrated surveillance system, disparate \r\ntechnologies that complement one another are \r\ninstalled, the interaction of the data output is \r\nessential.  \r\nAn integrated surveillance system consists of sensors, \r\nexploitation systems (that might also be deployed as \r\nsituational awareness displays) and external \r\ninformation systems. \r\nIn Fig. 1 a border is monitored by a range of different \r\nsensor types. Those sensors deliver data to a border \r\nsurveillance unit (BSU). However, the areas that are \r\nmonitored intersect and data that is of interest for one \r\nsurveillance unit may also be of interest for adjacent \r\nunits. Our architecture allows the necessary data \r\nsharing and accommodation of additional information \r\nfrom external systems resulting in enhanced situation \r\nawareness  \r\n\r\nAn Integrated System for Border Surveillance (PDF Download Available). Available from: https://www.researchgate.net/publication/224468498_An_Integrated_System_for_Border_Surveillance [accessed Mar 24 2018].', '2018-03-24 15:42:21', NULL),
(2, 3, 'Advanced Traffic Management System', 'Public Sector', 6000000, 'Advance Traffic Management System (ATMS) solution is provided by Efkon India with an objective to ensure safety, reduced and hassle-free travel time, and aided by the comforts of a world class infrastructure. Over the highway, it becomes an absolute necessity to monitor incidents proactively and take pre-emptive actions or a timely and prompt reactive measures should be present using modern technologies to minimize or eradicate the effects of unavoidable disasters.\r\n\r\nThe main aim of our Advance Traffic Management System is to provide traffic management solutions that enable private concessionaires, highway operators or government authorities to take actions that ultimately result in improving the safety of road users along with improving the traffic flow, increase transportation system efficiency, increase economic productivity and enhance mobility. ', ' Our advance traffic management system continuously monitors the expressway/ highway stretch providing valuable feedback and information to the Central Control Room to take suitable actions. The functioning of ATMS is seen in relation to how an operations company manages the highway.\r\n\r\n    An acquisition of information regarding the traffic or road users? status (e.g. traffic hold-up, accidents, medical emergency, vehicle break-down, hazardous weather condition etc.) is processed to the road management (operations) company , like concessionaire or highway management company\r\n    Subsequent decision making is done by the concessionaire or highway management company based on the above information. These decisions are normally guided by their standard procedures and policies (e.g. to send a patrol vehicle to regulate traffic, send an ambulance to the accident site etc.). Also, traffic or weather related information are displayed at Variable Message Signboards to inform to the commuters. Optionally, road user portal and mobile apps are also used for effective communication to the users\r\n    Valuable information is collected for concessionaire or highway Management Company (e.g. Traffic count and classification, weather conditions).\r\n    Some specific e', '2018-03-24 15:49:23', NULL),
(3, 1, 'A device that can increase mileage of Two- and Four wheelers.', 'Mechenical', 5000, '                               Edit 1::  A motor mechanic from Tardel, a non-descript village around 30km from Kolhapur, has earned the patent for a device developed by him, which he claims can bring down fuel consumption in both two- and four-wheelers.\n                            \n                            \n                            ', ' Edit1:: Vasudeo had filed his application to the Office of the Controller General of Patents, Designs and Trade Marks (CGPDTM), which approved its publication last week - a step considered a major hurdle towards getting a patent registered. Besides, the International Organization for Standardization has provided the device with the ISO 9001:2008 certification.\r\n\r\nVasudeo, who has studied till Class VII and has been working as a mechanic in the textile town of Ichalkaranji, said, "Combustion in an  ..\r\n\r\n\r\n\r\n                                        ', '2018-03-24 15:53:09', '2018-03-25 13:39:43'),
(4, 1, ' Appliance operation scheduling for electricity consumption optimization ', 'Electrical', 30000, 'This paper concerns the problem of optimally scheduling a set of appliances at the end-user premises. The user''s energy fee varies over time, and moreover, in the context of smart grids, the user may receive a reward from an energy aggregator if he/she reduces consumption during certain time intervals. In a household, the problem is to decide when to schedule the operation of the appliances, in order to meet a number of goals, namely overall costs, climatic comfort level and timeliness. We devise a model accounting for a typical household user, and present computational results showing that it can be efficiently solved in real-life instances.', 'This paper concerns the problem of optimally scheduling a set of appliances at the end-user premises. The user''s energy fee varies over time, and moreover, in the context of smart grids, the user may receive a reward from an energy aggregator if he/she reduces consumption during certain time intervals. In a household, the problem is to decide when to schedule the operation of the appliances, in order to meet a number of goals, namely overall costs, climatic comfort level and timeliness. We devise a model accounting for a typical household user, and present computational results showing that it can be efficiently solved in real-life instances.', '2018-03-24 15:56:47', NULL),
(5, 1, 'idea1', 'computer', 300000, 'ffsdfsd', 'setdfgd', '2018-04-02 13:39:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usertheme`
--

CREATE TABLE IF NOT EXISTS `usertheme` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertheme`
--

INSERT INTO `usertheme` (`id`, `user_id`, `color`, `created_date`, `updated_date`) VALUES
(1, 1, 'dark-red', NULL, '2018-03-29 20:12:25'),
(2, 2, 'blue', NULL, NULL),
(3, 5, 'red', NULL, NULL),
(4, 3, 'dark-blue', NULL, NULL),
(5, 4, 'teal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` longtext,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `active_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `username`, `password`, `fullname`, `email`, `mobile`, `gender`, `type`, `color`, `created_date`, `updated_date`, `active_flag`) VALUES
(1, 'parampatel', '123', 'parampatel', 'parampatel9897@gmail.com', '1234455533', 'male', 'users', 'orange', NULL, '2018-04-02 13:45:36', 0),
(2, 'arpitpatel', '123', 'patelarpit', 'arpitpatel1345@gmail.com', '3838383838', 'male', 'investor', 'teal', NULL, '2018-04-02 08:52:58', 0),
(3, 'DhavalSoni123', '123', 'sonidhaval', 'dhavalsoni18797@gmail.com', '2121212121', 'male', 'users', 'blue', NULL, '2018-03-29 21:08:15', 0),
(4, 'TrivediJay', '123', 'jaytrivedi', 'jaytrivedi1808@gmail.com', '9898989898', 'male', 'investor', 'yellow', NULL, '2018-04-02 09:17:40', 0),
(5, 'vaibhavpatel', '123', 'Vaibhav Patel', 'vaibhav0000patel@gmail.com', '7878990098', 'male', 'investor', 'orange', '2018-03-27 21:13:02', NULL, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
