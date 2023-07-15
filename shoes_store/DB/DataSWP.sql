USE SWP391;
INSERT INTO accounts (username, password, is_admin) VALUES
('lephuc', '123456', 0),
('dinhduc', '123456', 0),
('admin', '123456', 1),
('kien', '123456', 0),
('minhtuan', '123456', 0),
('anhtuan', '123456', 0),
('huuquan', '123456', 0);

insert into employees (last_name,first_name,email,account_id) values
('phuc','nguyen', 'phucnnlde140045@fpt.edu',1),
('tu','tuan','tuantude15523@fpt.edu.vn',2),
('nam','nguyen','namnnde14224@fpt.edu.vn',3),
('quan','huu','quannh@fpt.edu',4);


INSERT INTO category (category_name) VALUES 
('ADIDAS SHOES'),
('NIKE SHOES'),
('BITIS SHOES'),
('CONVERSE SHOES');


	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES 
	('Super Star shoe', 'https://assets.adidas.com/images/w_276,h_276,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/a772f34de1f24980b7fdad5801606798_9366/Giay_Superstar_trang_GX3655_01_standard.jpg', 100.00, 90.00, 'Super Star shoe', 'We designed the adidas Superstar shoe in the 70s. This version keeps the iconic elements intact, from the rubber clamshell toe to the Serrated 3-Stripes, but adds a paisley print for extra flair. new. Wear your shoes and leave your own mark.', 1),
	 ('FORUM 84 LOW ADV shoe', 'https://assets.adidas.com/images/w_276,h_276,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/36ae5118ee9b43818a94ad4e018774b6_9366/Giay_Forum_84_Low_ADV_Be_GX6393_01_standard.jpg', 120.00, 100.00, 'FORUM 84 LOW ADV shoe
	', 'The adidas Forum shoe line is already used to change. Debuting on the basketball court in 1984, soon these shoes were everywhere. This modern release continues that legacy with the help of Jeremy Scott as he brings one of his signature motifs to the new Forum 84 Low silhouette.', 1),
	 ('FORUM DIPPED JEREMY SCOTT SHOES', 'https://assets.adidas.com/images/w_276,h_276,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/62e08d13705e41eb9ab1ad1f0068a2ed_9366/Giay_Forum_Dipped_Jeremy_Scott_Multi_Q46124_01_standard.jpg', 148.00, 123.00, 'FORUM DIPPED JEREMY SCOTT SHOES
	', 'The adidas Forum line of shoes has always been about expression — that the foundation of this shoe line. And if anyone has never been shy in that area, it Jeremy Scott. In this cheeky designer collaboration, we brought his vision to the fore in an iconic tennis trainer. All the features of the Forum series are present, but are now embedded through a layer of color for a DIY coating effect.  ', 1),
	('ADILETTE JEREMY SCOTT Slippers','https://assets.adidas.com/images/w_280,h_280,f_auto,q_auto:sensitive/9e49416fc71d4463af5cad2101896554_9366/d%C3%A9p-b%C3%B4ng-adilette-jeremy-scott.jpg', 78.00, 58.00, 'ADILETTE JEREMY SCOTT Slippers
	', 'Featuring Jeremy Scott? Everything is possible. The surprise is just the beginning. His rebellious personality permeates these adidas sandals, transforming the sporty classic into a soft teddy bear. Put on your shoes. Enjoy the comfort. And it really stands out. ', 1),
	 ('Nike Waffle One', 'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_591,c_limit/8cbfc9f1-5625-4cac-9127-d3938b1e47ec/waffle-one-shoes-Z3BFbK.png', 148.00, 113.00,  'Nike Waffle One For Women
	', 'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.Its new TPU heel clip adds energy while a mixture of transparent mesh (let that sock game shine) and retro suedes give texture and depth.The updated Waffle outsole provides a level of support and traction you have to feel to believe. ', 2),
	 ('Nike Waffle One', 'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_591,c_limit/55e448bd-3e2a-4af9-81f9-d69a9947975e/waffle-one-shoes-1SFQwJ.png', 208.00, 183.00,  'Nike Waffle One For Men
	', 'Bringing a new look to the iconic Waffle franchise, the Nike Waffle One balances everything you love most about heritage Nike running with fresh innovations.Its new durable plastic heel clip adds energy, while a mixture of transparent mesh and luscious suedes get you ready for summertime.The new springy midsole features the classic wedge shape while the updated Waffle outsole provides a level of support and traction you have to feel to believe. ', 2),
	 ('NikeCourt Legacy', 'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_591,c_limit/655df0df-823c-4b61-8b60-87dd8c999a1e/nikecourt-legacy-mules-KL9hwr.png', 182.00, 143.00,  'NikeCourt Legacy Women
	', 'Honouring a history rooted in tennis culture, the NikeCourt Legacy Mule reinvents a classic with an easy-on design and comfy foam insole.Made from durable canvas and featuring heritage stitching and retro Swoosh design, it lets you blend sport and fashion. ', 2),
	 ('Nike SB Zoom Blazer Mid Premium', 'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_591,c_limit/8db25b49-9089-424a-8054-f6fce9da571e/sb-zoom-blazer-mid-skate-shoe-bdtQ2K.png', 120.00, 92.00,  'Nike SB Zoom Blazer Mid Premium', 'nspired by the community art spaces of Barcelona, the Nike SB Zoom Blazer Mid Premium is made from a collage of materials like suede, leather and canvas.The design is elevated with a multi-coloured "Nike" embroidery on the heel and a mismatched Swoosh, capped off by a contrasting herringbone sole.', 2),
	 ('Bitis Men Sneakers DSM074233TRG (White)', 'https://product.hstatic.net/1000230642/product/dsm074233trg_13__1224844634094b04af68164f144adcc5_master.jpg', 120.00, 110.00, 'Bitis Men Sneakers DSM074233TRG (White)
	', 'The shoes are made from fabric that is selected through many tests to have an eye-catching shape with a soft sole to bring comfort to the user.', 3),
	 ('Bitis Hunter Street x VietMax Men Sneakers', 'https://product.hstatic.net/1000230642/product/kv1_fn_054ffe0091fb4365b8691b4ed921ffe2_medium.jpg', 128.00, 113.00,  'Biti Hunter Street x VietMax Men Sneakers', '1 SHOES – 3 VARIABLES (3-in-1). Diverse style variations from Low-Top to Mid-Top & Mid-Top Reverse.FLEXIBILITY OF APPLICATION: The outside is rough but opens with brocade brocades in a variety of colors. UNIQUE CULTURE INSPIRATION. As the "real" husk, first incorporated into the base, rough but elastic, high strength
	- MEDICAL MANUFACTURING, MULTIPLE DETAILS - Is the shoe that invests in creativity & explores the most diverse materials in every detail, all aimed at portraying the harsh but quintessential gut. And especially, the brocade woven fabric represents the cultural interference - a combination of the motifs of the Central Highlands ethnic groups & the patterns of Cham ethnic origin - creating a diversity and strong spread of Vietnamese culture. Culture of the Central region - depicting a person who is sharp, talented, unique and proud.', 3),
	 ('Bitis Men''s Leather Shoes MM343770NAU', 'https://product.hstatic.net/1000230642/product/dmm343770nau__6__6959a198c4e74b84aa19599612fb2dd3_master.jpg', 148.00, 131.00,  'Bitis Men''s Leather Shoes DMM343770NAU', 'Made from high-gloss leather that enhances glamor through the exterior combined with a smooth interior to enhance the user experience.', 3),
	 ('Biti''s Hunter Men''s Sneakers', 'https://product.hstatic.net/1000230642/product/dsc_0016_7dcbe3d255e84324b3d5753ea31190b8_medium.jpg', 120.00, 93.00,  'Biti''s Hunter Core Z Collection Stone Men''s Sneakers DSMH06400DEN', 'A pair of shoes with a sporty nature but still worn with high aesthetics. Users can wear it when going out or doing sports activities.', 3),
	 ('Chuck 70 Hi Sneaker', 'https://envilmart.vn/storage/product/b7Fc31CfpfCRdePq7DPdNrLavayS9h8vRC3iT4fJ.jpeg', 188.00, 140.00,  'Chuck 70 Hi Sneaker', 'a pair of black high-neck shoes that are easy to match and enhance the user''s height because of the padded soles by five centimeters', 4),
	 ('All Star Slide', 'https://bizweb.dktcdn.net/100/347/923/products/166799v-4.jpg?v=1594275832907', 132.00, 112.00, 'All Star Slide', 'Slippers bring comfort to the wearer with anti-slip and youthful designs. Can be carried everywhere', 4);





	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Bitis Hunter X Americano Men Sneakers', 'https://cdn.shopify.com/s/files/1/0565/9931/4585/products/4_35_1800x1800.jpg?v=1623919151', 145.00, 120.00, 'Bitis Hunter X Americano Men Sneakers (Black)', 'IMPORTED QUALITY, DURABLE USAGE. Made in Vietnam. Intergrated unique LiteFlex 2.0 Technology and premium materials help increase the shoe durability while keeping your feet stay cool every season.
	LIGHTWEIGHT AND SLIP-RESISTANT SOLE. The Phylon sole is upgraded with extreme lightweightness (<300g) and over 40% increased elasticity. Outsole groove patterns offer a great traction and enhance the shoe slip-resistance. Sole height 5.0 cm (1.9 inch)
	COMFORTABLE UPPER DESIGN. High-quality Liteknit upper enhances the lightweightness and flexibility.
	TRENDY STYLE. Modern design offers attractive vibes and full of personality. The slim form with foot-cuddling heel-cage and heel-counter wraps your feet gently on every step.
	A PERFECT GIFT FOR SNEAKERHEADS. Exciting gifts for sneaker enthusiasts, family, relatives, friends,...who enjoy comfortable yet staying fashionable.', 3),
	('FORUM DIPPED JEREMY SCOTT SHOES','https://assets.adidas.com/images/w_276,h_276,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/62e08d13705e41eb9ab1ad1f0068a2ed_9366/Giay_Forum_Dipped_Jeremy_Scott_Multi_Q46124_01_standard.jpg',200.000, 170.000,'FORUM DIPPED JEREMY SCOTT SHOES','The adidas Forum line of shoes has always been about expression — that''s the foundation of this shoe line. And if anyone has never been shy in that area, it''s Jeremy Scott. In this cheeky designer collaboration, we''ve brought his vision to the fore in an iconic tennis trainer. All the features of the Forum series are present, but are now embedded through a layer of color for a DIY coating effect.',1),
	('SST AEC SUPEREARTH SW','https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/cabf2317c73f48f9ab72ad3300f4b7c7_9366/sst-aec-superearth-sw.jpg',200.000,170.000,'SST AEC SUPEREARTH SW','After well-received collaborations with Nike and ASICS, Sean Wotherspoon brought his talents to the three stripes with the release of the adidas Superstar Sean Wotherspoon SuperEarth.The SuperEarth Superstar combines Wotherspoon’s love for vintage clothing with his vegan-focused mission. The upper is white with multicolored flower embroidery that wraps each shoe. Pastel blue and pink overlays are scattered throughout the silhouette to give a youthful vibe. At last, a graphic drawing of the Earth is printed on each tongue below branded tabs that sport the design’s name.',1),
	('Nike ACG Air Deschutz', 'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_591,c_limit/ec981d0b-98ce-4b6f-9fc3-747b0d4c69a8/acg-air-deschutz-sandals-F6s3mC.png',100.000,70.000,'Nike ACG Air Deschutz','From city hikes to canyon trails and long walks on the beach, the Nike ACG Air Deschutz + is built to feel comfortable.It''s got a classic ''90s look and rugged outdoor-inspired design, with plush padding around the ankle for support.A heavy-duty webbing strap and adjustable hook-and-loop closure keep you focused on the journey ahead.',2),
	('Nike Air Zoom Pegasus 38','https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_591,c_limit/0bce9fb8-17da-43b7-b70e-8177ac3b776b/air-zoom-pegasus-38-road-running-shoes-Hmsj6Q.png',120.000,95.000,'Nike Air Zoom Pegasus 38','The road is your runway. Get ready to take flight in the workhorse with wings. Back with extra bounce that''s perfect for hitting the tarmac. Whether you''re racking up everyday miles or on your long run, feel the spring in your step with the same cushioned support as its predecessor. Breathable mesh in the upper combines the comfort and durability you want with a wider fit at the toes.',2),
	('Nike Renew Serenity Run', 'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_591,c_limit/20816433-5b19-46d7-9cdc-e2238aeebe97/renew-serenity-run-road-running-shoes-BVzhTq.png',100.000,98.000,'Nike Renew Serenity Run','Take your mental health on the road with a neutral running shoe made for the moments when your steps speed up to let your mind slow down.Plush, lightweight cushioning and a fit that''s optimised for comfort help you stayed focused on the joy in every mile.',2),
	('Zion 1 PF','https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_591,c_limit/0fb81e78-906d-49b6-afd1-cad6a0d76fbf/zion-1-pf-basketball-shoe-bHGvxg.png',100.000,80.000,'Zion 1 PF','With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else.On court, the gentle spirit who''s all about family transforms into an unmatched force of unstoppable athleticism and speed.The Zion 1 kicks off his signature line with a design inspired by his duality of humility and superhuman ability.Full-length Air Strobel cushioning is stacked with a Zoom Air unit in the forefoot—a sensational mix of plush underfoot comfort and rapid responsiveness.It''s light, stable and strong, with aggressive traction to help Zion grip the court and control his power.This PF version uses an extra-durable outsole that''s designed for outdoor courts.',2),
	('Nike ZoomX Vaporfly Next% 2','https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_591,c_limit/1b57a253-3863-4d2c-b465-53691324bc0a/zoomx-vaporfly-next-2-road-racing-shoe-STlc3F.png',200.000,150.000,'Nike ZoomX Vaporfly Next% 2','Continue the next evolution of speed with a racing shoe made to help chase new goals and records.The Nike ZoomX Vaporfly Next% 2 builds on the model racers everywhere love.It helps improve comfort and breathability with a redesigned upper.From a 10K to a marathon, the 2 still has the responsive cushioning and secure support to push you towards your personal best.',2);

	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Bitis Hunter X Americano Men Sneakers', 'https://cdn.shopify.com/s/files/1/0565/9931/4585/products/4_35_1800x1800.jpg?v=1623919151', 126.0, 110.0, 'Bitis Hunter X Americano Men Sneakers (Black)', 'IMPORTED QUALITY, DURABLE USAGE. Made in Vietnam. Intergrated unique LiteFlex 2.0 Technology and premium materials help increase the shoe durability while keeping your feet stay cool every season.
	LIGHTWEIGHT AND SLIP-RESISTANT SOLE. The Phylon sole is upgraded with extreme lightweightness (<300g) and over 40% increased elasticity. Outsole groove patterns offer a great traction and enhance the shoe slip-resistance. Sole height 5.0 cm (1.9 inch)
	COMFORTABLE UPPER DESIGN. High-quality Liteknit upper enhances the lightweightness and flexibility.
	TRENDY STYLE. Modern design offers attractive vibes and full of personality. The slim form with foot-cuddling heel-cage and heel-counter wraps your feet gently on every step.
	A PERFECT GIFT FOR SNEAKERHEADS. Exciting gifts for sneaker enthusiasts, family, relatives, friends,...who enjoy comfortable yet staying fashionable.', 3);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('BITIS Hunter Street X VietMax2021', 'https://cdn.shopify.com/s/files/1/0565/9931/4585/products/DSMH02505DEN_5_120x.jpg?v=1625714603', 110.0, 95.0, 'BITIS Hunter Street X VietMax2021 Hanoi Culture Patchwork Unisex Black', 'Ethylene Vinyl Acetate sole
	IMPORTED QUALITY, DURABLE USAGE. Made in Vietnam. Integrated unique technologies and premium materials help increase the shoe durability while keeping your feet stay cool every season.
	LIGHTWEIGHT AND SLIP-RESISTANT SOLE. With EVA material and exclusive #LiteTraction Technology, the outsole is ultimately upgraded with extreme lightweightness (300g). The groove patterns offer great traction on any surface to enhance the shoe slip resistance.
	COMFORTABLE UPPER DESIGN. #10OZ Canvas upper makes the shoe more lightweight and breathable but still durable, remain the shoe form after long use. Canvas material is quite easy to clean and does not need any special support tools.
	THE INFLUENCE OF STREET CULTURE. Proudly inspired by thrilling Vietnam streets and freedom lifestyle, BITIS Hunter Street x VietMax2021 Old Wall Yellow carries out the Vietnamese traditional culture through its design. High-quality Nubuck leather boasts a vintage vibe but still dynamic and fashionable.
	A PERFECT GIFT FOR SNEAKERHEADS. BITIS Hunter Street x VietMax2021 Old Wall Yellow Sneakers are exciting gifts for sneaker enthusiasts, family members, relatives, and friends on birthdays, anniversaries, or parties.', 3 );
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Bitis Hunter Core Women Shoes', 'https://cdn.shopify.com/s/files/1/0565/9931/4585/products/1_39_120x.jpg?v=1623918545', 130.0, 110.0, 'Bitis Hunter Core Women Shoes (Pink)', 'IMPORTED QUALITY, DURABLE USAGE. Made in Vietnam. Intergrated unique LiteFoam Technology and premium materials help increase the shoe durability while keeping your feet stay cool every season.
	LIGHTWEIGHT AND SLIP-RESISTANT SOLE. Superior Phylon material increases the lightweightness (<300g) while remain solid shape thanks to its elasticity. The 3D groove patterns of outsole offer a great traction and enhance the shoe slip-resistance.
	BREATHABLE UPPER DESIGN. High-quality knit mesh upper and sockliners help maximize the breathability and prevent bad smell/odor, both to create a comfy experience.
	STRETCHY MATERIALS. The stretch materials flexibly expand to closely fit your foot while moving, also making it easy to put on/off.
	A PERFECT GIFT FOR SNEAKERHEADS. Exciting gifts for sneaker enthusiasts, family, relatives, friends,...who enjoy comfortable yet staying fashionable.', 3);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Bitis Hunter Street Milk Tea', 'https://cdn.shopify.com/s/files/1/0565/9931/4585/products/DSMH03700KEL_5_120x.jpg?v=1623919067', 146.0, 124.0, 'Bitis Hunter Street Milk Tea Women Sneakers', 'Imported
	Ethylene Vinyl Acetate sole
	IMPORTED QUALITY, DURABLE USAGE. Made in Vietnam. Intergrated unique Technologies and premium materials help increase the shoe durability while keeping your feet stay cool every season.
	LIGHTWEIGHT AND SLIP-RESISTANT SOLE. With EVA material and exclusive #LiteTraction Technology, the sole is ultimately upgraded with extreme lightweightness (300g). The outsole groove patterns offer a great traction on any surfaces to enhance the shoe slip-resistance.
	COMFORTABLE UPPER DESIGN. #10OZ Canvas upper makes the shoe more lightweight and breathable but still durable, remain shoe form after long use. Canvas material is quite easy to clean and do not need any special support tools.
	THE INFLUENCE OF STREET CULTURE. Proudly inspired by thrilling Vietnam streets and freedom lifestyle, BITIS Hunter Street Milk Tea carries out the Vietnamese pop culture through its design. High-quality Nubuck leather boasts a vintage vibe but still dynamic and fashionable.
	A PERFECT GIFT FOR SNEAKERHEADS. BITIS Hunter Street Milk Tea Sneakers are exciting gifts for sneaker enthusiasts, family members, relatives and friends on birthdays, anniversaries or parties.', 3);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Bitis Hunter Dark Grey', 'https://cdn.shopify.com/s/files/1/0565/9931/4585/products/1_11_120x.jpg?v=1623918600' , 162.0, 147.0, N'Bitis Hunter Dark Grey Men Sandals (Green)', 'Imported
	IMPORTED QUALITY & PREMIUM MATERIAL. Made in Vietnam. 100% premium IP material forms strong and durable pairs of sandals. Holding up well to daily soft activities: indoor, beach walk,..
	LIGHTWEIGHT AND SLIP-RESISTANT SOLE. Cushioned sole with high-rebound memory foam keeps your walking smooth and light. Outsole groove patterns offer a great traction and enhance sandal slip-resistance.
	EASY ON/OFF. Roomy design with velcro straps makes BITIS HUNTER Sandals easy to slip on or off.
	ADJUSTABLE VELCRO STRAPS. Two strap construction helps flexibly adjust as your own interest. Gently contour your feet and perfectly fit even to wide feet.
	PLEASANT GIFTS FOR CLOSE RELATIONS. Dynamic design with modern color-mix makes exciting gifts for your husbands, family members, relatives, friends,...who seek for instant comfort and activeness but still stay stylish.', 3);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Bitis Hunter Street X VietMax', 'https://cdn.shopify.com/s/files/1/0565/9931/4585/products/1_1_5177c50e-9989-40d5-804c-f10ed035cc44_120x.jpg?v=1623642385', 146.0, 134.0, '
	Bitis Hunter Street X VietMax | Arising Vietnam R8 Black Mens'' Sneakers', 'Inspired by the position of "Flying Dragon", the collection has a strong, sophisticated and unique design language in every detail such as leather texture, binding, eyelets, shoelaces; representing a part of Vietnamese culture.
	REAL LEATHER upper material, combined with high quality Synthetic PU decorative motifs.
	Antibacterial lining material helps limit odors and mold. Multi-layer lining structure combines thick and smooth foam.
	EVA insole with 3D molding technology fits the foot shape perfectly, very confortable in every steps.
	THE INFLUENCE OF STREET CULTURE. Proudly inspired by thrilling Vietnam streets and freedom lifestyle, BITIS Hunter Street carries out the Vietnamese pop culture through its design.
	A PERFECT GIFT FOR SNEAKERHEADS. BITIS Hunter Street Latte Sneakers are exciting gifts for sneaker enthusiasts, family members, relatives and friends on birthdays, anniversaries or parties.', 3);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Bitis Hunter Street Jingle' , 'https://cdn.shopify.com/s/files/1/0565/9931/4585/products/1_15_120x.jpg?v=1623638292', 182.0, 165.00, 'Bitis Hunter Street Jingle Red Men Sneakers', 'Imported
	Ethylene Vinyl Acetate sole
	IMPORTED QUALITY, DURABLE USAGE. Made in Vietnam. Intergrated unique Technologies and premium materials help increase the shoe durability while keeping your feet stay cool every season.
	LIGHTWEIGHT AND SLIP-RESISTANT SOLE. With EVA material and exclusive LiteTraction technology, the sole is ultimately upgraded with extreme lightweightness. The outsole groove patterns offer a great traction on any surfaces to enhance the shoe slip-resistance.
	HIGH-PERFORMANCE UPPER DESIGN. #10OZ Canvas upper makes the shoe more lightweight and breathable but still durable, remain shoes form after long use. Canvas material is quite easy to clean and do not need any special support tools.
	THE INFLUENCE OF STREET CULTURE. Proudly inspired by thrilling Vietnam streets and freedom lifestyle, BITIS Hunter Street carries out the Vietnamese pop culture through its design.
	A PERFECT GIFT FOR SNEAKERHEADS. BITIS Hunter Street Latte Sneakers are exciting gifts for sneaker enthusiasts, family members, relatives and friends on birthdays, anniversaries or parties.', 3);


	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Authentic Glam Chuck 70', 'https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dwa6309e2a/images/a_107/572265C_A_107X1.jpg?sw=964', 169.0, 151.0, 'Authentic Glam Chuck 70', 'Some days call for glitter, and these Chuck 70s deliver. A two-tone design of shimmering canvas adds shine to any outfit, whether you are off to a holiday party or dressing up your everyday look. A style icon, the Chuck 70 combines unmistakable Chuck Taylor All Star elements with premium materials for added comfort and durability. All day, all season.
	WHY YOU SHOULD BE DOWN
	Crafted in glitter-coated canvas for an elevated look and feel.
	Premium cushioning provides all-day comfort and support.
	A two-tone design and all-over glitter shines with every step.
	Shiny, taller rubber sidewall and winged tongue stitching.
	Heritage details like a 1970s heel logo nod to its legacy.', 4);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Cold Fusion Waterproof Chuck 70 Explore', 'https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dw66ff1774/images/j_08/171439C_J_08X1.jpg?sw=406', 139.0, 109.0, 'Cold Fusion Waterproof Chuck 70 Explore', 'Designed to keep the elements out, the Cold Fusion Chuck 70 Explore combines waterproof materials with iconic design. Outdoor-inspired elements like ticked hiking laces and a webbed heel meet a durable traction outsole and supportive OrthoLite cushioning. All-day comfort, whatever the weather.
	WHY YOU SHOULD BE DOWN
	High top weatherproof leather sneaker.
	OrthoLite cushioning for all-day comfort.
	A waterproof inner-bootie protects, while a fleece lining helps you stay warm.
	Utility-driven details like a woven heel loop and moisture-wicking, reflective laces.
	Durable traction outsole for taking on winter weather.', 4);

	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Crafted Boot Chuck Taylor', 'https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dw42ea8d5b/images/d_08/162354C_D_08X1.jpg?sw=406', 96.0, 89.0, 'Crafted Boot Chuck Taylor', 'Everything you need in a boot, nothing you dont. The iconic Chuck Taylor Crafted Boot is here for the holidays, with a premium leather construction, Ortholite insole for cushioned comfort and authentic outdoor appeal. Drawing inspiration from hiker styles, these boots are laced with round, tonal laces. A rugged outsole tread is ready for any terrain.
	WHY YOU SHOULD BE DOWN
	Leather high top boot
	Ortholite insole for comfort
	Tonal trail fleck laces
	Hiker-inspired rubber outsole tread
	Iconic All Star ankle patch', 4);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Cold Fusion Platform Chuck Taylor All Star','https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dwcfd86cc0/images/j_08/572229C_J_08X1.jpg?sw=406', 110.0, 99.0, 'Cold Fusion Platform Chuck Taylor All Star', 'The iconic high top levels up with a double-stacked, platform sole to keep you up and out of the elements. Premium suede layers up with a warm, fleece lining, maintaining style and warmth from the inside out. With Chuck Taylor All Star standbys, like a diamond toe bumper and contrast midsole stripes. EVA cushioning helps keep it comfortable.
	WHY YOU SHOULD BE DOWN
	High top suede platform sneaker.
	EVA cushioning provides all-day comfort.
	A soft fleece lining keeps it warm and cozy.
	A platform outsole ups the height.
	Tonal laces and iconic Chuck Taylor ankle patch.', 4);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Surface Fusion Platform 2X Chuck Taylor All Star','https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dw0839151d/images/d_08/571675C_D_08X1.jpg?sw=406', 123.0, 109.0, 'Surface Fusion Platform 2X Chuck Taylor All Star', 'The Platform 2X Chuck Taylor All Star hacks our Converse DNA to create an ultra-lifted, hybrid style. We pushed up our midsole to be 10mm higher than our standard platform, giving you even more height, and brought diagonal bars to the midsole for expressive style. A leather tongue and canvas build come together with color-popped linings and top eyelets for a bold new take on the iconic All Star look.
	WHY YOU SHOULD BE DOWN
	High top leather and canvas extra-high platform sneaker.
	EVA cushioning provides all-day comfort.
	Texturized rubber midsole.
	Color-popped sockliner and top eyelet for added style.
	Iconic Chuck Taylor ankle patch.', 4);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Lugged Leather Chuck Taylor All Star','https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dw82b537d6/images/g_08/567164C_G_08X1.jpg?sw=406', 146.0, 128.0, 'Lugged Leather Chuck Taylor All Star','Just in time for the colder months, we’ve re-imagined classic Chucks for winter. Durable leather helps you stay warm and dry all season long.
	WHY YOU SHOULD BE DOWN
	Leather high top sneakers.
	OrthoLite insole for comfort.
	Lugged outsole.
	Iconic Chuck Taylor patch.', 4);
	INSERT INTO products (product_name, image, old_price, current_price, title, descriptions, category_id) VALUES ('Converse Color Leather Easy-On Chuck Taylor All Star Berkshire Boot', 'https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dw27440544/images/d_08/771525C_D_08X1.jpg?sw=406', 163.0, 147.0, 'Converse Color Leather Easy-On Chuck Taylor All Star Berkshire Boot', 'The iconic high top you know and love gets reimagined for winter weather and kid-friendly comfort. A leather build and padded, coated canvas collar keep the elements out, while a soft fleece lining provides warmth. Our signature Counter Climate traction outsole makes for better grip for when it is cold and wet.
	WHY YOU SHOULD BE DOWN
	High top leather boot with a padded collar and easy-on straps.
	SmartFOAM sockliner for all-day comfort and support.
	A soft fleece lining keeps it warm and cozy.
	A gusseted tongue helps to keep the elements out.
	A traction outsole for all-weather grip.', 4)

