CREATE TABLE [dbo].[products](
    [id] [int] NOT NULL,
    [type] [varchar](50) NULL,
    [name] [varchar](100) NULL,
    [degem] [varchar](50) NULL,
    [color] [varchar](50) NULL,
    [price] [decimal](10, 2) NULL,
    [img] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
    [id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
INSERT INTO products(id, type, name, degem, color, price, img) VALUES
(1, 'Rings', 'Tennis Ring', 'R2472', 'Red Gold', 5000, '/assets/rings/ring2.jpg'),
(33, 'Earrings', 'Mosaic Earrings', 'D3148', 'Gold', 700, '/assets/earrings/earrings8.png'),
(4, 'Rings', 'Diamond Ring', 'R2475', 'Gold', 800, '/assets/rings/ring5.jpg'),
(62, 'Necklaces', 'Enchanting Adventures Necklace', 'C4512', 'Red Gold', 240, '/assets/chains/chain12.jpg'),
(63, 'Necklaces', 'Energetic Charms Necklace', 'C45813', 'Silver and Gold', 4320, '/assets/chains/chain13.jpg'),
(64, 'Necklaces', 'Ancient Wisdom Necklace', 'C4514', 'Rose Gold With Pearl', 5430, '/assets/chains/chain14.JPG'),
(65, 'Necklaces', 'Unique Art Necklace', 'C4515', 'Rose Gold With Pearl', 420, '/assets/chains/chain15.JPG'),
(7, 'Rings', 'Ruby Ring', 'R2478', 'Silver', 3000, '/assets/rings/ring8.PNG'),
(8, 'Rings', 'Zircon Ring', 'R2479', 'Gold', 6000, '/assets/rings/ring9.PNG'),
(79, 'Bracelets', 'Positive Energy Bracelet', 'B8974', 'Gold', 1900, '/assets/bracelets/bracelet4.PNG'),
(163, 'Gifts', 'Silver and sapphire jewelry gift', 'G1221', 'Silver', 300, '/assets/gift/gift21.PNG'),
(164, 'Gifts', 'Crystal jewelry gift', 'G1222', 'Gold', 530, '/assets/gift/gift22.PNG'),
(132, 'Sets', 'Glass Falafel Sets', 'S9078', 'silver', 400, '/assets/sets/sets8.PNG'),
(133, 'Sets', 'Neon Bow Sets', 'S9079', 'silver', 9000, '/assets/sets/sets9.PNG'),
(107, 'Watches', 'Galaxy Chronos Watch', 'W3239', 'Rose Gold With Pearl', 9000, '/assets/watches/watches9.PNG'),
(108, 'Watches', 'Avocado Time Watch', 'W3210', 'Rose Gold With Pearl', 220, '/assets/watches/watches10.PNG'),
(130, 'Sets', 'Lavender Look Sets', 'S9076', 'Silver', 300, '/assets/sets/sets6.PNG'),
(131, 'Sets', 'Mirror Mirage Sets', 'S9077', 'silver', 920, '/assets/sets/sets7.PNG'),
(156, 'Gifts', 'Beach scene jewelry gift', 'G1214', 'Gold', 900, '/assets/gift/gift14.PNG'),
(157, 'Gifts', 'Pink twilight jewelry gift', 'G1215', 'Rose Gold And Silver', 100, '/assets/gift/gift15.PNG'),
(80, 'Bracelets', 'True Friendship Bracelet', 'B8975', 'Gold', 260, '/assets/bracelets/bracelet5.PNG'),
(10, 'Rings', 'Emerald Ring', 'R2411', 'Silver', 7000, '/assets/rings/ring11.PNG'),
(11, 'Rings', 'Tourmaline Ring', 'R2412', 'Silver', 5500, '/assets/rings/ring12.PNG'),
(110, 'Watches', 'Quintessence Watch', 'W3212', 'Rose Gold With Pearl', 240, '/assets/watches/watches12.PNG'),
(111, 'Watches', 'Plexus Watch', 'W3213', 'Rose Gold With Pearl', 2600, '/assets/watches/watches13.PNG'),
(112, 'Watches', 'Ransom Time Watch', 'W3214', 'Rose Gold With Pearl', 400, '/assets/watches/watches14.PNG'),
(113, 'Watches', 'Chronos Watch', 'W3215', 'Rose Gold With Pearl', 920, '/assets/watches/watches15.PNG'),
(12, 'Rings', 'Sapphiregold Ring', 'R2413', 'Silver', 250, '/assets/rings/ring13.PNG'),
(13, 'Rings', 'Tanzanite Ring', 'R2414', 'Silver', 8500, '/assets/rings/ring14.PNG'),
(3, 'Rings', 'Sapphire Ring', 'R2474', 'Gold', 150, '/assets/rings/ring4.jpg'),
(30, 'Earrings', 'Gold Earrings with Pearl', 'D3145', 'Gold', 3200, '/assets/earrings/earrings5.jpg'),
(31, 'Earrings', 'Pearl Earrings', 'D3146', 'Gold', 6700, '/assets/earrings/earrings6.jpg'),
(57, 'Necklaces', 'Wonder Necklace', 'C4587', 'Silver', 4300, '/assets/chains/chain7.PNG'),
(58, 'Necklaces', 'Modern Art Necklace', 'C4588', 'Gold', 530, '/assets/chains/chain8.PNG'),
(59, 'Necklaces', 'Necklace of Happiness', 'C4589', 'Gold', 5430, '/assets/chains/chain9.PNG'),
(17, 'Rings', 'Prinite Ring', 'R2418', 'Gold', 9000, '/assets/rings/ring18.PNG'),
(18, 'Rings', 'Spinel Ring', 'R2419', 'Gold', 220, '/assets/rings/ring19.PNG'),
(50, 'Earrings', 'Dreamy Earrings', 'D3125', 'Gold', 2670, '/assets/earrings/earrings25.jpg'),
(51, 'Earrings', 'Star Earrings', 'D3126', 'Gold', 270, '/assets/earrings/earrings26.jpg'),
(165, 'Gifts', 'Superhero flashlight jewelry gift', 'G1223', 'Rose Gold', 212, '/assets/gift/gift23.PNG'),
(166, 'Gifts', 'Natural sapphire jewelry gift', 'G1224', 'Gold', 220, '/assets/gift/gift24.PNG'),
(167, 'Gifts', 'Natalie jewelry gift', 'G1225', 'Gold', 920, '/assets/gift/gift25.PNG'),
(66, 'Necklaces', 'Fascinating Journey Necklace', 'C4516', 'Rose Gold With Pearl', 4200, '/assets/chains/chain16.JPG'),
(67, 'Necklaces', 'Endless Beauty Necklace', 'C4517', 'Rose Gold With Pearl', 6770, '/assets/chains/chain17.JPG'),
(68, 'Necklaces', 'Harmony Chain', 'C4518', 'Rose Gold With Pearl', 5560, '/assets/chains/chain18.JPG'),
(69, 'Necklaces', 'Serenity Strand', 'C4519', 'Rose Gold With Pearl', 3400, '/assets/chains/chain19.JPG'),
(19, 'Rings', 'Trillion Ring', 'R2420', 'Gold', 300, '/assets/rings/ring20.PNG'),
(5, 'Rings', 'Pearl Ring', 'R2476', 'Red Gold', 1200, '/assets/rings/ring6.PNG'),
(124, 'Watches', 'Trend Galaxy Watch', 'W3226', 'Rose Gold With Pearl', 750, '/assets/watches/watches26.PNG'),
(125, 'Watches', 'Axis Watch', 'W3227', 'Rose Gold With Pearl', 300, '/assets/watches/watches27.PNG'),
(142, 'Sets', 'Sweet Life Sets', 'S9018', 'Gold', 640, '/assets/sets/sets18.PNG'),
(143, 'Sets', 'Mosaic Heels Sets', 'S9019', 'Gold', 6770, '/assets/sets/sets19.PNG'),
(144, 'Gifts', 'Olia jewelry gift', 'G1232', 'Silver', 100, '/assets/gift/gift2.PNG'),
(145, 'Gifts', 'Wonderful glass jewelry gift', 'G1233', 'Gold', 300, '/assets/gift/gift3.PNG'),
(146, 'Gifts', 'Night star jewelry', 'G1234', 'Silver', 70, '/assets/gift/gift4.PNG'),
(6, 'Rings', 'Savion Ring', 'R2477', 'Gold', 450, '/assets/rings/Ring7.PNG'),
(20, 'Rings', 'Alma Ring', 'R2421', 'Gold', 600, '/assets/rings/ring21.PNG'),
(77, 'Bracelets', 'Bright Stars Bracelet', 'B8972', 'Red Gold', 100, '/assets/bracelets/bracelet2.jpg'),
(78, 'Bracelets', 'Modern Style Bracelet', 'B8973', 'Gold', 1200, '/assets/bracelets/bracelet3.jpg'),
(54, 'Necklaces', 'Wonderful Journey Necklace', 'C4584', 'Gold', 5430, '/assets/chains/chain4.jpg'),
(55, 'Necklaces', 'Unique Personality Necklace', 'C4585', 'Gold', 750, '/assets/chains/chain5.jpg'),
(56, 'Necklaces', 'Magnificent Pearl Necklace', 'C4586', 'Pearl', 8900, '/assets/chains/chain6.PNG'),
(21, 'Rings', 'Aquamarine Ring', 'R2422', 'Gold', 800, '/assets/rings/ring22.PNG'),
(22, 'Rings', 'Diana Ring', 'R2423', 'Silver', 5000, '/assets/rings/ring23.PNG'),
(81, 'Bracelets', 'Peace and Serenity Bracelet', 'B8976', 'Silver', 200, '/assets/bracelets/bracelet6.PNG'),
(82, 'Bracelets', 'Amazing Personality Bracelet', 'B8977', 'Red Gold', 5000, '/assets/bracelets/bracelet7.PNG'),
(83, 'Bracelets', 'Unique Art Bracelet', 'B8978', 'Red Gold', 4200, '/assets/bracelets/bracelet8.jpg'),
(27, 'Earrings', 'Shiny Gold Earrings', 'D3142', 'Gold', 560, '/assets/earrings/earrings2.jpg'),
(140, 'Sets', 'Turquoise Chunk Sets', 'S9016', 'Silver', 300, '/assets/sets/sets16.PNG'),
(141, 'Sets', 'Glassy Treats Sets', 'S9017', 'Gold', 700, '/assets/sets/sets17.PNG'),
(148, 'Gifts', 'Ninja Sipion jewelry gift', 'G1236', 'Silver', 80, '/assets/gift/gift6.PNG'),
(149, 'Gifts', 'Zimran exotic jewelry gift', 'G1237', 'Gold', 150, '/assets/gift/gift7.PNG'),
(23, 'Rings', 'Elizabeth Ring', 'R2424', 'Red Gold', 120, '/assets/rings/ring24.PNG'),
(24, 'Rings', 'Alice Ring', 'R2425', 'Silver', 4000, '/assets/rings/ring25.PNG'),
(25, 'Rings', 'Stone Ring', 'R2426', 'Gold', 350, '/assets/rings/ring26.PNG'),
(98, 'Bracelets', 'Stormy Sea Bracelet', 'B8923', 'Rose Gold With Pearl', 9000, '/assets/bracelets/bracelet23.JPG'),
(99, 'Bracelets', 'Elegant Style Bracelet', 'B8924', 'Rose Gold With Pearl', 9000, '/assets/bracelets/bracelet24.JPG'),
(100, 'Watches', 'Retro Robot Watch', 'W3232', 'Rose Gold With Pearl', 212, '/assets/watches/watches2.PNG'),
(101, 'Watches', 'Accelerator Watch', 'W3233', 'Rose Gold With Pearl', 100, '/assets/watches/watches3.PNG'),
(102, 'Watches', 'Infinity Time Watch', 'W3234', 'Rose Gold With Pearl', 120, '/assets/watches/watches4.PNG'),
(26, 'Rings', 'Cocktail Ring', 'R2427', 'Silver', 700, '/assets/rings/ring27.PNG'),
(34, 'Earrings', 'Hoop Earrings with Pearl', 'D3149', 'Pearl', 8900, '/assets/earrings/earrings9.PNG'),
(35, 'Earrings', 'Oxidized Silver Earrings', 'D3110', 'Silver', 800, '/assets/earrings/earrings10.PNG'),
(60, 'Necklaces', 'Charm Necklace', 'C4510', 'Gold', 5400, '/assets/chains/chain10.PNG'),
(115, 'Watches', 'WorkSphere Watch', 'W3217', 'Rose Gold With Pearl', 7030, '/assets/watches/watches17.PNG'),
(116, 'Watches', 'Quiddian Watch', 'W3218', 'Rose Gold With Pearl', 800, '/assets/watches/watches18.PNG'),
(61, 'Necklaces', 'Mysterious Enchantment Necklace', 'C4511', 'Silver', 640, '/assets/chains/chain11.PNG'),
(70, 'Necklaces', 'Enchanted Loop', 'C4520', 'Rose Gold With Pearl', 670, '/assets/chains/chain20.JPG'),
(85, 'Bracelets', 'Shining Sun Bracelet', 'B8910', 'Gold', 1900, '/assets/bracelets/bracelet10.png'),
(86, 'Bracelets', 'Surprising Smile Bracelet', 'B8911', 'Gold', 7800, '/assets/bracelets/bracelet11.jpg'),
(2, 'Rings', 'Flower-Set Ring', 'R2473', 'Silver', 350, '/assets/rings/ring3.jpg'),
(29, 'Earrings', 'Gold Hoop Earrings', 'D3144', 'Gold', 7800, '/assets/earrings/earrings4.jpg'),
(32, 'Earrings', 'Classic Gold Earrings', 'D3147', 'Red Gold', 800, '/assets/earrings/earrings7.jpg'),
(14, 'Rings', 'Opalite Ring', 'R2415', 'Silver', 100, '/assets/rings/ring15.PNG'),
(15, 'Rings', 'Opal Ring', 'R2416', 'Gold', 180, '/assets/rings/ring16.PNG'),
(16, 'Rings', 'Gold Steel Ring', 'R2417', 'Gold', 400, '/assets/rings/ring17.PNG'),
(36, 'Earrings', 'Twisted Silver Earrings', 'D311', 'Silver', 300, '/assets/earrings/earrings11.PNG'),
(37, 'Earrings', 'Floral Silver Earrings', 'D3112', 'Silver', 920, '/assets/earrings/earrings12.PNG'),
(53, 'Necklaces', 'Eternal Light Necklace', 'C4583', 'Gold', 5500, '/assets/chains/chain3.jpg'),
(88, 'Bracelets', 'Gentle Light Bracelet', 'B8913', 'Rose Gold With Pearl', 6770, '/assets/bracelets/bracelet13.JPG'),
(89, 'Bracelets', 'Positive Action Bracelet', 'B8914', 'Rose Gold With Pearl', 1990, '/assets/bracelets/bracelet14.JPG'),
(122, 'Watches', 'Trivial Watch', 'W3224', 'Rose Gold With Pearl', 7800, '/assets/watches/watches24.PNG'),
(123, 'Watches', 'Pulser Watch', 'W3225', 'Rose Gold With Pearl', 9000, '/assets/watches/watches25.PNG'),
(147, 'Gifts', 'Fantasy sapphire jewelry gift', 'G1235', 'Silver', 120, '/assets/gift/gift5.PNG'),
(126, 'Sets', 'Golden Spotlight Sets', 'S9072', 'Gold And Silver', 100, '/assets/sets/sets2.PNG'),
(127, 'Sets', 'Pia Pia Sets', 'S9073', 'Gold', 70, '/assets/sets/sets3.PNG'),
(38, 'Earrings', 'Classic Gold Hoop Earrings', 'D3113', 'Red Gold', 4900, '/assets/earrings/earrings13.PNG'),
(39, 'Earrings', 'Silver Earrings with stone', 'D3114', 'Silver', 70, '/assets/earrings/earrings14.PNG'),
(40, 'Earrings', 'Hoop Earrings', 'D3115', 'Silver', 1900, '/assets/earrings/earrings15.PNG'),
(96, 'Bracelets', 'Eternal Smile Bracelet', 'B8921', 'Rose Gold With Pearl', 120, '/assets/bracelets/bracelet21.JPG'),
(97, 'Bracelets', 'Tranquil Moments Bracelet', 'B8922', 'Rose Gold With Pearl', 80, '/assets/bracelets/bracelet22.JPG'),
(103, 'Watches', 'Swift Timepiece Watch', 'W3235', 'Rose Gold With Pearl', 1200, '/assets/watches/watches5.PNG'),
(104, 'Watches', 'Techno Timepiece Watch', 'W3236', 'Rose Gold With Pearl', 150, '/assets/watches/watches6.PNG'),
(94, 'Bracelets', 'Wonderful Enchantment Bracelet', 'B8919', 'Rose Gold With Pearl', 4300, '/assets/bracelets/bracelet19.JPG'),
(95, 'Bracelets', 'Precious Memories Bracelet', 'B8920', 'Rose Gold With Pearl', 250, '/assets/bracelets/bracelet20.JPG'),
(105, 'Watches', 'Interstellar Time Watch', 'W3237', 'Rose Gold With Pearl', 1900, '/assets/watches/watches7.PNG'),
(106, 'Watches', 'Nova Time Watch', 'W3238', 'Rose Gold With Pearl', 200, '/assets/watches/watches8.PNG'),
(138, 'Sets', 'Ruby Romance Sets', 'S9014', 'Gold', 180, '/assets/sets/sets14.PNG'),
(139, 'Sets', 'Silver Trimmings Sets', 'S9015', 'silver', 270, '/assets/sets/sets15.PNG'),
(150, 'Gifts', 'Gold and Ilan jewelry gift', 'G1238', 'Rose Gold And Silver', 120, '/assets/gift/gift8.PNG'),
(151, 'Gifts', 'A wonderful travel jewelry gift', 'G1239', 'Silver', 200, '/assets/gift/gift9.PNG'),
(41, 'Earrings', 'Fringe Earrings', 'D3116', 'Silver', 2200, '/assets/earrings/earrings16.PNG'),
(42, 'Earrings', 'Rectangle Earrings', 'D3117', 'Silver', 8300, '/assets/earrings/earrings17.PNG'),
(43, 'Earrings', 'Silver Beaded Earrings', 'D3118', 'Silver', 400, '/assets/earrings/earrings18.PNG'),
(136, 'Sets', 'Dusty Fashion Sets', 'S9012', 'silver', 9000, '/assets/sets/sets12.PNG'),
(137, 'Sets', 'Golden Haze Sets', 'S9013', 'Rose Gold', 8900, '/assets/sets/sets13.PNG'),
(152, 'Gifts', 'Oriental exotic jewelry gift', 'G12310', 'Silver', 240, '/assets/gift/gift10.PNG'),
(153, 'Gifts', 'Silver and lavender jewelry gift', 'G1211', 'Silver', 3600, '/assets/gift/gift11.PNG'),
(114, 'Watches', 'Transformer Watch', 'W3216', 'Rose Gold With Pearl', 300, '/assets/watches/watches16.PNG'),
(44, 'Earrings', 'Anise Earrings', 'D3119', 'Gold', 7030, '/assets/earrings/earrings19.PNG'),
(9, 'Rings', 'Topaz Ring', 'R2410', 'Silver', 200, '/assets/rings/ring10.PNG'),
(134, 'Sets', 'Singers Twist Sets', 'S9010', 'silver', 2220, '/assets/sets/sets10.PNG'),
(135, 'Sets', 'Minty Surround Sets', 'S9011', 'silver', 1200, '/assets/sets/sets11.PNG'),
(154, 'Gifts', 'Pluto jewelry gift', 'G1212', 'Rose Gold', 2670, '/assets/gift/gift12.PNG'),
(155, 'Gifts', 'Gold jewelry gift and designs', 'G1213', 'Gold', 3000, '/assets/gift/gift13.PNG'),
(87, 'Bracelets', 'Wonderful Achievement Bracelet', 'B8912', 'Pearl', 6700, '/assets/bracelets/bracelet12.jpg'),
(84, 'Bracelets', 'Magical Secrets Bracelet', 'B8979', 'Gold', 920, '/assets/bracelets/bracelet9.jpg'),
(120, 'Watches', 'Spectrum Watch', 'W3222', 'Rose Gold With Pearl', 4320, '/assets/watches/watches22.PNG'),
(121, 'Watches', 'Vortex Watch', 'W3223', 'Rose Gold With Pearl', 270, '/assets/watches/watches23.PNG'),
(128, 'Sets', 'Sapphire Threads Sets', 'S9074', 'Gold And black', 120, '/assets/sets/sets4.PNG'),
(129, 'Sets', 'Blue Blossoms Sets', 'S9075', 'Rose Gold', 8500, '/assets/sets/sets5.PNG'),
(158, 'Gifts', 'Flower pot jewelry gift', 'G1216', 'Gold', 450, '/assets/gift/gift16.PNG'),
(159, 'Gifts', 'Neon and light jewelry gift', 'G1217', 'Rose Gold', 60, '/assets/gift/gift17.PNG'),
(91, 'Bracelets', 'Impressive Courage Bracelet', 'B8916', 'Rose Gold With Pearl', 3400, '/assets/bracelets/bracelet16.JPG'),
(45, 'Earrings', 'Moon Earrings', 'D3120', 'Red Gold', 3270, '/assets/earrings/earrings20.PNG'),
(48, 'Earrings', 'Twist Earrings', 'D3123', 'Gold', 220, '/assets/earrings/earrings23.jpg'),
(49, 'Earrings', 'Winter Earrings', 'D3124', 'Gold', 2600, '/assets/earrings/earrings24.PNG'),
(52, 'Necklaces', 'Stormy Sea Necklace', 'C4582', 'Red Gold', 5430, '/assets/chains/chain2.jpg'),
(28, 'Earrings', 'Beaded Earrings', 'D3143', 'Gold', 6700, '/assets/earrings/earrings3.jpg'),
(90, 'Bracelets', 'Wonderful Stories Bracelet', 'B8915', 'Rose Gold With Pearl', 200, '/assets/bracelets/bracelet15.JPG'),
(92, 'Bracelets', 'Endless Happiness Bracelet', 'B8917', 'Rose Gold With Pearl', 3200, '/assets/bracelets/bracelet17.JPG'),
(93, 'Bracelets', 'Exciting Journey Bracelet', 'B8918', 'Rose Gold With Pearl', 2670, '/assets/bracelets/bracelet18.JPG'),
(109, 'Watches', 'Eclipsor Watch', 'W3211', 'Rose Gold With Pearl', 2220, '/assets/watches/watches11.PNG'),
(46, 'Earrings', 'Heart Earrings', 'D3121', 'Gold', 260, '/assets/earrings/earrings21.PNG'),
(47, 'Earrings', 'North Star Earrings', 'D3122', 'Red Gold', 870, '/assets/earrings/earrings22.PNG'),
(160, 'Gifts', 'Apple aroma jewelry gift', 'G1218', 'Gold', 54, '/assets/gift/gift18.PNG'),
(161, 'Gifts', 'Disney flower jewelry gift', 'G1219', 'Gold', 300, '/assets/gift/gift19.PNG'),
(162, 'Gifts', 'Onyx stone jewelry set', 'G1220', 'Gold And Silver', 700, '/assets/gift/gift20.PNG'),
(117, 'Watches', 'Aclephso Watch', 'W3219', 'Rose Gold With Pearl', 6000, '/assets/watches/watches19.PNG'),
(118, 'Watches', 'Quivid Watch', 'W3220', 'Rose Gold With Pearl', 4320, '/assets/watches/watches20.PNG'),
(119, 'Watches', 'Dimensia Watch', 'W3221', 'Rose Gold With Pearl', 6000, '/assets/watches/watches21.PNG');

select * from products
SELECT COUNT(*) FROM products;