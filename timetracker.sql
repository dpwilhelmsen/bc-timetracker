-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 02, 2012 at 06:21 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `timetracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(20) NOT NULL,
  `list_id` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `complete` varchar(10) NOT NULL,
  `position` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `list_id`, `title`, `complete`, `position`) VALUES
(122482948, 18290596, 'Preview isn''t loading properly (Screenshot: "channel 1")', 'true', 1),
(1, 17746485, 'Sample Title', 'false', 12),
(139897808, 17746485, 'info@ email access', 'true', 1),
(132128787, 17746485, 'Slideshow: does not appear well on mobile.  If type = slideshow, force redirect to non-mobile version', 'false', 2),
(139797618, 17746485, 'Re: Dashboard is down', 'true', 2),
(139797004, 17746485, 'Re: Dashboard is down', 'true', 3),
(128040626, 17746485, 'Formatting of special characters within email subjects and email bodies', 'false', 3),
(139796785, 17746485, 'Dashboard is down', 'true', 4),
(138188723, 17746485, 'Streetwise Dashboard does not display frames of time correctly.  E.G. When I select feb.1 through May 31, Lisa''s total comments for may only go through the 24th.  ', 'false', 4),
(139603285, 17746485, 'Re: bostinno channel team members', 'true', 5),
(139623009, 17746485, 'Writer Dash: Comments by post area', 'false', 5),
(139602832, 17746485, 'Fwd: bostinno channel team members', 'true', 6),
(140050163, 17746485, 'New Todo item - details in comments', 'false', 6),
(140050275, 17746485, 'Re: ', 'false', 7),
(133540578, 17746485, 'channel directory api dumps data using blacklist for sensitive data, should use whitelist for public data instead', 'true', 7),
(140050490, 17746485, 'Re:', 'false', 8),
(133564396, 17746485, 'Force Tour on first Login of Channel Manager', 'true', 8),
(140051724, 17746485, 'Re:', 'false', 9),
(138164951, 17746485, 'Channels created without a user associated with them', 'true', 9),
(138451108, 17746485, 'Michael Hughes unable to access his channel', 'true', 10),
(138628482, 17746485, 'Fwd: article: so you want to be a founder', 'true', 11),
(139287206, 17746485, 'Re: Related Posts Feature', 'true', 12),
(139287046, 17746485, 'Re: Related Posts Feature', 'true', 13),
(139244844, 17746485, 'Related Posts Feature', 'true', 14),
(138983756, 17746485, 'Fwd: Request Receipt for Posting', 'true', 15),
(139214256, 17746485, 'Re: WP Scheduling Not Working', 'true', 16),
(139212993, 17746485, 'Re: WP Scheduling Not Working', 'true', 17),
(139198595, 17746485, 'WP Scheduling Not Working', 'true', 18),
(139080577, 17746485, 'Re: New Leaf Legal Channel', 'true', 19),
(139079007, 17746485, 'Fwd: New Leaf Legal Channel', 'true', 20),
(138890263, 17746485, 'Delete a pending invite from Channel Manager: AJAX working, mark-up generation is not.', 'true', 21),
(138728712, 17746485, 'ITC is acting funny', 'true', 22),
(138820445, 17746485, 'Re: Question on new channel', 'true', 23),
(138754704, 17746485, 'Fwd: Question on new channel', 'true', 24),
(138357119, 17746485, 'Dashboard vs. the Take', 'true', 25),
(138887878, 17746485, 'Re: contentlead channel', 'true', 26),
(138727959, 17746485, 'Fwd: contentlead channel', 'true', 27),
(138709770, 17746485, 'Fwd: job posting pw', 'true', 28),
(138676702, 17746485, 'Fwd: contentlead channel', 'true', 29),
(138674273, 17746485, 'Re: Troubles with the site', 'true', 30),
(138674087, 17746485, 'Troubles with the site', 'true', 31),
(138177458, 17746485, 'Career credits not being marked as consumed', 'true', 32),
(138609490, 17746485, 'Re: coding issue', 'true', 33),
(138601780, 17746485, 'Re: ITC - PLEASE HELP', 'true', 34),
(138606856, 17746485, 'coding issue', 'true', 35),
(138330672, 17746485, 'PHP Fatal Errors from Tues', 'true', 36),
(138574678, 17746485, 'Fwd: ITC - PLEASE HELP', 'true', 37),
(138301428, 17746485, 'Re: Need author changed', 'true', 38),
(137636788, 17746485, 'Need author changed', 'true', 39),
(137558565, 17746485, 'Writer Dashboard: Unselecting all writers is doing the opposite and selecting all writers', 'true', 40),
(137558509, 17746485, 'Writer Dashboard: Changing metrics does not work. e.g. first look at PVs and switch to visits, nothing changes', 'true', 41),
(138183767, 17746485, 'Login bug', 'true', 42),
(138241413, 17746485, 'Re: Channel post has not been published', 'true', 43),
(138216245, 17746485, 'Re: Channel post has not been published', 'true', 44),
(138216120, 17746485, 'Fwd: Channel post has not been published', 'true', 45),
(138141587, 17746485, 'hTML for a podcast', 'true', 46),
(137146734, 17746485, 'Re: Mitx', 'true', 47),
(136931495, 17746485, 'Aggregate #s in dashboard', 'true', 48),
(135428505, 17746485, 'Dashboard', 'true', 49),
(138174292, 17746485, 'Re: backend dashboard for Careers not working', 'true', 50),
(138174295, 17746485, 'Re: backend dashboard for Careers not working', 'true', 51),
(138110069, 17746485, '"Social Connections/Help" area not working on Channel Dashboard', 'true', 52),
(137823974, 17746485, 'Slandryy Has Dashboard Issues', 'true', 53),
(138103829, 17746485, 'dashboard seems to be down', 'true', 54),
(137059007, 17746485, 'Homepage Channel Widget Bug with Ampersand', 'true', 55),
(136927459, 17746485, 'Channel SLug removal', 'true', 56),
(135216463, 17746485, 'ensure all queries passed to wpdb methods are run through wpdb->prepare first. ensure all js that is not explicitly required to be globally accessible is wrapped in a closure', 'true', 57),
(137068718, 17746485, 'Mitx', 'true', 58),
(137146097, 17746485, 'Re: How to Delete my Account', 'true', 59),
(136913988, 17746485, 'Fwd: How to Delete my Account', 'true', 60),
(136914163, 17746485, 'Fwd: Adding Users to Gabriel Marketing Group Account', 'true', 61),
(136619769, 17746485, 'Fwd: Adding Users to Gabriel Marketing Group Account', 'true', 62),
(136026505, 17746485, 'Re: Votify Channel', 'true', 63),
(133802973, 17746485, 'ITC Admin area: post managing missing many authors', 'true', 64),
(136977101, 17746485, 'bug log', 'true', 65),
(136718314, 17746485, 'Channel article is posting a featured image below the article http://bostinno.com/channels/the-cosby-show-what-the-huxtable-clan-taught-us-about-fashion/', 'true', 66),
(136872066, 17746485, 'Re: Authors on IntheCapital posts', 'true', 67),
(136909943, 17746485, 'Dashboard Down', 'true', 68),
(136914570, 17746485, 'Re: Dashboard Down', 'true', 69),
(136915357, 17746485, 'Re: Adding Users to Gabriel Marketing Group Account', 'true', 70),
(136871965, 17746485, 'Re: Ali Smith Robinson at Speakerbox PR', 'true', 71),
(136118045, 17746485, 'Authors on IntheCapital posts', 'true', 72),
(135653180, 17746485, 'Ali Smith Robinson at Speakerbox PR', 'true', 73),
(135378082, 17746485, 'Fwd: Northeastern IDEA', 'true', 74),
(135369556, 17746485, 'social share count running into comments area: http://i.imgur.com/OtVCJ.png', 'true', 75),
(135065008, 17746485, '"Most Shared" widget issue: http://i.imgur.com/IRmIF.png', 'true', 76),
(135802328, 17746485, 'Re: New SocialTables Channel post for your review', 'true', 77),
(135804354, 17746485, 'Re: do you see anything wrong with this code?', 'true', 78),
(135982427, 17746485, 'Votify Channel', 'true', 79),
(135809597, 17746485, 'Re: Brainshark RSS Feed', 'true', 80),
(135809486, 17746485, 'Brainshark RSS Feed', 'true', 81),
(135795053, 17746485, 'Re: Brainshark RSS feed', 'true', 82),
(135686231, 17746485, 'Fwd: Brainshark RSS feed', 'true', 83),
(135788904, 17746485, 'Fwd: Posting Issues', 'true', 84),
(135797272, 17746485, 'do you see anything wrong with this code?', 'true', 85),
(135799827, 17746485, 'Re: Posting Issues', 'true', 86),
(135801077, 17746485, 'Fwd: New SocialTables Channel post for your review', 'true', 87),
(135802325, 17746485, 'Re: New SocialTables Channel post for your review', 'true', 88),
(133191713, 17746485, 'Add margin to bottom of slideshow', 'true', 89),
(135549040, 17746485, 'Re: Code issue on Channel', 'true', 90),
(135525873, 17746485, 'Code issue on Channel', 'true', 91),
(135520214, 17746485, 'Slideshow problems', 'true', 92),
(135090379, 17746485, 'Can we remove "write a post" link?', 'true', 93),
(135201346, 17746485, 'Re: Kayak', 'true', 94),
(135201095, 17746485, 'Kayak', 'true', 95),
(135101511, 17746485, 'Re: glitch in 4 comments link for Charley Polachi guest blog post today', 'true', 96),
(135097764, 17746485, 'Fwd: glitch in 4 comments link for Charley Polachi guest blog post today', 'true', 97),
(133697110, 17746485, 'Tweet button from DiggDigg: cutting off text at a quotation mark', 'true', 98),
(134227575, 17746485, '"Post is Live" email is sent inconsistently (only every once in awhile, not dependent on author)', 'true', 99),
(134817738, 17746485, 'Re: Speakerbox Media', 'true', 100),
(134816980, 17746485, 'Speakerbox Media', 'true', 101),
(134786247, 17746485, 'Meet the Team: Need to delete Durling and add Sarah and Sam', 'true', 102),
(134390755, 17746485, 'Comments emails', 'true', 103),
(134677815, 17746485, 'Re: Segterra Rss feed', 'true', 104),
(134675832, 17746485, 'Segterra Rss feed', 'true', 105),
(134368564, 17746485, 'Litle & Co shouldn''t be on Channel Directory', 'true', 106),
(131863075, 17746485, 'Dashboard: recent writer data is occasionally truncated', 'true', 107),
(130270143, 17746485, '.search #right property needs 0 margin-top, not -370px', 'true', 108),
(134113141, 17746485, 'Turnstone Hack', 'true', 109),
(134093715, 17746485, 'Fwd: Jon Fukuda just said something', 'true', 110),
(133546368, 17746485, 'Automated Email - Channel Enabling (support@streetwise-media.com)', 'true', 111),
(133564489, 17746485, 'Force channel-enable on Channel creation', 'true', 112),
(133720787, 17746485, 'Non-Urgent Item: Hide mass "Submit" button on Post Management Tab', 'true', 113),
(133659542, 17746485, 'Re: Channel Manager, RSS Feed: delete button not working', 'true', 114),
(133655056, 17746485, 'Channel Manager, RSS Feed: delete button not working', 'true', 115),
(133540192, 17746485, 'Re: Pangea''s thumb on the All Channels page', 'true', 116),
(133353874, 17746485, 'Picture problem', 'true', 117),
(133187753, 17746485, 'Re: Paragraph format', 'true', 118),
(133187530, 17746485, 'Re: Still having issues with Microsoft NERD Channel', 'true', 119),
(133176572, 17746485, 'Still having issues with Microsoft NERD Channel', 'true', 120),
(133188898, 17746485, 'Re: Harvard Tech Review is Enabled but dude still can''t see his "Post Management" Tab', 'true', 121),
(133188241, 17746485, 'Re: Harvard Tech Review is Enabled but dude still can''t see his "Post Management" Tab', 'true', 122),
(133187854, 17746485, 'Re: Still having issues with Microsoft NERD Channel', 'true', 123),
(133187528, 17746485, 'Harvard Tech Review is Enabled but dude still can''t see his "Post Management" Tab', 'true', 124),
(133187330, 17746485, 'Re: Paragraph format', 'true', 125),
(133187234, 17746485, 'Re: Still having issues with Microsoft NERD Channel', 'true', 126),
(133186897, 17746485, 'Re: Still having issues with Microsoft NERD Channel', 'true', 127),
(133185783, 17746485, 'Paragraph format', 'true', 128),
(133182900, 17746485, 'Re: Featured author?', 'true', 129),
(133182776, 17746485, 'Re: Still having issues with Microsoft NERD Channel', 'true', 130),
(133182270, 17746485, 'Re: Still having issues with Microsoft NERD Channel', 'true', 131),
(133182269, 17746485, 'Featured author?', 'true', 132),
(133100559, 17746485, 'Re: Julia D at Social Tables', 'true', 133),
(133088946, 17746485, 'Re: Questions', 'true', 134),
(133088815, 17746485, 'Re: Uploading User Image', 'true', 135),
(133081594, 17746485, 'Re: Backend Issues', 'true', 136),
(133080777, 17746485, 'Re: screenshot', 'true', 137),
(133079177, 17746485, 'Re: screenshot', 'true', 138),
(133078735, 17746485, 'Re: Backend Issues', 'true', 139),
(133077323, 17746485, 'Fwd: screenshot', 'true', 140),
(133069853, 17746485, 'Fwd: Questions', 'true', 141),
(133037998, 17746485, 'Fwd: Your Channel on InTheCapital has been enabled.', 'true', 142),
(132890284, 17746485, 'Re: Twitter issue on MSFT NERD Channel', 'true', 143),
(132888362, 17746485, 'Re: Twitter issue on MSFT NERD Channel', 'true', 144),
(132885610, 17746485, 'Twitter issue on MSFT NERD Channel', 'true', 145),
(132876648, 17746485, 'Re: In the Capital Subscribe Comment', 'true', 146),
(132870397, 17746485, 'Re: In the Capital Subscribe Comment', 'true', 147),
(132865543, 17746485, 'Fwd: In the Capital Subscribe Comment', 'true', 148),
(132815432, 17746485, 'blurry slideshow pics', 'true', 149),
(132819682, 17746485, 'Re: blurry slideshow pics', 'true', 150),
(132172039, 17746485, 'Slideshow issue tweeted about by Dave Levy', 'true', 151),
(132608885, 17746485, 'Re: Images are broken', 'true', 152),
(132606448, 17746485, 'Images are broken', 'true', 153),
(132153879, 17746485, 'Fwd: latest sad...', 'true', 154),
(132154932, 17746485, 'Re: latest sad...', 'true', 155),
(132128826, 17746485, 'Slideshow: additional data from slideshow polluting RSS feeds', 'true', 156),
(132011872, 17746485, 'Drop down by profile issue in Chrome', 'true', 157),
(131883276, 17746485, 'ITC Spotlight changes for non-admins', 'true', 158),
(132186110, 17746485, 'Slideshow Replay featured image is too large', 'true', 159),
(128366530, 17746485, 'FF / Win: channel directory buttons', 'true', 160),
(132042660, 17746485, 'Re: Hello Wallet RSS feed', 'true', 161),
(131927796, 17746485, '"What is this" images', 'true', 162),
(132025799, 17746485, 'Re: Can we get Microsoft NERD off Channel directory ASAP?', 'true', 163),
(132024673, 17746485, 'Can we get Microsoft NERD off Channel directory ASAP?', 'true', 164),
(131598606, 17746485, 'Channel RSS Parsing', 'true', 165),
(131741270, 17746485, 'ITC: Spotlight overlay not aligned', 'true', 166),
(131832920, 17746485, 'Fwd: Sisarina Channel for InTheCapital', 'true', 167),
(131064165, 17746485, 'Performance dashboard: not displaying any data', 'true', 168),
(131808303, 17746485, 'Fwd: Cannot Login to Channel?', 'true', 169),
(131812918, 17746485, 'Re: Cannot Login to Channel?', 'true', 170),
(131750089, 17746485, 'Re: Doh!', 'true', 171),
(129544743, 17746485, 'Most Popular Stories: Border around image is black for some rather than grey (screenshot in files)', 'true', 172),
(131456997, 17746485, 'Manager/Author default', 'true', 173),
(131457339, 17746485, 'Re: Manager/Author default', 'true', 174),
(131457932, 17746485, 'Re: Manager/Author default', 'true', 175),
(131496896, 17746485, 'Re: Manager/Author default', 'true', 176),
(131514204, 17746485, 'Re: Manager/Author default', 'true', 177),
(131364393, 17746485, 'Fwd: general - website', 'true', 178),
(131232795, 17746485, 'Fwd: IE / Slideshow / +1 Button', 'true', 179),
(130799581, 17746485, 'IE 8 and 9 user chicklet dropdown issues', 'true', 180),
(131179220, 17746485, 'Latest Channel Posts Widget on ITC Homepage?', 'true', 181),
(131180361, 17746485, 'Re: Latest Channel Posts Widget on ITC Homepage?', 'true', 182),
(131179987, 17746485, 'Re: Latest Channel Posts Widget on ITC Homepage?', 'true', 183),
(130984718, 17746485, 'Fwd: BostInno Channel Images', 'true', 184),
(130781713, 17746485, 'Disabled Channels', 'true', 185),
(130974891, 17746485, 'URL redirect for a specific URL within the slideshow: not working (http://bostinno.com/2012/03/30/bostinno-meet-up-pictures/#ss__128306_1_4__ss)', 'true', 186),
(130986411, 17746485, 'Marlo Marketing Name on Directory needs formatting', 'true', 187),
(130675166, 17746485, 'Jess3 Channel Issues', 'true', 188),
(130641528, 17746485, 'Sarah''s access to Channels', 'true', 189),
(130632573, 17746485, 'Re: drop down for uploading', 'true', 190),
(130636206, 17746485, 'Author page rendering issue', 'true', 191),
(129882517, 17746485, 'User Prompt for users with emails LIKE ''BostInno_User%'' or ''%binno.com''', 'true', 192),
(130166840, 17746485, 'Re: Image knocked out when I save draft', 'true', 193),
(130152667, 17746485, 'Re: Cannot make myself a "manager" of ITC Sisarina Channel', 'true', 194),
(130000989, 17746485, 'Channel Post Editor: images uploaded when on HTML tab are not saved', 'true', 195),
(129718931, 17746485, 'SPF Records for Google Apps', 'true', 196),
(128226179, 17746485, 'Some emails hitting spam folders', 'true', 197),
(128044121, 17746485, 'Update Google sitemaps plugin', 'true', 198),
(129520454, 17746485, 'Dashboard: export not working (follow-up with Walter)', 'true', 199),
(128772047, 17746485, 'Preload black button image on chan man and chan dir', 'true', 200),
(129180598, 17746485, 'Terms and Conditions on ITC', 'true', 201),
(128294821, 17746485, 'Photo issue w/ Channel post', 'true', 202),
(128611257, 17746485, 'Re: Bug on Channel', 'true', 203),
(129075242, 17746485, 'Potential links issue', 'true', 204),
(128609996, 17746485, 'Re: Bug on Channel', 'true', 205),
(128611495, 17746485, 'error handling and double limit for max filesize on channel image uploads', 'true', 206),
(128529458, 17746485, 'channel post editor preview button', 'true', 207),
(128091555, 17746485, 'prevent submit button from shrinking when submitting on channel post editor', 'true', 208),
(128109524, 17746485, 'update need help pdfs', 'true', 209),
(128037079, 17746485, 'Embedding Vimio videos for subscribers/Channels partners', 'true', 210),
(127871145, 17746485, 'Update digg digg button, requires CSS tweaks on Twitter, Facebook buttons on homepage loop', 'true', 211),
(127040787, 17746485, 'Security warning when viewing the mobile site: http://i.imgur.com/308iB.png', 'true', 212),
(127812198, 17746485, 'Channel Email Language is strange', 'true', 213),
(128022274, 17746485, 'URGENT: Related Posts formatting', 'true', 214),
(126605823, 17746485, 'Channel Post Editor doesn''t submit bug', 'true', 215),
(127640893, 17746485, 'update emails rundown', 'true', 216),
(127641390, 17746485, 'change color of need help links on chan man', 'true', 217),
(127628572, 17746485, 'Re: Can''t log in to BostInno.com', 'true', 218),
(119482506, 17746485, 'Reorganize social buttons in Digg Digg', 'true', 219),
(127259599, 17746485, 'Set custom post type for channel registration.  channel_terms_and_conditions', 'true', 220),
(127430180, 17746485, 'Re: Turnstone Channel Bug', 'true', 221),
(127433852, 17746485, 'RSS parsing occasionally not pulling in description of the content', 'true', 222),
(127410105, 17746485, 'button update for manaual Login/Sign-up modal', 'true', 223),
(127410172, 17746485, 'allow login/sign-up by pressing "enter" from login/sign-up modal', 'true', 224),
(127410062, 17746485, 'Move user chicklet off of AJAX', 'true', 225),
(126251700, 17746485, 'urls in comments not automatically hyperlinked', 'true', 226),
(127064254, 17746485, 'Numerical list posts aligned to far left: http://inthecapital.com/2012/02/28/five-ways-to-connect-to-inthecapital/', 'true', 227),
(127076720, 17746485, 'test subject', 'true', 228),
(125828882, 17746485, 'Border on images for Most Discussed widget is black and should be grey to match all other widgets', 'true', 229),
(126605182, 17746485, 'make preview post button the same as other buttons in channel post editor', 'true', 230),
(126820693, 17746485, 'Make main_email.tpl multisite enabled and fix ITC email header', 'true', 231),
(126460967, 17746485, 'User profile activity List items are only as wide as the text. Make width fixed', 'true', 232),
(126187408, 17746485, 'Clickmap (http://bostinno.com/wp-admin/admin.php?page=wp-clickmap/wp-clickmap.php): appears that x&y co-ordinates do not exactly match the screen. Perhaps an aspect ratio issue?', 'true', 233),
(118966583, 17746485, 'Google Porgram: Some posts are not recorded', 'true', 234),
(118966499, 17746485, 'Google Program:  Duplicate records for posts', 'true', 235),
(125573030, 17746485, 'Optimize any image within the themes directory.  Compress images (http://www.imageoptimizer.net/Pages/Home.aspx) then re-upload them.', 'true', 236),
(125369737, 17746485, 'Fix most viewed widget (currently too many experimentals shown)', 'true', 237),
(125903928, 17746485, 'Comment wrapping.  See the first comment on this article (http://bostinno.com/2012/02/19/cleantech-venture-capital-still-a-work-in-progress/)', 'true', 238),
(125578108, 17746485, 'Align comments of Footer Featured Area always at the bottom: http://i.imgur.com/NtPk8.png', 'true', 239),
(125605660, 17746485, 'comment replies are duplicated on nested replies during ajax rendering', 'true', 240),
(124809697, 17746485, 'Facebook Open Graph Protocol: http://wordpress.org/extend/plugins/wp-facebook-open-graph-protocol/', 'true', 241),
(124984504, 17746485, 'Margin from top of the Digg Digg widget: http://i.imgur.com/QHCYf.png', 'true', 242),
(124982626, 17746485, 'Series posts not showing on Author Pages', 'true', 243),
(124377106, 17746485, 'Spotlight area widget: Channel names missing within spotlight admin area: http://i.imgur.com/LvRDf.png', 'true', 244),
(118984968, 17746485, 'use class for social share div styling in main loop so that .content div can inherit styling for post content', 'true', 245),
(118985291, 17746485, 'company model should create company page when new company is added', 'true', 246),
(124789166, 17746485, 'Channel Post Editor: unable to save/submit when HTML tab is active.  JS error: Uncaught TypeError: Object [object Object] has no method ''join''', 'true', 247),
(119422705, 17746485, 'Stop social sharing side-bar from going into the footer', 'true', 248),
(124284642, 17746485, 'channel manager tabs hover and selected colors need adjustment', 'true', 249),
(124454490, 17746485, 'Whats this link for comments doesn''t work', 'true', 250),
(122645936, 17746485, 'Twitter widget background cut off when the tweets are too long', 'true', 251),
(123496829, 17746485, 'Featured Channel Posts - Frame around square logos is currently 72x74 and should be square', 'true', 252),
(124378831, 17746485, 'Whats this? light box positioning.  ', 'true', 253),
(121718478, 17746485, 'Channel Partners List: Make listing more compact, not dictated by length of company''s blurb', 'true', 254),
(123621306, 17746485, 'Update ITC logos for ITC (emails): http://i.imgur.com/gAxnW.png', 'true', 255),
(123779267, 17746485, 'Export all Channel members emails into a spreadsheet', 'true', 256),
(123621437, 17746485, 'Update BostInno header with new logos (see Files directory)', 'true', 257),
(123672484, 17746485, 'Flickr Slideshow not working on ITC', 'true', 258),
(123673663, 17746485, '"Latest From..." widget requires a clear of browser to update', 'true', 259),
(123417680, 17746485, 'Blog Roll Social Share Bar: In blog roll for posts with comments off we should not display anything for comments rather than "COMMENTS OFF"', 'true', 260),
(118966399, 17746485, 'WPTouch: custom post types not working', 'true', 261),
(123362246, 17746485, 'URGENT: ITC registration email reads "Submit content to BostInno".  Needs to read "Submit content to InTheCapital"', 'true', 262),
(120711280, 17746485, 'captha won''t submit in ie7 on add new post page', 'true', 263),
(121718636, 17746485, 'Events menu item: remove "topic" bar from What to Do this Week', 'true', 264),
(121823988, 17746485, 'Implement new button style into comment and +1 system', 'true', 265),
(122347604, 17746485, 'All formatted emails should go through one function', 'true', 266),
(122591045, 17746485, 'Update twitter backgrouns (https://twitter.com/#!/bostinnovation)', 'true', 267),
(122591053, 17746485, 'Create high-res favicon''s.  ', 'true', 268),
(122559289, 17746485, 'header verticality between browsers', 'true', 269),
(122589393, 17746485, 'Fix display of ''Activity'' tab on user''s profile (see http://bostinno.com/author/kevin-mccarthy/)', 'true', 270),
(122799361, 17746485, 'nested comment reply button problem', 'true', 271),
(122591242, 17746485, 'Increase class "featured-blurb" font size to 18px, add line-height of 125%', 'true', 272),
(122627309, 17746485, 'Add "Comment Reply" buttons to every comment.  If comment is already at the lowest level of nesting, please insert comment reply link with jQuery.', 'true', 273),
(122563578, 17746485, 'Drop down Channels menu disappears behind embedded vids in posts http://bostinno.com/2012/01/25/its-like-pandora-for-cats-sht-silicon-valley-says-video/', 'true', 274),
(120715100, 17746485, 'google +1 not showing in ie7 on left sidebar', 'true', 275),
(120140757, 17746485, 'Nginx cache flush program', 'true', 276),
(120642303, 17746485, 'IE: header and footer HTML reorganization', 'true', 277),
(118966596, 17746485, 'Allow a spotlight story to have alternate title', 'true', 278),
(120453295, 17746485, 'Digg Digg: LinkedIn button no longer showing', 'true', 279),
(121963508, 17746485, 'BostInno Writers widget images should be the same size as the Most Discussed and Featured Channel Posts images', 'true', 280),
(121963616, 17746485, 'Community Activity Widget - Images should be the same size as the Most Discussed and Featured Channel Posts images and there needs to be a border around them similar to the rest of the images on the page', 'true', 281),
(122087438, 17746485, 'channel page top posts ie7 layout', 'true', 282),
(122096351, 17746485, 'featured channel post border and padding', 'true', 283),
(122085399, 17746485, 'channel layout in ie7', 'true', 284),
(122087177, 17746485, 'topical link verticality in channel pages', 'true', 285),
(121822889, 17746485, 'Vertical spacing between header image and other items below for Channels needs to be fixed', 'true', 286),
(121737002, 17746485, 'Extra spacing around Top Posts from Channel Partner images in Channels (example in Files named "Top Posts from Channel Partner"', 'true', 287),
(121821790, 17746485, 'Featured Authors without social buttons on Channels needs spacing fix (screen shot file "Featured Authors No Social")', 'true', 288),
(121782300, 17746485, 'Overlap of Author Name and Vertical/Channel identifiers in middle blog roll (screen shot file "Author Name Identifier Overlap")', 'true', 289),
(121892156, 17746485, 'adjust colors to headers and scrolling widget dynamic text', 'true', 290),
(121854923, 17746485, 'Featured Channel Posts Widget - Images need to have a border around them like all other images on homepage', 'true', 291),
(121858577, 17746485, 'Most Discussed Widget - Spacing between header and first article should match all other widgets', 'true', 292),
(120726578, 17746485, 'No Mullet Featured items', 'true', 293),
(120525494, 17746485, 'ie8 and 7 style issues for mentions', 'true', 294),
(121052966, 17746485, 'add cursor:pointer to "+1",  "Reply To..." and "Post Comment" buttons and on all links', 'true', 295),
(121053344, 17746485, '"What''s this?" link underneat Comment Textarea does not work', 'true', 296),
(121051150, 17746485, 'Spacing beneath header area is too great on post pages on the Dev site (http://50.17.200.207/2012/01/09/pedicabs-for-apartments-gentle-giant-launches-new-bicycle-moving-program/)', 'true', 297),
(120719035, 17746485, 'mentions drop-down z-index issue in ie7', 'true', 298),
(120525901, 17746485, 'ie7 layout issues with sidebar widgets', 'true', 299),
(120616253, 17746485, 'ie issues with +1 avatars: http://imgur.com/WA5ur.  Kevin: Thanks Dan.  Joe, can you fix this bug in IE as well', 'true', 300),
(120663959, 17746485, 'ie signup forms need to be cleaned up', 'true', 301),
(120714059, 17746485, 'positioning of reply/like buttons off in ie7', 'true', 302),
(120717407, 17746485, 'social media icons extend over the bottom of each post on the home page and hugs the bottom border on category pages in ie7', 'true', 303),
(120714324, 17746485, 'learn more link in bostinno writers list positioning off in ie7', 'true', 304),
(120508044, 17746485, 'ie7 header tweak', 'true', 305),
(120496947, 17746485, 'Most discussed not showing in ei7', 'true', 306),
(120496732, 17746485, 'Featured channel posts not showing in ie7', 'true', 307),
(120496578, 17746485, 'Recent tweets not showing in ie7', 'true', 308),
(120433787, 17746485, 'Team page photos messed up on IE\nhttp://imgur.com/KuAbV', 'true', 309),
(119496604, 17746485, 'refactor JS', 'true', 310),
(120062789, 17746485, 'subscriber level users cannot upload media to their channel posts', 'true', 311),
(118985195, 17746485, 'tweak comment subscription reply form', 'true', 312),
(119898231, 17746485, 'Organization pages have links to About Us, Team and Advertise for Streetwise on them\nexample: http://bostinno.com/organization/hubspot/', 'true', 313),
(119083965, 17746485, 'Isolate FB buttons within loop', 'true', 314),
(119079659, 17746485, 'Left-hand, center and right-hand areas of Homepage have different ''widget'' titles.  Should default to the right-hand styling. http://i.imgur.com/qybNc.png', 'true', 315),
(119084986, 17746485, 'Comment on Homepage Loop: needs to be darker', 'true', 316),
(119085096, 17746485, 'Change header to background color instead of image', 'true', 317),
(118966592, 17746485, 'Add a comments column to post admin', 'true', 318),
(118988991, 17746485, 'tag dropdown is not zoom proof', 'true', 319),
(118562478, 17746485, 'header drop down menu comes out of alignment when zoomed in or out', 'true', 320);

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

DROP TABLE IF EXISTS `lists`;
CREATE TABLE IF NOT EXISTS `lists` (
  `id` int(20) NOT NULL,
  `project_id` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `complete` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`id`, `project_id`, `title`, `complete`) VALUES
(18290596, 8652461, 'Channel Bugs', 'true'),
(17746485, 8652461, 'BostInno Site Bugs', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `status`, `title`) VALUES
(8652461, 'active', 'Bugs'),
(9304097, 'active', 'Future Product Designs'),
(9453396, 'active', 'Icebox'),
(9477479, 'active', 'Jobs'),
(9731145, 'active', 'Tagging'),
(9770922, 'archived', 'Refactor'),
(9773000, 'active', 'Sponsored Sections'),
(9777607, 'active', 'Product/Dev Goals by Week'),
(9779562, 'active', 'Streetwise Creative Materials'),
(9790580, 'active', 'Security'),
(9795268, 'active', 'Site Ads');

-- --------------------------------------------------------

--
-- Table structure for table `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
CREATE TABLE IF NOT EXISTS `time_entries` (
  `id` int(20) NOT NULL,
  `list_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_entries`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
