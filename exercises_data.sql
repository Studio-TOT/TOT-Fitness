--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Homebrew)
-- Dumped by pg_dump version 14.17 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories (id, name, name_en_us, include_in_api, include_in_workout_generator, display_order, enable, featured, image, mobile_icon, description) FROM stdin;
1	Barbell	Barbell	t	t	3	t	t	\N	\N	\N
2	Dumbbells	Dumbbells	t	t	6	t	t	\N	\N	\N
3	Bodyweight	Bodyweight	t	t	2	t	t	\N	\N	\N
4	Machine	Machine	f	t	7	t	t	\N	\N	\N
9	Cables	Cables	t	t	4	t	t	\N	\N	\N
7	Kettlebells	Kettlebells	t	t	5	t	t	\N	\N	\N
8	Stretches	Stretches	t	f	1	t	t	\N	\N	\N
105	Recovery	Recovery	t	f	22	t	f	\N	\N	\N
10	Band	Band	t	t	9	t	t	\N	\N	\N
11	Plate	Plate	t	f	14	t	t	\N	\N	\N
12	TRX	TRX	t	f	12	t	t	\N	\N	\N
13	Yoga	Yoga	f	f	15	t	t	\N	\N	\N
27	Cardio	Cardio	t	f	21	t	f	\N	\N	\N
6	Medicine-Ball	Medicine-Ball	f	f	13	t	f	\N	\N	\N
24	Bosu-Ball	Bosu-Ball	f	f	17	t	f	\N	\N	\N
26	Vitruvian	Vitruvian	t	f	18	t	t	\N	\N	\N
85	Smith-Machine	Smith-Machine	f	f	8	t	t	\N	\N	\N
\.


--
-- Data for Name: difficulties; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulties (id, name, name_en_us) FROM stdin;
2	Intermediate	Intermediate
4	Novice	Novice
1	Beginner	Beginner
3	Advanced	Advanced
\.


--
-- Data for Name: exercises; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.exercises (id, name, name_en_us, name_alternative, slug, description, description_en_us, need_warmup, advanced_weight, featured_weight, weight, impact, use_youtube_links, featured, sponsered_link, status, created_at, updated_at) FROM stdin;
1	Barbell Curl	Barbell Curl	\N	barbell-curl	<p>**Detailed How To:**</p><p><br></p><p>- Grab the barbell with a shoulder width, underhand grip.</p><p>- Flex at the elbows until your forearms press into your bicep (this will look different from person to person).</p><p>- Begin to extend your elbows and control the weight during the eccentric part of the exercise.</p><p>- Make sure to fully extend your elbows at the end of the rep.</p><p>- Repeat until you hit muscular fatigue (1-3 reps left in the tank)</p><p><br></p><p>**Ty's Tips**</p><p><br></p><p>One of the drawbacks with a Barbell Curl is the bar limits Range of Motion somewhat. The bar will hit your legs before you can fully extend your arms. On most exercises, we want the longest Range or Motion possible. To remedy this,</p><p><br></p><p>Push your butt back a tad bit. This will give you a little more room to fully extend your elbows.</p><p>Watch out for cheating. Using momentum often naturally happens with a Barbell Curl (and most Dumbbell curl variations). There is a move called the Cheat Curl popularized by Arnold himself. But consider that a separate exercise.</p><p><br></p><p>Root your feet to the floor and use a mirror to watch your form. If your hips begin moving and you're unable to continue to perform reps without any hip movement, end the set.</p><p>A 6-12 rep range works well for this exercise.</p>	<p>**Detailed How To:**</p><p><br></p><p>- Grab the barbell with a shoulder width, underhand grip.</p><p>- Flex at the elbows until your forearms press into your bicep (this will look different from person to person).</p><p>- Begin to extend your elbows and control the weight during the eccentric part of the exercise.</p><p>- Make sure to fully extend your elbows at the end of the rep.</p><p>- Repeat until you hit muscular fatigue (1-3 reps left in the tank)</p><p><br></p><p>**Ty's Tips**</p><p><br></p><p>One of the drawbacks with a Barbell Curl is the bar limits Range of Motion somewhat. The bar will hit your legs before you can fully extend your arms. On most exercises, we want the longest Range or Motion possible. To remedy this,</p><p><br></p><p>Push your butt back a tad bit. This will give you a little more room to fully extend your elbows.</p><p>Watch out for cheating. Using momentum often naturally happens with a Barbell Curl (and most Dumbbell curl variations). There is a move called the Cheat Curl popularized by Arnold himself. But consider that a separate exercise.</p><p><br></p><p>Root your feet to the floor and use a mirror to watch your form. If your hips begin moving and you're unable to continue to perform reps without any hip movement, end the set.</p><p>A 6-12 rep range works well for this exercise.</p>	f	1	200	80	0	f	t	f	Published	2025-04-25 14:04:41.132712	2025-04-25 14:04:41.132712
2	Dumbbell Curl	Dumbbell Curl	\N	dumbbell-curl	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform the Dumbbell Bicep Curl</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab two dumbbells and stand tall with your shoulder blades pulled back and your chest poked out. You can start with either the dumbbells in front of your quads or off to the sides of your legs. Whichever is more comfortable. Also, whichever will allow you to fully extend your elbows at the bottom of each rep.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-c71076c1-7fff-ed4f-a63b-0a26db525d16"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Use a shoulder width or slightly inside of shoulder width stance.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Begin the rep by flexing your elbows. Try to touch your forearms to your biceps at the very top of the movement. Then begin the eccentric. Make sure to fully extend your elbows at the bottom of each rep so you get a full range of motion.&nbsp;</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">It is easy to use momentum on a bicep curl. We want our muscles and not momentum to do the work. So make sure you keep these strict. If you find yourself swinging the weight up, then your biceps have hit fatigue and it's time to end the set.</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform the Dumbbell Bicep Curl</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab two dumbbells and stand tall with your shoulder blades pulled back and your chest poked out. You can start with either the dumbbells in front of your quads or off to the sides of your legs. Whichever is more comfortable. Also, whichever will allow you to fully extend your elbows at the bottom of each rep.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-c71076c1-7fff-ed4f-a63b-0a26db525d16"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Use a shoulder width or slightly inside of shoulder width stance.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Begin the rep by flexing your elbows. Try to touch your forearms to your biceps at the very top of the movement. Then begin the eccentric. Make sure to fully extend your elbows at the bottom of each rep so you get a full range of motion.&nbsp;</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">It is easy to use momentum on a bicep curl. We want our muscles and not momentum to do the work. So make sure you keep these strict. If you find yourself swinging the weight up, then your biceps have hit fatigue and it's time to end the set.</span></p>	f	1	340	78	0	t	t	f	Published	2025-04-25 14:04:41.14488	2025-04-25 14:04:41.14488
3	Dumbbell Hammer Curl	Dumbbell Hammer Curl	\N	dumbbell-hammer-curl	\N	\N	f	100	310	76	0	t	t	f	Published	2025-04-25 14:04:41.14773	2025-04-25 14:04:41.14773
4	Barbell Bench Press	Barbell Bench Press	Chest Press, Bench	barbell-bench-press	<h1>Detailed How-To</h1>\r\n\r\n<h2>Do Your Work Early (The Setup)</h2>\r\n\r\n<h3>Foot Placement</h3>\r\n\r\n<p>You can either be flat footed or just have toes on the ground. Either way, push your toes to generate some tension in your quads. Generating tension through your whole body will help you lift more weight.</p>\r\n\r\n<h3>Torso Technique</h3>\r\n\r\n<p>Point your rib cage at the ceiling and pull your shoulder blades back really hard. Dig your shoulder blades into the bench. This will arch your spine somewhat. This is the only time it is ok to extend your spine. Because you are braced against the bench, the bench will soak up a lot of the tension that would otherwise fall on your lumbar spine.</p>\r\n\r\n<h3>Grip</h3>\r\n\r\n<p>Grip width should be just outside of shoulder width. Make sure the bar is set very deeply in your hands. This will help prevent your wrists from getting extended, which will in run help you handle more weight safely.</p>\r\n\r\n<h2>Performing The Bench Press</h2>\r\n\r\n<p>Un-rack the bar. Break at the elbows and bring the bar toward your rib cage, not chest. The bar path should be an arc like curve.</p>\r\n\r\n<p>Make sure the bar touches your rib cage before you initiate the concentric.</p>\r\n\r\n<p>At the top of the rep, extend your elbows but stop short of hyperextending as this could lead to an injury.</p>\r\n\r\n<p>When the rep is complete, slam the bar back into the rack, then lower into the hooks/cups.</p>\r\n\r\n<h2>Ty's Tips</h2>\r\n\r\n<h3>Timing is everything</h3>\r\n\r\n<p>As you perform the eccentric, you want to move under control, but not slowly. I've seen many times a client or friend miss a heavy rep on the bench press because they moved too slowly during the lowering phase. Moving slowly during the eccentric is usually caused by unsureness. Think about it, when you're lifting a heavy weight, and not sure if you are going to complete it, you move slower.</p>\r\n\r\n<p>Also, try to properly time out when you initiate the press. You should begin pressing back toward the ceiling as the bar is touching your sternum.</p>\r\n\r\n<p>Lift with confidence always! If you fail the rep, then you failed the rep. No big deal. Just keep it pushing and you'll get it at some point. This leads me to my second tip.</p>\r\n\r\n<h3>No Shame in Asking For Help</h3>\r\n\r\n<p>Don't be hesitant to ask for a spot if you don't have a gym partner. Most people are happy to help. There's research showing that a lifter will perform better with a spotter. Your muscles won't be any stronger with or without a spotter of course. So why the improvement in performance? The confidence alluded to in the how-to section. Knowing someone is there to get the bar if you fail provides the security to allow you to lift with confidence.</p>\r\n\r\n<p>Just make sure you communicate before starting the set.</p>\r\n\r\n<p>First, ask them to give you a lift off. I've had many ask me for a spot then say they don't want a lift off. Never quite understood why. In many cases (unless you have very long arms), you will lose your shoulder blade retraction when trying to un-rack the bar. If your arms are mostly extended the only choice you have to un-rack is to protract your shoulder blades. The further you can get your shoulder blades pulled back the better. Retracting the shoulder blades also gives more room in the shoulder joint so it is generally a safer position.</p>\r\n\r\n<p>Also, let the spotter know how many reps you're going for so they know what to expect and don't jump in too early. Let them know whether or not you want help completing any reps. For example, "I'm going for 10 reps, but I might fail around 8. If I can't get all the reps by myself, can you help me get the remaining ones?"</p>\r\n\r\n<p>Although, I suggest once you hit muscular fatigue, you end your set. Once a muscle hits fatigue, doing additional reps does not induce more muscle growth, but does fatigue you more. Too much risk, not enough reward.</p>	<h1>Detailed How-To</h1>\r\n\r\n<h2>Do Your Work Early (The Setup)</h2>\r\n\r\n<h3>Foot Placement</h3>\r\n\r\n<p>You can either be flat footed or just have toes on the ground. Either way, push your toes to generate some tension in your quads. Generating tension through your whole body will help you lift more weight.</p>\r\n\r\n<h3>Torso Technique</h3>\r\n\r\n<p>Point your rib cage at the ceiling and pull your shoulder blades back really hard. Dig your shoulder blades into the bench. This will arch your spine somewhat. This is the only time it is ok to extend your spine. Because you are braced against the bench, the bench will soak up a lot of the tension that would otherwise fall on your lumbar spine.</p>\r\n\r\n<h3>Grip</h3>\r\n\r\n<p>Grip width should be just outside of shoulder width. Make sure the bar is set very deeply in your hands. This will help prevent your wrists from getting extended, which will in run help you handle more weight safely.</p>\r\n\r\n<h2>Performing The Bench Press</h2>\r\n\r\n<p>Un-rack the bar. Break at the elbows and bring the bar toward your rib cage, not chest. The bar path should be an arc like curve.</p>\r\n\r\n<p>Make sure the bar touches your rib cage before you initiate the concentric.</p>\r\n\r\n<p>At the top of the rep, extend your elbows but stop short of hyperextending as this could lead to an injury.</p>\r\n\r\n<p>When the rep is complete, slam the bar back into the rack, then lower into the hooks/cups.</p>\r\n\r\n<h2>Ty's Tips</h2>\r\n\r\n<h3>Timing is everything</h3>\r\n\r\n<p>As you perform the eccentric, you want to move under control, but not slowly. I've seen many times a client or friend miss a heavy rep on the bench press because they moved too slowly during the lowering phase. Moving slowly during the eccentric is usually caused by unsureness. Think about it, when you're lifting a heavy weight, and not sure if you are going to complete it, you move slower.</p>\r\n\r\n<p>Also, try to properly time out when you initiate the press. You should begin pressing back toward the ceiling as the bar is touching your sternum.</p>\r\n\r\n<p>Lift with confidence always! If you fail the rep, then you failed the rep. No big deal. Just keep it pushing and you'll get it at some point. This leads me to my second tip.</p>\r\n\r\n<h3>No Shame in Asking For Help</h3>\r\n\r\n<p>Don't be hesitant to ask for a spot if you don't have a gym partner. Most people are happy to help. There's research showing that a lifter will perform better with a spotter. Your muscles won't be any stronger with or without a spotter of course. So why the improvement in performance? The confidence alluded to in the how-to section. Knowing someone is there to get the bar if you fail provides the security to allow you to lift with confidence.</p>\r\n\r\n<p>Just make sure you communicate before starting the set.</p>\r\n\r\n<p>First, ask them to give you a lift off. I've had many ask me for a spot then say they don't want a lift off. Never quite understood why. In many cases (unless you have very long arms), you will lose your shoulder blade retraction when trying to un-rack the bar. If your arms are mostly extended the only choice you have to un-rack is to protract your shoulder blades. The further you can get your shoulder blades pulled back the better. Retracting the shoulder blades also gives more room in the shoulder joint so it is generally a safer position.</p>\r\n\r\n<p>Also, let the spotter know how many reps you're going for so they know what to expect and don't jump in too early. Let them know whether or not you want help completing any reps. For example, "I'm going for 10 reps, but I might fail around 8. If I can't get all the reps by myself, can you help me get the remaining ones?"</p>\r\n\r\n<p>Although, I suggest once you hit muscular fatigue, you end your set. Once a muscle hits fatigue, doing additional reps does not induce more muscle growth, but does fatigue you more. Too much risk, not enough reward.</p>	f	1	490	80	80	f	t	f	Published	2025-04-25 14:04:41.149866	2025-04-25 14:04:41.149866
5	Box Dips	Box Dips	\N	box-dips	\N	\N	f	80	78	78	0	t	f	f	Published	2025-04-25 14:04:41.153216	2025-04-25 14:04:41.153216
7	Dumbbell Incline Chest Flys	Dumbbell Incline Chest Flys	\N	dumbbell-incline-chest-flys			f	1	270	74	0	t	t	f	Published	2025-04-25 14:04:41.158683	2025-04-25 14:04:41.158683
8	Barbell Squat	Barbell Squat	\N	barbell-squat	<h1>Barbell Squat: A Comprehensive Guide</h1>\r\n<p>The barbell squat is a fundamental strength training exercise that targets multiple muscle groups, including the quadriceps, hamstrings, glutes, and lower back. This full-body workout provides numerous benefits, such as increased power, endurance, and stability.</p>\r\n<p>In this guide, you will learn how to set up, perform, and maintain proper technique while doing barbell squats, as well as things to avoid.</p>\r\n<h2>How To Setup:</h2>\r\n<ul>\r\n  <li>Choose the Right Weight: Begin with a light weight and gradually increase the weight as you become more comfortable with the movement.</li>\r\n  <li>Gather Equipment: You will need a barbell, weight plates, and a squat rack for this exercise.</li>\r\n  <li>Adjust the Squat Rack: Ensure the barbell is positioned at a height that allows you to stand with the barbell resting comfortably on your upper traps.</li>\r\n  <li>Load the Barbell: Add weight plates to the barbell using collars to secure the weights in place.</li>\r\n  <li>Position Your Feet: Stand with your feet shoulder-width apart, facing forward.</li>\r\n  <li>Grip the Barbell: Grasp the barbell with both hands, using a grip that is slightly wider than shoulder-width.</li>\r\n</ul>\r\n<h2>How To Perform:</h2>\r\n<ul>\r\n  <li>Stand with your feet shoulder-width apart and the barbell resting on your upper traps.</li>\r\n  <li>Slowly bend your knees and lower your body, keeping your back straight and your head facing forward.</li>\r\n  <li>Continue lowering your body until your thighs are parallel to the floor, or lower if you are comfortable doing so.</li>\r\n  <li>Pause briefly at the bottom of the squat before pushing back up to the starting position.</li>\r\n  <li>Repeat for the desired number of repetitions.</li>\r\n</ul>\r\n<h2>Proper Technique:</h2>\r\n<ul>\r\n  <li>Keep Your Back Straight: Maintaining a straight back throughout the exercise helps to prevent injury and engages your lower back muscles.</li>\r\n  <li>Drive Through Your Heels: Focus on pushing through your heels as you rise from the bottom of the squat, keeping your weight over your feet.</li>\r\n  <li>Don’t Let Your Knees Cave Inward: Keep your knees tracking over your toes and avoid letting them cave inward.</li>\r\n  <li>Breathe Properly: Exhale as you push up from the bottom of the squat and inhale as you lower yourself.</li>\r\n  <li>Avoid Rounding Your Shoulders: Keep your shoulders back and avoid rounding them forward as this can place strain on your neck and upper back.</li>\r\n</ul>\r\n<h2>Things to Avoid:</h2>\r\n<ul>\r\n  <li>Using Too Much Weight: Starting with a weight that is too heavy can compromise your form and increase the risk of injury.</li>\r\n  <li>Allowing Your Knees to Collapse Inward: This can place strain on your knee joints and compromise your stability.</li>\r\n  <li>Arching Your Lower Back: This can cause lower back pain and injury.</li>\r\n  <li>Rounding Your Shoulders: Keep your shoulders back and avoid rounding them forward as this can place strain on your neck and upper back.</li>\r\n  <li>Bouncing Out of the Bottom Position: Avoid bouncing out of the bottom position, as this can reduce the effectiveness of the exercise and increase the risk of injury.</li>\r\n  <li>Not Maintaining Proper Foot Position: Ensure your feet remain flat on the ground throughout the exercise, as elevating your heels or toes can impact your balance and stability.</li>\r\n</ul>	<h1>Barbell Squat: A Comprehensive Guide</h1>\r\n<p>The barbell squat is a fundamental strength training exercise that targets multiple muscle groups, including the quadriceps, hamstrings, glutes, and lower back. This full-body workout provides numerous benefits, such as increased power, endurance, and stability.</p>\r\n<p>In this guide, you will learn how to set up, perform, and maintain proper technique while doing barbell squats, as well as things to avoid.</p>\r\n<h2>How To Setup:</h2>\r\n<ul>\r\n  <li>Choose the Right Weight: Begin with a light weight and gradually increase the weight as you become more comfortable with the movement.</li>\r\n  <li>Gather Equipment: You will need a barbell, weight plates, and a squat rack for this exercise.</li>\r\n  <li>Adjust the Squat Rack: Ensure the barbell is positioned at a height that allows you to stand with the barbell resting comfortably on your upper traps.</li>\r\n  <li>Load the Barbell: Add weight plates to the barbell using collars to secure the weights in place.</li>\r\n  <li>Position Your Feet: Stand with your feet shoulder-width apart, facing forward.</li>\r\n  <li>Grip the Barbell: Grasp the barbell with both hands, using a grip that is slightly wider than shoulder-width.</li>\r\n</ul>\r\n<h2>How To Perform:</h2>\r\n<ul>\r\n  <li>Stand with your feet shoulder-width apart and the barbell resting on your upper traps.</li>\r\n  <li>Slowly bend your knees and lower your body, keeping your back straight and your head facing forward.</li>\r\n  <li>Continue lowering your body until your thighs are parallel to the floor, or lower if you are comfortable doing so.</li>\r\n  <li>Pause briefly at the bottom of the squat before pushing back up to the starting position.</li>\r\n  <li>Repeat for the desired number of repetitions.</li>\r\n</ul>\r\n<h2>Proper Technique:</h2>\r\n<ul>\r\n  <li>Keep Your Back Straight: Maintaining a straight back throughout the exercise helps to prevent injury and engages your lower back muscles.</li>\r\n  <li>Drive Through Your Heels: Focus on pushing through your heels as you rise from the bottom of the squat, keeping your weight over your feet.</li>\r\n  <li>Don’t Let Your Knees Cave Inward: Keep your knees tracking over your toes and avoid letting them cave inward.</li>\r\n  <li>Breathe Properly: Exhale as you push up from the bottom of the squat and inhale as you lower yourself.</li>\r\n  <li>Avoid Rounding Your Shoulders: Keep your shoulders back and avoid rounding them forward as this can place strain on your neck and upper back.</li>\r\n</ul>\r\n<h2>Things to Avoid:</h2>\r\n<ul>\r\n  <li>Using Too Much Weight: Starting with a weight that is too heavy can compromise your form and increase the risk of injury.</li>\r\n  <li>Allowing Your Knees to Collapse Inward: This can place strain on your knee joints and compromise your stability.</li>\r\n  <li>Arching Your Lower Back: This can cause lower back pain and injury.</li>\r\n  <li>Rounding Your Shoulders: Keep your shoulders back and avoid rounding them forward as this can place strain on your neck and upper back.</li>\r\n  <li>Bouncing Out of the Bottom Position: Avoid bouncing out of the bottom position, as this can reduce the effectiveness of the exercise and increase the risk of injury.</li>\r\n  <li>Not Maintaining Proper Foot Position: Ensure your feet remain flat on the ground throughout the exercise, as elevating your heels or toes can impact your balance and stability.</li>\r\n</ul>	f	110	500	82	90	f	t	f	Published	2025-04-25 14:04:41.161206	2025-04-25 14:04:41.161206
9	Machine Leg Press	Machine Leg Press	\N	machine-leg-press	\N	\N	f	1	260	80	0	f	t	f	Published	2025-04-25 14:04:41.165934	2025-04-25 14:04:41.165934
10	Machine Leg Extension	Machine Leg Extension	\N	machine-leg-extension	\N	\N	f	1	360	140	0	f	t	f	Published	2025-04-25 14:04:41.168615	2025-04-25 14:04:41.168615
11	Dumbbell Goblet Squat	Dumbbell Goblet Squat	\N	dumbbell-goblet-squat	\N	\N	f	1	420	58	0	t	t	f	Published	2025-04-25 14:04:41.170028	2025-04-25 14:04:41.170028
75	Kettlebell Single Leg Glute Bridge	Kettlebell Single Leg Glute Bridge	\N	kettlebell-single-leg-glute-bridge	\N	\N	f	1	28	28	0	f	f	f	Published	2025-04-25 14:04:41.253187	2025-04-25 14:04:41.253187
76	Kettlebell Hip Thrust	Kettlebell Hip Thrust	\N	kettlebell-hip-thrust			f	1	37	37	0	f	f	f	Published	2025-04-25 14:04:41.253888	2025-04-25 14:04:41.253888
77	Kettlebell Single Leg Hip Thrust	Kettlebell Single Leg Hip Thrust	\N	kettlebell-single-leg-hip-thrust			f	1	26	26	0	f	f	f	Published	2025-04-25 14:04:41.254729	2025-04-25 14:04:41.254729
78	Kettlebell Deadlift (Single)	Kettlebell Deadlift (Single)	\N	kettlebell-deadlift-single	\N	\N	f	22	22	22	0	f	f	f	Published	2025-04-25 14:04:41.255322	2025-04-25 14:04:41.255322
79	Kettlebell Swing	Kettlebell Swing	\N	kettlebell-swing	\N	\N	f	230	230	34	0	f	t	f	Published	2025-04-25 14:04:41.256144	2025-04-25 14:04:41.256144
80	Kettlebell Row (Single)	Kettlebell Row (Single)	\N	kettlebell-row-single	\N	\N	f	25	25	25	0	f	f	f	Published	2025-04-25 14:04:41.256917	2025-04-25 14:04:41.256917
81	Kettlebell Single Leg Deadlift	Kettlebell Single Leg Deadlift	\N	kettlebell-single-leg-deadlift	\N	\N	f	1	33	33	0	f	f	f	Published	2025-04-25 14:04:41.257837	2025-04-25 14:04:41.257837
82	Kettlebell Shoulder Extension	Kettlebell Shoulder Extension	\N	kettlebell-shoulder-extension			f	3	3	3	0	f	f	f	Published	2025-04-25 14:04:41.258598	2025-04-25 14:04:41.258598
509	Band Hip Adduction	Band Hip Adduction	\N	band-hip-adduction	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.561448	2025-04-25 14:04:41.561448
12	Dumbbell Seated Shrug	Dumbbell Seated Shrug	\N	dumbbell-seated-shrug	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Seated Shrug</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-627774cb-7fff-38e2-c50d-2e4afb554689"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab two dumbbells and sit at the edge of either a bench or box. Bring your legs relatively close together, so they are out of the way of the dumbbells.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Use the cue, "superman chest." Imagine you have the Superman logo on your chest and show it off. This will open your chest and force you to sit tall while pulling your shoulder blades back.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Let your arms be in a dead hang position.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing the Seated Shrug</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pull your shoulder joint straight up toward the ceiling. Get your shoulders as high as you can. You should feel your traps contract very hard when you have hit an adequate range of motion. From this point, begin to drop your shoulders back down to the starting position.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Avoid rolling your shoulders. This is a very common form mistake on shrugs. The upper portion of the traps elevates the scapula, while the mid and lower traps, retract and depress the scapula. However, when you are in a seated or standing position the dumbbells will be pulling downward (because of gravity) so scapular elevation is the only anatomical function being performed against resistance. Therefore, retracting and depressing the scapula on each rep (rolling the shoulders) will not recruit your mid and lower traps. You would need a different exercise for that.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Also, pay particular attention to your neck. It is also very common to push one's head forward when performing a shrug. This can put unnecessary stress on your neck and cervical spine. Keep your chin pulled back and your head in a neutral position.</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Seated Shrug</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-627774cb-7fff-38e2-c50d-2e4afb554689"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab two dumbbells and sit at the edge of either a bench or box. Bring your legs relatively close together, so they are out of the way of the dumbbells.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Use the cue, "superman chest." Imagine you have the Superman logo on your chest and show it off. This will open your chest and force you to sit tall while pulling your shoulder blades back.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Let your arms be in a dead hang position.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing the Seated Shrug</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pull your shoulder joint straight up toward the ceiling. Get your shoulders as high as you can. You should feel your traps contract very hard when you have hit an adequate range of motion. From this point, begin to drop your shoulders back down to the starting position.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Avoid rolling your shoulders. This is a very common form mistake on shrugs. The upper portion of the traps elevates the scapula, while the mid and lower traps, retract and depress the scapula. However, when you are in a seated or standing position the dumbbells will be pulling downward (because of gravity) so scapular elevation is the only anatomical function being performed against resistance. Therefore, retracting and depressing the scapula on each rep (rolling the shoulders) will not recruit your mid and lower traps. You would need a different exercise for that.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Also, pay particular attention to your neck. It is also very common to push one's head forward when performing a shrug. This can put unnecessary stress on your neck and cervical spine. Keep your chin pulled back and your head in a neutral position.</span></p>	f	80	200	76	0	t	t	f	Published	2025-04-25 14:04:41.172308	2025-04-25 14:04:41.172308
16	Dumbbell Seated Overhead Tricep Extension	Dumbbell Seated Overhead Tricep Extension	\N	dumbbell-seated-overhead-tricep-extension			f	1	5	5	0	f	f	f	Published	2025-04-25 14:04:41.174553	2025-04-25 14:04:41.174553
17	Machine Cable V Bar Push Downs	Machine Cable V Bar Push Downs	\N	machine-cable-v-bar-push-downs			f	1	80	80	0	f	f	f	Published	2025-04-25 14:04:41.175743	2025-04-25 14:04:41.175743
18	Bench Dips	Bench Dips	\N	bench-dips	\N	\N	f	90	260	9	0	t	t	f	Published	2025-04-25 14:04:41.177429	2025-04-25 14:04:41.177429
20	Dumbbell Lateral Raise	Dumbbell Lateral Raise	\N	dumbbell-lateral-raise	\N	\N	f	70	76	85	0	f	f	f	Published	2025-04-25 14:04:41.179817	2025-04-25 14:04:41.179817
21	Dumbbell Rear Delt Fly	Dumbbell Rear Delt Fly	\N	dumbbell-rear-delt-fly	\N	\N	f	100	68	68	0	f	f	f	Published	2025-04-25 14:04:41.182563	2025-04-25 14:04:41.182563
22	Cable Rope Face Pulls	Cable Rope Face Pulls	\N	machine-face-pulls	\N	\N	f	1	240	72	0	f	t	f	Published	2025-04-25 14:04:41.184693	2025-04-25 14:04:41.184693
23	Machine Pulldown	Machine Pulldown	\N	machine-pulldown	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Pulldown</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-c37ebc67-7fff-814e-9328-58180203681c"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">First, adjust the thigh pad to a position that works well with your height. You should be able to put your legs under the thigh pad fully, but it should be low enough to keep you glued to the chair.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">There are several grips you can use on a pull down.&nbsp; In our demo video, we are doing a wide grip overhand pull down, so these instructions will be for that variation in particular.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Take an overhand grip just outside the part of the bar that bends downward. You can either use a thumbed or thumbless grip.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Hold on tight to the weight and sit straight down throwing your legs underneath the thigh pad.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Before you start the rep, make sure your elbows are in a fully extended position. Your ears should be between your biceps. As you initiate the pull, lean back slightly. Imagine you are trying to pull your elbows in toward your rib cage, and not just downward. The bar should land between your collarbone and nipple line.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have tapped your chest begin the eccentric. Control the weight on the way back up. The rep will end with your elbows returning to their fully extended position.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Be careful about cheating on this exercise. It is very easy (and very common) to use momentum on this exercise. If you are using some body English and jerking the weight to get it from point A to point B and the weight is too heavy. Try going lighter and controlling during both the concentric and eccentric.</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Pulldown</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-c37ebc67-7fff-814e-9328-58180203681c"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">First, adjust the thigh pad to a position that works well with your height. You should be able to put your legs under the thigh pad fully, but it should be low enough to keep you glued to the chair.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">There are several grips you can use on a pull down.&nbsp; In our demo video, we are doing a wide grip overhand pull down, so these instructions will be for that variation in particular.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Take an overhand grip just outside the part of the bar that bends downward. You can either use a thumbed or thumbless grip.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Hold on tight to the weight and sit straight down throwing your legs underneath the thigh pad.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Before you start the rep, make sure your elbows are in a fully extended position. Your ears should be between your biceps. As you initiate the pull, lean back slightly. Imagine you are trying to pull your elbows in toward your rib cage, and not just downward. The bar should land between your collarbone and nipple line.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have tapped your chest begin the eccentric. Control the weight on the way back up. The rep will end with your elbows returning to their fully extended position.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Be careful about cheating on this exercise. It is very easy (and very common) to use momentum on this exercise. If you are using some body English and jerking the weight to get it from point A to point B and the weight is too heavy. Try going lighter and controlling during both the concentric and eccentric.</span></p>	f	250	250	78	0	f	t	f	Published	2025-04-25 14:04:41.186471	2025-04-25 14:04:41.186471
24	Machine Seated Cable Row	Machine Seated Cable Row	\N	machine-seated-cable-row	\N	\N	f	240	240	72	0	f	t	f	Published	2025-04-25 14:04:41.188632	2025-04-25 14:04:41.188632
25	Pull Ups	Pull Ups	\N	pull-ups	<p><b><span style="font-size: 36px;">How To Perform The Pull Up</span></b></p><p><b><span style="font-size: 24px;">Setup</span></b></p><p>Grab the Pull Up bar with an overhand grip. If you get wrist pain from gripping a Pull Up bar, try using a thumbless grip. It won't affect your grip strength too much, but will give your wrists a little more room to move. Also, make sure the bars are set very deeply in your hand. Your palms should be making contact with the bar.&nbsp;</p><p>Next, if you are using a bench or box to reach the Pull Up bars, step off of the step, and hold for a second, in a dead hang position. If you begin initiating the Pull Up before the dead hang, you might swing too much to perform a proper strict Pull Up. If you can reach the Pull Up bars without having to stand on anything, take your grip and then pull your feet slightly off the floor. Still hold for a second to prevent any swinging from happening.</p><p>Pull your shoulder blades down. This will engage your mid and lower traps and force your lats to do most of the work. Also, before beginning the first rep, make sure your elbows are extended.</p><p><b>Lower body</b></p><p>Angle your legs forward slightly, push your hips back, and point your toes. This will force you to flex your abdominals and keep you more stable throughout the rep. (This will massively help you keep the reps strict).</p><p><b><span style="font-size: 24px;">Performing</span></b></p><p>Once you are in the proper position, begin to pull. Imagine trying to pull your elbows not just down, but inward toward your spine. This cue will help you engage one of the lats’ more overlooked functions, vertical adduction.&nbsp;</p><p>Get your chin over the bar before beginning the eccentric portion of the rap. Your elbows should fully extend at the bottom of each rep.</p><p><b><span style="font-size: 24px;">Step by Step Progression</span></b></p><p>The Pull Up can be a difficult exercise to know when to progress. There's also the question of how to progress the Pull Up.&nbsp;</p><p>Decide on a rep range. For example, 6 to 10. Once you are able to perform 10 reps with strict form, then it is time to progress. Do not be shy or hesitant to start adding weight to your Pull Up early on. Even if it is only 5 pounds. Progress is progress! From there, progress the Pull Up, like it would any other exercise. Once you hit the top end of the rep range, add some more weight.</p><p>The best way to get better at doing Pull Ups is to do Pull Ups. But if you can't do them in the first place, then what should you do?&nbsp;</p><ol><li>Try the Chin Up. It’s an easier variation because the biceps are much more involved. I suggest you start with that variation if you don't have much experience doing Pull Ups.&nbsp;</li><li>Shorten the range of motion, and try to get a longer range of motion overtime. if you can only do half a Pull Up (meaning you can get your elbows to roughly 90°) don't be ashamed to do those half reps. Set a rep range like with anything else. We will use 5 to 8 reps for this example. Once you are able to hit 8/2 Pull Ups, cut the reps down to five and try to go an extra 2 to 3 inches higher on each rep. It helps massively if you can do this in front of a mirror to keep a very close eye on your range of motion. Before long you'll be able to perform full reps.</li></ol>	<p><b><span style="font-size: 36px;">How To Perform The Pull Up</span></b></p><p><b><span style="font-size: 24px;">Setup</span></b></p><p>Grab the Pull Up bar with an overhand grip. If you get wrist pain from gripping a Pull Up bar, try using a thumbless grip. It won't affect your grip strength too much, but will give your wrists a little more room to move. Also, make sure the bars are set very deeply in your hand. Your palms should be making contact with the bar.&nbsp;</p><p>Next, if you are using a bench or box to reach the Pull Up bars, step off of the step, and hold for a second, in a dead hang position. If you begin initiating the Pull Up before the dead hang, you might swing too much to perform a proper strict Pull Up. If you can reach the Pull Up bars without having to stand on anything, take your grip and then pull your feet slightly off the floor. Still hold for a second to prevent any swinging from happening.</p><p>Pull your shoulder blades down. This will engage your mid and lower traps and force your lats to do most of the work. Also, before beginning the first rep, make sure your elbows are extended.</p><p><b>Lower body</b></p><p>Angle your legs forward slightly, push your hips back, and point your toes. This will force you to flex your abdominals and keep you more stable throughout the rep. (This will massively help you keep the reps strict).</p><p><b><span style="font-size: 24px;">Performing</span></b></p><p>Once you are in the proper position, begin to pull. Imagine trying to pull your elbows not just down, but inward toward your spine. This cue will help you engage one of the lats’ more overlooked functions, vertical adduction.&nbsp;</p><p>Get your chin over the bar before beginning the eccentric portion of the rap. Your elbows should fully extend at the bottom of each rep.</p><p><b><span style="font-size: 24px;">Step by Step Progression</span></b></p><p>The Pull Up can be a difficult exercise to know when to progress. There's also the question of how to progress the Pull Up.&nbsp;</p><p>Decide on a rep range. For example, 6 to 10. Once you are able to perform 10 reps with strict form, then it is time to progress. Do not be shy or hesitant to start adding weight to your Pull Up early on. Even if it is only 5 pounds. Progress is progress! From there, progress the Pull Up, like it would any other exercise. Once you hit the top end of the rep range, add some more weight.</p><p>The best way to get better at doing Pull Ups is to do Pull Ups. But if you can't do them in the first place, then what should you do?&nbsp;</p><ol><li>Try the Chin Up. It’s an easier variation because the biceps are much more involved. I suggest you start with that variation if you don't have much experience doing Pull Ups.&nbsp;</li><li>Shorten the range of motion, and try to get a longer range of motion overtime. if you can only do half a Pull Up (meaning you can get your elbows to roughly 90°) don't be ashamed to do those half reps. Set a rep range like with anything else. We will use 5 to 8 reps for this example. Once you are able to hit 8/2 Pull Ups, cut the reps down to five and try to go an extra 2 to 3 inches higher on each rep. It helps massively if you can do this in front of a mirror to keep a very close eye on your range of motion. Before long you'll be able to perform full reps.</li></ol>	f	310	400	80	0	t	t	f	Published	2025-04-25 14:04:41.19067	2025-04-25 14:04:41.19067
26	Dumbbell Row Bilateral	Dumbbell Row Bilateral	\N	dumbbell-row-bilateral			f	74	74	74	0	f	f	f	Published	2025-04-25 14:04:41.19251	2025-04-25 14:04:41.19251
27	Barbell Stiff Leg Deadlifts	Barbell Stiff Leg Deadlifts	\N	barbell-stiff-leg-deadlifts	<div><b><span style="font-size: 36px;">How To Perform The Stiff Leg Deadlift</span></b></div><div><b><span style="font-size: 24px;"><br></span></b></div><div><b><span style="font-size: 24px;">Setup</span></b></div><div><br></div><div><br></div><div><span id="docs-internal-guid-a2f5c8e3-7fff-b5a3-3fef-b9fee4e43c11"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">The Stiff Leg Deadlift, unlike other deadlift variations, begins and ends in the standing position. So you need to begin the exercise a little bit differently than you would the other deadlift variations.</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">There are a few ways to set up for the stiff leg deadlift.</span></p><ol style="margin-bottom: 0px; padding-inline-start: 48px;"><li dir="ltr" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Set the safety bars or hooks in a squat rack just below knee height. From here, you will squat the bar up and out of the safeties. Take a couple of steps back and then initiate the set.</span></p></li><li dir="ltr" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Start from the floor. Perform a standard conventional deadlift to get the weight into the starting position.</span></p></li></ol><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Once you have chosen one of those two ways, and gotten into the starting standing position we can continue the rest of the set up.&nbsp;&nbsp;</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Use a shoulder width stance with your toes facing forward. Either a double overhand or mixed grip is OK. There is some risk with the mixed grip variation. On very rare occasions a lifter will pull their bicep on the arm with the underhand grip. So be careful.</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">You want to avoid doing any shrugging of the barbell. This is a posterior chain movement not a trap movement.&nbsp;</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Begin the set by pushing your hips straight back. Your knees should stay mostly extended during the set. You can have a slight bend in the knees, but only slight. As you push your hips back, imagine trying to push your hips upwards towards the ceiling as well. This will help you keep your knees in a more extended position.</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">The Stiff Leg Deadlift is a movement that does something unique. It lengthens the hamstring under a load. During a Stiff Leg Deadlift the tension is at its highest when your hamstring is at its most lengthened position (90° at the hips with extended knees). Therefore, the most important part of this exercise is feeling the stretch in your hamstring on each trip.&nbsp;</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">You can also use this to dictate your range of motion. Some people will be able to go all the way to the floor while maintaining a flat back. While others will only be able to get to a 90° hip angle. A rare person with hypermobile hips may even need to consider a Deficit Stiff Leg Deadlift. In which they stand on a platform, letting them go even lower than the barbell and plates would allow for. Again, look for the stretch on each rep and use that feeling to dictate when you initiate the concentric portion of the movement. When you feel the stretch, time to come back up.</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">It's of the utmost importance you keep a flat back so you do not put any unnecessary stress on your lumbar spine. This does not mean you will not feel this exercise in your lower back. The opposite is true. You can and most likely will feel the Stiff Leg Deadlift working your lumbar spine. This does not mean you are doing anything wrong. The lower back has muscles just like everywhere else in your body. These muscles can also fill with blood giving you a pump in your lower back. Unlike having a pump on your biceps or pecs, a pump in your lower back is very uncomfortable because the spinal erectors swell and begin to press into your lumbar spine. Again, this does not mean you were doing anything wrong. You can even expect some soreness in your lower back after performing this movement</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">The concentric portion of this movement is relatively simple. Just go to a standing position to complete the rep. Do not force your hips all the way forward as this will hyperextend your lumbar spine. Hyperextension is just as dangerous as hyperflexion.&nbsp;</span></p><div><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></div></span></div>	<div><b><span style="font-size: 36px;">How To Perform The Stiff Leg Deadlift</span></b></div><div><b><span style="font-size: 24px;"><br></span></b></div><div><b><span style="font-size: 24px;">Setup</span></b></div><div><br></div><div><br></div><div><span id="docs-internal-guid-a2f5c8e3-7fff-b5a3-3fef-b9fee4e43c11"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">The Stiff Leg Deadlift, unlike other deadlift variations, begins and ends in the standing position. So you need to begin the exercise a little bit differently than you would the other deadlift variations.</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">There are a few ways to set up for the stiff leg deadlift.</span></p><ol style="margin-bottom: 0px; padding-inline-start: 48px;"><li dir="ltr" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Set the safety bars or hooks in a squat rack just below knee height. From here, you will squat the bar up and out of the safeties. Take a couple of steps back and then initiate the set.</span></p></li><li dir="ltr" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Start from the floor. Perform a standard conventional deadlift to get the weight into the starting position.</span></p></li></ol><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Once you have chosen one of those two ways, and gotten into the starting standing position we can continue the rest of the set up.&nbsp;&nbsp;</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Use a shoulder width stance with your toes facing forward. Either a double overhand or mixed grip is OK. There is some risk with the mixed grip variation. On very rare occasions a lifter will pull their bicep on the arm with the underhand grip. So be careful.</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">You want to avoid doing any shrugging of the barbell. This is a posterior chain movement not a trap movement.&nbsp;</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Begin the set by pushing your hips straight back. Your knees should stay mostly extended during the set. You can have a slight bend in the knees, but only slight. As you push your hips back, imagine trying to push your hips upwards towards the ceiling as well. This will help you keep your knees in a more extended position.</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">The Stiff Leg Deadlift is a movement that does something unique. It lengthens the hamstring under a load. During a Stiff Leg Deadlift the tension is at its highest when your hamstring is at its most lengthened position (90° at the hips with extended knees). Therefore, the most important part of this exercise is feeling the stretch in your hamstring on each trip.&nbsp;</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">You can also use this to dictate your range of motion. Some people will be able to go all the way to the floor while maintaining a flat back. While others will only be able to get to a 90° hip angle. A rare person with hypermobile hips may even need to consider a Deficit Stiff Leg Deadlift. In which they stand on a platform, letting them go even lower than the barbell and plates would allow for. Again, look for the stretch on each rep and use that feeling to dictate when you initiate the concentric portion of the movement. When you feel the stretch, time to come back up.</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">It's of the utmost importance you keep a flat back so you do not put any unnecessary stress on your lumbar spine. This does not mean you will not feel this exercise in your lower back. The opposite is true. You can and most likely will feel the Stiff Leg Deadlift working your lumbar spine. This does not mean you are doing anything wrong. The lower back has muscles just like everywhere else in your body. These muscles can also fill with blood giving you a pump in your lower back. Unlike having a pump on your biceps or pecs, a pump in your lower back is very uncomfortable because the spinal erectors swell and begin to press into your lumbar spine. Again, this does not mean you were doing anything wrong. You can even expect some soreness in your lower back after performing this movement</span></p><br><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">The concentric portion of this movement is relatively simple. Just go to a standing position to complete the rep. Do not force your hips all the way forward as this will hyperextend your lumbar spine. Hyperextension is just as dangerous as hyperflexion.&nbsp;</span></p><div><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></div></span></div>	f	100	480	72	82	t	t	f	Published	2025-04-25 14:04:41.194419	2025-04-25 14:04:41.194419
28	Machine Hamstring Curl	Machine Hamstring Curl	\N	machine-hamstring-curl			f	90	370	100	0	f	t	f	Published	2025-04-25 14:04:41.197656	2025-04-25 14:04:41.197656
29	Glute Bridge	Glute Bridge	\N	glute-bridge			f	1	15	15	0	f	f	f	Published	2025-04-25 14:04:41.19915	2025-04-25 14:04:41.19915
30	Barbell Hip Thrust	Barbell Hip Thrust	\N	barbell-hip-thrust	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 24px; white-space: pre-wrap;"><b>Barbell Hip thrust Detailed How To:</b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab a box, (or a bench) that is roughly 18 to 24 inches in height. Grab some type of pad to go between your hips and the barbell. Getting the bar into place can be challenging depending on what you have access to.&nbsp;</span></p><ul style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">If you've got access to a weighted barbell like in our demo video, either place the bar on your hips while seated on the box or bench and slide down until your shoulder blades are at the edge of the box. Or, slide into position, with the bar standing vertically next to you, then carefully tip the bar over you and onto your hips.&nbsp;</span></p></li><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">If you have plates that roll on the bar, it becomes a lot easier. In that instance, just roll the bar into place over your hips.&nbsp;</span></p></li><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">If you have the 12 sided plates (most gyms will have these), it's a lot more challenging. You'll have to get the bar as close to straight over your hips as you can and then scoot into position.&nbsp;</span></p></li></ul><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have the bar in place on your hip bones, take your stance. Your feet should be about shoulder width apart, and toes facing forward. You don't want your feet too far forward or back. If your feet are too far forward, it will shorten the range of motion. If your feet are too far back you will turn the hip thrust into more of a quadricep movement.&nbsp;</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-9fe5e4b8-7fff-164c-3774-f880bbca5b54"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have your stance, grab the bar with either a double overhand or mixed grip. Your hands should only be keeping the bar in place as you perform the movement. Make sure your shoulder blades are pulled back and dug into the box. Now we initiate the hip thrust.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing The Barbell Hip thrust</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Force your hips as high as you can. Hip Thrust variations do something no other glute movements do. The tension is at its highest at the top of the movement when the glutes are in their contracted or shortened position. Therefore, the most important part of the hip thrust is the very top end of the range of motion. You will know you're in the right spot when you feel your glutes contract really hard.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">There is no need to touch your butt or the plates all the way back to the floor on each rep. Just go as low as you can without touching the plates back down to the floor. This will keep tension on your glutes.</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 24px; white-space: pre-wrap;"><b>Barbell Hip thrust Detailed How To:</b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab a box, (or a bench) that is roughly 18 to 24 inches in height. Grab some type of pad to go between your hips and the barbell. Getting the bar into place can be challenging depending on what you have access to.&nbsp;</span></p><ul style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">If you've got access to a weighted barbell like in our demo video, either place the bar on your hips while seated on the box or bench and slide down until your shoulder blades are at the edge of the box. Or, slide into position, with the bar standing vertically next to you, then carefully tip the bar over you and onto your hips.&nbsp;</span></p></li><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">If you have plates that roll on the bar, it becomes a lot easier. In that instance, just roll the bar into place over your hips.&nbsp;</span></p></li><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">If you have the 12 sided plates (most gyms will have these), it's a lot more challenging. You'll have to get the bar as close to straight over your hips as you can and then scoot into position.&nbsp;</span></p></li></ul><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have the bar in place on your hip bones, take your stance. Your feet should be about shoulder width apart, and toes facing forward. You don't want your feet too far forward or back. If your feet are too far forward, it will shorten the range of motion. If your feet are too far back you will turn the hip thrust into more of a quadricep movement.&nbsp;</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-9fe5e4b8-7fff-164c-3774-f880bbca5b54"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have your stance, grab the bar with either a double overhand or mixed grip. Your hands should only be keeping the bar in place as you perform the movement. Make sure your shoulder blades are pulled back and dug into the box. Now we initiate the hip thrust.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing The Barbell Hip thrust</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Force your hips as high as you can. Hip Thrust variations do something no other glute movements do. The tension is at its highest at the top of the movement when the glutes are in their contracted or shortened position. Therefore, the most important part of the hip thrust is the very top end of the range of motion. You will know you're in the right spot when you feel your glutes contract really hard.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">There is no need to touch your butt or the plates all the way back to the floor on each rep. Just go as low as you can without touching the plates back down to the floor. This will keep tension on your glutes.</span></p>	f	120	470	86	85	t	t	f	Published	2025-04-25 14:04:41.200203	2025-04-25 14:04:41.200203
31	Barbell Behind The Back Wrist Curl	Barbell Behind The Back Wrist Curl	\N	barbell-behind-the-back-wrist-curl	<p><br></p>\r\n<h1>Barbell Behind The Back Wrist Curl: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell that is appropriate for your current level of strength</li>\r\n  <li>Stand with your feet shoulder-width apart and your knees slightly bent</li>\r\n  <li>Grasp the barbell with both hands and hold it behind your back</li>\r\n  <li>Make sure your elbows are straight and your palms are facing downwards</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Keeping your elbows straight, slowly lift the barbell towards your wrist</li>\r\n  <li>Exhale as you lift the weight</li>\r\n  <li>Pause for a moment at the top of the movement</li>\r\n  <li>Slowly lower the barbell back to the starting position, inhaling as you do so</li>\r\n  <li>Repeat for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Make sure to keep your elbows straight throughout the entire movement</li>\r\n  <li>Do not allow your shoulders to shrug during the exercise</li>\r\n  <li>Keep your wrists in a neutral position, not letting them rotate during the movement</li>\r\n  <li>Focus on using only your wrist muscles to lift the weight, not your arms or shoulders</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using a weight that is too heavy for your current strength level</li>\r\n  <li>Allowing your elbows to bend during the movement</li>\r\n  <li>Shrugging your shoulders during the exercise</li>\r\n  <li>Letting your wrists rotate during the movement</li>\r\n  <li>Rushing through the exercise, instead focus on controlled movements</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Behind The Back Wrist Curl: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell that is appropriate for your current level of strength</li>\r\n  <li>Stand with your feet shoulder-width apart and your knees slightly bent</li>\r\n  <li>Grasp the barbell with both hands and hold it behind your back</li>\r\n  <li>Make sure your elbows are straight and your palms are facing downwards</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Keeping your elbows straight, slowly lift the barbell towards your wrist</li>\r\n  <li>Exhale as you lift the weight</li>\r\n  <li>Pause for a moment at the top of the movement</li>\r\n  <li>Slowly lower the barbell back to the starting position, inhaling as you do so</li>\r\n  <li>Repeat for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Make sure to keep your elbows straight throughout the entire movement</li>\r\n  <li>Do not allow your shoulders to shrug during the exercise</li>\r\n  <li>Keep your wrists in a neutral position, not letting them rotate during the movement</li>\r\n  <li>Focus on using only your wrist muscles to lift the weight, not your arms or shoulders</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using a weight that is too heavy for your current strength level</li>\r\n  <li>Allowing your elbows to bend during the movement</li>\r\n  <li>Shrugging your shoulders during the exercise</li>\r\n  <li>Letting your wrists rotate during the movement</li>\r\n  <li>Rushing through the exercise, instead focus on controlled movements</li>\r\n</ul>	f	105	74	74	0	f	f	f	Published	2025-04-25 14:04:41.201879	2025-04-25 14:04:41.201879
83	Kettlebell Staggered Deadlift (Single)	Kettlebell Staggered Deadlift (Single)	\N	kettlebell-staggered-deadlift-single	\N	\N	f	35	35	35	0	f	f	f	Published	2025-04-25 14:04:41.259327	2025-04-25 14:04:41.259327
84	Kettlebell Goblet Good Morning	Kettlebell Goblet Good Morning	\N	kettlebell-goblet-good-morning	\N	\N	f	33	33	33	0	t	f	f	Published	2025-04-25 14:04:41.260304	2025-04-25 14:04:41.260304
32	Dumbbell Wrist Curl	Dumbbell Wrist Curl	\N	dumbbell-wrist-curl	<p><b><span style="font-size: 36px;">How To Perform The Dumbbell Wrist Curl</span></b></p><p><b><span style="font-size: 24px;">Setup</span></b></p><p>You will need a box or a bench. You can either take a seated position (like in our demo video), or a kneeling position.&nbsp;</p><ul><li>In the seated position, put your feet shoulder width, and drape your forearms over your knees.&nbsp;</li><li>In a kneeling position, drape your forearms over the edge of the box, or a bench. Your forearms should be far enough off the box or bench that you can fully flex your wrist at the bottom of the range of motion.</li></ul><p><br></p><p><b><span style="font-size: 24px;">Performing</span></b></p><p>Let the dumbbells fully extend your wrists before initiating the concentric. Flex your wrists and point your fists up towards the ceiling as high as you possibly can. You should feel the forearm muscles on the bottom of your arm contract really hard. Make sure to focus on the range of motion with this exercise. It can be very easy to begin doing partial range of motion reps on this exercise. Like any other exercise, when you can no longer perform the adequate range of motion end the set&nbsp;</p>	<p><b><span style="font-size: 36px;">How To Perform The Dumbbell Wrist Curl</span></b></p><p><b><span style="font-size: 24px;">Setup</span></b></p><p>You will need a box or a bench. You can either take a seated position (like in our demo video), or a kneeling position.&nbsp;</p><ul><li>In the seated position, put your feet shoulder width, and drape your forearms over your knees.&nbsp;</li><li>In a kneeling position, drape your forearms over the edge of the box, or a bench. Your forearms should be far enough off the box or bench that you can fully flex your wrist at the bottom of the range of motion.</li></ul><p><br></p><p><b><span style="font-size: 24px;">Performing</span></b></p><p>Let the dumbbells fully extend your wrists before initiating the concentric. Flex your wrists and point your fists up towards the ceiling as high as you possibly can. You should feel the forearm muscles on the bottom of your arm contract really hard. Make sure to focus on the range of motion with this exercise. It can be very easy to begin doing partial range of motion reps on this exercise. Like any other exercise, when you can no longer perform the adequate range of motion end the set&nbsp;</p>	f	110	200	77	0	t	t	f	Published	2025-04-25 14:04:41.203441	2025-04-25 14:04:41.203441
33	Machine Standing Calf Raises	Machine Standing Calf Raises	\N	machine-standing-calf-raises	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Use The Standing Calve Raise Machine</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-44b2b53c-7fff-5dc0-2543-2a387f7f995f"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Adjust the height of the shoulder pads to where you have to do a miniature squat to get the weight in position to begin the set. This will help you get a longer range of motion.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Place the balls of your feet on the edge of the platform and perform your mini squat to start the set.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;The Standing Calve Raise</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Let the weight fully flex your ankles and look for what feels like a stretch in your calves at the bottom of each rep. Spend an extra second in this stretched position. There is some indication that stretching a muscle while under a load is great for muscle growth.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Then initiate the concentric. Extend your ankles to the degree that your range of motion allows for. Imagine you have a string on both heels being pulled directly up toward the ceiling. When you have gone high enough, you should feel your calves contract hard. Spend an extra second in this contracted position before beginning the eccentric.</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Use The Standing Calve Raise Machine</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-44b2b53c-7fff-5dc0-2543-2a387f7f995f"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Adjust the height of the shoulder pads to where you have to do a miniature squat to get the weight in position to begin the set. This will help you get a longer range of motion.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Place the balls of your feet on the edge of the platform and perform your mini squat to start the set.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;The Standing Calve Raise</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Let the weight fully flex your ankles and look for what feels like a stretch in your calves at the bottom of each rep. Spend an extra second in this stretched position. There is some indication that stretching a muscle while under a load is great for muscle growth.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Then initiate the concentric. Extend your ankles to the degree that your range of motion allows for. Imagine you have a string on both heels being pulled directly up toward the ceiling. When you have gone high enough, you should feel your calves contract hard. Spend an extra second in this contracted position before beginning the eccentric.</span></p>	f	110	350	101	0	f	t	f	Published	2025-04-25 14:04:41.205087	2025-04-25 14:04:41.205087
34	Machine Seated Calf Raises	Machine Seated Calf Raises	\N	machine-seated-calf-raises			f	100	330	110	0	f	t	f	Published	2025-04-25 14:04:41.206427	2025-04-25 14:04:41.206427
35	Crunches	Crunches	\N	crunches	\N	\N	f	90	250	82	0	t	t	f	Published	2025-04-25 14:04:41.207699	2025-04-25 14:04:41.207699
37	Laying Leg Raises	Laying Leg Raises	\N	laying-leg-raises	\N	\N	f	90	260	81	0	t	t	f	Published	2025-04-25 14:04:41.20919	2025-04-25 14:04:41.20919
39	Barbell Deadlift	Barbell Deadlift	\N	barbell-deadlift	<p><b><span style="font-size: 36px;">Ty's Tips</span></b></p><p><b><span style="font-size: 24px;">My Deadlift, Not Yours</span></b></p><p>The deadlift involves many muscles, all of your limbs, and every load-bearing joint (ankles, knees, hips and shoulders) in your body. There are a lot of variables at play. So having hard-and-fast rules about deadlift form is nearly impossible.</p><p>Your body is your body. That seems like an obvious fact, yet it’s one that’s often overlooked when it comes to form.</p><p>For example, two people who are the same height may have totally different torso and femur lengths.</p><p>A person who has a short torso and long femurs will have a more hip-dominant pull, meaning that their butt will be higher in the air and most of the force will come from their glutes and hamstrings. Meanwhile, a person who has a long torso and short femurs would be able to get lower and involve their quads a bit more.</p><p><span style="font-size: 24px;"><b>Detailed How To</b></span></p><p><b>#1. Your stance<br></b></p><p>Conventional Deadlift Foot Placement: You can start with your feet shoulder-width apart. If you’re not sure where this is, try this: Jump in the air 2-3 times. Where your feet land naturally is the proper stance for the conventional deadlift. Your toes should point forward or outward slightly.</p><p>Set up so that the bar is about an inch to an inch-and-a-half from your shins. When you look down at the bar, it should be positioned right about the middle of your foot, blocking the laces of your shoes from view.</p><p><b>#2. Your grip</b></p><p>Figuring out where to place your hands is quite simple. Just take a shoulder-width grip.</p><p>Choosing how to grip the bar is a little more complicated, and may change throughout your workout. There are three main options:</p><ul><li>Option #1: The double-overhand grip. This is the “best” grip most of the time. As you increase the amount of weight you can deadlift, you’ll eventually reach a weight where your grip strength becomes an issue. That’s when mixed grip comes in…</li><li>Option #2: The mixed grip. Also known as “one overhand, one underhand” grip, this style allows you to pull heavier weights more easily.&nbsp;</li><li>Option #3: The hook grip. This grip is not very popular and for good reason—it hurts, but it’s not without benefits. The idea behind the hook grip is that you can use more weight than a double-overhand grip, since your thumbs act as hooks for the bar. But here’s the thing: Much of the weight ends up pulling on your thumbs. The stress this places on the tissue, bones, and joints of your thumbs does not feel good. One way people attempt to eliminate the grip problem altogether is to use straps.</li></ul><p><b>Executing the Deadlift</b></p><p>You really only need to think about two things when you pull the bar:</p><ol><li>Push off the floor</li><li>Keep everything tight (especially your core and lats)</li></ol><p>During a conventional deadlift, if you are thinking about “pushing the floor away,” it will help you generate tension throughout your hips and knees.</p><p>Keeping your core, arms, and lats engaged will help you avoid rounding your spine, which is dangerous. DO NOT ROUND YOUR SPINE.</p><p>When you reach the top of the rep, known as lockout, be careful</p><p>Some people seem to think that “locking out” means “leaning back,” but nothing could be further from the truth. Doing that hyperextends your knees and spine, which can compress those all-important spinal discs between your vertebrae. DO NOT HYPEREXTEND YOUR SPINE.</p><p>The goal, really, is to just stand up.&nbsp;<br></p>	<p><b><span style="font-size: 36px;">Ty's Tips</span></b></p><p><b><span style="font-size: 24px;">My Deadlift, Not Yours</span></b></p><p>The deadlift involves many muscles, all of your limbs, and every load-bearing joint (ankles, knees, hips and shoulders) in your body. There are a lot of variables at play. So having hard-and-fast rules about deadlift form is nearly impossible.</p><p>Your body is your body. That seems like an obvious fact, yet it’s one that’s often overlooked when it comes to form.</p><p>For example, two people who are the same height may have totally different torso and femur lengths.</p><p>A person who has a short torso and long femurs will have a more hip-dominant pull, meaning that their butt will be higher in the air and most of the force will come from their glutes and hamstrings. Meanwhile, a person who has a long torso and short femurs would be able to get lower and involve their quads a bit more.</p><p><span style="font-size: 24px;"><b>Detailed How To</b></span></p><p><b>#1. Your stance<br></b></p><p>Conventional Deadlift Foot Placement: You can start with your feet shoulder-width apart. If you’re not sure where this is, try this: Jump in the air 2-3 times. Where your feet land naturally is the proper stance for the conventional deadlift. Your toes should point forward or outward slightly.</p><p>Set up so that the bar is about an inch to an inch-and-a-half from your shins. When you look down at the bar, it should be positioned right about the middle of your foot, blocking the laces of your shoes from view.</p><p><b>#2. Your grip</b></p><p>Figuring out where to place your hands is quite simple. Just take a shoulder-width grip.</p><p>Choosing how to grip the bar is a little more complicated, and may change throughout your workout. There are three main options:</p><ul><li>Option #1: The double-overhand grip. This is the “best” grip most of the time. As you increase the amount of weight you can deadlift, you’ll eventually reach a weight where your grip strength becomes an issue. That’s when mixed grip comes in…</li><li>Option #2: The mixed grip. Also known as “one overhand, one underhand” grip, this style allows you to pull heavier weights more easily.&nbsp;</li><li>Option #3: The hook grip. This grip is not very popular and for good reason—it hurts, but it’s not without benefits. The idea behind the hook grip is that you can use more weight than a double-overhand grip, since your thumbs act as hooks for the bar. But here’s the thing: Much of the weight ends up pulling on your thumbs. The stress this places on the tissue, bones, and joints of your thumbs does not feel good. One way people attempt to eliminate the grip problem altogether is to use straps.</li></ul><p><b>Executing the Deadlift</b></p><p>You really only need to think about two things when you pull the bar:</p><ol><li>Push off the floor</li><li>Keep everything tight (especially your core and lats)</li></ol><p>During a conventional deadlift, if you are thinking about “pushing the floor away,” it will help you generate tension throughout your hips and knees.</p><p>Keeping your core, arms, and lats engaged will help you avoid rounding your spine, which is dangerous. DO NOT ROUND YOUR SPINE.</p><p>When you reach the top of the rep, known as lockout, be careful</p><p>Some people seem to think that “locking out” means “leaning back,” but nothing could be further from the truth. Doing that hyperextends your knees and spine, which can compress those all-important spinal discs between your vertebrae. DO NOT HYPEREXTEND YOUR SPINE.</p><p>The goal, really, is to just stand up.&nbsp;<br></p>	f	300	380	82	100	t	t	f	Published	2025-04-25 14:04:41.210595	2025-04-25 14:04:41.210595
40	Machine 45 Degree Back Extension	Machine 45 Degree Back Extension	\N	machine-45-degree-back-extension	\N	\N	f	290	325	50	0	f	t	f	Published	2025-04-25 14:04:41.212485	2025-04-25 14:04:41.212485
42	Bulgarian Split Squat	Bulgarian Split Squat	\N	bulgarian-split-squat	\N	\N	f	1	9	9	0	f	f	f	Published	2025-04-25 14:04:41.213761	2025-04-25 14:04:41.213761
43	Smith Machine Standing Shrugs	Smith Machine Standing Shrugs	\N	smith-machine-standing-shrugs			f	90	260	55	0	f	t	f	Published	2025-04-25 14:04:41.215023	2025-04-25 14:04:41.215023
44	Barbell Laying Triceps Extensions	Barbell Laying Triceps Extensions	\N	barbell-laying-triceps-extensions	<p><br></p>\r\n<h1>Barbell Laying Triceps Extensions: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Lie flat on a bench with your feet firmly planted on the ground and your head and shoulder blades securely on the bench.</li>\r\n  <li>Grab a barbell and lift it over your head with your arms fully extended and your palms facing up.</li>\r\n  <li>Ensure that the barbell is balanced above your chest and not leaning to one side or the other.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Slowly bend your arms and lower the barbell towards your forehead, keeping your elbows close to your head.</li>\r\n  <li>Once you reach the desired depth, pause briefly and then extend your arms back to the starting position, fully extending your triceps.</li>\r\n  <li>Repeat for the desired number of repetitions, making sure to maintain proper form and control throughout the movement.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your shoulders relaxed and avoid shrugging or lifting them towards your ears.</li>\r\n  <li>Maintain a slight arch in your lower back to reduce the risk of injury and increase activation of your triceps.</li>\r\n  <li>Exhale as you extend your arms and inhale as you lower the barbell towards your forehead.</li>\r\n  <li>Focus on engaging your triceps throughout the entire range of motion, from the bottom of the movement to the top.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Bouncing the barbell off your forehead or using momentum to lift the weight.</li>\r\n  <li>Allowing your elbows to flare out to the sides, which can put excessive strain on your shoulder joint.</li>\r\n  <li>Rounding your lower back or arching too much, which can strain your spine and reduce the effectiveness of the exercise.</li>\r\n  <li>Lifting too much weight and compromising form, which can increase the risk of injury and decrease the effectiveness of the exercise.</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Laying Triceps Extensions: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Lie flat on a bench with your feet firmly planted on the ground and your head and shoulder blades securely on the bench.</li>\r\n  <li>Grab a barbell and lift it over your head with your arms fully extended and your palms facing up.</li>\r\n  <li>Ensure that the barbell is balanced above your chest and not leaning to one side or the other.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Slowly bend your arms and lower the barbell towards your forehead, keeping your elbows close to your head.</li>\r\n  <li>Once you reach the desired depth, pause briefly and then extend your arms back to the starting position, fully extending your triceps.</li>\r\n  <li>Repeat for the desired number of repetitions, making sure to maintain proper form and control throughout the movement.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your shoulders relaxed and avoid shrugging or lifting them towards your ears.</li>\r\n  <li>Maintain a slight arch in your lower back to reduce the risk of injury and increase activation of your triceps.</li>\r\n  <li>Exhale as you extend your arms and inhale as you lower the barbell towards your forehead.</li>\r\n  <li>Focus on engaging your triceps throughout the entire range of motion, from the bottom of the movement to the top.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Bouncing the barbell off your forehead or using momentum to lift the weight.</li>\r\n  <li>Allowing your elbows to flare out to the sides, which can put excessive strain on your shoulder joint.</li>\r\n  <li>Rounding your lower back or arching too much, which can strain your spine and reduce the effectiveness of the exercise.</li>\r\n  <li>Lifting too much weight and compromising form, which can increase the risk of injury and decrease the effectiveness of the exercise.</li>\r\n</ul>	f	80	76	76	0	f	f	f	Published	2025-04-25 14:04:41.216377	2025-04-25 14:04:41.216377
45	Dumbbell Seated Overhead Press	Dumbbell Seated Overhead Press	\N	dumbbell-seated-overhead-press	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Seated Dumbbell Overhead Press</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab two dumbbells and set up on an incline or seated bench. Make sure your back is pressed all the way into the vertical pad.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><b style="font-weight:normal;" id="docs-internal-guid-15494c7c-7fff-fe2f-7aba-5146eac59f70"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Flare your elbows out. Your face should be facing the ceiling and your palms facing forward. Also, make sure the dumbbell is set very deeply in your hand so your wrist stays in a strong position for the entire set.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Press the dumbbells up toward the ceiling, fully extending your elbows. Do not hyperextend or lockout your elbows as this is dangerous for those joints. The dumbbells should travel in an arc-like curve. With the dumbbells converging at the top of the ramp. There's no need to touch the dumbbells together at the top, but there's nothing wrong if they do.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">After extending your elbows, begin the eccentric portion of the rep. Make sure your upper arm at least reaches parallel with the ground before initiating the next concentric. If you have the shoulder mobility, you can go all the way to the point the dumbbells tap your shoulders. This may give people with shoulder issues some pain. If it does, cut the range of motion a little shorter.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Make sure your back stays flat against the vertical pad for the entire set. There is a tendency to begin extending the spine when fatiguing on an overhead press. Your nervous system understands that you are stronger pushing horizontally than you are pushing vertically. And so it will begin to point your chest up toward the ceiling to try to involve your pecs. Don't let this happen. A hyperextended spine with a weight pushing straight down from overhead will place a lot of unneeded stress on your lumbar spine.</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Seated Dumbbell Overhead Press</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab two dumbbells and set up on an incline or seated bench. Make sure your back is pressed all the way into the vertical pad.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><b style="font-weight:normal;" id="docs-internal-guid-15494c7c-7fff-fe2f-7aba-5146eac59f70"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Flare your elbows out. Your face should be facing the ceiling and your palms facing forward. Also, make sure the dumbbell is set very deeply in your hand so your wrist stays in a strong position for the entire set.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Press the dumbbells up toward the ceiling, fully extending your elbows. Do not hyperextend or lockout your elbows as this is dangerous for those joints. The dumbbells should travel in an arc-like curve. With the dumbbells converging at the top of the ramp. There's no need to touch the dumbbells together at the top, but there's nothing wrong if they do.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">After extending your elbows, begin the eccentric portion of the rep. Make sure your upper arm at least reaches parallel with the ground before initiating the next concentric. If you have the shoulder mobility, you can go all the way to the point the dumbbells tap your shoulders. This may give people with shoulder issues some pain. If it does, cut the range of motion a little shorter.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Make sure your back stays flat against the vertical pad for the entire set. There is a tendency to begin extending the spine when fatiguing on an overhead press. Your nervous system understands that you are stronger pushing horizontally than you are pushing vertically. And so it will begin to point your chest up toward the ceiling to try to involve your pecs. Don't let this happen. A hyperextended spine with a weight pushing straight down from overhead will place a lot of unneeded stress on your lumbar spine.</span></p>	f	1	320	70	0	t	t	f	Published	2025-04-25 14:04:41.218209	2025-04-25 14:04:41.218209
46	Dumbbell Front Raise	Dumbbell Front Raise	\N	dumbbell-front-raise	\N	\N	f	100	260	74	0	f	t	f	Published	2025-04-25 14:04:41.220322	2025-04-25 14:04:41.220322
47	Dumbbell Seated Rear Delt Fly	Dumbbell Seated Rear Delt Fly	\N	dumbbell-seated-rear-delt-fly	\N	\N	f	1	73	73	0	f	f	f	Published	2025-04-25 14:04:41.221944	2025-04-25 14:04:41.221944
85	Kettlebell Rear Delt Row	Kettlebell Rear Delt Row	\N	kettlebell-rear-delt-row	\N	\N	f	80	3	3	0	f	f	f	Published	2025-04-25 14:04:41.261148	2025-04-25 14:04:41.261148
86	Kettlebell Front Raise	Kettlebell Front Raise	\N	kettlebell-front-raise	\N	\N	f	60	4	4	0	f	f	f	Published	2025-04-25 14:04:41.262081	2025-04-25 14:04:41.262081
48	Barbell Bent Over Row	Barbell Bent Over Row	\N	barbell-bent-over-row	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Barbell Row (Supinated)&nbsp;</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-4ed89476-7fff-1ba1-76b3-3ae49246f57e"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setting Up</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab your barbell with an underhand/supinated grip. Stay with feet about shoulder width apart or a little more narrow. Push your butt back and hinge at the hips. Make sure you keep your back flat throughout the entirety of this exercise. Before beginning your set, let your elbows fully extend.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The closer your torso is to parallel with the ground. The longer the range of motion will be during your row. The more vertical your torso is, the shorter the range of motion. It's extremely important to hinge as far forward as you can without rounding your back and maintaining that torso position for the entire set.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pull your elbows straight back toward the ceiling until the bar touches your torso. The bar should land somewhere between your belly button and your rib cage. Use the cue, "squeeze the tennis ball." Imagine you have a tennis ball in your armpits and when you perform each rep try to squeeze that tennis ball.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">On the eccentric, let your elbows fully extend before initiating the next rep. Ego lifting is very easy to do with the barbell row. If you find yourself having to bounce or use momentum to get the weight from point A to point B, the weight is too heavy. Your torso should maintain its horizontal position for the entire set. </span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Barbell Row (Supinated)&nbsp;</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-4ed89476-7fff-1ba1-76b3-3ae49246f57e"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setting Up</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab your barbell with an underhand/supinated grip. Stay with feet about shoulder width apart or a little more narrow. Push your butt back and hinge at the hips. Make sure you keep your back flat throughout the entirety of this exercise. Before beginning your set, let your elbows fully extend.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The closer your torso is to parallel with the ground. The longer the range of motion will be during your row. The more vertical your torso is, the shorter the range of motion. It's extremely important to hinge as far forward as you can without rounding your back and maintaining that torso position for the entire set.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pull your elbows straight back toward the ceiling until the bar touches your torso. The bar should land somewhere between your belly button and your rib cage. Use the cue, "squeeze the tennis ball." Imagine you have a tennis ball in your armpits and when you perform each rep try to squeeze that tennis ball.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">On the eccentric, let your elbows fully extend before initiating the next rep. Ego lifting is very easy to do with the barbell row. If you find yourself having to bounce or use momentum to get the weight from point A to point B, the weight is too heavy. Your torso should maintain its horizontal position for the entire set. </span></p>	f	260	260	76	0	t	t	f	Published	2025-04-25 14:04:41.22345	2025-04-25 14:04:41.22345
50	Single Leg Glute Bridge	Single Leg Glute Bridge	\N	single-leg-glute-bridge	\N	\N	f	1	3	3	0	f	f	f	Published	2025-04-25 14:04:41.225227	2025-04-25 14:04:41.225227
52	Barbell Wrist Curl	Barbell Wrist Curl	\N	barbell-wrist-curl	<p><br></p>\r\n<h1>Barbell Wrist Curl: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell with a moderate weight</li>\r\n  <li>Kneel down on a flat bench and place your forearms on the bench with your palms facing up</li>\r\n  <li>Hold the barbell with a pronated grip (palms facing down)</li>\r\n  <li>Keep your elbows close to your sides and make sure your wrists are off the edge of the bench</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Begin by lifting the barbell with your wrist flexors until your hands are facing upwards</li>\r\n  <li>Slowly lower the barbell back down to the starting position</li>\r\n  <li>Repeat the movement for the desired number of repetitions</li>\r\n  <li>Make sure to maintain control of the barbell throughout the movement</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your wrists stable and avoid any unnecessary movements</li>\r\n  <li>Make sure to focus the contraction in your wrist flexors</li>\r\n  <li>Use a smooth, controlled motion throughout the exercise</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid using too heavy of a weight and compromising your form</li>\r\n  <li>Avoid allowing the barbell to rest on your fingers</li>\r\n  <li>Avoid using too much momentum and relying on swinging the weight</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Wrist Curl: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell with a moderate weight</li>\r\n  <li>Kneel down on a flat bench and place your forearms on the bench with your palms facing up</li>\r\n  <li>Hold the barbell with a pronated grip (palms facing down)</li>\r\n  <li>Keep your elbows close to your sides and make sure your wrists are off the edge of the bench</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Begin by lifting the barbell with your wrist flexors until your hands are facing upwards</li>\r\n  <li>Slowly lower the barbell back down to the starting position</li>\r\n  <li>Repeat the movement for the desired number of repetitions</li>\r\n  <li>Make sure to maintain control of the barbell throughout the movement</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your wrists stable and avoid any unnecessary movements</li>\r\n  <li>Make sure to focus the contraction in your wrist flexors</li>\r\n  <li>Use a smooth, controlled motion throughout the exercise</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid using too heavy of a weight and compromising your form</li>\r\n  <li>Avoid allowing the barbell to rest on your fingers</li>\r\n  <li>Avoid using too much momentum and relying on swinging the weight</li>\r\n</ul>	f	107	76	76	0	f	f	f	Published	2025-04-25 14:04:41.22637	2025-04-25 14:04:41.22637
54	Machine Roll Outs	Machine Roll Outs	\N	machine-roll-outs	\N	\N	f	1	76	76	0	f	f	f	Published	2025-04-25 14:04:41.230789	2025-04-25 14:04:41.230789
55	Barbell Incline Bench Press	Barbell Incline Bench Press	\N	barbell-incline-bench-press	<p><br></p>\r\n<h1>Barbell Incline Bench Press: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a suitable weight for the barbell and place it on the incline bench</li>\r\n  <li>Lie down on the bench with your feet firmly planted on the floor</li>\r\n  <li>Grip the barbell with your palms facing away from your body</li>\r\n  <li>Lift the barbell off the rack and hold it above your chest with straight arms</li>\r\n  <li>Take a deep breath and brace your core</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lower the barbell towards your chest, keeping your elbows close to your body</li>\r\n  <li>Pause for a moment at the bottom of the movement and then push the barbell back up to the starting position</li>\r\n  <li>Repeat the movement for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your shoulder blades squeezed together throughout the exercise</li>\r\n  <li>Maintain a slight arch in your lower back to avoid excessive rounding</li>\r\n  <li>Do not allow the barbell to drift away from your chest</li>\r\n  <li>Focus on engaging your chest muscles throughout the movement</li>\r\n  <li>Exhale at the top of the movement and inhale at the bottom</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using too much weight that results in poor form</li>\r\n  <li>Allowing your elbows to flare out during the exercise</li>\r\n  <li>Rounding your lower back during the movement</li>\r\n  <li>Bouncing the barbell off your chest</li>\r\n  <li>Neglecting to warm up adequately before performing the exercise</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Incline Bench Press: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a suitable weight for the barbell and place it on the incline bench</li>\r\n  <li>Lie down on the bench with your feet firmly planted on the floor</li>\r\n  <li>Grip the barbell with your palms facing away from your body</li>\r\n  <li>Lift the barbell off the rack and hold it above your chest with straight arms</li>\r\n  <li>Take a deep breath and brace your core</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lower the barbell towards your chest, keeping your elbows close to your body</li>\r\n  <li>Pause for a moment at the bottom of the movement and then push the barbell back up to the starting position</li>\r\n  <li>Repeat the movement for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your shoulder blades squeezed together throughout the exercise</li>\r\n  <li>Maintain a slight arch in your lower back to avoid excessive rounding</li>\r\n  <li>Do not allow the barbell to drift away from your chest</li>\r\n  <li>Focus on engaging your chest muscles throughout the movement</li>\r\n  <li>Exhale at the top of the movement and inhale at the bottom</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using too much weight that results in poor form</li>\r\n  <li>Allowing your elbows to flare out during the exercise</li>\r\n  <li>Rounding your lower back during the movement</li>\r\n  <li>Bouncing the barbell off your chest</li>\r\n  <li>Neglecting to warm up adequately before performing the exercise</li>\r\n</ul>	f	60	260	76	0	t	t	f	Published	2025-04-25 14:04:41.23418	2025-04-25 14:04:41.23418
56	Kettlebell Skull Crusher	Kettlebell Skull Crusher	\N	kettlebell-skull-crusher	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.23593	2025-04-25 14:04:41.23593
57	Kettlebell Situp	Kettlebell Situp	\N	kettlebell-situp			f	60	74	74	0	f	f	f	Published	2025-04-25 14:04:41.236853	2025-04-25 14:04:41.236853
58	Kettlebell Russian Twist	Kettlebell Russian Twist	\N	kettlebell-russian-twist			f	71	71	200	0	f	f	f	Published	2025-04-25 14:04:41.238246	2025-04-25 14:04:41.238246
59	Kettlebell Wood Chopper	Kettlebell Wood Chopper	\N	kettlebell-wood-chopper			f	230	230	73	0	t	t	f	Published	2025-04-25 14:04:41.239564	2025-04-25 14:04:41.239564
60	Kettlebell Windmill	Kettlebell Windmill	\N	kettlebell-windmill			f	260	260	75	0	f	t	f	Published	2025-04-25 14:04:41.240636	2025-04-25 14:04:41.240636
61	Kettlebell Goblet Curl	Kettlebell Goblet Curl	\N	kettlebell-goblet-curl	\N	\N	f	1	75	75	0	f	f	f	Published	2025-04-25 14:04:41.241732	2025-04-25 14:04:41.241732
62	Kettlebell Concentration Curl	Kettlebell Concentration Curl	\N	kettlebell-concentration-curl			f	1	240	68	0	f	t	f	Published	2025-04-25 14:04:41.243029	2025-04-25 14:04:41.243029
63	Kettlebell Preacher Curl	Kettlebell Preacher Curl	\N	kettlebell-preacher-curl	\N	\N	f	1	230	70	0	f	t	f	Published	2025-04-25 14:04:41.244004	2025-04-25 14:04:41.244004
64	Kettlebell Single Leg Calf Raise	Kettlebell Single Leg Calf Raise	\N	kettlebell-single-leg-calf-raise			f	70	20	12	0	f	t	f	Published	2025-04-25 14:04:41.244866	2025-04-25 14:04:41.244866
65	Kettlebell Calf Raise	Kettlebell Calf Raise	\N	kettlebell-calf-raise	\N	\N	f	1	14	14	0	f	f	f	Published	2025-04-25 14:04:41.24582	2025-04-25 14:04:41.24582
66	Kettlebell Seated Calf Raise	Kettlebell Seated Calf Raise	\N	kettlebell-seated-calf-raise			f	70	200	8	0	f	t	f	Published	2025-04-25 14:04:41.246588	2025-04-25 14:04:41.246588
67	Kettlebell Chest Press (Single)	Kettlebell Chest Press (Single)	\N	kettlebell-chest-press-single	\N	\N	f	1	33	33	0	f	f	f	Published	2025-04-25 14:04:41.247232	2025-04-25 14:04:41.247232
68	Kettlebell Single Arm Chest Fly	Kettlebell Single Arm Chest Fly	\N	kettlebell-single-arm-chest-fly			f	1	31	31	0	f	f	f	Published	2025-04-25 14:04:41.247892	2025-04-25 14:04:41.247892
69	Kettlebell Single Arm Press	Kettlebell Single Arm Press	\N	kettlebell-single-arm-press	\N	\N	f	1	32	32	0	f	f	f	Published	2025-04-25 14:04:41.248598	2025-04-25 14:04:41.248598
70	Kettlebell Walkover Pushup	Kettlebell Walkover Pushup	\N	kettlebell-walkover-pushup	\N	\N	f	1	30	30	0	f	f	f	Published	2025-04-25 14:04:41.24931	2025-04-25 14:04:41.24931
71	Kettlebell Farmers Carry	Kettlebell Farmers Carry	\N	kettlebell-farmers-carry	\N	\N	f	108	240	100	0	t	t	f	Published	2025-04-25 14:04:41.250041	2025-04-25 14:04:41.250041
72	Kettlebell Wrist Extension	Kettlebell Wrist Extension	\N	kettlebell-wrist-extension			f	50	36	36	0	f	f	f	Published	2025-04-25 14:04:41.250946	2025-04-25 14:04:41.250946
73	Kettlebell Wrist Curl	Kettlebell Wrist Curl	\N	kettlebell-wrist-curl			f	70	75	75	0	f	f	f	Published	2025-04-25 14:04:41.251881	2025-04-25 14:04:41.251881
74	Kettlebell Glute Bridge	Kettlebell Glute Bridge	\N	kettlebell-glute-bridge	\N	\N	f	1	33	33	0	f	f	f	Published	2025-04-25 14:04:41.252613	2025-04-25 14:04:41.252613
607	TRX Reverse Curl	TRX Reverse Curl	\N	trx-reverse-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.632063	2025-04-25 14:04:41.632063
87	Kettlebell Single Arm Rear Delt Fly	Kettlebell Single Arm Rear Delt Fly	\N	kettlebell-single-arm-rear-delt-fly	\N	\N	f	1	5	1	0	f	f	f	Published	2025-04-25 14:04:41.263037	2025-04-25 14:04:41.263037
88	Kettlebell Single Arm Curl	Kettlebell Single Arm Curl	\N	kettlebell-single-arm-curl			f	1	74	74	0	f	f	f	Published	2025-04-25 14:04:41.263816	2025-04-25 14:04:41.263816
89	Kettlebell Standing Tricep Extension	Kettlebell Standing Tricep Extension	\N	kettlebell-standing-tricep-extension	\N	\N	f	1	2	2	0	f	f	f	Published	2025-04-25 14:04:41.264393	2025-04-25 14:04:41.264393
90	Kettlebell Decline Skull Crusher	Kettlebell Decline Skull Crusher	\N	kettlebell-decline-skull-crusher			f	80	230	3	0	f	t	f	Published	2025-04-25 14:04:41.265046	2025-04-25 14:04:41.265046
91	Kettlebell Single Arm Row	Kettlebell Single Arm Row	\N	kettlebell-single-arm-row	\N	\N	f	22	22	22	0	f	f	f	Published	2025-04-25 14:04:41.265785	2025-04-25 14:04:41.265785
92	Kettlebell Pullover	Kettlebell Pullover	\N	kettlebell-pullover			f	4	4	4	0	f	f	f	Published	2025-04-25 14:04:41.266602	2025-04-25 14:04:41.266602
93	Kettlebell Long Lever Lateral Raise	Kettlebell Long Lever Lateral Raise	\N	kettlebell-long-lever-lateral-raise	\N	\N	f	1	2	2	0	f	f	f	Published	2025-04-25 14:04:41.267206	2025-04-25 14:04:41.267206
94	Kettlebell Single Arm Lateral Raise	Kettlebell Single Arm Lateral Raise	\N	kettlebell-single-arm-lateral-raise	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.270038	2025-04-25 14:04:41.270038
95	Kettlebell Shrug (Single)	Kettlebell Shrug (Single)	\N	kettlebell-shrug-single	\N	\N	f	1	48	48	0	f	f	f	Published	2025-04-25 14:04:41.270795	2025-04-25 14:04:41.270795
96	Kettlebell Upright Row	Kettlebell Upright Row	\N	kettlebell-upright-row	\N	\N	f	1	50	50	0	t	f	f	Published	2025-04-25 14:04:41.271614	2025-04-25 14:04:41.271614
97	Kettlebell Silverback Shrug (Single)	Kettlebell Silverback Shrug (Single)	\N	kettlebell-silverback-shrug-single	\N	\N	f	1	51	51	0	t	f	f	Published	2025-04-25 14:04:41.272506	2025-04-25 14:04:41.272506
98	Kettlebell Incline Shrug	Kettlebell Incline Shrug	\N	kettlebell-incline-shrug	\N	\N	f	1	250	52	0	f	t	f	Published	2025-04-25 14:04:41.273189	2025-04-25 14:04:41.273189
99	Kettlebell Step Up	Kettlebell Step Up	\N	kettlebell-step-up	\N	\N	f	1	210	52	0	t	t	f	Published	2025-04-25 14:04:41.27382	2025-04-25 14:04:41.27382
100	Kettlebell Goblet Squat	Kettlebell Goblet Squat	\N	kettlebell-goblet-squat	\N	\N	f	1	35	35	0	t	f	f	Published	2025-04-25 14:04:41.274466	2025-04-25 14:04:41.274466
101	Kettlebell Heels Up Goblet Squat	Kettlebell Heels Up Goblet Squat	\N	kettlebell-heels-up-goblet-squat	\N	\N	f	1	28	28	0	t	f	f	Published	2025-04-25 14:04:41.275137	2025-04-25 14:04:41.275137
102	Kettlebell Single Arm Reverse Lunge	Kettlebell Single Arm Reverse Lunge	\N	kettlebell-single-arm-reverse-lunge	\N	\N	f	1	32	32	0	f	f	f	Published	2025-04-25 14:04:41.275879	2025-04-25 14:04:41.275879
103	Kettlebell Single Arm Forward Lunge	Kettlebell Single Arm Forward Lunge	\N	kettlebell-single-arm-forward-lunge	\N	\N	f	1	60	60	0	f	f	f	Published	2025-04-25 14:04:41.276533	2025-04-25 14:04:41.276533
104	Kettlebell Lateral Lunge (Single)	Kettlebell Lateral Lunge (Single)	\N	kettlebell-lateral-lunge-single	\N	\N	f	1	33	33	0	f	f	f	Published	2025-04-25 14:04:41.277382	2025-04-25 14:04:41.277382
105	Kettlebell Tate Press	Kettlebell Tate Press	\N	kettlebell-tate-press			f	1	3	3	0	f	f	f	Published	2025-04-25 14:04:41.278242	2025-04-25 14:04:41.278242
119	Biceps Stretch Variation Five	Biceps Stretch Variation Five	\N	biceps-stretch-variation-five	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.278785	2025-04-25 14:04:41.278785
120	Biceps Stretch Variation Four	Biceps Stretch Variation Four	\N	biceps-stretch-variation-four	\N	\N	f	1	190	2	0	f	t	f	Published	2025-04-25 14:04:41.279617	2025-04-25 14:04:41.279617
121	Biceps Stretch Variation Three	Biceps Stretch Variation Three	\N	biceps-stretch-variation-three	\N	\N	f	1	200	3	0	f	t	f	Published	2025-04-25 14:04:41.280418	2025-04-25 14:04:41.280418
122	Biceps Stretch Variation Two	Biceps Stretch Variation Two	\N	biceps-stretch-variation-two	\N	\N	f	1	210	4	0	f	t	f	Published	2025-04-25 14:04:41.281145	2025-04-25 14:04:41.281145
123	Biceps Stretch Variation One	Biceps Stretch Variation One	\N	biceps-stretch-variation-one	\N	\N	f	1	220	5	0	f	t	f	Published	2025-04-25 14:04:41.281799	2025-04-25 14:04:41.281799
124	Chest Stretch Variation Four	Chest Stretch Variation Four	\N	chest-stretch-variation-four	\N	\N	f	1	190	1	0	f	t	f	Published	2025-04-25 14:04:41.282431	2025-04-25 14:04:41.282431
125	Chest Stretch Variation Three	Chest Stretch Variation Three	\N	chest-stretch-variation-three	\N	\N	f	1	200	2	0	f	t	f	Published	2025-04-25 14:04:41.282969	2025-04-25 14:04:41.282969
126	Chest Stretch Variation Two	Chest Stretch Variation Two	\N	chest-stretch-variation-two	\N	\N	f	1	210	3	0	f	t	f	Published	2025-04-25 14:04:41.283613	2025-04-25 14:04:41.283613
127	Chest Stretch Variation One	Chest Stretch Variation One	\N	chest-stretch-variation-one	\N	\N	f	1	220	4	0	f	t	f	Published	2025-04-25 14:04:41.284137	2025-04-25 14:04:41.284137
128	Quads Stretch Variation Four	Quads Stretch Variation Four	\N	quads-stretch-variation-four	\N	\N	f	1	170	1	0	f	t	f	Published	2025-04-25 14:04:41.284865	2025-04-25 14:04:41.284865
129	Quads Stretch Variation Three	Quads Stretch Variation Three	\N	quads-stretch-variation-three	\N	\N	f	1	180	2	0	f	t	f	Published	2025-04-25 14:04:41.285443	2025-04-25 14:04:41.285443
130	Quads Stretch Variation Two	Quads Stretch Variation Two	\N	quads-stretch-variation-two	\N	\N	f	1	190	3	0	f	t	f	Published	2025-04-25 14:04:41.28599	2025-04-25 14:04:41.28599
131	Quads Stretch Variation One	Quads Stretch Variation One	\N	quads-stretch-variation-one	\N	\N	f	1	200	4	0	f	t	f	Published	2025-04-25 14:04:41.286542	2025-04-25 14:04:41.286542
132	Traps Stretch Variation Three	Traps Stretch Variation Three	\N	traps-stretch-variation-three	\N	\N	f	1	200	1	0	f	t	f	Published	2025-04-25 14:04:41.287184	2025-04-25 14:04:41.287184
133	Traps Stretch Variation Two	Traps Stretch Variation Two	\N	traps-stretch-variation-two	\N	\N	f	1	210	2	0	f	t	f	Published	2025-04-25 14:04:41.287952	2025-04-25 14:04:41.287952
134	Traps Stretch Variation One	Traps Stretch Variation One	\N	traps-stretch-variation-one	\N	\N	f	1	220	3	0	f	t	f	Published	2025-04-25 14:04:41.288529	2025-04-25 14:04:41.288529
135	Triceps Stretch Variation Three	Triceps Stretch Variation Three	\N	triceps-stretch-variation-three	\N	\N	f	1	200	1	0	f	t	f	Published	2025-04-25 14:04:41.289008	2025-04-25 14:04:41.289008
136	Triceps Stretch Variation Two	Triceps Stretch Variation Two	\N	triceps-stretch-variation-two	\N	\N	f	1	210	2	0	f	t	f	Published	2025-04-25 14:04:41.289514	2025-04-25 14:04:41.289514
137	Triceps Stretch Variation One	Triceps Stretch Variation One	\N	triceps-stretch-variation-one	\N	\N	f	1	220	3	0	f	t	f	Published	2025-04-25 14:04:41.289983	2025-04-25 14:04:41.289983
138	Shoulders Stretch Variation Four	Shoulders Stretch Variation Four	\N	shoulders-stretch-variation-four	\N	\N	f	1	5	1	0	f	t	f	Published	2025-04-25 14:04:41.290486	2025-04-25 14:04:41.290486
139	Shoulders Stretch Variation Three	Shoulders Stretch Variation Three	\N	shoulders-stretch-variation-three	\N	\N	f	1	200	2	0	f	t	f	Published	2025-04-25 14:04:41.291248	2025-04-25 14:04:41.291248
140	Shoulders Stretch Variation Two	Shoulders Stretch Variation Two	\N	shoulders-stretch-variation-two	\N	\N	f	1	5	3	0	f	t	f	Published	2025-04-25 14:04:41.291973	2025-04-25 14:04:41.291973
141	Shoulders Stretch Variation One	Shoulders Stretch Variation One	\N	shoulders-stretch-variation-one	\N	\N	f	1	220	4	0	f	t	f	Published	2025-04-25 14:04:41.29328	2025-04-25 14:04:41.29328
142	Lats Stretch Variation Three	Lats Stretch Variation Three	\N	lats-stretch-variation-three	\N	\N	f	210	210	1	0	f	t	f	Published	2025-04-25 14:04:41.294306	2025-04-25 14:04:41.294306
143	Lats Stretch Variation Two	Lats Stretch Variation Two	\N	lats-stretch-variation-two	\N	\N	f	220	220	2	0	f	t	f	Published	2025-04-25 14:04:41.294864	2025-04-25 14:04:41.294864
1696	Elliptical	Elliptical	\N	elliptical	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.310973	2025-04-25 14:04:42.310973
144	Lats Stretch Variation One	Lats Stretch Variation One	\N	lats-stretch-variation-one	\N	\N	f	230	230	3	0	f	t	f	Published	2025-04-25 14:04:41.295498	2025-04-25 14:04:41.295498
145	Hamstrings Stretch Variation Four	Hamstrings Stretch Variation Four	\N	hamstrings-stretch-variation-four			f	1	190	1	0	f	t	f	Published	2025-04-25 14:04:41.296302	2025-04-25 14:04:41.296302
146	Hamstrings Stretch Variation Three	Hamstrings Stretch Variation Three	\N	hamstrings-stretch-variation-three	\N	\N	f	1	200	2	0	f	t	f	Published	2025-04-25 14:04:41.296881	2025-04-25 14:04:41.296881
147	Hamstrings Stretch Variation Two	Hamstrings Stretch Variation Two	\N	hamstrings-stretch-variation-two	\N	\N	f	1	210	3	0	f	t	f	Published	2025-04-25 14:04:41.297449	2025-04-25 14:04:41.297449
148	Hamstrings Stretch Variation One	Hamstrings Stretch Variation One	\N	hamstrings-stretch-variation-one	\N	\N	f	1	220	4	0	f	t	f	Published	2025-04-25 14:04:41.297954	2025-04-25 14:04:41.297954
149	Glutes Stretch Variation Three	Glutes Stretch Variation Three	\N	glutes-stretch-variation-three	\N	\N	f	1	200	1	0	f	t	f	Published	2025-04-25 14:04:41.298456	2025-04-25 14:04:41.298456
150	Glutes Stretch Variation Two	Glutes Stretch Variation Two	\N	glutes-stretch-variation-two	\N	\N	f	1	180	2	0	f	t	f	Published	2025-04-25 14:04:41.299035	2025-04-25 14:04:41.299035
151	Glutes Stretch Variation One	Glutes Stretch Variation One	\N	glutes-stretch-variation-one	\N	\N	f	1	160	3	0	f	t	f	Published	2025-04-25 14:04:41.299798	2025-04-25 14:04:41.299798
152	Forearms Stretch Variation Four	Forearms Stretch Variation Four	\N	forearms-stretch-variation-four	\N	\N	f	1	210	1	0	f	t	f	Published	2025-04-25 14:04:41.300435	2025-04-25 14:04:41.300435
153	Forearms Stretch Variation Three	Forearms Stretch Variation Three	\N	forearms-stretch-variation-three	\N	\N	f	1	220	2	0	f	t	f	Published	2025-04-25 14:04:41.301223	2025-04-25 14:04:41.301223
154	Forearms Stretch Variation Two	Forearms Stretch Variation Two	\N	forearms-stretch-variation-two	\N	\N	f	1	230	3	0	f	t	f	Published	2025-04-25 14:04:41.301843	2025-04-25 14:04:41.301843
155	Forearms Stretch Variation One	Forearms Stretch Variation One	\N	forearms-stretch-variation-one	\N	\N	f	1	240	4	0	f	t	f	Published	2025-04-25 14:04:41.302397	2025-04-25 14:04:41.302397
156	Calves Stretch Variation Three	Calves Stretch Variation Three	\N	calves-stretch-variation-three	\N	\N	f	1	210	1	0	f	t	f	Published	2025-04-25 14:04:41.302896	2025-04-25 14:04:41.302896
157	Calves Stretch Variation Two	Calves Stretch Variation Two	\N	calves-stretch-variation-two	\N	\N	f	1	220	2	0	f	t	f	Published	2025-04-25 14:04:41.303375	2025-04-25 14:04:41.303375
158	Calves Stretch Variation One	Calves Stretch Variation One	\N	calves-stretch-variation-one	\N	\N	f	1	230	3	0	f	t	f	Published	2025-04-25 14:04:41.303855	2025-04-25 14:04:41.303855
159	Abdominals Stretch Variation Four	Abdominals Stretch Variation Four	\N	abdominals-stretch-variation-four	\N	\N	f	1	200	1	0	f	t	f	Published	2025-04-25 14:04:41.30456	2025-04-25 14:04:41.30456
160	Abdominals Stretch Variation Three	Abdominals Stretch Variation Three	\N	abdominals-stretch-variation-three	\N	\N	f	210	210	2	0	f	t	f	Published	2025-04-25 14:04:41.30533	2025-04-25 14:04:41.30533
161	Abdominals Stretch Variation Two	Abdominals Stretch Variation Two	\N	abdominals-stretch-variation-two	\N	\N	f	220	220	3	0	f	t	f	Published	2025-04-25 14:04:41.305984	2025-04-25 14:04:41.305984
162	Abdominals Stretch Variation One	Abdominals Stretch Variation One	\N	abdominals-stretch-variation-one	\N	\N	f	1	230	4	0	f	t	f	Published	2025-04-25 14:04:41.30663	2025-04-25 14:04:41.30663
163	Lower back Stretch Variation Four	Lower back Stretch Variation Four	\N	lower-back-stretch-variation-four	\N	\N	f	190	190	1	0	f	t	f	Published	2025-04-25 14:04:41.307243	2025-04-25 14:04:41.307243
164	Lower back Stretch Variation Three	Lower back Stretch Variation Three	\N	lower-back-stretch-variation-three	\N	\N	f	200	200	2	0	f	t	f	Published	2025-04-25 14:04:41.307804	2025-04-25 14:04:41.307804
165	Lower back Stretch Variation Two	Lower back Stretch Variation Two	\N	lower-back-stretch-variation-two	\N	\N	f	210	210	3	0	f	t	f	Published	2025-04-25 14:04:41.308335	2025-04-25 14:04:41.308335
166	Lower back Stretch Variation One	Lower back Stretch Variation One	\N	lower-back-stretch-variation-one	\N	\N	f	220	220	4	0	f	t	f	Published	2025-04-25 14:04:41.309091	2025-04-25 14:04:41.309091
167	Traps mid back Stretch Variation Two	Traps mid back Stretch Variation Two	\N	traps-mid-back-stretch-variation-two	\N	\N	f	1	210	1	0	f	t	f	Published	2025-04-25 14:04:41.309662	2025-04-25 14:04:41.309662
168	Traps mid back Stretch Variation One	Traps mid back Stretch Variation One	\N	traps-mid-back-stretch-variation-one	\N	\N	f	1	220	2	0	f	t	f	Published	2025-04-25 14:04:41.31019	2025-04-25 14:04:41.31019
182	Push Up	Push Up	\N	push-up	\N	\N	f	1	450	79	0	t	t	f	Published	2025-04-25 14:04:41.310794	2025-04-25 14:04:41.310794
183	Inverted Row	Inverted Row	\N	inverted-row			f	250	250	12	0	f	t	f	Published	2025-04-25 14:04:41.311394	2025-04-25 14:04:41.311394
184	Chin Ups	Chin Ups	\N	chin-ups	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Chin Up</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab the Chin Up bar with an underhand grip. Make sure the bars are set very deeply in your hand. Your palms should be making contact with the bar.&nbsp;</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-41d02a36-7fff-06ba-f598-789a74ff0a9d"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Next, if you are using a bench or box to reach the Chin Up bars, step off of the step, and hold for a second, in a dead hang position. If you begin initiating the reps before the dead hang, you might swing too much to perform the exercise strictly. If you can reach the  bars without having to stand on anything, take your grip and then pull your feet slightly off the floor. Still hold for a second to prevent any swinging from happening.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pull your shoulder blades down. This will engage your mid and lower traps and force your lats to do most of the work. Also, before beginning the first rep, make sure your elbows are extended.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Lower body</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Angle your legs forward slightly, push your hips back, and point your toes. This will force you to flex your abdominals and keep you more stable throughout the rep. (This will massively help you keep the reps strict).</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Performing</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you are in the proper position, begin to pull. Imagine trying to pull your elbows straight down to your sides.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Get your chin over the bar before beginning the eccentric portion of the rap. Your elbows should fully extend at the bottom of each rep.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Progressing The Chin Up</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><iframe frameborder="0" src="//www.youtube.com/embed/Tvl25cMqG8c" width="640" height="360" class="note-video-clip"></iframe><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Decide on a rep range. For example, 6 to 10. Once you are able to perform 10 reps with strict form, then it is time to progress. Do not be shy or hesitant to start adding weight  early on. Even if it is only 5 pounds. Progress is progress! From there, progress like you would any other exercise. Once you hit the top end of the rep range, add some more weight.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The best way to get better at doing Chin Ups is to do Chin Ups. But if you can't do them in the first place, then what should you do?&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><ol style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Try the Neutral Grip Chin Up. It’s an easier variation because the lats are in their strongest position.</span></p></li></ol><p><b style="font-weight:normal;"><br></b></p><ol style="margin-top:0;margin-bottom:0;padding-inline-start:48px;" start="2"><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Shorten the range of motion, and try to get a longer range of motion overtime. if you can only do half a Chin Up,  (meaning you can get your elbows to roughly 90°) don't be ashamed to do those half reps. Set a rep range like with anything else. We will use 5 to 8 reps for this example. Once you are able to hit 8 of the half reps, try to go an extra 2 to 3 inches higher on each rep. You won't be able to do 8 when you advance the range of motion. So Build your way back up to 8. </span></p></li></ol><p><br></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Chin Up</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grab the Chin Up bar with an underhand grip. Make sure the bars are set very deeply in your hand. Your palms should be making contact with the bar.&nbsp;</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-41d02a36-7fff-06ba-f598-789a74ff0a9d"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Next, if you are using a bench or box to reach the Chin Up bars, step off of the step, and hold for a second, in a dead hang position. If you begin initiating the reps before the dead hang, you might swing too much to perform the exercise strictly. If you can reach the  bars without having to stand on anything, take your grip and then pull your feet slightly off the floor. Still hold for a second to prevent any swinging from happening.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pull your shoulder blades down. This will engage your mid and lower traps and force your lats to do most of the work. Also, before beginning the first rep, make sure your elbows are extended.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Lower body</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Angle your legs forward slightly, push your hips back, and point your toes. This will force you to flex your abdominals and keep you more stable throughout the rep. (This will massively help you keep the reps strict).</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Performing</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you are in the proper position, begin to pull. Imagine trying to pull your elbows straight down to your sides.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Get your chin over the bar before beginning the eccentric portion of the rap. Your elbows should fully extend at the bottom of each rep.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Progressing The Chin Up</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><iframe frameborder="0" src="//www.youtube.com/embed/Tvl25cMqG8c" width="640" height="360" class="note-video-clip"></iframe><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Decide on a rep range. For example, 6 to 10. Once you are able to perform 10 reps with strict form, then it is time to progress. Do not be shy or hesitant to start adding weight  early on. Even if it is only 5 pounds. Progress is progress! From there, progress like you would any other exercise. Once you hit the top end of the rep range, add some more weight.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The best way to get better at doing Chin Ups is to do Chin Ups. But if you can't do them in the first place, then what should you do?&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><ol style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Try the Neutral Grip Chin Up. It’s an easier variation because the lats are in their strongest position.</span></p></li></ol><p><b style="font-weight:normal;"><br></b></p><ol style="margin-top:0;margin-bottom:0;padding-inline-start:48px;" start="2"><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Shorten the range of motion, and try to get a longer range of motion overtime. if you can only do half a Chin Up,  (meaning you can get your elbows to roughly 90°) don't be ashamed to do those half reps. Set a rep range like with anything else. We will use 5 to 8 reps for this example. Once you are able to hit 8 of the half reps, try to go an extra 2 to 3 inches higher on each rep. You won't be able to do 8 when you advance the range of motion. So Build your way back up to 8. </span></p></li></ol><p><br></p>	f	300	470	72	0	t	t	f	Published	2025-04-25 14:04:41.31209	2025-04-25 14:04:41.31209
186	Incline Push Up	Incline Push Up	\N	incline-push-up	\N	\N	f	1	20	20	0	t	f	f	Published	2025-04-25 14:04:41.31333	2025-04-25 14:04:41.31333
187	Decline Push Up	Decline Push Up	\N	decline-push-up	\N	\N	f	1	18	18	0	f	t	f	Published	2025-04-25 14:04:41.31396	2025-04-25 14:04:41.31396
188	Elevated Pike Shoulder Shrug	Elevated Pike Shoulder Shrug	\N	elevated-pike-shoulder-shrug	\N	\N	f	1	14	14	0	f	f	f	Published	2025-04-25 14:04:41.314754	2025-04-25 14:04:41.314754
189	Side Lunges	Side Lunges	\N	side-lunges			f	1	8	8	0	f	f	f	Published	2025-04-25 14:04:41.315385	2025-04-25 14:04:41.315385
190	Forward Lunges	Forward Lunges	\N	forward-lunges	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Forward Lunge</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Start with your feet about shoulder width apart and toes facing forward. Use the cue superman chest throughout the entirety of the set. Meaning, imagine you have the superman logo on your chest and show off that logo for the entirety of the set. This will help you keep a tall chest and your shoulder blades pulled back. Also, this cue will help you keep your torso vertical.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-33cde41f-7fff-0308-85c9-2cd2af72b994"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Initiate the first rep by taking a step forward. You should dictate your stride length by the body part you'd like to focus on. Use a shorter stride length if you want to recruit the quads more. The shorter stride length will increase the range of motion at your knees. If you want to recruit the glutes a bit more, take a longer stride. A longer stride will increase the range of motion at the hips.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can either let your arms stay to your sides, you can place your hands on your hips (as you can see in our demo video) or you can use prayer hands.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Let your back knee gently tap the floor. Push off your front heel explosively to push yourself back into the starting position. You can either do all reps on one side or alternate sides.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">As you fatigue, be careful to not let your chest begin to sag forward, or let your lumbar spine round.&nbsp; If the forward lunge is too difficult, try out a reverse lunge. It's an easier variation.</span></p><p><br></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Forward Lunge</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Start with your feet about shoulder width apart and toes facing forward. Use the cue superman chest throughout the entirety of the set. Meaning, imagine you have the superman logo on your chest and show off that logo for the entirety of the set. This will help you keep a tall chest and your shoulder blades pulled back. Also, this cue will help you keep your torso vertical.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-33cde41f-7fff-0308-85c9-2cd2af72b994"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Initiate the first rep by taking a step forward. You should dictate your stride length by the body part you'd like to focus on. Use a shorter stride length if you want to recruit the quads more. The shorter stride length will increase the range of motion at your knees. If you want to recruit the glutes a bit more, take a longer stride. A longer stride will increase the range of motion at the hips.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can either let your arms stay to your sides, you can place your hands on your hips (as you can see in our demo video) or you can use prayer hands.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Let your back knee gently tap the floor. Push off your front heel explosively to push yourself back into the starting position. You can either do all reps on one side or alternate sides.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">As you fatigue, be careful to not let your chest begin to sag forward, or let your lumbar spine round.&nbsp; If the forward lunge is too difficult, try out a reverse lunge. It's an easier variation.</span></p><p><br></p>	f	1	259	11	0	t	t	f	Published	2025-04-25 14:04:41.316119	2025-04-25 14:04:41.316119
191	Jump Squats	Jump Squats	\N	jump-squats	\N	\N	f	1	9	9	0	f	f	f	Published	2025-04-25 14:04:41.317109	2025-04-25 14:04:41.317109
192	Bodyweight Squat	Bodyweight Squat	\N	bodyweight-squat	\N	\N	f	1	240	20	0	f	t	f	Published	2025-04-25 14:04:41.317803	2025-04-25 14:04:41.317803
193	Diamond Push Ups	Diamond Push Ups	\N	diamond-push-ups	\N	\N	f	100	240	14	0	f	t	f	Published	2025-04-25 14:04:41.318575	2025-04-25 14:04:41.318575
194	Good Mornings	Good Mornings	\N	good-mornings	\N	\N	f	10	10	10	0	t	f	f	Published	2025-04-25 14:04:41.319286	2025-04-25 14:04:41.319286
195	Supermans	Supermans	\N	supermans	\N	\N	f	270	270	8	0	f	t	f	Published	2025-04-25 14:04:41.320291	2025-04-25 14:04:41.320291
196	Kickbacks	Kickbacks	\N	kickbacks	\N	\N	f	1	12	12	0	f	f	f	Published	2025-04-25 14:04:41.32104	2025-04-25 14:04:41.32104
197	Single Legged Romanian Deadlifts	Single Legged Romanian Deadlifts	\N	single-legged-romanian-deadlifts	\N	\N	f	1	12	12	0	t	f	f	Published	2025-04-25 14:04:41.321608	2025-04-25 14:04:41.321608
198	Elevated Pike Press	Elevated Pike Press	\N	elevated-pike-press	\N	\N	f	1	230	20	0	f	t	f	Published	2025-04-25 14:04:41.322371	2025-04-25 14:04:41.322371
201	Tip Toe Walking	Tip Toe Walking	\N	tip-toe-walking	\N	\N	f	1	3	3	0	f	f	f	Published	2025-04-25 14:04:41.323485	2025-04-25 14:04:41.323485
202	Calf Raises	Calf Raises	\N	calf-raises	<p style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;"><font color="#000000" style="">Here are a few tips to help you get the most out of this exercise:</font></p><ul style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; list-style-position: initial; list-style-image: initial; margin: 1.25em 0px 0px; padding: 0px 0px 0px 1rem; display: flex; flex-direction: column; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;"><li style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; position: relative;"><font color="#000000" style="">Keep your core engaged and your shoulders relaxed as you perform the calf raises.</font></li><li style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; position: relative;"><font color="#000000" style="">Focus on controlling the movement and avoiding any bouncing or momentum.</font></li><li style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; position: relative;"><font color="#000000" style=""><br></font></li><li style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; position: relative;"><font color="#000000" style="">To increase the difficulty of the exercise, you can try performing it on one leg at a time, or with a weight in your hand.</font></li></ul>	<p style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;"><font color="#000000" style="">Here are a few tips to help you get the most out of this exercise:</font></p><ul style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; list-style-position: initial; list-style-image: initial; margin: 1.25em 0px 0px; padding: 0px 0px 0px 1rem; display: flex; flex-direction: column; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;"><li style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; position: relative;"><font color="#000000" style="">Keep your core engaged and your shoulders relaxed as you perform the calf raises.</font></li><li style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; position: relative;"><font color="#000000" style="">Focus on controlling the movement and avoiding any bouncing or momentum.</font></li><li style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; position: relative;"><font color="#000000" style=""><br></font></li><li style="border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; position: relative;"><font color="#000000" style="">To increase the difficulty of the exercise, you can try performing it on one leg at a time, or with a weight in your hand.</font></li></ul>	f	50	200	1	0	f	t	f	Published	2025-04-25 14:04:41.324121	2025-04-25 14:04:41.324121
204	Forearm Plank	Forearm Plank	\N	forearm-plank	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Forearm Plank Detailed How to:</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">I suggest starting in a kneeling position as opposed to starting with your hips on the ground. When you begin from the hips on the ground position, your lumbar spine is hyperextended, which is dangerous and to be avoided in the overwhelming majority of exercises.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can either do a closed fist or open hand position. Whichever feels more comfortable. Step one foot back, and then the other to begin the Plank.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-de1f3d8d-7fff-58a9-5030-0571777deefc"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing The Forearm Plank</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Be careful to not let your hips rise or sag as you were holding the forearm Plank. Maintain a flat back the entire set. If you are having trouble knowing if your back is flat, try performing the exercise in front of a mirror so you can check your form.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Continuously press your elbows into the ground and spread your scapula. This will recruit your serratus anterior and get you some extra core work.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Progress The Forearm Plank:</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Like any other exercise, progression is important with the Plank. However, since the Plank is a hold and not a dynamic exercise with reps, it can be challenging knowing how to and when to progress the Plank. Here’s a quick step by step guide on progressing the Plank</span></p><p><b style="font-weight:normal;"><br></b></p><ol style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Set a range similar to a rep range</span><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">. For example, 45 to 60 seconds. Let’s say in the beginning you are only able to do 45 seconds. Each week, try to add a bit more time (2-5 secs). Once you are able to complete 60 seconds with good form time to further progress.</span></p></li><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Switch to a more difficult variation. The natural next step is switching to the Hand Plank. Keep your same time range of 45-60 seconds. Since this is a more difficult variation you will likely fatigue before 60 seconds. Build your way back to 60 seconds like you did with the Forearm Plank.&nbsp;</span></p></li><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Add weight. At this point, it’s time to try adding some resistance to the Plank. Start light! You can either ask a gym buddy or place the weight on your back yourself. Either way, make sure the plate is in the middle of your upper back and not your lumbar spine. Then you can progress the plank similarly to any other exercise. By adding weight bit by bit overtime.</span></p></li><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can continue to progress by going to a more difficult hold (Long Lever Plank, Hollow Hold) and then adding weight to those over time.&nbsp;</span></p></li></ol><p><br></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Forearm Plank Detailed How to:</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">I suggest starting in a kneeling position as opposed to starting with your hips on the ground. When you begin from the hips on the ground position, your lumbar spine is hyperextended, which is dangerous and to be avoided in the overwhelming majority of exercises.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can either do a closed fist or open hand position. Whichever feels more comfortable. Step one foot back, and then the other to begin the Plank.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-de1f3d8d-7fff-58a9-5030-0571777deefc"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing The Forearm Plank</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Be careful to not let your hips rise or sag as you were holding the forearm Plank. Maintain a flat back the entire set. If you are having trouble knowing if your back is flat, try performing the exercise in front of a mirror so you can check your form.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Continuously press your elbows into the ground and spread your scapula. This will recruit your serratus anterior and get you some extra core work.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Progress The Forearm Plank:</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Like any other exercise, progression is important with the Plank. However, since the Plank is a hold and not a dynamic exercise with reps, it can be challenging knowing how to and when to progress the Plank. Here’s a quick step by step guide on progressing the Plank</span></p><p><b style="font-weight:normal;"><br></b></p><ol style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Set a range similar to a rep range</span><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">. For example, 45 to 60 seconds. Let’s say in the beginning you are only able to do 45 seconds. Each week, try to add a bit more time (2-5 secs). Once you are able to complete 60 seconds with good form time to further progress.</span></p></li><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Switch to a more difficult variation. The natural next step is switching to the Hand Plank. Keep your same time range of 45-60 seconds. Since this is a more difficult variation you will likely fatigue before 60 seconds. Build your way back to 60 seconds like you did with the Forearm Plank.&nbsp;</span></p></li><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Add weight. At this point, it’s time to try adding some resistance to the Plank. Start light! You can either ask a gym buddy or place the weight on your back yourself. Either way, make sure the plate is in the middle of your upper back and not your lumbar spine. Then you can progress the plank similarly to any other exercise. By adding weight bit by bit overtime.</span></p></li><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can continue to progress by going to a more difficult hold (Long Lever Plank, Hollow Hold) and then adding weight to those over time.&nbsp;</span></p></li></ol><p><br></p>	f	1	2	77	0	f	t	f	Published	2025-04-25 14:04:41.325696	2025-04-25 14:04:41.325696
206	Hanging Knee Raises	Hanging Knee Raises	\N	hanging-knee-raises			f	100	260	78	0	t	t	f	Published	2025-04-25 14:04:41.326789	2025-04-25 14:04:41.326789
207	Walking Calf Raises	Walking Calf Raises	\N	walking-calf-raises			f	60	30	5	0	f	t	f	Published	2025-04-25 14:04:41.327611	2025-04-25 14:04:41.327611
208	Nordic Hamstring Curl	Nordic Hamstring Curl	\N	nordic-hamstring-curl			f	100	240	11	0	f	t	f	Published	2025-04-25 14:04:41.328307	2025-04-25 14:04:41.328307
209	Barbell Roll Outs	Barbell Roll Outs	\N	barbell-roll-outs	<p><br></p>\r\n<h1>Barbell Roll Outs: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell and weight plates appropriate for your fitness level</li>\r\n  <li>Position the barbell on the ground and load the weight plates onto the bar</li>\r\n  <li>Get into a kneeling position with your knees hip-width apart</li>\r\n  <li>Grasp the barbell with a shoulder-width grip</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Begin with the barbell under your chest, keeping your back straight and core engaged</li>\r\n  <li>Slowly roll the barbell forward, extending your arms and maintaining a straight line from your head to your hips</li>\r\n  <li>Pause when you reach full extension or when your back starts to round</li>\r\n  <li>Reverse the movement and roll the barbell back to the starting position</li>\r\n  <li>Repeat the movement for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your core tight and engage your abdominal muscles to maintain proper form</li>\r\n  <li>Keep your head and neck in a neutral position, avoiding excessive extension or flexion</li>\r\n  <li>Move slowly and deliberately, focusing on controlled movement</li>\r\n  <li>Breathe out as you roll out and breathe in as you return to the starting position</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Rounding your back or losing form</li>\r\n  <li>Moving too quickly, losing control of the barbell</li>\r\n  <li>Excessive extension or flexion of the head and neck</li>\r\n  <li>Holding your breath or breathing erratically</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Roll Outs: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell and weight plates appropriate for your fitness level</li>\r\n  <li>Position the barbell on the ground and load the weight plates onto the bar</li>\r\n  <li>Get into a kneeling position with your knees hip-width apart</li>\r\n  <li>Grasp the barbell with a shoulder-width grip</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Begin with the barbell under your chest, keeping your back straight and core engaged</li>\r\n  <li>Slowly roll the barbell forward, extending your arms and maintaining a straight line from your head to your hips</li>\r\n  <li>Pause when you reach full extension or when your back starts to round</li>\r\n  <li>Reverse the movement and roll the barbell back to the starting position</li>\r\n  <li>Repeat the movement for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your core tight and engage your abdominal muscles to maintain proper form</li>\r\n  <li>Keep your head and neck in a neutral position, avoiding excessive extension or flexion</li>\r\n  <li>Move slowly and deliberately, focusing on controlled movement</li>\r\n  <li>Breathe out as you roll out and breathe in as you return to the starting position</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Rounding your back or losing form</li>\r\n  <li>Moving too quickly, losing control of the barbell</li>\r\n  <li>Excessive extension or flexion of the head and neck</li>\r\n  <li>Holding your breath or breathing erratically</li>\r\n</ul>	f	1	200	71	0	f	t	f	Published	2025-04-25 14:04:41.329205	2025-04-25 14:04:41.329205
210	Barbell Calf Raises	Barbell Calf Raises	\N	barbell-calf-raises	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 36px; white-space: pre-wrap;"><b>How To Do The Barbell Calve Raise</b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 14.6667px; white-space: pre-wrap;"><b><br></b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 24px; white-space: pre-wrap;"><b>Setup</b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Place the barbell hooks just below shoulder height so you don't have to go up on your tippy toes to un-rack and re-rack the bar.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Take a wider than shoulder width grip. Whatever is most comfortable. Shrug your shoulders up and press your upper traps into the bar. Break at the knees and hips and squat out of the barbell hooks. Take two steps back into a shoulder width stance with your toes facing forward.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-bce7f65f-7fff-6574-f670-5a6ffa327907"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">In our demo video, I am performing the exercise flat on the ground. You can get a longer range of motion by putting a plate or a small step in front of you to place the balls of your feet on. This will let you flex your ankles to a much greater extent.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Start flat footed. Pull your heels up as high as your ankle range of motion will allow for. You should feel a hard contraction in your calf muscle. Spend an extra second in this contracted position before going back to the starting point.</span></p><p></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Be careful with this exercise. It can be alluring to use too much weight. If you are having trouble maintaining a neutral spine, or are unable to keep your knees mostly extended, then the weight is too heavy. Your central nervous system is very smart. If you approach this exercise with the mindset of simply getting from point A to point B, your nervous system will begin to recruit your quadriceps into the movement by slightly flexing and extending your knee joints.</span></p><div><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></div>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 36px; white-space: pre-wrap;"><b>How To Do The Barbell Calve Raise</b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 14.6667px; white-space: pre-wrap;"><b><br></b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 24px; white-space: pre-wrap;"><b>Setup</b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Place the barbell hooks just below shoulder height so you don't have to go up on your tippy toes to un-rack and re-rack the bar.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Take a wider than shoulder width grip. Whatever is most comfortable. Shrug your shoulders up and press your upper traps into the bar. Break at the knees and hips and squat out of the barbell hooks. Take two steps back into a shoulder width stance with your toes facing forward.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-bce7f65f-7fff-6574-f670-5a6ffa327907"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">In our demo video, I am performing the exercise flat on the ground. You can get a longer range of motion by putting a plate or a small step in front of you to place the balls of your feet on. This will let you flex your ankles to a much greater extent.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Start flat footed. Pull your heels up as high as your ankle range of motion will allow for. You should feel a hard contraction in your calf muscle. Spend an extra second in this contracted position before going back to the starting point.</span></p><p></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Be careful with this exercise. It can be alluring to use too much weight. If you are having trouble maintaining a neutral spine, or are unable to keep your knees mostly extended, then the weight is too heavy. Your central nervous system is very smart. If you approach this exercise with the mindset of simply getting from point A to point B, your nervous system will begin to recruit your quadriceps into the movement by slightly flexing and extending your knee joints.</span></p><div><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></div>	f	90	270	102	0	t	t	f	Published	2025-04-25 14:04:41.329696	2025-04-25 14:04:41.329696
211	Barbell Close Grip Bench Press	Barbell Close Grip Bench Press	\N	barbell-close-grip-bench-press	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><b style="box-sizing: border-box; font-weight: 700; color: rgb(51, 51, 51); font-family: Arial; font-size: 36px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><font color="#000000" style="box-sizing: border-box;">How To Perform The Close Grip Bench Press</font></b><span style="font-size: 36px; font-family: Arial; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; background-color: rgb(255, 255, 0);"><b style=""><font color="#000000" style=""></font></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setting Up</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Foot Placement</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can either be flat footed or just have toes on the ground. Either way, push your toes to generate some tension in your quads. Generating tension through your whole body will help you lift more weight.&nbsp;</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Torso Technique</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Point your rib cage at the ceiling and pull your shoulder blades back really hard. Dig your shoulder blades into the bench. This will arch your spine somewhat. This is the only time it is ok to extend your spine. Because you are braced against the bench, the bench will soak up a lot of the tension that would otherwise fall on your lumbar spine.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Grip</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grip width should be exactly shoulder width.&nbsp; Bringing your hands closer than shoulder width will not increase the range of motion at your elbows (the joint the triceps act on). And going any closer than shoulder width tends to only put more stress on your wrist and shoulder joints. If you are not sure what a shoulder width grip is, simply point both of your arms straight out in front of you. You can also lay on the bench and do this. Use the markings on the bar to make sure your hands are even as well.&nbsp;</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-09169b8c-7fff-db63-1c2a-8ed08931f2d7"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Make sure the bar is set very deeply in your hands. This will help keep your wrists in a strong neutral position. Also, this will prevent your wrists from getting extended.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;The close Grip Bench Press</b></span></p><p></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">After you have un-racked the bar, you will initiate the rep by breaking at the elbows. Took your elbows very hard into your side. The bar should land lower on your torso than it does with a normal bench press. As you tap your torso with the bar begin to press the bar back up toward the ceiling in a J shaped arc. Make sure to extend (but not hyperextend) your elbows at the top of each rep.</span></p><div><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></div>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><b style="box-sizing: border-box; font-weight: 700; color: rgb(51, 51, 51); font-family: Arial; font-size: 36px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><font color="#000000" style="box-sizing: border-box;">How To Perform The Close Grip Bench Press</font></b><span style="font-size: 36px; font-family: Arial; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; background-color: rgb(255, 255, 0);"><b style=""><font color="#000000" style=""></font></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setting Up</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Foot Placement</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can either be flat footed or just have toes on the ground. Either way, push your toes to generate some tension in your quads. Generating tension through your whole body will help you lift more weight.&nbsp;</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Torso Technique</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Point your rib cage at the ceiling and pull your shoulder blades back really hard. Dig your shoulder blades into the bench. This will arch your spine somewhat. This is the only time it is ok to extend your spine. Because you are braced against the bench, the bench will soak up a lot of the tension that would otherwise fall on your lumbar spine.</span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Grip</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Grip width should be exactly shoulder width.&nbsp; Bringing your hands closer than shoulder width will not increase the range of motion at your elbows (the joint the triceps act on). And going any closer than shoulder width tends to only put more stress on your wrist and shoulder joints. If you are not sure what a shoulder width grip is, simply point both of your arms straight out in front of you. You can also lay on the bench and do this. Use the markings on the bar to make sure your hands are even as well.&nbsp;</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-09169b8c-7fff-db63-1c2a-8ed08931f2d7"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Make sure the bar is set very deeply in your hands. This will help keep your wrists in a strong neutral position. Also, this will prevent your wrists from getting extended.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing&nbsp;The close Grip Bench Press</b></span></p><p></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">After you have un-racked the bar, you will initiate the rep by breaking at the elbows. Took your elbows very hard into your side. The bar should land lower on your torso than it does with a normal bench press. As you tap your torso with the bar begin to press the bar back up toward the ceiling in a J shaped arc. Make sure to extend (but not hyperextend) your elbows at the top of each rep.</span></p><div><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></div>	f	105	280	90	0	t	t	f	Published	2025-04-25 14:04:41.330334	2025-04-25 14:04:41.330334
212	Barbell Curtsy Lunge	Barbell Curtsy Lunge	\N	barbell-curtsy-lunge	<p><br></p>\r\n<h1>Barbell Curtsy Lunge: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Select a barbell and adjust the weight to a suitable level for your fitness level</li>\r\n  <li>Stand with your feet hip-width apart and your hands gripping the barbell, palms facing forward</li>\r\n  <li>Keep your back straight and your shoulders relaxed</li>\r\n  <li>Engage your core muscles to maintain balance and stability</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Step your right foot diagonally behind you to the left, crossing it behind your left foot</li>\r\n  <li>Bend your left knee to lower your hips down towards the ground, keeping your right knee close to the ground</li>\r\n  <li>Return to the starting position by pushing through your left heel to stand up</li>\r\n  <li>Repeat the lunge on the other side by crossing your left foot behind your right foot</li>\r\n  <li>Perform the desired number of reps on each side</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Maintain a straight back and keep your core engaged throughout the movement</li>\r\n  <li>Ensure your front knee does not extend past your ankle as you lower your body</li>\r\n  <li>Keep your weight distributed evenly between both feet</li>\r\n  <li>Focus on maintaining balance and control as you perform each rep</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid arching your back or hunching forward as you lower your body</li>\r\n  <li>Do not let your front knee extend too far past your ankle, as this can place unnecessary stress on your knee joint</li>\r\n  <li>Avoid rounding your shoulders or neck, and keep your gaze forward</li>\r\n  <li>Do not use momentum or swing the barbell to complete the movement</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Curtsy Lunge: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Select a barbell and adjust the weight to a suitable level for your fitness level</li>\r\n  <li>Stand with your feet hip-width apart and your hands gripping the barbell, palms facing forward</li>\r\n  <li>Keep your back straight and your shoulders relaxed</li>\r\n  <li>Engage your core muscles to maintain balance and stability</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Step your right foot diagonally behind you to the left, crossing it behind your left foot</li>\r\n  <li>Bend your left knee to lower your hips down towards the ground, keeping your right knee close to the ground</li>\r\n  <li>Return to the starting position by pushing through your left heel to stand up</li>\r\n  <li>Repeat the lunge on the other side by crossing your left foot behind your right foot</li>\r\n  <li>Perform the desired number of reps on each side</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Maintain a straight back and keep your core engaged throughout the movement</li>\r\n  <li>Ensure your front knee does not extend past your ankle as you lower your body</li>\r\n  <li>Keep your weight distributed evenly between both feet</li>\r\n  <li>Focus on maintaining balance and control as you perform each rep</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid arching your back or hunching forward as you lower your body</li>\r\n  <li>Do not let your front knee extend too far past your ankle, as this can place unnecessary stress on your knee joint</li>\r\n  <li>Avoid rounding your shoulders or neck, and keep your gaze forward</li>\r\n  <li>Do not use momentum or swing the barbell to complete the movement</li>\r\n</ul>	f	70	230	59	0	f	t	f	Published	2025-04-25 14:04:41.331299	2025-04-25 14:04:41.331299
277	Band Single Arm Overhead Press	Band Single Arm Overhead Press	\N	band-single-arm-overhead-press	\N	\N	f	1	35	35	0	f	f	f	Published	2025-04-25 14:04:41.379983	2025-04-25 14:04:41.379983
278	Band Shrug	Band Shrug	\N	band-shrug	\N	\N	f	1	50	50	0	f	f	f	Published	2025-04-25 14:04:41.381093	2025-04-25 14:04:41.381093
213	Barbell Silverback Shrug	Barbell Silverback Shrug	\N	barbell-silverback-shrug	<p><br></p>\r\n<h1>Barbell Silverback Shrug: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by selecting a barbell that is the appropriate weight for your fitness level and strength</li>\r\n  <li>Load the barbell with weight plates, making sure to secure them onto the barbell with collars</li>\r\n  <li>Stand in front of the barbell, with your feet shoulder-width apart and your knees slightly bent</li>\r\n  <li>Grasp the barbell with an overhand grip, making sure that your hands are slightly wider than shoulder-width apart</li>\r\n  <li>Position the barbell in front of your thighs, with your arms extended and your shoulders relaxed</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Inhale and lift the barbell up towards your chest, keeping your arms extended and your shoulders relaxed</li>\r\n  <li>Exhale and shrug your shoulders upwards, towards your ears</li>\r\n  <li>Pause for a moment at the top of the movement, holding the barbell and your shoulders in position</li>\r\n  <li>Inhale and lower the barbell back down to the starting position, keeping your arms extended and your shoulders relaxed</li>\r\n  <li>Repeat for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Make sure to keep your focus on shrugging your shoulders upwards, rather than lifting the barbell</li>\r\n  <li>Avoid using your arms to pull the barbell upwards, as this can place unnecessary stress on your back and neck</li>\r\n  <li>Keep your chin tucked in, to maintain good posture and prevent straining your neck</li>\r\n  <li>Make sure to keep your shoulders relaxed and your arms extended throughout the entire movement</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid rounding your back or hunching your shoulders, as this can put unnecessary strain on your back and neck</li>\r\n  <li>Avoid twisting or rotating your arms, as this can cause the barbell to become unevenly balanced and increase your risk of injury</li>\r\n  <li>Avoid using too much weight, as this can cause you to lose proper form and increase your risk of injury</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Silverback Shrug: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by selecting a barbell that is the appropriate weight for your fitness level and strength</li>\r\n  <li>Load the barbell with weight plates, making sure to secure them onto the barbell with collars</li>\r\n  <li>Stand in front of the barbell, with your feet shoulder-width apart and your knees slightly bent</li>\r\n  <li>Grasp the barbell with an overhand grip, making sure that your hands are slightly wider than shoulder-width apart</li>\r\n  <li>Position the barbell in front of your thighs, with your arms extended and your shoulders relaxed</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Inhale and lift the barbell up towards your chest, keeping your arms extended and your shoulders relaxed</li>\r\n  <li>Exhale and shrug your shoulders upwards, towards your ears</li>\r\n  <li>Pause for a moment at the top of the movement, holding the barbell and your shoulders in position</li>\r\n  <li>Inhale and lower the barbell back down to the starting position, keeping your arms extended and your shoulders relaxed</li>\r\n  <li>Repeat for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Make sure to keep your focus on shrugging your shoulders upwards, rather than lifting the barbell</li>\r\n  <li>Avoid using your arms to pull the barbell upwards, as this can place unnecessary stress on your back and neck</li>\r\n  <li>Keep your chin tucked in, to maintain good posture and prevent straining your neck</li>\r\n  <li>Make sure to keep your shoulders relaxed and your arms extended throughout the entire movement</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid rounding your back or hunching your shoulders, as this can put unnecessary strain on your back and neck</li>\r\n  <li>Avoid twisting or rotating your arms, as this can cause the barbell to become unevenly balanced and increase your risk of injury</li>\r\n  <li>Avoid using too much weight, as this can cause you to lose proper form and increase your risk of injury</li>\r\n</ul>	f	1	280	58	0	t	t	f	Published	2025-04-25 14:04:41.332561	2025-04-25 14:04:41.332561
215	Barbell Landmine Side Bend	Barbell Landmine Side Bend	\N	barbell-landmine-side-bend	<p><span style="font-size: 36px;"><b>Setup</b></span></p><p><span style="font-size: 14px;">To set up for a barbell landmine side bend exercise, you will need a barbell and a landmine attachment. If you do not have a landmine attachment, you can also use a sandbag, a heavy bag, or a bench.</span></p><p><br></p><p><span style="font-weight: 700;">Foot Placement</span></p><p>Stand with your feet shoulder-width apart and your side to the barbell.</p><div><br></div><div><b>How to do a Barbell Landmine Side Bend</b></div><div>Grasp the barbell with both hands, keeping your arms straight and your hands shoulder-width apart. </div><div>Lift the barbell off the ground and hold it in front of your hips, keeping your arms straight and your core engaged. </div><div><br></div><div>Bend at the waist and reach the barbell towards the ground on the side of your body. Keep your arms straight and your core engaged as you bend. Return to the starting position and repeat for the desired number of reps. Make sure to keep your core engaged and your movements controlled throughout the exercise.<br></div>	<p><span style="font-size: 36px;"><b>Setup</b></span></p><p><span style="font-size: 14px;">To set up for a barbell landmine side bend exercise, you will need a barbell and a landmine attachment. If you do not have a landmine attachment, you can also use a sandbag, a heavy bag, or a bench.</span></p><p><br></p><p><span style="font-weight: 700;">Foot Placement</span></p><p>Stand with your feet shoulder-width apart and your side to the barbell.</p><div><br></div><div><b>How to do a Barbell Landmine Side Bend</b></div><div>Grasp the barbell with both hands, keeping your arms straight and your hands shoulder-width apart. </div><div>Lift the barbell off the ground and hold it in front of your hips, keeping your arms straight and your core engaged. </div><div><br></div><div>Bend at the waist and reach the barbell towards the ground on the side of your body. Keep your arms straight and your core engaged as you bend. Return to the starting position and repeat for the desired number of reps. Make sure to keep your core engaged and your movements controlled throughout the exercise.<br></div>	f	280	200	72	0	f	t	f	Published	2025-04-25 14:04:41.333377	2025-04-25 14:04:41.333377
216	Cable Pec Fly	Cable Pec Fly	\N	cable-pec-fly			f	90	240	30	0	t	t	f	Published	2025-04-25 14:04:41.33406	2025-04-25 14:04:41.33406
217	Cable Chest Press	Cable Chest Press	\N	cable-chest-press	\N	\N	f	70	250	55	0	t	t	f	Published	2025-04-25 14:04:41.335017	2025-04-25 14:04:41.335017
218	Cable Goblet Squat	Cable Goblet Squat	\N	cable-goblet-squat	\N	\N	f	60	60	60	0	t	f	f	Published	2025-04-25 14:04:41.335956	2025-04-25 14:04:41.335956
219	Cable Split Squat	Cable Split Squat	\N	cable-split-squat	\N	\N	f	1	25	25	0	f	f	f	Published	2025-04-25 14:04:41.336766	2025-04-25 14:04:41.336766
220	Cable Bar Romanian Deadlift	Cable Bar Romanian Deadlift	\N	cable-bar-romanian-deadlift	\N	\N	f	60	60	60	0	t	f	f	Published	2025-04-25 14:04:41.337622	2025-04-25 14:04:41.337622
221	Cable Single Leg Deadlift	Cable Single Leg Deadlift	\N	cable-single-leg-deadlift	\N	\N	f	15	15	15	0	f	f	f	Published	2025-04-25 14:04:41.338512	2025-04-25 14:04:41.338512
222	Cable Pull Through	Cable Pull Through	\N	cable-pull-through	\N	\N	f	260	100	10	0	f	t	f	Published	2025-04-25 14:04:41.339325	2025-04-25 14:04:41.339325
223	Cable Standing Hip Abduction	Cable Standing Hip Abduction	\N	cable-standing-hip-abduction			f	110	30	30	0	f	f	f	Published	2025-04-25 14:04:41.340031	2025-04-25 14:04:41.340031
224	Cable Standing Straight Leg Glute Kickback	Cable Standing Straight Leg Glute Kickback	\N	cable-standing-straight-leg-glute-glute-kickback			f	30	30	85	0	t	f	f	Published	2025-04-25 14:04:41.341107	2025-04-25 14:04:41.341107
225	Cable Hamstring Curl	Cable Hamstring Curl	\N	cable-hamstring-curl			f	70	15	15	0	f	f	f	Published	2025-04-25 14:04:41.341779	2025-04-25 14:04:41.341779
226	Cable Overhead Press	Cable Overhead Press	\N	cable-overhead-press	\N	\N	f	1	60	60	0	f	f	f	Published	2025-04-25 14:04:41.342544	2025-04-25 14:04:41.342544
227	Cable Low Single Arm Lateral Raise	Cable Low Single Arm Lateral Raise	\N	cable-low-single-arm-lateral-raise	\N	\N	f	80	280	45	0	t	t	f	Published	2025-04-25 14:04:41.343519	2025-04-25 14:04:41.343519
228	Cable High Single Arm Rear Delt Fly	Cable High Single Arm Rear Delt Fly	\N	cable-high-single-arm-rear-delt-fly	\N	\N	f	40	20	1	0	f	f	f	Published	2025-04-25 14:04:41.344312	2025-04-25 14:04:41.344312
229	Cable Upright Row	Cable Upright Row	\N	cable-upright-row	\N	\N	f	1	15	15	0	t	f	f	Published	2025-04-25 14:04:41.345273	2025-04-25 14:04:41.345273
230	Cable Wrist Curl	Cable Wrist Curl	\N	cable-wrist-curl			f	103	30	30	0	f	f	f	Published	2025-04-25 14:04:41.346259	2025-04-25 14:04:41.346259
231	Cable Wrist Extension	Cable Wrist Extension	\N	cable-wrist-extension			f	80	40	40	0	f	f	f	Published	2025-04-25 14:04:41.34686	2025-04-25 14:04:41.34686
232	Cable Lat Prayer	Cable Lat Prayer	\N	cable-lat-prayer			f	30	30	30	0	f	f	f	Published	2025-04-25 14:04:41.34749	2025-04-25 14:04:41.34749
233	Cable Bent Over Bar Pullover	Cable Bent Over Bar Pullover	\N	cable-bent-over-bar-pullover			f	270	270	50	0	f	t	f	Published	2025-04-25 14:04:41.348103	2025-04-25 14:04:41.348103
234	Cable Pull In	Cable Pull In	\N	cable-pull-in	\N	\N	f	260	260	40	0	f	t	f	Published	2025-04-25 14:04:41.348663	2025-04-25 14:04:41.348663
235	Cable 30 Degree Shrug	Cable 30 Degree Shrug	\N	cable-30-degree-shrug			f	100	275	58	0	f	t	f	Published	2025-04-25 14:04:41.34932	2025-04-25 14:04:41.34932
236	Cable Silverback Shrug	Cable Silverback Shrug	\N	cable-silverback-shrug			f	1	60	60	0	t	f	f	Published	2025-04-25 14:04:41.350081	2025-04-25 14:04:41.350081
237	Cable Twisting Curl	Cable Twisting Curl	\N	cable-twisting-curl	\N	\N	f	1	265	30	0	f	f	f	Published	2025-04-25 14:04:41.350906	2025-04-25 14:04:41.350906
238	Cable Single Arm Bayesian Curl	Cable Single Arm Bayesian Curl	\N	cable-single-arm-bayesian-curl			f	80	240	100	0	t	t	f	Published	2025-04-25 14:04:41.351515	2025-04-25 14:04:41.351515
239	Cable Single Arm Reverse Curl	Cable Single Arm Reverse Curl	\N	cable-single-arm-reverse-curl			f	60	24	24	0	t	f	f	Published	2025-04-25 14:04:41.352244	2025-04-25 14:04:41.352244
240	Cable Single Arm Hammer Curl	Cable Single Arm Hammer Curl	\N	cable-single-arm-hammer-curl			f	1	250	40	0	t	t	f	Published	2025-04-25 14:04:41.353161	2025-04-25 14:04:41.353161
279	Band Skullcrusher	Band Skullcrusher	\N	band-skullcrusher	\N	\N	f	1	25	25	0	t	f	f	Published	2025-04-25 14:04:41.381645	2025-04-25 14:04:41.381645
280	Band Squat	Band Squat	\N	band-squat	\N	\N	f	1	55	55	0	f	f	f	Published	2025-04-25 14:04:41.382263	2025-04-25 14:04:41.382263
281	Dumbbell Reverse Curl	Dumbbell Reverse Curl	\N	dumbbell-reverse-curl	\N	\N	f	90	270	20	0	t	t	f	Published	2025-04-25 14:04:41.382896	2025-04-25 14:04:41.382896
282	Dumbbell Row Unilateral	Dumbbell Row Unilateral	\N	dumbbell-row-unilateral	\N	\N	f	280	460	55	0	t	t	f	Published	2025-04-25 14:04:41.383802	2025-04-25 14:04:41.383802
283	Dumbbell Goblet Good Morning	Dumbbell Goblet Good Morning	\N	dumbbell-goblet-good-morning	\N	\N	f	250	250	20	0	t	t	f	Published	2025-04-25 14:04:41.384671	2025-04-25 14:04:41.384671
241	Cable Rope Pushdown	Cable Rope Pushdown	\N	cable-rope-pushdown	<p><b><span style="font-size: 36px;">How To Perform The Cable Pushdown</span></b></p><p><b><span style="font-size: 24px;">Set Up</span></b></p><p>Set the cable pin all the way to the top. You can use a rope or a straight bar attachment for this exercise. In our demo video, we are using a rope so our instructions will be specific to that.</p><p>Grab onto the rope and take a few steps back. You can start with your elbows in an extended or flexed position.<br></p><p>Push your butt back slightly. This will get your hips out of the way giving your arms enough room to fully extend.</p><p><b><span style="font-size: 24px;">Performing The Cable Pushdown</span></b></p><p>My favorite cue to use on the Tricep Push Down is, "T-Rex arms." It's extremely important that you keep your upper arm and your elbows glued to your side. Your elbow joint should be causing the movement and your forearm should be the only moving body part. This will keep the stress and tension purely on your triceps and not recruit other body parts. Make sure to fully extend and flex your elbows on each rep.</p><p>Be careful of swinging and bouncing on this exercise. It is very common to use too much weight on this exercise. If you find yourself having to use momentum, the weight is too heavy. </p><p>Also, if you notice your shoulders beginning to roll forward on the concentric, the weight is too heavy. Your central nervous system is extremely intelligent and will help you get from point A to point B by any means necessary. It will begin trying to recruit your anterior deltoid and pec major by rolling your shoulders forward on top of the rope or straight bar so you can press the weight down instead of performing a strict Triceps Extension.</p>	<p><b><span style="font-size: 36px;">How To Perform The Cable Pushdown</span></b></p><p><b><span style="font-size: 24px;">Set Up</span></b></p><p>Set the cable pin all the way to the top. You can use a rope or a straight bar attachment for this exercise. In our demo video, we are using a rope so our instructions will be specific to that.</p><p>Grab onto the rope and take a few steps back. You can start with your elbows in an extended or flexed position.<br></p><p>Push your butt back slightly. This will get your hips out of the way giving your arms enough room to fully extend.</p><p><b><span style="font-size: 24px;">Performing The Cable Pushdown</span></b></p><p>My favorite cue to use on the Tricep Push Down is, "T-Rex arms." It's extremely important that you keep your upper arm and your elbows glued to your side. Your elbow joint should be causing the movement and your forearm should be the only moving body part. This will keep the stress and tension purely on your triceps and not recruit other body parts. Make sure to fully extend and flex your elbows on each rep.</p><p>Be careful of swinging and bouncing on this exercise. It is very common to use too much weight on this exercise. If you find yourself having to use momentum, the weight is too heavy. </p><p>Also, if you notice your shoulders beginning to roll forward on the concentric, the weight is too heavy. Your central nervous system is extremely intelligent and will help you get from point A to point B by any means necessary. It will begin trying to recruit your anterior deltoid and pec major by rolling your shoulders forward on top of the rope or straight bar so you can press the weight down instead of performing a strict Triceps Extension.</p>	f	110	440	75	0	t	t	f	Published	2025-04-25 14:04:41.353901	2025-04-25 14:04:41.353901
242	Cable Cross Pushdown	Cable Cross Pushdown	\N	cable-cross-pushdown			f	1	25	25	0	t	f	f	Published	2025-04-25 14:04:41.354768	2025-04-25 14:04:41.354768
243	Cable Rope Skullcrusher	Cable Rope Skullcrusher	\N	cable-rope-skullcrusher			f	1	25	25	0	t	f	f	Published	2025-04-25 14:04:41.355272	2025-04-25 14:04:41.355272
244	Cable Rope Overhead Tricep Extension	Cable Rope Overhead Tricep Extension	\N	cable-rope-overhead-tricep-extension			f	90	255	20	0	t	t	f	Published	2025-04-25 14:04:41.355773	2025-04-25 14:04:41.355773
245	Cable Calve Raise	Cable Calve Raise	\N	cable-calve-raise			f	1	80	80	0	f	f	f	Published	2025-04-25 14:04:41.356611	2025-04-25 14:04:41.356611
246	Cable Standing Leg Extension	Cable Standing Leg Extension	\N	cable-standing-leg-extension			f	100	15	15	0	f	f	f	Published	2025-04-25 14:04:41.357255	2025-04-25 14:04:41.357255
247	Cable Wood Chopper	Cable Wood Chopper	\N	cable-wood-chopper			f	250	250	30	0	f	t	f	Published	2025-04-25 14:04:41.357977	2025-04-25 14:04:41.357977
248	Cable Standing Crunch	Cable Standing Crunch	\N	cable-standing-crunch			f	1	35	35	0	f	f	f	Published	2025-04-25 14:04:41.358537	2025-04-25 14:04:41.358537
249	Cable Row Bar Kneeling Crunch	Cable Row Bar Kneeling Crunch	\N	cable-row-bar-kneeling-crunch			f	100	240	50	0	f	t	f	Published	2025-04-25 14:04:41.359072	2025-04-25 14:04:41.359072
250	Cable Pallof Press	Cable Pallof Press	\N	cable-pallof-press	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Cable Pallof Press</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-89f64c41-7fff-3917-50bd-15f976f36a81"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You want the cable at roughly nipple height. Use a d handle attachment or a nylon plastic handle. Either interlock your fingers or place one set of fingers over the other. Whichever is more comfortable.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Take a couple of steps away from the cable stack and face sideways. The cable itself should be pulling you to the side. Use a slightly wider than shoulder width stance. Don't be hesitant to further widen your stance. The wider your stance, the bigger your base of support and the more weight you will likely be able to use.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Start with your fists up against your chest. Press the cable away from you until your elbows are fully extended. In this extended position you should feel your obliques contract. The further away from your center of gravity the resistance goes, the harder it is on the obliques. This is why it is of the utmost importance that you fully extend your elbows on each rep. That extended position is the most important part of the movement so spend an extra second with your elbows extended. If you start fatiguing to a point you're unable to maintain your torso position, end the set.</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Cable Pallof Press</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-89f64c41-7fff-3917-50bd-15f976f36a81"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You want the cable at roughly nipple height. Use a d handle attachment or a nylon plastic handle. Either interlock your fingers or place one set of fingers over the other. Whichever is more comfortable.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Take a couple of steps away from the cable stack and face sideways. The cable itself should be pulling you to the side. Use a slightly wider than shoulder width stance. Don't be hesitant to further widen your stance. The wider your stance, the bigger your base of support and the more weight you will likely be able to use.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Start with your fists up against your chest. Press the cable away from you until your elbows are fully extended. In this extended position you should feel your obliques contract. The further away from your center of gravity the resistance goes, the harder it is on the obliques. This is why it is of the utmost importance that you fully extend your elbows on each rep. That extended position is the most important part of the movement so spend an extra second with your elbows extended. If you start fatiguing to a point you're unable to maintain your torso position, end the set.</span></p>	f	230	230	40	0	t	t	f	Published	2025-04-25 14:04:41.359749	2025-04-25 14:04:41.359749
251	Band Calf Raise	Band Calf Raise	\N	band-calf-raise	\N	\N	f	1	60	60	0	f	f	f	Published	2025-04-25 14:04:41.360328	2025-04-25 14:04:41.360328
252	Band Single Arm Pec Fly	Band Single Arm Pec Fly	\N	band-single-arm-pec-fly	\N	\N	f	1	30	30	0	f	f	f	Published	2025-04-25 14:04:41.360842	2025-04-25 14:04:41.360842
253	Band Single Arm Chest Press	Band Single Arm Chest Press	\N	band-single-arm-chest-press	\N	\N	f	1	40	40	0	f	f	f	Published	2025-04-25 14:04:41.361359	2025-04-25 14:04:41.361359
254	Band Wood Chopper	Band Wood Chopper	\N	band-wood-chopper	\N	\N	f	25	25	25	0	f	f	f	Published	2025-04-25 14:04:41.362359	2025-04-25 14:04:41.362359
255	Band Face Pull	Band Face Pull	\N	band-face-pull	\N	\N	f	1	30	30	0	f	f	f	Published	2025-04-25 14:04:41.362992	2025-04-25 14:04:41.362992
256	Band Spanish Squat	Band Spanish Squat	\N	band-spanish-squat	\N	\N	f	1	15	15	0	f	f	f	Published	2025-04-25 14:04:41.363778	2025-04-25 14:04:41.363778
257	Band Crunch	Band Crunch	\N	band-crunch	\N	\N	f	1	40	40	0	f	f	f	Published	2025-04-25 14:04:41.364409	2025-04-25 14:04:41.364409
258	Band Bayesian Curl	Band Bayesian Curl	\N	band-bayesian-curl	\N	\N	f	1	40	70	0	t	f	f	Published	2025-04-25 14:04:41.364931	2025-04-25 14:04:41.364931
259	Band Front Raise	Band Front Raise	\N	band-front-raise	\N	\N	f	70	15	15	0	f	f	f	Published	2025-04-25 14:04:41.365448	2025-04-25 14:04:41.365448
260	Band Good Morning	Band Good Morning	\N	band-good-morning	\N	\N	f	30	30	30	0	f	f	f	Published	2025-04-25 14:04:41.3662	2025-04-25 14:04:41.3662
261	Band Bayesian Hammer Curl	Band Bayesian Hammer Curl	\N	band-bayesian-hammer-curl	\N	\N	f	1	20	20	0	t	f	f	Published	2025-04-25 14:04:41.366908	2025-04-25 14:04:41.366908
262	Band Horizontal Shrug	Band Horizontal Shrug	\N	band-horizontal-shrug	\N	\N	f	1	15	15	0	f	f	f	Published	2025-04-25 14:04:41.367665	2025-04-25 14:04:41.367665
263	Band Glute Kickback	Band Glute Kickback	\N	band-glute-kickback	\N	\N	f	1	35	35	0	f	f	f	Published	2025-04-25 14:04:41.368327	2025-04-25 14:04:41.368327
264	Band Kneeling Single Arm Pulldown	Band Kneeling Single Arm Pulldown	\N	band-kneeling-single-arm-pulldown	\N	\N	f	20	20	20	0	f	f	f	Published	2025-04-25 14:04:41.369027	2025-04-25 14:04:41.369027
265	Band Lateral Raise	Band Lateral Raise	\N	band-lateral-raise	\N	\N	f	50	20	20	0	t	f	f	Published	2025-04-25 14:04:41.36976	2025-04-25 14:04:41.36976
266	Band Leg Press	Band Leg Press	\N	band-leg-press	\N	\N	f	1	30	30	0	f	f	f	Published	2025-04-25 14:04:41.370932	2025-04-25 14:04:41.370932
267	Band Overhead Tricep Extension	Band Overhead Tricep Extension	\N	band-overhead-tricep-extension	\N	\N	f	1	20	20	0	f	f	f	Published	2025-04-25 14:04:41.371576	2025-04-25 14:04:41.371576
268	Band Pallof Press	Band Pallof Press	\N	band-pallof-press	\N	\N	f	240	240	40	0	t	t	f	Published	2025-04-25 14:04:41.372243	2025-04-25 14:04:41.372243
269	Band Pull Apart	Band Pull Apart	\N	band-pull-apart	\N	\N	f	1	70	50	0	f	t	f	Published	2025-04-25 14:04:41.372795	2025-04-25 14:04:41.372795
270	Band Pullover	Band Pullover	\N	band-pullover	\N	\N	f	35	35	35	0	f	f	f	Published	2025-04-25 14:04:41.373695	2025-04-25 14:04:41.373695
271	Band Pullthrough	Band Pullthrough	\N	band-pullthrough	\N	\N	f	15	15	15	0	f	f	f	Published	2025-04-25 14:04:41.374254	2025-04-25 14:04:41.374254
272	Band Pushdown	Band Pushdown	\N	band-pushdown			f	1	50	50	0	f	f	f	Published	2025-04-25 14:04:41.375127	2025-04-25 14:04:41.375127
273	Band Pushup	Band Pushup	\N	band-pushup	\N	\N	f	100	40	50	0	t	f	f	Published	2025-04-25 14:04:41.3765	2025-04-25 14:04:41.3765
274	Band Romanian Deadlift	Band Romanian Deadlift	\N	band-romanian-deadlift	\N	\N	f	50	50	50	0	t	f	f	Published	2025-04-25 14:04:41.377378	2025-04-25 14:04:41.377378
275	Band Bayesian Reverse Curl	Band Bayesian Reverse Curl	\N	band-bayesian-reverse-curl	\N	\N	f	1	15	15	0	t	f	f	Published	2025-04-25 14:04:41.378192	2025-04-25 14:04:41.378192
276	Band Row	Band Row	\N	band-row	\N	\N	f	65	65	65	0	f	f	f	Published	2025-04-25 14:04:41.379319	2025-04-25 14:04:41.379319
284	Dumbbell Goblet Bulgarian Split Squat	Dumbbell Goblet Bulgarian Split Squat	\N	dumbbell-goblet-bulgarian-split-squat	\N	\N	f	1	10	10	0	f	f	f	Published	2025-04-25 14:04:41.385485	2025-04-25 14:04:41.385485
285	Dumbbell Skullcrusher	Dumbbell Skullcrusher	\N	dumbbell-skullcrusher			f	1	270	50	0	t	t	f	Published	2025-04-25 14:04:41.386131	2025-04-25 14:04:41.386131
286	Dumbbell Hip Thrust	Dumbbell Hip Thrust	\N	dumbbell-hip-thrust			f	80	50	83	0	t	f	f	Published	2025-04-25 14:04:41.38729	2025-04-25 14:04:41.38729
287	Dumbbell Wood Chopper	Dumbbell Wood Chopper	\N	dumbbell-wood-chopper	<p><b><span style="font-size: 36px;">How To Perform The Dumbbell Wood Chopper</span></b></p><p><b><span style="font-size: 24px;">Setup</span></b></p><p>Grab a single dumbbell and hold it horizontally with the ends of the dumbbells in each hand. Use a wider than shoulder width stance. We have to hit both sides of the obliques with this exercise. So we will begin with going right to left. You can perform either side first.</p><p>Start with the dumbbell on the outside of your right quadricep.</p><p><b><span style="font-size: 24px;">Performing&nbsp;</span></b></p><p>Think explosively when performing this movement. Rotate at the spine bringing the dumbbell from your right quadricep up to roughly eye level on your left side. Keep your elbows mostly extended. Do not rotate too far. The dumbbell should not go behind your body. Going behind the body will put too much stress on your lumbar spine.&nbsp;</p><p>Also, as you are rotating at the spine, pivot your back foot. Your right foot in this example. Imagine you are performing a baseball bat or golf swing. Pivoting that back foot will keep your back knee from twisting too far.</p><div><br></div>	<p><b><span style="font-size: 36px;">How To Perform The Dumbbell Wood Chopper</span></b></p><p><b><span style="font-size: 24px;">Setup</span></b></p><p>Grab a single dumbbell and hold it horizontally with the ends of the dumbbells in each hand. Use a wider than shoulder width stance. We have to hit both sides of the obliques with this exercise. So we will begin with going right to left. You can perform either side first.</p><p>Start with the dumbbell on the outside of your right quadricep.</p><p><b><span style="font-size: 24px;">Performing&nbsp;</span></b></p><p>Think explosively when performing this movement. Rotate at the spine bringing the dumbbell from your right quadricep up to roughly eye level on your left side. Keep your elbows mostly extended. Do not rotate too far. The dumbbell should not go behind your body. Going behind the body will put too much stress on your lumbar spine.&nbsp;</p><p>Also, as you are rotating at the spine, pivot your back foot. Your right foot in this example. Imagine you are performing a baseball bat or golf swing. Pivoting that back foot will keep your back knee from twisting too far.</p><div><br></div>	f	290	200	15	0	t	t	f	Published	2025-04-25 14:04:41.388152	2025-04-25 14:04:41.388152
288	Dumbbell Situp	Dumbbell Situp	\N	dumbbell-situp			f	70	40	40	0	t	f	f	Published	2025-04-25 14:04:41.38874	2025-04-25 14:04:41.38874
289	Dumbbell Russian Twist	Dumbbell Russian Twist	\N	dumbbell-russian-twist			f	270	270	76	0	t	t	f	Published	2025-04-25 14:04:41.389371	2025-04-25 14:04:41.389371
290	Dumbbell Shrug	Dumbbell Shrug	\N	dumbbell-shrug	<p><b><span style="font-size: 36px;">How To Perform The Standing Dumbbell Shrug</span></b></p><p><b><span style="font-size: 36px;"><br></span></b></p><p><b><span style="font-size: 24px;">Setup</span></b></p><p>Grab two dumbbells and stand tall with a narrow foot stance. Poke your chest out and pull your shoulder blades back. The dumbbells should be on the side of your legs.&nbsp;</p><p><br></p><p><b><span style="font-size: 24px;">Performing&nbsp;</span></b></p><p>Pull your shoulder joint straight up toward the ceiling. Get your shoulders as high as you can. You should feel your traps contract very hard when you have hit an adequate range of motion. From this point, begin to drop your shoulders back down to the starting position.</p><p><br></p><p>Avoid rolling your shoulders. This is a very common form mistake on shrugs. The upper portion of the traps elevates the scapula, while the mid and lower traps, retract and depress the scapula. However, when you are in a seated or standing position the dumbbells will be pulling downward (because of gravity) so scapular elevation is the only anatomical function being performed against resistance. Therefore, retracting and depressing the scapula on each rep (rolling the shoulders) will not recruit your mid and lower traps. You would need a different exercise for that.</p><p><br></p><p>Also, pay particular attention to your neck. It is also very common to push one's head forward when performing a shrug. This can put unnecessary stress on your neck and cervical spine. Keep your chin pulled back and your head in a neutral position.</p>	<p><b><span style="font-size: 36px;">How To Perform The Standing Dumbbell Shrug</span></b></p><p><b><span style="font-size: 36px;"><br></span></b></p><p><b><span style="font-size: 24px;">Setup</span></b></p><p>Grab two dumbbells and stand tall with a narrow foot stance. Poke your chest out and pull your shoulder blades back. The dumbbells should be on the side of your legs.&nbsp;</p><p><br></p><p><b><span style="font-size: 24px;">Performing&nbsp;</span></b></p><p>Pull your shoulder joint straight up toward the ceiling. Get your shoulders as high as you can. You should feel your traps contract very hard when you have hit an adequate range of motion. From this point, begin to drop your shoulders back down to the starting position.</p><p><br></p><p>Avoid rolling your shoulders. This is a very common form mistake on shrugs. The upper portion of the traps elevates the scapula, while the mid and lower traps, retract and depress the scapula. However, when you are in a seated or standing position the dumbbells will be pulling downward (because of gravity) so scapular elevation is the only anatomical function being performed against resistance. Therefore, retracting and depressing the scapula on each rep (rolling the shoulders) will not recruit your mid and lower traps. You would need a different exercise for that.</p><p><br></p><p>Also, pay particular attention to your neck. It is also very common to push one's head forward when performing a shrug. This can put unnecessary stress on your neck and cervical spine. Keep your chin pulled back and your head in a neutral position.</p>	f	80	270	77	0	f	t	f	Published	2025-04-25 14:04:41.390016	2025-04-25 14:04:41.390016
291	Dumbbell Romanian Deadlift	Dumbbell Romanian Deadlift	\N	dumbbell-romanian-deadlift	\N	\N	f	240	240	80	0	t	t	f	Published	2025-04-25 14:04:41.390794	2025-04-25 14:04:41.390794
292	Dumbbell Plank Pullthrough	Dumbbell Plank Pullthrough	\N	dumbbell-plank-pullthrough			f	1	10	10	0	f	f	f	Published	2025-04-25 14:04:41.391683	2025-04-25 14:04:41.391683
293	Dumbbell Glute Bridge	Dumbbell Glute Bridge	\N	dumbbell-glute-bridge			f	1	60	60	0	f	f	f	Published	2025-04-25 14:04:41.392226	2025-04-25 14:04:41.392226
294	Dumbbell Calf Raise	Dumbbell Calf Raise	\N	dumbbell-calf-raise			f	80	100	100	0	f	t	f	Published	2025-04-25 14:04:41.393453	2025-04-25 14:04:41.393453
295	Barbell Bulgarian Split Squat	Barbell Bulgarian Split Squat	\N	barbell-bulgarian-split-squat	<p><br></p>\r\n<h1>Barbell Bulgarian Split Squat: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by positioning a barbell on a squat rack or in a landmine setup.</li>\r\n  <li>Step under the bar and grasp it with a palms-forward grip, just outside of your hips.</li>\r\n  <li>Lift the bar from the rack and stand with your feet hip-width apart and the barbell resting across your upper back.</li>\r\n  <li>Take a large step forward with your right foot and place your left foot behind you, keeping it on a bench or elevated surface.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Bend your right knee, lowering your torso towards the ground until your left knee almost touches it.</li>\r\n  <li>Pause, then push through your right heel to return to the starting position.</li>\r\n  <li>Repeat for the desired number of repetitions, then switch legs and repeat with your left foot forward.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your chest lifted and your core engaged throughout the exercise.</li>\r\n  <li>Make sure your front knee stays directly above your ankle and doesn't move forward past your toes.</li>\r\n  <li>Keep your weight evenly distributed between both feet, and avoid shifting too much weight onto your back foot.</li>\r\n  <li>Inhale as you lower down and exhale as you push back up to the starting position.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid rounding your lower back or hunching forward as you lower down.</li>\r\n  <li>Don't allow your front knee to collapse inward.</li>\r\n  <li>Avoid shifting your weight too far forward onto your front foot, as this can put unnecessary strain on your knee.</li>\r\n  <li>Don't let your back foot come off the bench or elevated surface during the exercise.</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Bulgarian Split Squat: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by positioning a barbell on a squat rack or in a landmine setup.</li>\r\n  <li>Step under the bar and grasp it with a palms-forward grip, just outside of your hips.</li>\r\n  <li>Lift the bar from the rack and stand with your feet hip-width apart and the barbell resting across your upper back.</li>\r\n  <li>Take a large step forward with your right foot and place your left foot behind you, keeping it on a bench or elevated surface.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Bend your right knee, lowering your torso towards the ground until your left knee almost touches it.</li>\r\n  <li>Pause, then push through your right heel to return to the starting position.</li>\r\n  <li>Repeat for the desired number of repetitions, then switch legs and repeat with your left foot forward.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your chest lifted and your core engaged throughout the exercise.</li>\r\n  <li>Make sure your front knee stays directly above your ankle and doesn't move forward past your toes.</li>\r\n  <li>Keep your weight evenly distributed between both feet, and avoid shifting too much weight onto your back foot.</li>\r\n  <li>Inhale as you lower down and exhale as you push back up to the starting position.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid rounding your lower back or hunching forward as you lower down.</li>\r\n  <li>Don't allow your front knee to collapse inward.</li>\r\n  <li>Avoid shifting your weight too far forward onto your front foot, as this can put unnecessary strain on your knee.</li>\r\n  <li>Don't let your back foot come off the bench or elevated surface during the exercise.</li>\r\n</ul>	f	1	40	60	0	t	f	f	Published	2025-04-25 14:04:41.394429	2025-04-25 14:04:41.394429
296	Barbell Floor Press	Barbell Floor Press	\N	barbell-floor-press	<p><br></p>\r\n<h1>Barbell Floor Press: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by selecting a barbell that is appropriate for your strength level and place it on the floor.</li>\r\n  <li>Lie down on the floor with your back flat and feet flat on the ground. Grasp the barbell with both hands, using a grip that is slightly wider than shoulder-width apart.</li>\r\n  <li>Raise the barbell off the floor so that it is directly above your chest, keeping your arms straight.</li>\r\n  <li>Make sure your back is flat on the floor and that your neck and head are in a neutral position.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Slowly lower the barbell to your chest, keeping your elbows close to your sides.</li>\r\n  <li>Once the barbell touches your chest, pause for a moment and then press it back up to the starting position.</li>\r\n  <li>Repeat for the desired number of repetitions.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your back flat on the floor and your elbows close to your sides throughout the entire movement.</li>\r\n  <li>Focus on using your chest muscles to press the barbell, not your shoulders or triceps.</li>\r\n  <li>Maintain a slow and controlled tempo, avoiding any jerking or bouncing movements.</li>\r\n  <li>Make sure to inhale as you lower the barbell and exhale as you press it back up.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid arching your back or lifting your butt off the floor during the exercise, as this can cause injury to your lower back.</li>\r\n  <li>Do not allow your elbows to flare out to the sides, as this places unnecessary stress on your shoulders.</li>\r\n  <li>Avoid using too much weight, as this can cause you to lose proper form and increase the risk of injury.</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Floor Press: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by selecting a barbell that is appropriate for your strength level and place it on the floor.</li>\r\n  <li>Lie down on the floor with your back flat and feet flat on the ground. Grasp the barbell with both hands, using a grip that is slightly wider than shoulder-width apart.</li>\r\n  <li>Raise the barbell off the floor so that it is directly above your chest, keeping your arms straight.</li>\r\n  <li>Make sure your back is flat on the floor and that your neck and head are in a neutral position.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Slowly lower the barbell to your chest, keeping your elbows close to your sides.</li>\r\n  <li>Once the barbell touches your chest, pause for a moment and then press it back up to the starting position.</li>\r\n  <li>Repeat for the desired number of repetitions.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your back flat on the floor and your elbows close to your sides throughout the entire movement.</li>\r\n  <li>Focus on using your chest muscles to press the barbell, not your shoulders or triceps.</li>\r\n  <li>Maintain a slow and controlled tempo, avoiding any jerking or bouncing movements.</li>\r\n  <li>Make sure to inhale as you lower the barbell and exhale as you press it back up.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid arching your back or lifting your butt off the floor during the exercise, as this can cause injury to your lower back.</li>\r\n  <li>Do not allow your elbows to flare out to the sides, as this places unnecessary stress on your shoulders.</li>\r\n  <li>Avoid using too much weight, as this can cause you to lose proper form and increase the risk of injury.</li>\r\n</ul>	f	1	15	15	0	f	f	f	Published	2025-04-25 14:04:41.395393	2025-04-25 14:04:41.395393
354	Barbell Snatch Grip Romanian Deadlift	Barbell Snatch Grip Romanian Deadlift	\N	barbell-snatch-grip-romanian-deadlift	\N	\N	f	1	1	1	0	t	f	f	Published	2025-04-25 14:04:41.444285	2025-04-25 14:04:41.444285
355	Barbell Split Squat	Barbell Split Squat	\N	barbell-split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.445435	2025-04-25 14:04:41.445435
356	Barbell Spoto Press	Barbell Spoto Press	\N	barbell-spoto-press			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.446617	2025-04-25 14:04:41.446617
357	Barbell Step Up Balance	Barbell Step Up Balance	\N	barbell-step-up-balance	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.44729	2025-04-25 14:04:41.44729
358	Barbell Step Up	Barbell Step Up	\N	barbell-step-up			f	1	280	81	0	t	f	f	Published	2025-04-25 14:04:41.447987	2025-04-25 14:04:41.447987
359	Barbell Suitcase Deadlift	Barbell Suitcase Deadlift	\N	barbell-suitcase-deadlift			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.448636	2025-04-25 14:04:41.448636
297	Barbell Front Raise	Barbell Front Raise	\N	barbell-front-raise	<p><br></p>\r\n<h1>Barbell Front Raise: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Begin by selecting a weight that is suitable for your level of strength and experience</li>\r\n  <li>Place the barbell on the ground in front of you, with the weight plates on either side of the bar</li>\r\n  <li>Grasp the barbell with a pronated grip, meaning your palms are facing down, and your hands are spaced roughly shoulder-width apart</li>\r\n  <li>Position yourself so that the barbell is resting on your thighs, and your knees are slightly bent</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lift the barbell up towards your chest, using your arms, and keeping your torso stationary</li>\r\n  <li>Pause briefly at the top of the movement, and then lower the barbell back down to the starting position in a controlled manner</li>\r\n  <li>Repeat the exercise for the desired number of repetitions, typically between 8-12 reps for each set</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Make sure to keep your elbows slightly bent throughout the exercise, and avoid locking them out at the top of the movement</li>\r\n  <li>Keep your chest lifted and your shoulder blades pulled back, engaging your shoulder and upper back muscles</li>\r\n  <li>Exhale as you lift the barbell up, and inhale as you lower it back down</li>\r\n  <li>Keep your movements slow and controlled, focusing on proper form and technique, rather than lifting as much weight as possible</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid using momentum or swinging the weight, as this can lead to injury and decreased effectiveness of the exercise</li>\r\n  <li>Avoid over-extending your shoulders or lifting the barbell too high, which can cause strain on the shoulder joint</li>\r\n  <li>Avoid lifting the barbell too quickly or using too heavy of a weight, as this can result in poor form and decreased results</li>\r\n  <li>Avoid holding the barbell with a narrow grip, as this can put unnecessary stress on your wrist joints</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Front Raise: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Begin by selecting a weight that is suitable for your level of strength and experience</li>\r\n  <li>Place the barbell on the ground in front of you, with the weight plates on either side of the bar</li>\r\n  <li>Grasp the barbell with a pronated grip, meaning your palms are facing down, and your hands are spaced roughly shoulder-width apart</li>\r\n  <li>Position yourself so that the barbell is resting on your thighs, and your knees are slightly bent</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lift the barbell up towards your chest, using your arms, and keeping your torso stationary</li>\r\n  <li>Pause briefly at the top of the movement, and then lower the barbell back down to the starting position in a controlled manner</li>\r\n  <li>Repeat the exercise for the desired number of repetitions, typically between 8-12 reps for each set</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Make sure to keep your elbows slightly bent throughout the exercise, and avoid locking them out at the top of the movement</li>\r\n  <li>Keep your chest lifted and your shoulder blades pulled back, engaging your shoulder and upper back muscles</li>\r\n  <li>Exhale as you lift the barbell up, and inhale as you lower it back down</li>\r\n  <li>Keep your movements slow and controlled, focusing on proper form and technique, rather than lifting as much weight as possible</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid using momentum or swinging the weight, as this can lead to injury and decreased effectiveness of the exercise</li>\r\n  <li>Avoid over-extending your shoulders or lifting the barbell too high, which can cause strain on the shoulder joint</li>\r\n  <li>Avoid lifting the barbell too quickly or using too heavy of a weight, as this can result in poor form and decreased results</li>\r\n  <li>Avoid holding the barbell with a narrow grip, as this can put unnecessary stress on your wrist joints</li>\r\n</ul>	f	90	15	15	0	f	f	f	Published	2025-04-25 14:04:41.396384	2025-04-25 14:04:41.396384
298	Barbell Front Squat Olympic	Barbell Front Squat Olympic	\N	barbell-front-squat-olympic	\N	\N	f	1	20	20	0	f	f	f	Published	2025-04-25 14:04:41.397202	2025-04-25 14:04:41.397202
299	Barbell Front Squat Bodybuilding	Barbell Front Squat Bodybuilding	\N	barbell-front-squat-bodybuilding	\N	\N	f	1	100	25	0	f	f	f	Published	2025-04-25 14:04:41.398123	2025-04-25 14:04:41.398123
300	Barbell High Bar Good Morning	Barbell High Bar Good Morning	\N	barbell-high-bar-good-morning	\N	\N	f	10	10	10	0	f	f	f	Published	2025-04-25 14:04:41.398915	2025-04-25 14:04:41.398915
301	Barbell Low Bar Good Morning	Barbell Low Bar Good Morning	\N	barbell-low-bar-good-morning	<p><br></p>\r\n<h1>Barbell Low Bar Good Morning: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Begin by placing a barbell across your upper back and shoulders, using a grip that is just outside of your shoulder blades.</li>\r\n  <li>Use a low bar placement, which will be a few inches below the high bar placement used for squats.</li>\r\n  <li>Ensure that the barbell is positioned securely, so that it does not move or shift during the exercise.</li>\r\n  <li>Set your feet hip-width apart, with your toes pointing forward or slightly outwards.</li>\r\n  <li>Activate your core muscles and brace your spine in a neutral position.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Start by taking a deep breath and engaging your core and lower back muscles.</li>\r\n  <li>Slowly bend forward at the hips, keeping your back straight and your knees slightly bent.</li>\r\n  <li>Lower your torso as far as you can while maintaining proper form, then pause and hold for a moment.</li>\r\n  <li>Push through your hips to return to the starting position, exhaling as you stand up straight.</li>\r\n  <li>Repeat for the desired number of repetitions, making sure to maintain good form throughout the exercise.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>It is important to keep your back straight and avoid rounding your spine during the movement.</li>\r\n  <li>Focus on using your hips and glutes to initiate the movement, rather than your lower back.</li>\r\n  <li>Keep your knees slightly bent throughout the exercise to maintain balance and stability.</li>\r\n  <li>Do not allow your shoulders to round forward, but instead keep them back and engaged.</li>\r\n  <li>Maintain a slow and controlled pace, avoiding any jerky or abrupt movements.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid using too heavy of a weight, as this can increase the risk of injury and decrease proper form.</li>\r\n  <li>Do not allow your lower back to round or arch excessively, as this can place unnecessary strain on the muscles and spine.</li>\r\n  <li>Avoid hinging forward at the waist, as this can cause strain on the lower back and reduce the effectiveness of the exercise.</li>\r\n  <li>Do not use momentum or swing the weight, as this can compromise form and increase the risk of injury.</li>\r\n  <li>Avoid over-extending at the top of the movement, as this can lead to strain on the lower back and decrease proper form.</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Low Bar Good Morning: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Begin by placing a barbell across your upper back and shoulders, using a grip that is just outside of your shoulder blades.</li>\r\n  <li>Use a low bar placement, which will be a few inches below the high bar placement used for squats.</li>\r\n  <li>Ensure that the barbell is positioned securely, so that it does not move or shift during the exercise.</li>\r\n  <li>Set your feet hip-width apart, with your toes pointing forward or slightly outwards.</li>\r\n  <li>Activate your core muscles and brace your spine in a neutral position.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Start by taking a deep breath and engaging your core and lower back muscles.</li>\r\n  <li>Slowly bend forward at the hips, keeping your back straight and your knees slightly bent.</li>\r\n  <li>Lower your torso as far as you can while maintaining proper form, then pause and hold for a moment.</li>\r\n  <li>Push through your hips to return to the starting position, exhaling as you stand up straight.</li>\r\n  <li>Repeat for the desired number of repetitions, making sure to maintain good form throughout the exercise.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>It is important to keep your back straight and avoid rounding your spine during the movement.</li>\r\n  <li>Focus on using your hips and glutes to initiate the movement, rather than your lower back.</li>\r\n  <li>Keep your knees slightly bent throughout the exercise to maintain balance and stability.</li>\r\n  <li>Do not allow your shoulders to round forward, but instead keep them back and engaged.</li>\r\n  <li>Maintain a slow and controlled pace, avoiding any jerky or abrupt movements.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid using too heavy of a weight, as this can increase the risk of injury and decrease proper form.</li>\r\n  <li>Do not allow your lower back to round or arch excessively, as this can place unnecessary strain on the muscles and spine.</li>\r\n  <li>Avoid hinging forward at the waist, as this can cause strain on the lower back and reduce the effectiveness of the exercise.</li>\r\n  <li>Do not use momentum or swing the weight, as this can compromise form and increase the risk of injury.</li>\r\n  <li>Avoid over-extending at the top of the movement, as this can lead to strain on the lower back and decrease proper form.</li>\r\n</ul>	f	280	280	20	0	t	t	f	Published	2025-04-25 14:04:41.399697	2025-04-25 14:04:41.399697
303	Barbell Overhead Press	Barbell Overhead Press	\N	barbell-overhead-press	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Barbell Overhead Press</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-06704151-7fff-46a4-812a-71274a8b10e9"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Place the hooks or cups in the barbell rack just below shoulder height. This way you don't have to go up onto your tippy toes to get the bar out of the rack. Take a shoulder width or slightly outside of shoulder width grip. You can use a thumbed or thumbless grip. Be very careful with a thumbless grip please. Either way, make sure the bar is set very deeply into your hands. If the bar is not deep in your palm, you will likely get extended wrists. Wrist extension will put a lot of pressure onto your wrists and will cause either discomfort or outright pain. And of course this will limit the amount of weight you can use.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have your grip, push your elbows underneath the bar. The bar should be roughly at your collar bones. Break at the knees and do a mini squat to get the bar up and out of the rack. Take two steps back. Your stance should be about shoulder or slightly outside shoulder width.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pull your chin back as you initiate the concentric. Press the bar toward the ceiling. Once the bar has cleared your head, push your head forward slightly. I like to use the cue, "head through the window." Don't force your head all the way forward as it's unnecessary and might produce unneeded stress on your neck.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You should fully extend your elbows at the top of each rep. If you have hypermobile elbows (many women do) don't hyperextend your elbows at the top. There should be a straight line from your shoulder joint to your fist.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have hit elbow extension, time to begin the concentric. Make sure to control the weight on your way down. As the bar is getting to about head height, pull your chin back again to let the bar pass by your face.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pay particular attention to cheating on this exercise. This is a strict overhead barbell press. It is very easy when you fatigue to begin using your legs to help you get the bar up.&nbsp; Make sure you keep your lower body from helping at all.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Also pay particular attention to your lumbar spine. It is very common for people to lean back and hyper extend their lower back in order to get the bar all the way overhead. Your nervous system is very smart, and knows that you are stronger pushing horizontally than you are vertically. It will therefore, naturally try to turn the overhead press into a horizontal press. This is a very dangerous position for your lower back. Don't let it happen!</span></p><p><br></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Barbell Overhead Press</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-06704151-7fff-46a4-812a-71274a8b10e9"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Place the hooks or cups in the barbell rack just below shoulder height. This way you don't have to go up onto your tippy toes to get the bar out of the rack. Take a shoulder width or slightly outside of shoulder width grip. You can use a thumbed or thumbless grip. Be very careful with a thumbless grip please. Either way, make sure the bar is set very deeply into your hands. If the bar is not deep in your palm, you will likely get extended wrists. Wrist extension will put a lot of pressure onto your wrists and will cause either discomfort or outright pain. And of course this will limit the amount of weight you can use.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have your grip, push your elbows underneath the bar. The bar should be roughly at your collar bones. Break at the knees and do a mini squat to get the bar up and out of the rack. Take two steps back. Your stance should be about shoulder or slightly outside shoulder width.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pull your chin back as you initiate the concentric. Press the bar toward the ceiling. Once the bar has cleared your head, push your head forward slightly. I like to use the cue, "head through the window." Don't force your head all the way forward as it's unnecessary and might produce unneeded stress on your neck.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You should fully extend your elbows at the top of each rep. If you have hypermobile elbows (many women do) don't hyperextend your elbows at the top. There should be a straight line from your shoulder joint to your fist.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have hit elbow extension, time to begin the concentric. Make sure to control the weight on your way down. As the bar is getting to about head height, pull your chin back again to let the bar pass by your face.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Pay particular attention to cheating on this exercise. This is a strict overhead barbell press. It is very easy when you fatigue to begin using your legs to help you get the bar up.&nbsp; Make sure you keep your lower body from helping at all.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Also pay particular attention to your lumbar spine. It is very common for people to lean back and hyper extend their lower back in order to get the bar all the way overhead. Your nervous system is very smart, and knows that you are stronger pushing horizontally than you are vertically. It will therefore, naturally try to turn the overhead press into a horizontal press. This is a very dangerous position for your lower back. Don't let it happen!</span></p><p><br></p>	f	1	410	90	0	t	t	f	Published	2025-04-25 14:04:41.40049	2025-04-25 14:04:41.40049
304	Barbell Upright Row	Barbell Upright Row	\N	barbell-upright-row	<p><br></p>\r\n<h1>Barbell Upright Row: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell that is appropriate for your strength level and fitness goals.</li>\r\n  <li>Stand with your feet hip-width apart, knees slightly bent, and the barbell resting on the floor in front of you.</li>\r\n  <li>Grip the barbell with both hands, using an overhand grip that is slightly wider than shoulder-width apart.</li>\r\n  <li>Lift the barbell off the floor and position it at your thighs, keeping your back straight and your core engaged.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Keeping your elbows close to your sides, lift the barbell straight up towards your chest.</li>\r\n  <li>Stop when the barbell reaches your chest, or just below your chin, depending on your range of motion and comfort level.</li>\r\n  <li>Pause for a moment, then slowly lower the barbell back down to your thighs.</li>\r\n  <li>Repeat the movement for the desired number of reps.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your back straight and your core engaged throughout the exercise to protect your spine and prevent injury.</li>\r\n  <li>Maintain control of the barbell at all times, avoiding swinging or jerking movements that can strain your shoulders or upper back.</li>\r\n  <li>Focus on squeezing your shoulder blades together at the top of the movement to engage your upper back muscles and create a more effective workout.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using a weight that is too heavy, which can lead to improper form and increase your risk of injury.</li>\r\n  <li>Allowing your elbows to flare out to the sides, which can place excessive stress on your shoulders and rotator cuff muscles.</li>\r\n  <li>Lifting the barbell too high, which can cause discomfort or pain in your neck or shoulders.</li>\r\n  <li>Rounding your back, which can put unnecessary stress on your spine and increase your risk of injury.</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Upright Row: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell that is appropriate for your strength level and fitness goals.</li>\r\n  <li>Stand with your feet hip-width apart, knees slightly bent, and the barbell resting on the floor in front of you.</li>\r\n  <li>Grip the barbell with both hands, using an overhand grip that is slightly wider than shoulder-width apart.</li>\r\n  <li>Lift the barbell off the floor and position it at your thighs, keeping your back straight and your core engaged.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Keeping your elbows close to your sides, lift the barbell straight up towards your chest.</li>\r\n  <li>Stop when the barbell reaches your chest, or just below your chin, depending on your range of motion and comfort level.</li>\r\n  <li>Pause for a moment, then slowly lower the barbell back down to your thighs.</li>\r\n  <li>Repeat the movement for the desired number of reps.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your back straight and your core engaged throughout the exercise to protect your spine and prevent injury.</li>\r\n  <li>Maintain control of the barbell at all times, avoiding swinging or jerking movements that can strain your shoulders or upper back.</li>\r\n  <li>Focus on squeezing your shoulder blades together at the top of the movement to engage your upper back muscles and create a more effective workout.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using a weight that is too heavy, which can lead to improper form and increase your risk of injury.</li>\r\n  <li>Allowing your elbows to flare out to the sides, which can place excessive stress on your shoulders and rotator cuff muscles.</li>\r\n  <li>Lifting the barbell too high, which can cause discomfort or pain in your neck or shoulders.</li>\r\n  <li>Rounding your back, which can put unnecessary stress on your spine and increase your risk of injury.</li>\r\n</ul>	f	70	270	15	0	t	t	f	Published	2025-04-25 14:04:41.401531	2025-04-25 14:04:41.401531
305	Barbell Sumo Deadlift	Barbell Sumo Deadlift	\N	barbell-sumo-deadlift	<p><br></p>\r\n<h1>Barbell Sumo Deadlift: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by selecting an appropriate weight on the barbell</li>\r\n  <li>Position the barbell in front of your feet, making sure it is centered and directly under the bar</li>\r\n  <li>Stand with your feet slightly wider than hip-width apart, with your toes pointing outwards</li>\r\n  <li>Bend your knees and lower yourself until your shins touch the bar</li>\r\n  <li>Grip the bar with your hands, making sure they are positioned just outside your feet</li>\r\n  <li>Take a deep breath and tighten your core muscles to prepare for the lift</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lift your chest, straighten your back, and look forward</li>\r\n  <li>Begin by driving through your heels and pushing your hips forward</li>\r\n  <li>Lift the bar off the ground by extending your hips and knees</li>\r\n  <li>Make sure to keep your chest lifted and your back straight throughout the lift</li>\r\n  <li>Once the bar reaches knee height, pause briefly before continuing the movement</li>\r\n  <li>Lower the bar back to the ground by reversing the movement, bending your hips and knees</li>\r\n  <li>Repeat the exercise for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your feet flat on the ground and maintain your balance throughout the exercise</li>\r\n  <li>Avoid rounding your back, as this can cause injury and decrease your lifting efficiency</li>\r\n  <li>Keep your core tight and maintain good posture to prevent your lower back from arching</li>\r\n  <li>Use your legs and hips, not your arms or back, to lift the bar off the ground</li>\r\n  <li>Do not drop the bar, but rather control the descent back to the ground</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using too much weight that may compromise your technique and increase your risk of injury</li>\r\n  <li>Rounding your back or allowing your hips to drop too low during the lift</li>\r\n  <li>Bouncing the bar off the ground, as this can cause strain on your lower back</li>\r\n  <li>Lifting with your arms instead of using your legs and hips</li>\r\n  <li>Forgetting to warm up properly before starting the exercise</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Sumo Deadlift: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by selecting an appropriate weight on the barbell</li>\r\n  <li>Position the barbell in front of your feet, making sure it is centered and directly under the bar</li>\r\n  <li>Stand with your feet slightly wider than hip-width apart, with your toes pointing outwards</li>\r\n  <li>Bend your knees and lower yourself until your shins touch the bar</li>\r\n  <li>Grip the bar with your hands, making sure they are positioned just outside your feet</li>\r\n  <li>Take a deep breath and tighten your core muscles to prepare for the lift</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lift your chest, straighten your back, and look forward</li>\r\n  <li>Begin by driving through your heels and pushing your hips forward</li>\r\n  <li>Lift the bar off the ground by extending your hips and knees</li>\r\n  <li>Make sure to keep your chest lifted and your back straight throughout the lift</li>\r\n  <li>Once the bar reaches knee height, pause briefly before continuing the movement</li>\r\n  <li>Lower the bar back to the ground by reversing the movement, bending your hips and knees</li>\r\n  <li>Repeat the exercise for the desired number of repetitions</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your feet flat on the ground and maintain your balance throughout the exercise</li>\r\n  <li>Avoid rounding your back, as this can cause injury and decrease your lifting efficiency</li>\r\n  <li>Keep your core tight and maintain good posture to prevent your lower back from arching</li>\r\n  <li>Use your legs and hips, not your arms or back, to lift the bar off the ground</li>\r\n  <li>Do not drop the bar, but rather control the descent back to the ground</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using too much weight that may compromise your technique and increase your risk of injury</li>\r\n  <li>Rounding your back or allowing your hips to drop too low during the lift</li>\r\n  <li>Bouncing the bar off the ground, as this can cause strain on your lower back</li>\r\n  <li>Lifting with your arms instead of using your legs and hips</li>\r\n  <li>Forgetting to warm up properly before starting the exercise</li>\r\n</ul>	f	60	60	81	100	t	f	f	Published	2025-04-25 14:04:41.402882	2025-04-25 14:04:41.402882
306	Barbell Staggered Deadlift	Barbell Staggered Deadlift	\N	barbell-staggered-deadlift	<p><br></p>\r\n<h1>Barbell Staggered Deadlift: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by choosing the appropriate weight for your skill level and warm up with lighter weights before attempting heavier weights.</li>\r\n  <li>Place a barbell on the ground in front of you with the weights facing away from you.</li>\r\n  <li>Position your feet hip-width apart with one foot slightly in front of the other. The front foot should be closest to the barbell.</li>\r\n  <li>Bend down and grab the barbell with an overhand grip, hands just outside of your legs. Your hands should be shoulder-width apart. </li>\r\n  <li>Lift the bar off the ground by straightening your legs while keeping your back straight. </li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Begin the movement by bending at the hips, lowering your torso and reaching down to grab the bar.</li>\r\n  <li>Maintain a flat back and keep your eyes facing forward throughout the entire movement.</li>\r\n  <li>Drive through your heels and lift the bar up, straightening your hips and legs until you are standing upright.</li>\r\n  <li>Pause briefly at the top and then lower the bar back down to the ground by bending at the hips and knees.</li>\r\n  <li>Repeat the movement for the desired number of repetitions. </li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your core engaged and your shoulder blades pulled back and down to maintain proper form and reduce the risk of injury.</li>\r\n  <li>Exhale as you lift the weight and inhale as you lower it. This will help you maintain control and stability.</li>\r\n  <li>Make sure to use a slow and controlled tempo, avoiding any swinging or momentum to ensure maximum muscle activation. </li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid rounding your back or arching it excessively. This can put unnecessary strain on your spine and increase the risk of injury.</li>\r\n  <li>Avoid lifting too quickly or using momentum. This takes the focus off the target muscles and increases the risk of injury.</li>\r\n  <li>Avoid letting your knees cave inwards or outwards. Keep them aligned with your feet to maintain proper form and reduce the risk of knee injury. </li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Staggered Deadlift: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Start by choosing the appropriate weight for your skill level and warm up with lighter weights before attempting heavier weights.</li>\r\n  <li>Place a barbell on the ground in front of you with the weights facing away from you.</li>\r\n  <li>Position your feet hip-width apart with one foot slightly in front of the other. The front foot should be closest to the barbell.</li>\r\n  <li>Bend down and grab the barbell with an overhand grip, hands just outside of your legs. Your hands should be shoulder-width apart. </li>\r\n  <li>Lift the bar off the ground by straightening your legs while keeping your back straight. </li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Begin the movement by bending at the hips, lowering your torso and reaching down to grab the bar.</li>\r\n  <li>Maintain a flat back and keep your eyes facing forward throughout the entire movement.</li>\r\n  <li>Drive through your heels and lift the bar up, straightening your hips and legs until you are standing upright.</li>\r\n  <li>Pause briefly at the top and then lower the bar back down to the ground by bending at the hips and knees.</li>\r\n  <li>Repeat the movement for the desired number of repetitions. </li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your core engaged and your shoulder blades pulled back and down to maintain proper form and reduce the risk of injury.</li>\r\n  <li>Exhale as you lift the weight and inhale as you lower it. This will help you maintain control and stability.</li>\r\n  <li>Make sure to use a slow and controlled tempo, avoiding any swinging or momentum to ensure maximum muscle activation. </li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Avoid rounding your back or arching it excessively. This can put unnecessary strain on your spine and increase the risk of injury.</li>\r\n  <li>Avoid lifting too quickly or using momentum. This takes the focus off the target muscles and increases the risk of injury.</li>\r\n  <li>Avoid letting your knees cave inwards or outwards. Keep them aligned with your feet to maintain proper form and reduce the risk of knee injury. </li>\r\n</ul>	f	25	25	25	0	f	f	f	Published	2025-04-25 14:04:41.403772	2025-04-25 14:04:41.403772
360	Barbell Supinated Pendlay Row	Barbell Supinated Pendlay Row	\N	barbell-supinated-pendlay-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.449633	2025-04-25 14:04:41.449633
307	Barbell Skullcrusher	Barbell Skullcrusher	\N	barbell-skullcrusher	<p><br></p>\r\n<h1>Barbell Skullcrusher: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell and weight appropriate for your strength level</li>\r\n  <li>Lie flat on a weight bench with your feet firmly planted on the ground</li>\r\n  <li>Grasp the barbell with an overhand grip, slightly wider than shoulder-width apart</li>\r\n  <li>Extend your arms straight up and position the barbell over your chest, keeping your elbows slightly bent</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lower the barbell towards your forehead by bending at the elbows</li>\r\n  <li>Pause at the bottom of the movement, keeping the barbell close to your head</li>\r\n  <li>Using your triceps, extend your arms back to the starting position</li>\r\n  <li>Repeat for desired number of reps</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your elbows close to your head throughout the exercise</li>\r\n  <li>Maintain control of the barbell and avoid letting it drop too quickly</li>\r\n  <li>Keep your upper arms stationary and focus on moving only at the elbow joint</li>\r\n  <li>Make sure to fully extend your arms at the top of the movement for maximum activation of the triceps</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Bouncing the barbell off your forehead</li>\r\n  <li>Using too heavy of a weight, causing loss of form and control</li>\r\n  <li>Flaring your elbows out too far from your head</li>\r\n  <li>Allowing your lower back to come off the bench during the exercise</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Skullcrusher: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell and weight appropriate for your strength level</li>\r\n  <li>Lie flat on a weight bench with your feet firmly planted on the ground</li>\r\n  <li>Grasp the barbell with an overhand grip, slightly wider than shoulder-width apart</li>\r\n  <li>Extend your arms straight up and position the barbell over your chest, keeping your elbows slightly bent</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lower the barbell towards your forehead by bending at the elbows</li>\r\n  <li>Pause at the bottom of the movement, keeping the barbell close to your head</li>\r\n  <li>Using your triceps, extend your arms back to the starting position</li>\r\n  <li>Repeat for desired number of reps</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your elbows close to your head throughout the exercise</li>\r\n  <li>Maintain control of the barbell and avoid letting it drop too quickly</li>\r\n  <li>Keep your upper arms stationary and focus on moving only at the elbow joint</li>\r\n  <li>Make sure to fully extend your arms at the top of the movement for maximum activation of the triceps</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Bouncing the barbell off your forehead</li>\r\n  <li>Using too heavy of a weight, causing loss of form and control</li>\r\n  <li>Flaring your elbows out too far from your head</li>\r\n  <li>Allowing your lower back to come off the bench during the exercise</li>\r\n</ul>	f	70	30	30	0	t	f	f	Published	2025-04-25 14:04:41.404769	2025-04-25 14:04:41.404769
308	Barbell Single Leg Deadlift	Barbell Single Leg Deadlift	\N	barbell-single-leg-deadlift	\N	\N	f	10	10	10	0	f	f	f	Published	2025-04-25 14:04:41.405784	2025-04-25 14:04:41.405784
309	Barbell Situp	Barbell Situp	\N	barbell-situp	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Do The Barbell Situp</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-b5444c79-7fff-bdd5-ab69-989127f268c4"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">To get the barbell into position, lay flat on the floor with your heels pressed into the ground and toes pointed toward the ceiling. Position the barbell on the floor over the top of your head, perform a pull over, and then extend your elbows to get it into position. The bar should be pointed directly at the ceiling.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">With the bar pointed at the ceiling, begin to sit up. Do your best to not round your back on your way up. Keep your face toward the ceiling for the entirety of the rep. Get your torso vertical and your ears between your biceps. Then begin the eccentric. On your way back down, control your torso and the weight, and flex your abs.</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Do The Barbell Situp</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-b5444c79-7fff-bdd5-ab69-989127f268c4"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">To get the barbell into position, lay flat on the floor with your heels pressed into the ground and toes pointed toward the ceiling. Position the barbell on the floor over the top of your head, perform a pull over, and then extend your elbows to get it into position. The bar should be pointed directly at the ceiling.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">With the bar pointed at the ceiling, begin to sit up. Do your best to not round your back on your way up. Keep your face toward the ceiling for the entirety of the rep. Get your torso vertical and your ears between your biceps. Then begin the eccentric. On your way back down, control your torso and the weight, and flex your abs.</span></p>	f	80	290	30	0	f	t	f	Published	2025-04-25 14:04:41.406489	2025-04-25 14:04:41.406489
310	Barbell Reverse Curl	Barbell Reverse Curl	\N	barbell-reverse-curl	<p><br></p>\r\n<h1>Barbell Reverse Curl: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Select a barbell with the appropriate weight for your strength level</li>\r\n  <li>Stand with your feet shoulder-width apart and grip the barbell with a shoulder-width overhand grip</li>\r\n  <li>Keep your arms straight and the barbell hanging at arm's length in front of your thighs</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Breathe in and tighten your core</li>\r\n  <li>Curl the barbell upwards towards your chest, keeping your upper arms stationary and your elbows tucked in close to your torso</li>\r\n  <li>Hold the contraction at the top for a count of one</li>\r\n  <li>Lower the barbell back down to the starting position with control, inhaling as you do so</li>\r\n  <li>Repeat the movement for the desired number of reps</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your movements smooth and controlled throughout the exercise</li>\r\n  <li>Avoid using momentum to swing the barbell up and down</li>\r\n  <li>Keep your head and neck in a neutral position, looking straight ahead and avoiding any unnecessary neck strain</li>\r\n  <li>Engage your shoulder blades and keep your shoulders down and away from your ears</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using a weight that is too heavy and sacrificing form</li>\r\n  <li>Arching your back or swaying excessively</li>\r\n  <li>Locking out your elbows at the top of the movement</li>\r\n  <li>Allowing your elbows to flare out to the sides</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Reverse Curl: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Select a barbell with the appropriate weight for your strength level</li>\r\n  <li>Stand with your feet shoulder-width apart and grip the barbell with a shoulder-width overhand grip</li>\r\n  <li>Keep your arms straight and the barbell hanging at arm's length in front of your thighs</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Breathe in and tighten your core</li>\r\n  <li>Curl the barbell upwards towards your chest, keeping your upper arms stationary and your elbows tucked in close to your torso</li>\r\n  <li>Hold the contraction at the top for a count of one</li>\r\n  <li>Lower the barbell back down to the starting position with control, inhaling as you do so</li>\r\n  <li>Repeat the movement for the desired number of reps</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your movements smooth and controlled throughout the exercise</li>\r\n  <li>Avoid using momentum to swing the barbell up and down</li>\r\n  <li>Keep your head and neck in a neutral position, looking straight ahead and avoiding any unnecessary neck strain</li>\r\n  <li>Engage your shoulder blades and keep your shoulders down and away from your ears</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Using a weight that is too heavy and sacrificing form</li>\r\n  <li>Arching your back or swaying excessively</li>\r\n  <li>Locking out your elbows at the top of the movement</li>\r\n  <li>Allowing your elbows to flare out to the sides</li>\r\n</ul>	f	70	260	15	0	f	t	f	Published	2025-04-25 14:04:41.407246	2025-04-25 14:04:41.407246
311	Barbell Overhead Tricep Extension	Barbell Overhead Tricep Extension	\N	barbell-overhead-tricep-extension			f	100	15	15	0	f	f	f	Published	2025-04-25 14:04:41.408179	2025-04-25 14:04:41.408179
313	Barbell Romanian Deadlift	Barbell Romanian Deadlift	\N	barbell-romanian-deadlift	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Romanian Deadlift</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The Romanian Deadlift (RDL), unlike other deadlift variations, begins and ends in the standing position. So you need to begin the exercise a little bit differently than you would other deadlift variations.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-bb771a03-7fff-74b9-d129-ed0391d978b8"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">There are a few ways to set up for the Romanian Deadlift.</span></p><ol style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Set the safety bars or hooks in a squat rack just below knee height. From here, you will squat the bar up and out of the safeties. Take a couple of steps back and then initiate the set.</span></p></li><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Start from the floor. Perform a standard conventional deadlift to get the weight into the starting position.</span></p></li></ol><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have chosen one of those two ways, and gotten into the starting standing position we can continue the rest of the set up.&nbsp;&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Use a shoulder width stance with your toes facing forward. Either a double overhand or mixed grip is OK. There is some risk with the mixed grip variation. On very rare occasions a lifter will pull their bicep on the arm with the underhand grip. So be careful.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You want to avoid doing any shrugging of the barbell. This is a posterior chain movement not a trap movement.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing The Romanian Deadlift</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Begin the set by pushing your hips straight back. Your knees should stay mostly extended during the set. You can have a slight bend in the knees, but only slight. As you push your hips back, imagine trying to push your hips upwards towards the ceiling as well. This will help you keep your knees in a more extended position.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The Romanian Deadlift is a movement that does something unique. It lengthens the hamstring under a load. During an RDL the tension is at its highest when your hamstring is at its most lengthened position (90° at the hips with extended knees). Therefore, the most important part of this exercise is feeling the stretch in your hamstring on each trip.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can also use this to dictate your range of motion. Some people will be able to go all the way to the floor while maintaining a flat back. While others will only be able to get to a 90° hip angle. A rare person with hypermobile hips may even need to consider a Deficit RDL. In which they stand on a platform, letting them go even lower than the barbell and plates would allow for. Again, look for the stretch on each rep and use that feeling to dictate when you initiate the concentric portion of the movement. When you feel the stretch, time to come back up.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">It's of the utmost importance you keep a flat back so you do not put any unnecessary stress on your lumbar spine. This does not mean you will not feel this exercise in your lower back. The opposite is true. You can and most likely will feel the RDL working your lumbar spine. This does not mean you are doing anything wrong. The lower back has muscles just like everywhere else in your body. These muscles can also fill with blood giving you a pump in your lower back. Unlike having a pump in your biceps or pecs, a pump in your lower back is very uncomfortable because the spinal erectors swell and begin to press into your lumbar spine. Again, this does not mean you were doing anything wrong. You can even expect some soreness in your lower back after performing this movement</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The concentric portion of this movement is relatively simple. Just go to a standing position to complete the rep. Do not force your hips all the way forward as this will hyperextend your lumbar spine. Hyperextension is just as dangerous as hyperflexion.&nbsp;</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>How To Perform The Romanian Deadlift</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><br></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The Romanian Deadlift (RDL), unlike other deadlift variations, begins and ends in the standing position. So you need to begin the exercise a little bit differently than you would other deadlift variations.</span></p><p><b style="font-weight:normal;" id="docs-internal-guid-bb771a03-7fff-74b9-d129-ed0391d978b8"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">There are a few ways to set up for the Romanian Deadlift.</span></p><ol style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Set the safety bars or hooks in a squat rack just below knee height. From here, you will squat the bar up and out of the safeties. Take a couple of steps back and then initiate the set.</span></p></li><li dir="ltr" style="list-style-type:decimal;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Start from the floor. Perform a standard conventional deadlift to get the weight into the starting position.</span></p></li></ol><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Once you have chosen one of those two ways, and gotten into the starting standing position we can continue the rest of the set up.&nbsp;&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Use a shoulder width stance with your toes facing forward. Either a double overhand or mixed grip is OK. There is some risk with the mixed grip variation. On very rare occasions a lifter will pull their bicep on the arm with the underhand grip. So be careful.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You want to avoid doing any shrugging of the barbell. This is a posterior chain movement not a trap movement.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing The Romanian Deadlift</b></span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Begin the set by pushing your hips straight back. Your knees should stay mostly extended during the set. You can have a slight bend in the knees, but only slight. As you push your hips back, imagine trying to push your hips upwards towards the ceiling as well. This will help you keep your knees in a more extended position.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The Romanian Deadlift is a movement that does something unique. It lengthens the hamstring under a load. During an RDL the tension is at its highest when your hamstring is at its most lengthened position (90° at the hips with extended knees). Therefore, the most important part of this exercise is feeling the stretch in your hamstring on each trip.&nbsp;</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You can also use this to dictate your range of motion. Some people will be able to go all the way to the floor while maintaining a flat back. While others will only be able to get to a 90° hip angle. A rare person with hypermobile hips may even need to consider a Deficit RDL. In which they stand on a platform, letting them go even lower than the barbell and plates would allow for. Again, look for the stretch on each rep and use that feeling to dictate when you initiate the concentric portion of the movement. When you feel the stretch, time to come back up.</span></p><p><b style="font-weight:normal;"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">It's of the utmost importance you keep a flat back so you do not put any unnecessary stress on your lumbar spine. This does not mean you will not feel this exercise in your lower back. The opposite is true. You can and most likely will feel the RDL working your lumbar spine. This does not mean you are doing anything wrong. The lower back has muscles just like everywhere else in your body. These muscles can also fill with blood giving you a pump in your lower back. Unlike having a pump in your biceps or pecs, a pump in your lower back is very uncomfortable because the spinal erectors swell and begin to press into your lumbar spine. Again, this does not mean you were doing anything wrong. You can even expect some soreness in your lower back after performing this movement</span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">The concentric portion of this movement is relatively simple. Just go to a standing position to complete the rep. Do not force your hips all the way forward as this will hyperextend your lumbar spine. Hyperextension is just as dangerous as hyperflexion.&nbsp;</span></p>	f	75	75	75	0	t	f	f	Published	2025-04-25 14:04:41.408854	2025-04-25 14:04:41.408854
314	Barbell High Bar Squat	Barbell High Bar Squat	\N	barbell-high-bar-squat	<p><br></p>\r\n<h1>Barbell High Bar Squat: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell and weights that are appropriate for your strength level.</li>\r\n  <li>Place the barbell on a squat rack at shoulder height.</li>\r\n  <li> Stand facing the barbell with your feet shoulder-width apart.</li>\r\n  <li> Grasp the barbell with both hands, positioning your hands slightly wider than shoulder-width apart.</li>\r\n  <li>Step under the bar, positioning it on the back of your shoulders, just below the neck.</li>\r\n  <li> Make sure the bar is securely positioned on your shoulders.</li>\r\n  <li> Take a deep breath and tighten your core muscles.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li> Begin by bending at the hips and knees, lowering your body down towards the ground.</li>\r\n  <li> Keep your chest lifted and your back straight, making sure not to round your back at any point.</li>\r\n  <li> Continue to lower your body until your thighs are parallel to the ground.</li>\r\n  <li> Push through your heels to straighten your legs, returning to the starting position.</li>\r\n  <li> Repeat for the desired number of repetitions.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li> Keep your core engaged and your back straight throughout the entire exercise.</li>\r\n  <li> Make sure to keep your weight balanced evenly on both feet.</li>\r\n  <li> Focus on pushing through your heels, rather than your toes, when returning to the starting position.</li>\r\n  <li> Avoid allowing your knees to cave inwards, keep them aligned with your second toe.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li> Rounding your back or allowing your chest to drop during the exercise.</li>\r\n  <li> Allowing your knees to cave inwards.</li>\r\n  <li> Using weights that are too heavy, leading to improper form or injury.</li>\r\n  <li> Not engaging your core throughout the exercise.</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell High Bar Squat: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Choose a barbell and weights that are appropriate for your strength level.</li>\r\n  <li>Place the barbell on a squat rack at shoulder height.</li>\r\n  <li> Stand facing the barbell with your feet shoulder-width apart.</li>\r\n  <li> Grasp the barbell with both hands, positioning your hands slightly wider than shoulder-width apart.</li>\r\n  <li>Step under the bar, positioning it on the back of your shoulders, just below the neck.</li>\r\n  <li> Make sure the bar is securely positioned on your shoulders.</li>\r\n  <li> Take a deep breath and tighten your core muscles.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li> Begin by bending at the hips and knees, lowering your body down towards the ground.</li>\r\n  <li> Keep your chest lifted and your back straight, making sure not to round your back at any point.</li>\r\n  <li> Continue to lower your body until your thighs are parallel to the ground.</li>\r\n  <li> Push through your heels to straighten your legs, returning to the starting position.</li>\r\n  <li> Repeat for the desired number of repetitions.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li> Keep your core engaged and your back straight throughout the entire exercise.</li>\r\n  <li> Make sure to keep your weight balanced evenly on both feet.</li>\r\n  <li> Focus on pushing through your heels, rather than your toes, when returning to the starting position.</li>\r\n  <li> Avoid allowing your knees to cave inwards, keep them aligned with your second toe.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li> Rounding your back or allowing your chest to drop during the exercise.</li>\r\n  <li> Allowing your knees to cave inwards.</li>\r\n  <li> Using weights that are too heavy, leading to improper form or injury.</li>\r\n  <li> Not engaging your core throughout the exercise.</li>\r\n</ul>	f	1	75	75	0	t	f	f	Published	2025-04-25 14:04:41.410106	2025-04-25 14:04:41.410106
361	Barbell Supinated Row	Barbell Supinated Row	\N	barbell-supinated-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.450402	2025-04-25 14:04:41.450402
362	Barbell Tap Pause Squat	Barbell Tap Pause Squat	\N	barbell-tap-pause-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.45131	2025-04-25 14:04:41.45131
315	Barbell Low Bar Squat	Barbell Low Bar Squat	\N	barbell-low-bar-squat	<p><br></p>\r\n<h1>Barbell Low Bar Squat: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Set the barbell at the appropriate height, usually around hip level, on a squat rack.</li>\r\n  <li>Place your feet shoulder-width apart with toes pointing slightly outwards.</li>\r\n  <li>Grasp the bar with both hands, palms facing forward and slightly wider than shoulder-width apart.</li>\r\n  <li>Lift the bar off the squat rack and step back, maintaining a neutral spine.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lower your body by bending at the hips and knees while keeping your weight on your heels.</li>\r\n  <li>Go down as low as you can while keeping your heels on the ground and your back straight.</li>\r\n  <li>Push up through your heels, returning to the starting position.</li>\r\n  <li>Repeat for the desired number of reps.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your chest up and maintain a neutral spine throughout the movement.</li>\r\n  <li>Ensure that your knees stay aligned with your toes, not caving inwards or outwards.</li>\r\n  <li>Make sure that the bar stays centered over your midfoot throughout the movement.</li>\r\n  <li>Breathe in as you descend and breathe out as you rise back to the starting position.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Rounding your lower back or having an excessive arch in your back.</li>\r\n  <li>Allowing your knees to cave inwards or outwards.</li>\r\n  <li>Letting your heels come off the ground.</li>\r\n  <li>Bouncing out of the bottom of the squat or using momentum to complete the movement.</li>\r\n</ul>	<p><br></p>\r\n<h1>Barbell Low Bar Squat: A Comprehensive Guide</h1>\r\n<h2>Setup</h2>\r\n<ul>\r\n  <li>Set the barbell at the appropriate height, usually around hip level, on a squat rack.</li>\r\n  <li>Place your feet shoulder-width apart with toes pointing slightly outwards.</li>\r\n  <li>Grasp the bar with both hands, palms facing forward and slightly wider than shoulder-width apart.</li>\r\n  <li>Lift the bar off the squat rack and step back, maintaining a neutral spine.</li>\r\n</ul>\r\n<h2>How to Perform</h2>\r\n<ul>\r\n  <li>Lower your body by bending at the hips and knees while keeping your weight on your heels.</li>\r\n  <li>Go down as low as you can while keeping your heels on the ground and your back straight.</li>\r\n  <li>Push up through your heels, returning to the starting position.</li>\r\n  <li>Repeat for the desired number of reps.</li>\r\n</ul>\r\n<h2>Technique</h2>\r\n<ul>\r\n  <li>Keep your chest up and maintain a neutral spine throughout the movement.</li>\r\n  <li>Ensure that your knees stay aligned with your toes, not caving inwards or outwards.</li>\r\n  <li>Make sure that the bar stays centered over your midfoot throughout the movement.</li>\r\n  <li>Breathe in as you descend and breathe out as you rise back to the starting position.</li>\r\n</ul>\r\n<h2>Things to Avoid</h2>\r\n<ul>\r\n  <li>Rounding your lower back or having an excessive arch in your back.</li>\r\n  <li>Allowing your knees to cave inwards or outwards.</li>\r\n  <li>Letting your heels come off the ground.</li>\r\n  <li>Bouncing out of the bottom of the squat or using momentum to complete the movement.</li>\r\n</ul>	f	1	50	50	0	t	f	f	Published	2025-04-25 14:04:41.410932	2025-04-25 14:04:41.410932
316	Dumbbell Wrist Extension	Dumbbell Wrist Extension	\N	dumbbell-wrist-extension	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 36px; white-space: pre-wrap;"><b>Dumbbell Wrist Extension Detailed How To:</b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-cb1a3cfe-7fff-8055-9e1a-87e8061b0e84"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You will need a box or a bench. You can either take a seated position (like in our demo video), or a kneeling position.&nbsp;</span></p><ul style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">In the seated position, put your feet shoulder width, and drape your forearms over your knees.&nbsp;</span></p></li><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">In a kneeling position, drape your forearms over the edge of the box, or a bench. Your forearms should be far enough off the box or bench that you can fully flex your wrist at the bottom of the range of motion.</span></p></li></ul><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Let the dumbbells fully flex your wrists before initiating the concentric. Extend your wrists and point your fists up towards the ceiling as high as you possibly can. You should feel the forearm muscles on the top of your arm contract really hard. Make sure to focus on the range of motion with this exercise. It can be very easy to begin doing partial range of motion reps on this exercise. Like any other exercise, when you can no longer perform the adequate range of motion end the set</span></p>	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><font color="#000000" face="Arial"><span style="font-size: 36px; white-space: pre-wrap;"><b>Dumbbell Wrist Extension Detailed How To:</b></span></font></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Setup</b></span></p><p><b style="font-weight:normal;" id="docs-internal-guid-cb1a3cfe-7fff-8055-9e1a-87e8061b0e84"><br></b></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">You will need a box or a bench. You can either take a seated position (like in our demo video), or a kneeling position.&nbsp;</span></p><ul style="margin-top:0;margin-bottom:0;padding-inline-start:48px;"><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">In the seated position, put your feet shoulder width, and drape your forearms over your knees.&nbsp;</span></p></li><li dir="ltr" style="list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;" aria-level="1"><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;" role="presentation"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">In a kneeling position, drape your forearms over the edge of the box, or a bench. Your forearms should be far enough off the box or bench that you can fully flex your wrist at the bottom of the range of motion.</span></p></li></ul><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b><br></b></span></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"><b>Performing</b></span></p><p><br></p><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Let the dumbbells fully flex your wrists before initiating the concentric. Extend your wrists and point your fists up towards the ceiling as high as you possibly can. You should feel the forearm muscles on the top of your arm contract really hard. Make sure to focus on the range of motion with this exercise. It can be very easy to begin doing partial range of motion reps on this exercise. Like any other exercise, when you can no longer perform the adequate range of motion end the set</span></p>	f	100	200	80	0	t	t	f	Published	2025-04-25 14:04:41.411739	2025-04-25 14:04:41.411739
317	Dumbbell Bulgarian Split Squat	Dumbbell Bulgarian Split Squat	\N	dumbbell-bulgarian-split-squat	\N	\N	f	1	200	200	0	t	t	f	Published	2025-04-25 14:04:41.41266	2025-04-25 14:04:41.41266
319	Dumbbell Rear Delt Row	Dumbbell Rear Delt Row	\N	dumbbell-rear-delt-row	\N	\N	f	60	15	15	0	f	f	f	Published	2025-04-25 14:04:41.414455	2025-04-25 14:04:41.414455
321	Bodyweight Russian Twist	Bodyweight Russian Twist	\N	bodyweight-russian-twist	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.415527	2025-04-25 14:04:41.415527
322	Side Plank Up Down	Side Plank Up Down	\N	side-plank-up-down			f	1	1	1	0	t	f	f	Published	2025-04-25 14:04:41.416302	2025-04-25 14:04:41.416302
323	Side Plank Reach Through	Side Plank Reach Through	\N	side-plank-reach-through			f	1	1	1	0	t	f	f	Published	2025-04-25 14:04:41.417143	2025-04-25 14:04:41.417143
324	Long Lever Plank	Long Lever Plank	\N	long-lever-plank			f	1	250	80	0	f	f	f	Published	2025-04-25 14:04:41.417888	2025-04-25 14:04:41.417888
325	Elbow Side Plank	Elbow Side Plank	\N	elbow-side-plank			f	1	275	1	0	t	f	f	Published	2025-04-25 14:04:41.418837	2025-04-25 14:04:41.418837
326	Hand Side Plank	Hand Side Plank	\N	hand-side-plank			f	301	290	1	0	t	f	f	Published	2025-04-25 14:04:41.419446	2025-04-25 14:04:41.419446
327	Hand Plank	Hand Plank	\N	hand-plank	<p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Hand Plank Detailed How to:</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Setup</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">I suggest starting in a kneeling position as opposed to starting with your hips on the ground. When you begin from the hips on the ground position, your lumbar spine is hyperextended, which is dangerous and to be avoided in the overwhelming majority of exercises.</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">You can either do a closed fist or open hand position. Whichever feels more comfortable. Step one foot back, and then the other to begin the Plank.</span></p><p><span id="docs-internal-guid-de1f3d8d-7fff-58a9-5030-0571777deefc"><br></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Performing The Hand Plank</span></span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Be careful to not let your hips rise or sag as you were holding the Hand Plank. Maintain a flat back the entire set. If you are having trouble knowing if your back is flat, try performing the exercise in front of a mirror so you can check your form.&nbsp;</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Continuously press your hands into the ground and spread your scapula. This will recruit your serratus anterior and get you some extra core work.</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">How To Progress The Hand Plank:</span></span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Like any other exercise, progression is important with the Plank. However, since the Plank is a hold and not a dynamic exercise with reps, it can be challenging knowing how to and when to progress the Plank. Here’s a quick step by step guide on progressing the Plank</span></p><p><br></p><ol style="margin-bottom: 0px; padding-inline-start: 48px;"><li dir="ltr" aria-level="1" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;"><p dir="ltr" role="presentation" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Set a range similar to a rep range</span><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">. For example, 45 to 60 seconds. Let’s say in the beginning you are only able to do 45 seconds. Each week, try to add a bit more time (2-5 secs). Once you are able to complete 60 seconds with good form time to further progress.</span></p></li><li dir="ltr" aria-level="1" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;"><p dir="ltr" role="presentation" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Switch to a more difficult variation. The natural next step is switching to the Hand Plank. Keep your same time range of 45-60 seconds. Since this is a more difficult variation you will likely fatigue before 60 seconds. Build your way back to 60 seconds like you did with the Forearm Plank.&nbsp;</span></p></li><li dir="ltr" aria-level="1" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;"><p dir="ltr" role="presentation" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Add weight. At this point, it’s time to try adding some resistance to the Plank. Start light! You can either ask a gym buddy or place the weight on your back yourself. Either way, make sure the plate is in the middle of your upper back and not your lumbar spine. Then you can progress the plank similarly to any other exercise. By adding weight bit by bit overtime.</span></p></li><li dir="ltr" aria-level="1" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;"><p dir="ltr" role="presentation" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">You can continue to progress by going to a more difficult hold (Long Lever Plank, Hollow Hold) and then adding weight to those over time.&nbsp;</span></p></li></ol><p><br></p>	<p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Hand Plank Detailed How to:</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Setup</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">I suggest starting in a kneeling position as opposed to starting with your hips on the ground. When you begin from the hips on the ground position, your lumbar spine is hyperextended, which is dangerous and to be avoided in the overwhelming majority of exercises.</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">You can either do a closed fist or open hand position. Whichever feels more comfortable. Step one foot back, and then the other to begin the Plank.</span></p><p><span id="docs-internal-guid-de1f3d8d-7fff-58a9-5030-0571777deefc"><br></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Performing The Hand Plank</span></span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Be careful to not let your hips rise or sag as you were holding the Hand Plank. Maintain a flat back the entire set. If you are having trouble knowing if your back is flat, try performing the exercise in front of a mirror so you can check your form.&nbsp;</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Continuously press your hands into the ground and spread your scapula. This will recruit your serratus anterior and get you some extra core work.</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">How To Progress The Hand Plank:</span></span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Like any other exercise, progression is important with the Plank. However, since the Plank is a hold and not a dynamic exercise with reps, it can be challenging knowing how to and when to progress the Plank. Here’s a quick step by step guide on progressing the Plank</span></p><p><br></p><ol style="margin-bottom: 0px; padding-inline-start: 48px;"><li dir="ltr" aria-level="1" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;"><p dir="ltr" role="presentation" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Set a range similar to a rep range</span><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">. For example, 45 to 60 seconds. Let’s say in the beginning you are only able to do 45 seconds. Each week, try to add a bit more time (2-5 secs). Once you are able to complete 60 seconds with good form time to further progress.</span></p></li><li dir="ltr" aria-level="1" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;"><p dir="ltr" role="presentation" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Switch to a more difficult variation. The natural next step is switching to the Hand Plank. Keep your same time range of 45-60 seconds. Since this is a more difficult variation you will likely fatigue before 60 seconds. Build your way back to 60 seconds like you did with the Forearm Plank.&nbsp;</span></p></li><li dir="ltr" aria-level="1" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;"><p dir="ltr" role="presentation" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">Add weight. At this point, it’s time to try adding some resistance to the Plank. Start light! You can either ask a gym buddy or place the weight on your back yourself. Either way, make sure the plate is in the middle of your upper back and not your lumbar spine. Then you can progress the plank similarly to any other exercise. By adding weight bit by bit overtime.</span></p></li><li dir="ltr" aria-level="1" style="list-style-type: decimal; font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre;"><p dir="ltr" role="presentation" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;">You can continue to progress by going to a more difficult hold (Long Lever Plank, Hollow Hold) and then adding weight to those over time.&nbsp;</span></p></li></ol><p><br></p>	f	1	390	1	0	f	t	f	Published	2025-04-25 14:04:41.420215	2025-04-25 14:04:41.420215
328	Hollow Hold	Hollow Hold	\N	hollow-hold	\N	\N	f	1	220	1	0	t	f	f	Published	2025-04-25 14:04:41.421777	2025-04-25 14:04:41.421777
329	Barbell Calf Jump	Barbell Calf Jump	\N	barbell-calf-jump	\N	\N	f	100	2	1	0	f	f	f	Published	2025-04-25 14:04:41.422566	2025-04-25 14:04:41.422566
330	Barbell Coan Deadlift	Barbell Coan Deadlift	\N	barbell-coan-deadlift	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.423462	2025-04-25 14:04:41.423462
332	Barbell Forward Lunge	Barbell Forward Lunge	\N	barbell-forward-lunge	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.4244	2025-04-25 14:04:41.4244
333	Barbell Front Rack Step Up	Barbell Front Rack Step Up	\N	barbell-front-rack-step-up	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.425247	2025-04-25 14:04:41.425247
334	Barbell Glute Bridge	Barbell Glute Bridge	\N	barbell-glute-bridge			f	100	2	1	0	f	f	f	Published	2025-04-25 14:04:41.425992	2025-04-25 14:04:41.425992
335	Barbell Heels Up Back Squat	Barbell Heels Up Back Squat	\N	barbell-heels-up-back-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.426854	2025-04-25 14:04:41.426854
336	Barbell Heels Up Front Squat	Barbell Heels Up Front Squat	\N	barbell-heels-up-front-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.427587	2025-04-25 14:04:41.427587
337	Barbell Hooklying Bench Press	Barbell Hooklying Bench Press	\N	barbell-hooklying-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.428485	2025-04-25 14:04:41.428485
338	Barbell Landmine Row	Barbell Landmine Row	\N	barbell-landmine-row			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.430061	2025-04-25 14:04:41.430061
339	Barbell Larsen Bench Press	Barbell Larsen Bench Press	\N	barbell-larsen-bench-press			f	40	1	1	0	f	f	f	Published	2025-04-25 14:04:41.431203	2025-04-25 14:04:41.431203
340	Barbell Lateral Lunge	Barbell Lateral Lunge	\N	barbell-lateral-lunge	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.432279	2025-04-25 14:04:41.432279
341	Barbell Long Landmine Row	Barbell Long Landmine Row	\N	barbell-long-landmine-row			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.433063	2025-04-25 14:04:41.433063
342	Barbell Meadows Row	Barbell Meadows Row	\N	barbell-meadows-row			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.433877	2025-04-25 14:04:41.433877
343	Barbell Pause Box Squat	Barbell Pause Box Squat	\N	barbell-pause-box-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.43467	2025-04-25 14:04:41.43467
344	Barbell Pause Squat	Barbell Pause Squat	\N	barbell-pause-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.435478	2025-04-25 14:04:41.435478
345	Barbell Pronated Pendlay Row	Barbell Pronated Pendlay Row	\N	barbell-pronated-pendlay-row			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.436426	2025-04-25 14:04:41.436426
346	Barbell Pronated Row	Barbell Pronated Row	\N	barbell-pronated-row			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.438215	2025-04-25 14:04:41.438215
347	Barbell Reverse Deadlift	Barbell Reverse Deadlift	\N	barbell-reverse-deadlift			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.439131	2025-04-25 14:04:41.439131
348	Barbell Reverse Lunge	Barbell Reverse Lunge	\N	barbell-reverse-lunge			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.439899	2025-04-25 14:04:41.439899
349	Bodyweight Reverse Step Up	Bodyweight Reverse Step Up	\N	bodyweight-reverse-step-up	\N	\N	f	80	1	1	0	f	f	f	Published	2025-04-25 14:04:41.440561	2025-04-25 14:04:41.440561
350	Barbell Seated Calf Raise	Barbell Seated Calf Raise	\N	barbell-seated-calf-raise			f	90	2	1	0	f	f	f	Published	2025-04-25 14:04:41.441191	2025-04-25 14:04:41.441191
351	Barbell Shrug	Barbell Shrug	\N	barbell-shrug			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.442015	2025-04-25 14:04:41.442015
352	Barbell Side Step Up	Barbell Side Step Up	\N	barbell-side-step-up	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.442727	2025-04-25 14:04:41.442727
353	Barbell Snatch Grip Deadlift	Barbell Snatch Grip Deadlift	\N	barbell-snatch-grip-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.443459	2025-04-25 14:04:41.443459
363	Barbell Toes Up Calf Raise	Barbell Toes Up Calf Raise	\N	barbell-toes-up-calf-raise			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.451947	2025-04-25 14:04:41.451947
364	Barbell Zercher Good Morning	Barbell Zercher Good Morning	\N	barbell-zercher-good-morning	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.452558	2025-04-25 14:04:41.452558
365	Barbell Zercher Squat	Barbell Zercher Squat	\N	barbell-zercher-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.453286	2025-04-25 14:04:41.453286
366	Barbell Z Press	Barbell Z Press	\N	barbell-z-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.454459	2025-04-25 14:04:41.454459
367	Assisted Bulgarian Split Squat	Assisted Bulgarian Split Squat	\N	assisted-bulgarian-split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.455656	2025-04-25 14:04:41.455656
369	Curtsy Lunge	Curtsy Lunge	\N	curtsy-lunge	\N	\N	f	90	2	1	0	f	f	f	Published	2025-04-25 14:04:41.456292	2025-04-25 14:04:41.456292
370	Forward Lunge	Forward Lunge	\N	forward-lunge	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.457291	2025-04-25 14:04:41.457291
371	Heels Up Squat	Heels Up Squat	\N	heels-up-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.457895	2025-04-25 14:04:41.457895
372	Lateral Lunge	Lateral Lunge	\N	lateral-lunge	\N	\N	f	1	1	1	0	t	f	f	Published	2025-04-25 14:04:41.458525	2025-04-25 14:04:41.458525
373	Bodyweight Reverse Lunge	Bodyweight Reverse Lunge	\N	bodyweight-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.459232	2025-04-25 14:04:41.459232
374	Split Squat	Split Squat	\N	split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.460026	2025-04-25 14:04:41.460026
375	Dumbbell Alternating Single Arm Press	Dumbbell Alternating Single Arm Press	\N	dumbbell-alternating-single-arm-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.460711	2025-04-25 14:04:41.460711
376	Dumbbell Bayesian Lateral Raise	Dumbbell Bayesian Lateral Raise	\N	dumbbell-bayesian-lateral-raise	\N	\N	f	90	2	1	0	f	f	f	Published	2025-04-25 14:04:41.46155	2025-04-25 14:04:41.46155
377	Dumbbell Bench Press	Dumbbell Bench Press	\N	dumbbell-bench-press			f	110	68	68	0	f	f	f	Published	2025-04-25 14:04:41.462135	2025-04-25 14:04:41.462135
379	Dumbbell Chest Fly	Dumbbell Chest Fly	\N	dumbbell-chest-fly			f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.462983	2025-04-25 14:04:41.462983
380	Dumbbell Decline Alternating Single Arm Press	Dumbbell Decline Alternating Single Arm Press	\N	dumbbell-decline-alternating-single-arm-press			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.463477	2025-04-25 14:04:41.463477
381	Dumbbell Decline Bench Press	Dumbbell Decline Bench Press	\N	dumbbell-decline-bench-press			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.463946	2025-04-25 14:04:41.463946
382	Dumbbell Decline Chest Fly	Dumbbell Decline Chest Fly	\N	dumbbell-decline-chest-fly			f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.464396	2025-04-25 14:04:41.464396
384	Dumbbell Decline Guillotine Bench Press	Dumbbell Decline Guillotine Bench Press	\N	dumbbell-decline-guillotine-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.464779	2025-04-25 14:04:41.464779
385	Dumbbell Decline Neutral Bench Press	Dumbbell Decline Neutral Bench Press	\N	dumbbell-decline-neutral-bench-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.465235	2025-04-25 14:04:41.465235
386	Dumbbell Decline Single Arm Bench Press	Dumbbell Decline Single Arm Bench Press	\N	dumbbell-decline-single-arm-bench-press			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.466225	2025-04-25 14:04:41.466225
387	Dumbbell Decline Skullcrusher	Dumbbell Decline Skullcrusher	\N	dumbbell-decline-skullcrusher			f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.466834	2025-04-25 14:04:41.466834
388	Dumbbell Decline Squeeze Press	Dumbbell Decline Squeeze Press	\N	dumbbell-decline-squeeze-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.467548	2025-04-25 14:04:41.467548
389	Dumbbell Forward Lunge	Dumbbell Forward Lunge	\N	dumbbell-forward-lunge	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.46834	2025-04-25 14:04:41.46834
390	Dumbbell Goblet Bulgarian Split Squat	Dumbbell Goblet Bulgarian Split Squat	\N	dumbbell-goblet-bulgarian-split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.469049	2025-04-25 14:04:41.469049
391	Dumbbell Goblet Curtsy Lunge	Dumbbell Goblet Curtsy Lunge	\N	dumbbell-goblet-curtsy-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.469646	2025-04-25 14:04:41.469646
392	Dumbbell Goblet Forward Lunge	Dumbbell Goblet Forward Lunge	\N	dumbbell-goblet-forward-lunge	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.471192	2025-04-25 14:04:41.471192
393	Dumbbell Goblet Lateral Lunge	Dumbbell Goblet Lateral Lunge	\N	dumbbell-goblet-lateral-lunge	\N	\N	f	1	1	40	0	t	f	f	Published	2025-04-25 14:04:41.471934	2025-04-25 14:04:41.471934
394	Dumbbell Goblet Reverse Lunge	Dumbbell Goblet Reverse Lunge	\N	dumbbell-goblet-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.472542	2025-04-25 14:04:41.472542
395	Dumbbell Goblet Split Squat	Dumbbell Goblet Split Squat	\N	dumbbell-goblet-split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.473209	2025-04-25 14:04:41.473209
396	Dumbbell Guillotine Bench Press	Dumbbell Guillotine Bench Press	\N	dumbbell-guillotine-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.473818	2025-04-25 14:04:41.473818
397	Dumbbell Guillotine Incline Bench Press	Dumbbell Guillotine Incline Bench Press	\N	dumbbell-guillotine-incline-bench-press			f	100	2	1	0	f	f	f	Published	2025-04-25 14:04:41.474603	2025-04-25 14:04:41.474603
398	Dumbbell Incline Bench Press	Dumbbell Incline Bench Press	\N	dumbbell-incline-bench-press	<p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">How To Perform The Dumbbell Incline Bench Press</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;"><br></span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Setup</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Set an incline bench at around 30° high. Any higher than 30°, and the tension will go to your anterior deltoid as opposed to your upper pecs. A low incline is all you need.&nbsp;</span></p><p><span id="docs-internal-guid-2ba2daee-7fff-4a57-8f31-1042530e451f"><br></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Getting the dumbbells into position for an incline bench press can be challenging. You've got a couple of options here.</span></p><ol><li style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Start with the dumbbells sitting vertically on your quads. Push one leg up toward the ceiling and get your elbow underneath the dumbbell. Then repeat on the other leg with the other dumbbell as you fall back onto the bench.&nbsp;</span></li><li style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Have a gym partner help out. If you're going to have someone help. Make sure they either grab your wrists or the dumbbells themselves to help you get into position. Some people have a tendency to push the elbows up in order to get the dumbbells in position for this move. This can be dangerous as the dumbbell might fall laterally one direction, or another.</span></li></ol><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Make sure both feet are planted firmly on the ground. Push your toes through the front of your shoes. This will generate some tension through your quads and keep you more stable.&nbsp;</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Like any other bench press, pull your shoulder blades back and dig them into the bench. Also point your ribs up toward the ceiling, giving yourself a minor arch in your spine.&nbsp;</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Performing&nbsp;</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Press the weights up toward the ceiling to initiate your first rep. Extend your elbows, but do not fully lock them out. As you perform the eccentric, maintain a 45° angle between your upper arm and torso. Your elbows should not be flared all the way out, or tucked all the way in, but in the middle between the two.&nbsp;</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Stop the eccentric when your elbows are even with your torso or slightly behind your torso. The pecs are not designed well to function when your upper arm travels behind your body. Because the pecs are two lengthened in this position, they will not be able to generate force properly. All the tension from the dumbbells will go onto your shoulder joint instead of your muscles.&nbsp;</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Getting from underneath the dumbbells at the end of the set can be challenging as well. You also have two options here.&nbsp;</span></p><ol><li style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><u>If you end the set by completing your last rep, meaning your elbows are extended and the dumbbells are away from your body</u></span><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">, turn your fists into a neutral position, lift your legs up touching the dumbbell to your quads, and then roll your entire body forward. This can take some practice, so try it with light dumbbells first.</span></li><li style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;"><u>If you end the set not having completed your final rep, meaning the dumbbells are against your chest,</u> then you have no choice but to dump the dumbbells off of you onto the ground. Be very careful with this. Do your best to control the weights as you get them off of you, so they do not bounce. If the dumbbells bounce off the floor and land on someone's foot, you have an issue on your hands. Some gyms don't want any dropping of weights at all. Try to set them down as gently as possible, but don't injure yourself in the process. </span></li><li></li></ol>	<p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">How To Perform The Dumbbell Incline Bench Press</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 36px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;"><br></span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Setup</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Set an incline bench at around 30° high. Any higher than 30°, and the tension will go to your anterior deltoid as opposed to your upper pecs. A low incline is all you need.&nbsp;</span></p><p><span id="docs-internal-guid-2ba2daee-7fff-4a57-8f31-1042530e451f"><br></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Getting the dumbbells into position for an incline bench press can be challenging. You've got a couple of options here.</span></p><ol><li style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Start with the dumbbells sitting vertically on your quads. Push one leg up toward the ceiling and get your elbow underneath the dumbbell. Then repeat on the other leg with the other dumbbell as you fall back onto the bench.&nbsp;</span></li><li style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Have a gym partner help out. If you're going to have someone help. Make sure they either grab your wrists or the dumbbells themselves to help you get into position. Some people have a tendency to push the elbows up in order to get the dumbbells in position for this move. This can be dangerous as the dumbbell might fall laterally one direction, or another.</span></li></ol><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Make sure both feet are planted firmly on the ground. Push your toes through the front of your shoes. This will generate some tension through your quads and keep you more stable.&nbsp;</span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><br></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Like any other bench press, pull your shoulder blades back and dig them into the bench. Also point your ribs up toward the ceiling, giving yourself a minor arch in your spine.&nbsp;</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 24px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><span style="font-weight: 700;">Performing&nbsp;</span></span></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Press the weights up toward the ceiling to initiate your first rep. Extend your elbows, but do not fully lock them out. As you perform the eccentric, maintain a 45° angle between your upper arm and torso. Your elbows should not be flared all the way out, or tucked all the way in, but in the middle between the two.&nbsp;</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Stop the eccentric when your elbows are even with your torso or slightly behind your torso. The pecs are not designed well to function when your upper arm travels behind your body. Because the pecs are two lengthened in this position, they will not be able to generate force properly. All the tension from the dumbbells will go onto your shoulder joint instead of your muscles.&nbsp;</span></p><p><br></p><p dir="ltr" style="margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">Getting from underneath the dumbbells at the end of the set can be challenging as well. You also have two options here.&nbsp;</span></p><ol><li style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;"><u>If you end the set by completing your last rep, meaning your elbows are extended and the dumbbells are away from your body</u></span><span style="font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;">, turn your fists into a neutral position, lift your legs up touching the dumbbell to your quads, and then roll your entire body forward. This can take some practice, so try it with light dumbbells first.</span></li><li style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="background-color: transparent; color: rgb(0, 0, 0); font-family: Arial; font-size: 11pt; white-space: pre-wrap;"><u>If you end the set not having completed your final rep, meaning the dumbbells are against your chest,</u> then you have no choice but to dump the dumbbells off of you onto the ground. Be very careful with this. Do your best to control the weights as you get them off of you, so they do not bounce. If the dumbbells bounce off the floor and land on someone's foot, you have an issue on your hands. Some gyms don't want any dropping of weights at all. Try to set them down as gently as possible, but don't injure yourself in the process. </span></li><li></li></ol>	f	80	315	76	0	t	t	f	Published	2025-04-25 14:04:41.475306	2025-04-25 14:04:41.475306
399	Dumbbell Incline Chest Fly	Dumbbell Incline Chest Fly	\N	dumbbell-incline-chest-fly			f	70	2	1	0	f	f	f	Published	2025-04-25 14:04:41.476398	2025-04-25 14:04:41.476398
400	Dumbbell Incline Hammer Curl	Dumbbell Incline Hammer Curl	\N	dumbbell-incline-hammer-curl			f	100	2	1	0	t	f	f	Published	2025-04-25 14:04:41.477139	2025-04-25 14:04:41.477139
401	Dumbbell Incline Reverse Curl	Dumbbell Incline Reverse Curl	\N	dumbbell-incline-reverse-curl			f	90	2	1	0	t	f	f	Published	2025-04-25 14:04:41.477726	2025-04-25 14:04:41.477726
402	Dumbbell Incline Zottman Curl	Dumbbell Incline Zottman Curl	\N	dumbbell-incline-zottman-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.478579	2025-04-25 14:04:41.478579
403	Dumbbell Internally Rotated Chest Fly	Dumbbell Internally Rotated Chest Fly	\N	dumbbell-internally-rotated-chest-fly			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.479979	2025-04-25 14:04:41.479979
404	Dumbbell Internally Rotated Incline Chest Fly	Dumbbell Internally Rotated Incline Chest Fly	\N	dumbbell-internally-rotated-incline-chest-fly			f	90	2	1	0	f	f	f	Published	2025-04-25 14:04:41.480584	2025-04-25 14:04:41.480584
405	Dumbbell Lateral Lunge Reach	Dumbbell Lateral Lunge Reach	\N	dumbbell-lateral-lunge-reach	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.481208	2025-04-25 14:04:41.481208
406	Dumbbell Laying 30 Degree Shrug	Dumbbell Laying 30 Degree Shrug	\N	dumbbell-laying-30-degree-shrug			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.481799	2025-04-25 14:04:41.481799
407	Dumbbell Laying Reverse Fly	Dumbbell Laying Reverse Fly	\N	dumbbell-laying-reverse-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.482285	2025-04-25 14:04:41.482285
408	Dumbbell Laying Reverse Fly Internally Rotated	Dumbbell Laying Reverse Fly Internally Rotated	\N	dumbbell-laying-reverse-fly-internally-rotated	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.483085	2025-04-25 14:04:41.483085
409	Dumbbell Laying Silverback Shrug	Dumbbell Laying Silverback Shrug	\N	dumbbell-laying-silverback-shrug			f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.483855	2025-04-25 14:04:41.483855
456	Dumbbell Single Arm Row	Dumbbell Single Arm Row	\N	dumbbell-single-arm-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.522123	2025-04-25 14:04:41.522123
410	Dumbbell Neutral Bench Press	Dumbbell Neutral Bench Press	\N	dumbbell-neutral-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.484514	2025-04-25 14:04:41.484514
411	Dumbbell Neutral Incline Bench Press	Dumbbell Neutral Incline Bench Press	\N	dumbbell-neutral-incline-bench-press	\N	\N	f	50	2	1	0	f	f	f	Published	2025-04-25 14:04:41.485491	2025-04-25 14:04:41.485491
412	Dumbbell Neutral Seated Overhead Press	Dumbbell Neutral Seated Overhead Press	\N	dumbbell-neutral-seated-overhead-press	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.486813	2025-04-25 14:04:41.486813
413	Dumbbell Pullover	Dumbbell Pullover	\N	dumbbell-pullover			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.487876	2025-04-25 14:04:41.487876
414	Dumbbell Reverse Lunge	Dumbbell Reverse Lunge	\N	dumbbell-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.488511	2025-04-25 14:04:41.488511
415	Dumbbell Rolling Tricep Extension	Dumbbell Rolling Tricep Extension	\N	dumbbell-rolling-tricep-extension			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.489115	2025-04-25 14:04:41.489115
416	Dumbbell Seated Arnold Press	Dumbbell Seated Arnold Press	\N	dumbbell-seated-arnold-press	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.489887	2025-04-25 14:04:41.489887
417	Dumbbell Squeeze Press	Dumbbell Squeeze Press	\N	dumbbell-squeeze-press			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.490754	2025-04-25 14:04:41.490754
418	Dumbbell Single Arm Press	Dumbbell Single Arm Press	\N	dumbbell-single-arm-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.491384	2025-04-25 14:04:41.491384
419	Dumbbell Split Squat	Dumbbell Split Squat	\N	dumbbell-split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.492086	2025-04-25 14:04:41.492086
420	Dumbbell Alternating Arnold Press	Dumbbell Alternating Arnold Press	\N	dumbbell-alternating-arnold-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.492762	2025-04-25 14:04:41.492762
421	Dumbbell Alternating Overhead Press	Dumbbell Alternating Overhead Press	\N	dumbbell-alternating-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.493976	2025-04-25 14:04:41.493976
422	Dumbbell Alternating Pendlay Row	Dumbbell Alternating Pendlay Row	\N	dumbbell-alternating-pendlay-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.495129	2025-04-25 14:04:41.495129
423	Dumbbell Arnold Press	Dumbbell Arnold Press	\N	dumbbell-arnold-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.496366	2025-04-25 14:04:41.496366
424	Dumbbell Figure Four Glute Bridge	Dumbbell Figure Four Glute Bridge	\N	dumbbell-figure-four-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.497296	2025-04-25 14:04:41.497296
425	Dumbbell Figure Four Hip Thrust	Dumbbell Figure Four Hip Thrust	\N	dumbbell-figure-four-hip-thrust			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.497835	2025-04-25 14:04:41.497835
426	Dumbbell Front Rack Pause Squat	Dumbbell Front Rack Pause Squat	\N	dumbbell-front-rack-pause-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.498431	2025-04-25 14:04:41.498431
427	Dumbbell Front Rack Squat	Dumbbell Front Rack Squat	\N	dumbbell-front-rack-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.499146	2025-04-25 14:04:41.499146
428	Dumbbell Goblet Pulse Squat	Dumbbell Goblet Pulse Squat	\N	dumbbell-goblet-pulse-squat			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.499779	2025-04-25 14:04:41.499779
429	Dumbbell Half Kneeling Wood Chopper	Dumbbell Half Kneeling Wood Chopper	\N	dumbbell-half-kneeling-wood-chopper	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.500592	2025-04-25 14:04:41.500592
430	Dumbbell Heels Up Goblet Squat	Dumbbell Heels Up Goblet Squat	\N	dumbbell-heels-up-goblet-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.501515	2025-04-25 14:04:41.501515
431	Dumbbell Heels Up Narrow Goblet Squat	Dumbbell Heels Up Narrow Goblet Squat	\N	dumbbell-heels-up-narrow-goblet-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.502248	2025-04-25 14:04:41.502248
432	Dumbbell Hollow Hold	Dumbbell Hollow Hold	\N	dumbbell-hollow-hold	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.502943	2025-04-25 14:04:41.502943
433	Dumbbell Kneeling Single Arm Row	Dumbbell Kneeling Single Arm Row	\N	dumbbell-kneeling-single-arm-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.503593	2025-04-25 14:04:41.503593
434	Dumbbell Kneeling Wood Chopper	Dumbbell Kneeling Wood Chopper	\N	dumbbell-kneeling-wood-chopper	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.50449	2025-04-25 14:04:41.50449
435	Dumbbell Laying Incline Row	Dumbbell Laying Incline Row	\N	dumbbell-laying-incline-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.505022	2025-04-25 14:04:41.505022
436	Dumbbell Leg Curl	Dumbbell Leg Curl	\N	dumbbell-leg-curl			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.505638	2025-04-25 14:04:41.505638
437	Dumbbell Leg Extension	Dumbbell Leg Extension	\N	dumbbell-leg-extension			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.506162	2025-04-25 14:04:41.506162
438	Dumbbell Neutral Alternating Overhead Press	Dumbbell Neutral Alternating Overhead Press	\N	dumbbell-neutral-alternating-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.506741	2025-04-25 14:04:41.506741
439	Dumbbell Neutral Overhead Press	Dumbbell Neutral Overhead Press	\N	dumbbell-neutral-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.507633	2025-04-25 14:04:41.507633
440	Dumbbell Offset Squat	Dumbbell Offset Squat	\N	dumbbell-offset-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.508724	2025-04-25 14:04:41.508724
441	Dumbbell Overhead Press	Dumbbell Overhead Press	\N	dumbbell-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.509634	2025-04-25 14:04:41.509634
443	Dumbbell Overhead Side Bend	Dumbbell Overhead Side Bend	\N	dumbbell-overhead-side-bend			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.510579	2025-04-25 14:04:41.510579
444	Dumbbell Overhead Tricep Extension	Dumbbell Overhead Tricep Extension	\N	dumbbell-overhead-tricep-extension	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.511122	2025-04-25 14:04:41.511122
445	Dumbbell Pendlay Row	Dumbbell Pendlay Row	\N	dumbbell-pendlay-row			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.511781	2025-04-25 14:04:41.511781
446	Dumbbell Push Press	Dumbbell Push Press	\N	dumbbell-push-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.51263	2025-04-25 14:04:41.51263
447	Dumbbell Renegade Row	Dumbbell Renegade Row	\N	dumbbell-renegade-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.513525	2025-04-25 14:04:41.513525
448	Dumbbell Seated Calf Raise	Dumbbell Seated Calf Raise	\N	dumbbell-seated-calf-raise	\N	\N	f	80	2	1	0	f	f	f	Published	2025-04-25 14:04:41.514044	2025-04-25 14:04:41.514044
449	Dumbbell Shoulder Extension	Dumbbell Shoulder Extension	\N	dumbbell-shoulder-extension			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.514634	2025-04-25 14:04:41.514634
450	Dumbbell Side Plank Up Down	Dumbbell Side Plank Up Down	\N	dumbbell-side-plank-up-down			f	1	1	1	0	t	f	f	Published	2025-04-25 14:04:41.515212	2025-04-25 14:04:41.515212
451	Dumbbell Silverback Shrug	Dumbbell Silverback Shrug	\N	dumbbell-silverback-shrug			f	1	2	78	0	t	f	f	Published	2025-04-25 14:04:41.516	2025-04-25 14:04:41.516
452	Dumbbell Single Arm Arnold Press	Dumbbell Single Arm Arnold Press	\N	dumbbell-single-arm-arnold-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.516758	2025-04-25 14:04:41.516758
453	Dumbbell Single Arm Neutral Overhead Press	Dumbbell Single Arm Neutral Overhead Press	\N	dumbbell-single-arm-neutral-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.518852	2025-04-25 14:04:41.518852
454	Dumbbell Single Arm Overhead Press	Dumbbell Single Arm Overhead Press	\N	dumbbell-single-arm-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.51999	2025-04-25 14:04:41.51999
455	Dumbbell Single Arm Preacher Curl	Dumbbell Single Arm Preacher Curl	\N	dumbbell-single-arm-preacher-curl	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.521382	2025-04-25 14:04:41.521382
457	Dumbbell Single Arm Row Knee	Dumbbell Single Arm Row Knee	\N	dumbbell-single-arm-row-knee	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.522774	2025-04-25 14:04:41.522774
458	Dumbbell Single Arm Spider Curl	Dumbbell Single Arm Spider Curl	\N	dumbbell-single-arm-spider-curl			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.523376	2025-04-25 14:04:41.523376
459	Dumbbell Single Leg Glute Bridge	Dumbbell Single Leg Glute Bridge	\N	dumbbell-single-leg-glute-bridge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.524087	2025-04-25 14:04:41.524087
460	Dumbbell Single Leg Hip Thrust	Dumbbell Single Leg Hip Thrust	\N	dumbbell-single-leg-hip-thrust			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.524637	2025-04-25 14:04:41.524637
461	Dumbbell Single Leg Single Arm Deadlift	Dumbbell Single Leg Single Arm Deadlift	\N	dumbbell-single-leg-single-arm-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.525323	2025-04-25 14:04:41.525323
462	Dumbbell Single Leg Stiff Leg Deadlift	Dumbbell Single Leg Stiff Leg Deadlift	\N	dumbbell-single-leg-stiff-leg-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.526201	2025-04-25 14:04:41.526201
463	Dumbbell Spider Curl	Dumbbell Spider Curl	\N	dumbbell-spider-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.527164	2025-04-25 14:04:41.527164
464	Dumbbell Staggered Deadlift	Dumbbell Staggered Deadlift	\N	dumbbell-staggered-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.527713	2025-04-25 14:04:41.527713
465	Dumbbell Staggered Glute Bridge	Dumbbell Staggered Glute Bridge	\N	dumbbell-staggered-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.528423	2025-04-25 14:04:41.528423
466	Dumbbell Staggered Hip thrust	Dumbbell Staggered Hip thrust	\N	dumbbell-staggered-hip-thrust			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.529078	2025-04-25 14:04:41.529078
467	Dumbbell Sumo Squat	Dumbbell Sumo Squat	\N	dumbbell-sumo-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.529825	2025-04-25 14:04:41.529825
468	Dumbbell Swing	Dumbbell Swing	\N	dumbbell-swing	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.530549	2025-04-25 14:04:41.530549
469	Dumbbell Thruster	Dumbbell Thruster	\N	dumbbell-thruster	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.531437	2025-04-25 14:04:41.531437
470	Dumbbell Tricep Kickback	Dumbbell Tricep Kickback	\N	dumbbell-tricep-kickback			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.532425	2025-04-25 14:04:41.532425
471	Dumbbell Twisting Curl	Dumbbell Twisting Curl	\N	dumbbell-twisting-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.533101	2025-04-25 14:04:41.533101
472	Dumbbell Hand Side Plank	Dumbbell Hand Side Plank	\N	dumbbell-hand-side-plank	\N	\N	f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.533642	2025-04-25 14:04:41.533642
473	Dumbbell Elbow Side Plank	Dumbbell Elbow Side Plank	\N	dumbbell-elbow-side-plank	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.534233	2025-04-25 14:04:41.534233
474	Mountain Climber	Mountain Climber	\N	mountain-climber	\N	\N	f	70	2	1	0	f	f	f	Published	2025-04-25 14:04:41.534824	2025-04-25 14:04:41.534824
475	Burpee	Burpee	\N	burpee	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.535499	2025-04-25 14:04:41.535499
476	Plate Alternating Deadstop Row	Plate Alternating Deadstop Row	\N	plate-alternating-deadstop-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.536327	2025-04-25 14:04:41.536327
477	Plate Bicep Curl	Plate Bicep Curl	\N	plate-bicep-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.537009	2025-04-25 14:04:41.537009
478	Plate Squat	Plate Squat	\N	plate-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.537661	2025-04-25 14:04:41.537661
479	Plate Clean And Press	Plate Clean And Press	\N	plate-clean-and-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.538276	2025-04-25 14:04:41.538276
480	Plate Squat Reach	Plate Squat Reach	\N	plate-squat-reach	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.539553	2025-04-25 14:04:41.539553
481	Plate Clean	Plate Clean	\N	plate-clean			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.540553	2025-04-25 14:04:41.540553
483	Plate Curl To Overhead Press	Plate Curl To Overhead Press	\N	plate-curl-to-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.541117	2025-04-25 14:04:41.541117
484	Plate Squat Hold Reach	Plate Squat Hold Reach	\N	plate-squat-hold-reach	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.542005	2025-04-25 14:04:41.542005
485	Plate Curl To Overhead Press To Tricep Extension	Plate Curl To Overhead Press To Tricep Extension	\N	plate-curl-to-overhead-press-to-tricep-extension	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.543091	2025-04-25 14:04:41.543091
486	Plate Curtsy Lunge	Plate Curtsy Lunge	\N	plate-curtsy-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.544106	2025-04-25 14:04:41.544106
488	Plate Deadlift	Plate Deadlift	\N	plate-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.545707	2025-04-25 14:04:41.545707
489	Plate Squat Hold Curl	Plate Squat Hold Curl	\N	plate-squat-hold-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.546756	2025-04-25 14:04:41.546756
490	Plate Single Leg Pinch Grip Deadlift	Plate Single Leg Pinch Grip Deadlift	\N	plate-single-leg-pinch-grip-deadlift			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.547454	2025-04-25 14:04:41.547454
491	Plate Car Driver	Plate Car Driver	\N	plate-car-driver	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.548218	2025-04-25 14:04:41.548218
492	Plate Front Raise	Plate Front Raise	\N	plate-front-raise	\N	\N	f	80	2	1	0	f	f	f	Published	2025-04-25 14:04:41.548917	2025-04-25 14:04:41.548917
493	Plate Good Morning Anterior	Plate Good Morning Anterior	\N	plate-good-morning-anterior	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.549628	2025-04-25 14:04:41.549628
494	Plate Good Morning	Plate Good Morning	\N	plate-good-morning	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.550398	2025-04-25 14:04:41.550398
495	Plate Halo	Plate Halo	\N	plate-halo	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.551207	2025-04-25 14:04:41.551207
496	Plate Lateral Lunge	Plate Lateral Lunge	\N	plate-lateral-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.552241	2025-04-25 14:04:41.552241
497	Plate Forward Lunge	Plate Forward Lunge	\N	plate-forward-lunge			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.552845	2025-04-25 14:04:41.552845
498	Band High Curl	Band High Curl	\N	band-high-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.553507	2025-04-25 14:04:41.553507
499	Band High Hammer Curl	Band High Hammer Curl	\N	band-high-hammer-curl			f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.55428	2025-04-25 14:04:41.55428
500	Band High Reverse Curl	Band High Reverse Curl	\N	band-high-reverse-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.554994	2025-04-25 14:04:41.554994
501	Band Chest Fly	Band Chest Fly	\N	band-chest-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.555642	2025-04-25 14:04:41.555642
502	Band Chest Press	Band Chest Press	\N	band-chest-press	\N	\N	f	30	2	1	0	f	f	f	Published	2025-04-25 14:04:41.556154	2025-04-25 14:04:41.556154
503	Band Curl	Band Curl	\N	band-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.556962	2025-04-25 14:04:41.556962
504	Plate Single Leg Deadlift	Plate Single Leg Deadlift	\N	plate-single-leg-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.557528	2025-04-25 14:04:41.557528
505	Band High Face Pull	Band High Face Pull	\N	band-high-face-pull	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.558326	2025-04-25 14:04:41.558326
506	Plate Reverse Lunge Twist	Plate Reverse Lunge Twist	\N	plate-reverse-lunge-twist	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.559362	2025-04-25 14:04:41.559362
507	Plate Reverse Lunge	Plate Reverse Lunge	\N	plate-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.560072	2025-04-25 14:04:41.560072
508	Band Hip Abduction	Band Hip Abduction	\N	band-hip-abduction			f	100	2	1	0	f	f	f	Published	2025-04-25 14:04:41.560733	2025-04-25 14:04:41.560733
510	Band Internally Rotated Chest Fly	Band Internally Rotated Chest Fly	\N	band-internally-rotated-chest-fly			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.562474	2025-04-25 14:04:41.562474
511	Plate Pinch Grip Side Bend	Plate Pinch Grip Side Bend	\N	plate-pinch-grip-side-bend			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.563132	2025-04-25 14:04:41.563132
512	Band Leg Curl	Band Leg Curl	\N	band-leg-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.563809	2025-04-25 14:04:41.563809
513	Plate Pinch Grip Row	Plate Pinch Grip Row	\N	plate-pinch-grip-row			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.564346	2025-04-25 14:04:41.564346
514	Band Leg Extension	Band Leg Extension	\N	band-leg-extension			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.565059	2025-04-25 14:04:41.565059
515	Band Low Lateral Raise	Band Low Lateral Raise	\N	band-low-lateral-raise	\N	\N	f	60	2	1	0	f	f	f	Published	2025-04-25 14:04:41.565604	2025-04-25 14:04:41.565604
516	Band Mid Lateral Raise	Band Mid Lateral Raise	\N	band-mid-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.566316	2025-04-25 14:04:41.566316
517	Plate Pinch Grip Deadlift	Plate Pinch Grip Deadlift	\N	plate-pinch-grip-deadlift			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.567262	2025-04-25 14:04:41.567262
518	Band Overhead Press	Band Overhead Press	\N	band-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.568096	2025-04-25 14:04:41.568096
519	Plate Overhead Tricep Extension	Plate Overhead Tricep Extension	\N	plate-overhead-tricep-extension			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.569127	2025-04-25 14:04:41.569127
520	Band Rapunzel Pushdown	Band Rapunzel Pushdown	\N	band-rapunzel-pushdown			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.569632	2025-04-25 14:04:41.569632
521	Plate Overhead Squat	Plate Overhead Squat	\N	plate-overhead-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.570305	2025-04-25 14:04:41.570305
522	Band Rear Delt Fly	Band Rear Delt Fly	\N	band-rear-delt-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.571167	2025-04-25 14:04:41.571167
523	Band Reverse Curl	Band Reverse Curl	\N	band-reverse-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.571997	2025-04-25 14:04:41.571997
524	Plate Overhead Press To Tricep Extension	Plate Overhead Press To Tricep Extension	\N	plate-overhead-press-to-tricep-extension	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.572569	2025-04-25 14:04:41.572569
525	Band Single Arm Pushdown	Band Single Arm Pushdown	\N	band-single-arm-pushdown			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.573349	2025-04-25 14:04:41.573349
526	Single Arm Rapunzel Pushdown	Single Arm Rapunzel Pushdown	\N	single-arm-rapunzel-pushdown			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.574053	2025-04-25 14:04:41.574053
527	Band Single Arm Skullcrusher	Band Single Arm Skullcrusher	\N	band-single-arm-skullcrusher			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.57463	2025-04-25 14:04:41.57463
528	Plate Deficit Lunge	Plate Deficit Lunge	\N	plate-deficit-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.575197	2025-04-25 14:04:41.575197
529	Plate Deficit Pushup	Plate Deficit Pushup	\N	plate-deficit-pushup			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.575837	2025-04-25 14:04:41.575837
530	Plate Full Lateral Raise	Plate Full Lateral Raise	\N	plate-full-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.576538	2025-04-25 14:04:41.576538
531	Plate Glute Bridge to Chest Press	Plate Glute Bridge to Chest Press	\N	plate-glute-bridge-to-chest-press			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.57736	2025-04-25 14:04:41.57736
532	Plate Glute Bridge to Pullover	Plate Glute Bridge to Pullover	\N	plate-glute-bridge-to-pullover			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.578006	2025-04-25 14:04:41.578006
533	Plate Internally Rotated Rear Delt Fly	Plate Internally Rotated Rear Delt Fly	\N	plate-internally-rotated-rear-delt-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.578633	2025-04-25 14:04:41.578633
534	Plate Lateral Raise	Plate Lateral Raise	\N	plate-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.579671	2025-04-25 14:04:41.579671
535	Plate Overhead Carry	Plate Overhead Carry	\N	plate-overhead-carry	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.580701	2025-04-25 14:04:41.580701
536	Plate Overhead Shrug	Plate Overhead Shrug	\N	plate-overhead-shrug			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.58194	2025-04-25 14:04:41.58194
537	Plate Overhead Walking Lunge	Plate Overhead Walking Lunge	\N	plate-overhead-walking-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.582499	2025-04-25 14:04:41.582499
538	Plate Pinch Grip Farmer's Carry	Plate Pinch Grip Farmer's Carry	\N	plate-pinch-grip-farmers-carry			f	100	2	1	0	f	f	f	Published	2025-04-25 14:04:41.583135	2025-04-25 14:04:41.583135
539	Plate Rear Delt Fly	Plate Rear Delt Fly	\N	plate-rear-delt-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.583734	2025-04-25 14:04:41.583734
540	Plate Russian Twist	Plate Russian Twist	\N	plate-russian-twist			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.584667	2025-04-25 14:04:41.584667
541	Plate Situp	Plate Situp	\N	plate-situp			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.585323	2025-04-25 14:04:41.585323
542	Plate Squat Hold	Plate Squat Hold	\N	plate-squat-hold			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.585982	2025-04-25 14:04:41.585982
543	Weighted Forearm Plank	Weighted Forearm Plank	\N	weighted-forearm-plank			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.586626	2025-04-25 14:04:41.586626
544	Plate Staggered Deadlift	Plate Staggered Deadlift	\N	plate-staggered-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.587154	2025-04-25 14:04:41.587154
545	Plate Staggered Pinch Grip Deadlift	Plate Staggered Pinch Grip Deadlift	\N	plate-staggered-pinch-grip-deadlift			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.588129	2025-04-25 14:04:41.588129
546	Plate Thruster	Plate Thruster	\N	plate-thruster	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.589191	2025-04-25 14:04:41.589191
547	Plate Reach	Plate Reach	\N	plate-reach	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.590237	2025-04-25 14:04:41.590237
548	Plate Standing Twist	Plate Standing Twist	\N	plate-standing-twist			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.590959	2025-04-25 14:04:41.590959
549	Weighted Hand Plank	Weighted Hand Plank	\N	weighted-hand-plank			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.591534	2025-04-25 14:04:41.591534
550	Plate Hollow Hold	Plate Hollow Hold	\N	plate-hollow-hold			f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.592053	2025-04-25 14:04:41.592053
551	Plate Wood Chopper	Plate Wood Chopper	\N	plate-wood-chopper			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.59266	2025-04-25 14:04:41.59266
552	Barbell Feet Elevated Figure Four Glute Bridge	Barbell Feet Elevated Figure Four Glute Bridge	\N	barbell-feet-elevated-figure-four-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.593198	2025-04-25 14:04:41.593198
553	Barbell Feet Elevated Glute Bridge	Barbell Feet Elevated Glute Bridge	\N	barbell-feet-elevated-glute-bridge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.593741	2025-04-25 14:04:41.593741
554	Barbell Feet Elevated Single Leg Glute Bridge	Barbell Feet Elevated Single Leg Glute Bridge	\N	barbell-feet-elevated-single-leg-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.594241	2025-04-25 14:04:41.594241
555	Barbell Feet Elevated Staggered Glute Bridge	Barbell Feet Elevated Staggered Glute Bridge	\N	barbell-feet-elevated-staggered-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.594756	2025-04-25 14:04:41.594756
556	Bodyweight Feet Elevated Figure Four Glute Bridge	Bodyweight Feet Elevated Figure Four Glute Bridge	\N	bodyweight-feet-elevated-figure-four-glute-bridge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.596023	2025-04-25 14:04:41.596023
557	Bodyweight Feet Elevated Glute Bridge	Bodyweight Feet Elevated Glute Bridge	\N	bodyweight-feet-elevated-glute-bridge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.596727	2025-04-25 14:04:41.596727
558	Bodyweight Feet Elevated Single Leg Glute Bridge	Bodyweight Feet Elevated Single Leg Glute Bridge	\N	bodyweight-feet-elevated-single-leg-glute-bridge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.597316	2025-04-25 14:04:41.597316
560	Bodyweight Feet Elevated Staggered Glute Bridge	Bodyweight Feet Elevated Staggered Glute Bridge	\N	bodyweight-feet-elevated-staggered-glute-bridge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.597835	2025-04-25 14:04:41.597835
561	Lawnmower Row	Lawnmower Row	\N	lawnmower-row			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.598358	2025-04-25 14:04:41.598358
562	Dumbbell Concentration Curl	Dumbbell Concentration Curl	\N	dumbbell-concentration-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.598995	2025-04-25 14:04:41.598995
563	Dumbbell Crunch	Dumbbell Crunch	\N	dumbbell-crunch			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.599497	2025-04-25 14:04:41.599497
564	Dumbbell Elevated Pushup	Dumbbell Elevated Pushup	\N	dumbbell-elevated-pushup			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.600022	2025-04-25 14:04:41.600022
565	Dumbbell Feet Elevated Figure Four Glute Bridge	Dumbbell Feet Elevated Figure Four Glute Bridge	\N	dumbbell-feet-elevated-figure-four-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.600646	2025-04-25 14:04:41.600646
566	Dumbbell Feet Elevated Glute Bridge	Dumbbell Feet Elevated Glute Bridge	\N	dumbbell-feet-elevated-glute-bridge			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.601271	2025-04-25 14:04:41.601271
567	Dumbbell Feet Elevated Single Leg Glute Bridge	Dumbbell Feet Elevated Single Leg Glute Bridge	\N	dumbbell-feet-elevated-single-leg-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.601979	2025-04-25 14:04:41.601979
568	Dumbbell Feet Elevated Staggered Glute Bridge	Dumbbell Feet Elevated Staggered Glute Bridge	\N	dumbbell-feet-elevated-staggered-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.60264	2025-04-25 14:04:41.60264
569	Dumbbell Knee Lawnmower Row	Dumbbell Knee Lawnmower Row	\N	dumbbell-knee-lawnmower-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.60328	2025-04-25 14:04:41.60328
570	Laying Lateral Raise	Laying Lateral Raise	\N	laying-lateral-raise	\N	\N	f	100	2	1	0	f	f	f	Published	2025-04-25 14:04:41.604225	2025-04-25 14:04:41.604225
571	Dumbbell Long Lever Russian Twist	Dumbbell Long Lever Russian Twist	\N	dumbbell-long-lever-russian-twist			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.60498	2025-04-25 14:04:41.60498
572	Dumbbell Overhead Squat	Dumbbell Overhead Squat	\N	dumbbell-overhead-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.605506	2025-04-25 14:04:41.605506
573	Plank IYTW	Plank IYTW	\N	plank-iytw	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.606629	2025-04-25 14:04:41.606629
574	Pushup to Renegade Row	Pushup to Renegade Row	\N	pushup-to-renegade-row			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.607287	2025-04-25 14:04:41.607287
575	Dumbbell Side Bend	Dumbbell Side Bend	\N	dumbbell-side-bend			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.608098	2025-04-25 14:04:41.608098
576	Single Arm Overhead Squat	Single Arm Overhead Squat	\N	single-arm-overhead-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.608785	2025-04-25 14:04:41.608785
577	Dumbbell Single Arm Overhead Tricep Extension	Dumbbell Single Arm Overhead Tricep Extension	\N	dumbbell-single-arm-overhead-tricep-extension			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.60967	2025-04-25 14:04:41.60967
578	Dumbbell Single Arm Upright Row	Dumbbell Single Arm Upright Row	\N	dumbbell-single-arm-upright-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.610205	2025-04-25 14:04:41.610205
579	Dumbbell Upright Row	Dumbbell Upright Row	\N	dumbbell-upright-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.611564	2025-04-25 14:04:41.611564
580	Dumbbell Standing Hip Abduction	Dumbbell Standing Hip Abduction	\N	dumbbell-standing-hip-abduction			f	80	1	1	0	f	f	f	Published	2025-04-25 14:04:41.612493	2025-04-25 14:04:41.612493
581	Dumbbell Suitcase Crunch	Dumbbell Suitcase Crunch	\N	dumbbell-suitcase-crunch			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.613364	2025-04-25 14:04:41.613364
582	Dumbbell Superman	Dumbbell Superman	\N	dumbbell-superman			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.614024	2025-04-25 14:04:41.614024
583	Dumbbell Supinated Row	Dumbbell Supinated Row	\N	dumbbell-supinated-row			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.614597	2025-04-25 14:04:41.614597
584	Dumbbell Tate Press	Dumbbell Tate Press	\N	dumbbell-tate-press			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.615241	2025-04-25 14:04:41.615241
585	TRX Ab Rollout	TRX Ab Rollout	\N	trx-ab-rollout			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.615845	2025-04-25 14:04:41.615845
586	TRX Calf Raise	TRX Calf Raise	\N	trx-calf-raise			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.616619	2025-04-25 14:04:41.616619
587	TRX Pec Fly	TRX Pec Fly	\N	trx-pec-fly			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.617146	2025-04-25 14:04:41.617146
588	TRX Curl	TRX Curl	\N	trx-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.617673	2025-04-25 14:04:41.617673
589	TRX Curtsy Lunge	TRX Curtsy Lunge	\N	trx-curtsy-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.61822	2025-04-25 14:04:41.61822
590	TRX Forearm Plank	TRX Forearm Plank	\N	trx-forearm-plank			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.618883	2025-04-25 14:04:41.618883
591	TRX Forearm Side Plank	TRX Forearm Side Plank	\N	trx-forearm-side-plank			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.620244	2025-04-25 14:04:41.620244
592	TRX Glute Bridge	TRX Glute Bridge	\N	trx-glute-bridge			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.620914	2025-04-25 14:04:41.620914
593	TRX Hammer Curl	TRX Hammer Curl	\N	trx-hammer-curl			f	1	2	1	0	t	f	f	Published	2025-04-25 14:04:41.621598	2025-04-25 14:04:41.621598
594	TRX Hamstring Curl	TRX Hamstring Curl	\N	trx-hamstring-curl			f	60	2	1	0	f	f	f	Published	2025-04-25 14:04:41.622274	2025-04-25 14:04:41.622274
595	TRX Hand Plank	TRX Hand Plank	\N	trx-hand-plank			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.62291	2025-04-25 14:04:41.62291
596	TRX I Raise	TRX I Raise	\N	trx-i-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.623415	2025-04-25 14:04:41.623415
597	TRX Jumping Squat	TRX Jumping Squat	\N	trx-jumping-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.624168	2025-04-25 14:04:41.624168
598	TRX Kneeling Ab Rollout	TRX Kneeling Ab Rollout	\N	trx-kneeling-ab-rollout			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.62496	2025-04-25 14:04:41.62496
599	TRX Knee Tuck	TRX Knee Tuck	\N	trx-knee-tuck			f	50	2	1	0	f	f	f	Published	2025-04-25 14:04:41.625752	2025-04-25 14:04:41.625752
600	TRX Lateral Lunge	TRX Lateral Lunge	\N	trx-lateral-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.626531	2025-04-25 14:04:41.626531
601	TRX Mountain Climber	TRX Mountain Climber	\N	trx-mountain-climber			f	80	2	1	0	f	f	f	Published	2025-04-25 14:04:41.627191	2025-04-25 14:04:41.627191
602	TRX Oblique Crunch	TRX Oblique Crunch	\N	trx-oblique-crunch			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.62779	2025-04-25 14:04:41.62779
603	TRX Pike	TRX Pike	\N	trx-pike			f	60	2	1	0	f	f	f	Published	2025-04-25 14:04:41.628646	2025-04-25 14:04:41.628646
604	TRX Pushup	TRX Pushup	\N	trx-pushup	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.629387	2025-04-25 14:04:41.629387
605	TRX Rear Delt Fly	TRX Rear Delt Fly	\N	trx-rear-delt-fly	\N	\N	f	70	2	1	0	f	f	f	Published	2025-04-25 14:04:41.63034	2025-04-25 14:04:41.63034
606	TRX Rear Delt Row	TRX Rear Delt Row	\N	trx-rear-delt-row	\N	\N	f	90	2	1	0	f	f	f	Published	2025-04-25 14:04:41.63119	2025-04-25 14:04:41.63119
608	TRX Reverse Lunge	TRX Reverse Lunge	\N	trx-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.632765	2025-04-25 14:04:41.632765
609	TRX Rotating Row	TRX Rotating Row	\N	trx-rotating-row			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.633434	2025-04-25 14:04:41.633434
610	TRX Single Arm row	TRX Single Arm row	\N	trx-single-arm-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.634086	2025-04-25 14:04:41.634086
611	TRX Skullcrusher	TRX Skullcrusher	\N	trx-skullcrusher			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.634791	2025-04-25 14:04:41.634791
612	TRX Split Squat	TRX Split Squat	\N	trx-split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.635493	2025-04-25 14:04:41.635493
613	TRX Squat	TRX Squat	\N	trx-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.636081	2025-04-25 14:04:41.636081
614	TRX W Raise	TRX W Raise	\N	trx-w-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.636856	2025-04-25 14:04:41.636856
615	TRX Y Raise	TRX Y Raise	\N	trx-y-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.637869	2025-04-25 14:04:41.637869
617	Child Pose Arms Extended	Child Pose Arms Extended	Balasana	child-pose-arms-extended			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.638758	2025-04-25 14:04:41.638758
618	Child Pose Arms Extended Left Right	Child Pose Arms Extended Left Right	Balasana	child-pose-arms-extended-left-right			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.639306	2025-04-25 14:04:41.639306
619	Child Pose Arms On Side	Child Pose Arms On Side	Balasana	child-pose-arms-on-side			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.639835	2025-04-25 14:04:41.639835
620	Table Top Pose Variation 1	Table Top Pose Variation 1	Bharmanasana Variation 1	table-top-pose-variation-1			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.640328	2025-04-25 14:04:41.640328
621	Table Top Pose Variation 2	Table Top Pose Variation 2	Bharmanasana Variation 2	table-top-pose-variation-2			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.640854	2025-04-25 14:04:41.640854
622	Table Top Pose Variation 3	Table Top Pose Variation 3	Bharmanasana Variation 3	table-top-pose-variation-3			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.641471	2025-04-25 14:04:41.641471
623	Bow Pose	Bow Pose	Dhanurasana	bow-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.641993	2025-04-25 14:04:41.641993
624	Criss Cross Bow Tie Pose	Criss Cross Bow Tie Pose	\N	bow-tie-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.642519	2025-04-25 14:04:41.642519
625	Cat Pose	Cat Pose	Marjaryasana	cat-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.643351	2025-04-25 14:04:41.643351
626	Chair Pose	Chair Pose	Utkatasana	chair-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.64389	2025-04-25 14:04:41.64389
627	Child Pose Elbows On Block	Child Pose Elbows On Block	Balasana Prayer	child-pose-elbows-on-block			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.644435	2025-04-25 14:04:41.644435
629	Corpse Pose	Corpse Pose	Savasana	corpe-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.645	2025-04-25 14:04:41.645
630	Crescent Moon Pose	Crescent Moon Pose	Añjaneyasana	crescent-moon-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.64583	2025-04-25 14:04:41.64583
631	Crescent Moon Pose Quad Stretch	Crescent Moon Pose Quad Stretch	Añjaneyasana	crescent-moon-pose-quad-stretch			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.646439	2025-04-25 14:04:41.646439
632	Crescent Moon Pose Quad Stretch With Block	Crescent Moon Pose Quad Stretch With Block	Añjaneyasana	crescent-moon-pose-quad-stretch-with-block			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.64703	2025-04-25 14:04:41.64703
633	Crow Pose	Crow Pose	\N	crow-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.647571	2025-04-25 14:04:41.647571
634	Double Pigeon Pose	Double Pigeon Pose	Agnistambhasana, Fire Log Pose	double-pigeon-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.648061	2025-04-25 14:04:41.648061
635	Downward Dog	Downward Dog	Adho Mukha Svanasana	downward-dog			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.648555	2025-04-25 14:04:41.648555
636	Downward Dog Toe To Heel	Downward Dog Toe To Heel	Adho Mukha Svanasana Variation	downward-dog-toe-to-heel			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.649117	2025-04-25 14:04:41.649117
637	Downward Dog With Fingers Facing Feet	Downward Dog With Fingers Facing Feet	Adho Mukha Svanasana Variation	downward-dog-with-fingers-facing-feet			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.649731	2025-04-25 14:04:41.649731
638	Eagle Arms Chin Into Chest	Eagle Arms Chin Into Chest	\N	eagle-arms-chin-into-chest			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.650281	2025-04-25 14:04:41.650281
639	Eagle Arm Pose	Eagle Arm Pose	\N	eagle-arm-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.650869	2025-04-25 14:04:41.650869
641	Easy Pose Neck Stretch	Easy Pose Neck Stretch	\N	easy-pose-neck-stretch			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.651619	2025-04-25 14:04:41.651619
642	Easy Seated Twist Pose	Easy Seated Twist Pose	Bharadvaja's Twist	easy-seated-twist-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.652172	2025-04-25 14:04:41.652172
643	extended-side-angle-pose	extended-side-angle-pose	Utthita Parsvakonasana	extended-side-angle-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.652741	2025-04-25 14:04:41.652741
644	Extended side Angle Pose With Block	Extended side Angle Pose With Block	Utthita parsvakonasana	extended-side-angle-pose-with-block			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.653346	2025-04-25 14:04:41.653346
645	Gate Pose Variation Arm Extended on Side	Gate Pose Variation Arm Extended on Side	Parighasana	gate-pose-variation-arm-extended-on-side			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.654061	2025-04-25 14:04:41.654061
646	Gate Pose Rounding Spine Looking Up	Gate Pose Rounding Spine Looking Up	Parighasana	gate-pose-rounding-spine-looking-up			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.654636	2025-04-25 14:04:41.654636
647	Half Lotus	Half Lotus	Padmasana	half-lotus			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.655126	2025-04-25 14:04:41.655126
648	Half Monkey Pose	Half Monkey Pose	Ardha Hanumanasana	half-monkey-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.655599	2025-04-25 14:04:41.655599
649	Half Neck Rolls	Half Neck Rolls	\N	half-neck-rolls			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.656095	2025-04-25 14:04:41.656095
650	Happy Baby	Happy Baby	Ananda Balasana	happy-baby			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.656554	2025-04-25 14:04:41.656554
651	Headstand	Headstand	Sirsasana	headstand	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.657046	2025-04-25 14:04:41.657046
652	Lord Of The Dance	Lord Of The Dance	Natarajasana	lord-of-the-dance			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.657935	2025-04-25 14:04:41.657935
653	Monkey Pose	Monkey Pose	Hanumanasana	monkey-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.659506	2025-04-25 14:04:41.659506
655	Mountain	Mountain	Tadasana	mountain			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.660737	2025-04-25 14:04:41.660737
656	One Arm Cow Face Pose	One Arm Cow Face Pose	Gomukhasana	one-arm-cow-face-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.661783	2025-04-25 14:04:41.661783
657	Seated Forward Bend	Seated Forward Bend	Paschimottanasana	seated-forward-bend			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.66295	2025-04-25 14:04:41.66295
658	Pigeon Pose	Pigeon Pose	Kapotasana	pigeon-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.664845	2025-04-25 14:04:41.664845
659	Wide Legged Forward Fall	Wide Legged Forward Fall	Prasarita Padottanasana	wide-legged-forward-fall	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.66548	2025-04-25 14:04:41.66548
660	Puppy Pose	Puppy Pose	Anahatasana	puppy-pose	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.666314	2025-04-25 14:04:41.666314
661	Pyramid Pose Blocks	Pyramid Pose Blocks	Parvosttanasana	pyramid-pose-blocks			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.667006	2025-04-25 14:04:41.667006
662	Pyramid Pose Calf Blocks	Pyramid Pose Calf Blocks	\N	pyramid-pose-calf-blocks			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.66754	2025-04-25 14:04:41.66754
663	Pyramid Pose	Pyramid Pose	Parvosttanasana	pyramid-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.668176	2025-04-25 14:04:41.668176
664	Pyramid Prayer	Pyramid Prayer	\N	pyramid-prayer			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.668682	2025-04-25 14:04:41.668682
665	Reclining Pigeon Pose	Reclining Pigeon Pose	Supta Kapotanassana	reclining-pigeon-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.669266	2025-04-25 14:04:41.669266
666	Restful Cow Face Pose Legs	Restful Cow Face Pose Legs	Gomukahasana	restful-cow-face-pose-legs			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.669988	2025-04-25 14:04:41.669988
668	Reverse Prayer	Reverse Prayer	\N	reverse-prayer	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.670626	2025-04-25 14:04:41.670626
670	Revolved Head To Knee	Revolved Head To Knee	Parivritta Janu Sirsasana	revolved-head-to-knee			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.671864	2025-04-25 14:04:41.671864
671	Revolved Side Angle Pose With Prayer Hands Beginner	Revolved Side Angle Pose With Prayer Hands Beginner	\N	revolved-side-angle-pose-with-prayer-hands-beginner			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.672403	2025-04-25 14:04:41.672403
672	Revolved Side Angle Pose With Prayer Hands	Revolved Side Angle Pose With Prayer Hands	Parivrtta Parsvakonasana	revolved-side-angle-pose-with-prayer-hands			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.672926	2025-04-25 14:04:41.672926
673	Runners Lunge	Runners Lunge	Utthita Ashwa Sanchalanasana	runners-lunge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.673427	2025-04-25 14:04:41.673427
674	Scorpion Twist Pose	Scorpion Twist Pose	\N	scorpion-twist-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.673981	2025-04-25 14:04:41.673981
675	Seated Arm Stretch	Seated Arm Stretch	\N	seated-arm-stretch			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.674537	2025-04-25 14:04:41.674537
676	Seated Side Bend Pose	Seated Side Bend Pose	Parsva Sukhansana	seated-side-bend-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.675042	2025-04-25 14:04:41.675042
677	Seated Twist	Seated Twist	Bharadvajas Twist	seated-twist			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.675702	2025-04-25 14:04:41.675702
678	Sphinx Pose	Sphinx Pose	\N	sphinx-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.676284	2025-04-25 14:04:41.676284
680	Standing Forward Bend Blocks	Standing Forward Bend Blocks	Uttanasana	standing-forward-bend-blocks			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.676788	2025-04-25 14:04:41.676788
681	Standing Forward Bend	Standing Forward Bend	Uttanasana	standing-forward-bend			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.677496	2025-04-25 14:04:41.677496
682	Supine Twist Lying	Supine Twist Lying	Supta Matsyendrasana	supine-twist-lying			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.678067	2025-04-25 14:04:41.678067
683	Supported Matsyasana Pose	Supported Matsyasana Pose	Matsyasana	supported-matsyasana-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.678762	2025-04-25 14:04:41.678762
684	Thread The Needle Hip Over Knees	Thread The Needle Hip Over Knees	Parsva Balasana	thread-the-needle-hip-over-knees			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.679407	2025-04-25 14:04:41.679407
685	Tree Pose	Tree Pose	Virkshasana	tree-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.679901	2025-04-25 14:04:41.679901
686	Two Arms Cow Face Pose	Two Arms Cow Face Pose	\N	two-arms-cow-face-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.680498	2025-04-25 14:04:41.680498
687	Urdhva Dhanurasana Wheel Pose	Urdhva Dhanurasana Wheel Pose	Urdhva Dhanurasana, Upward Facing Bow Pose	urdhva-dhanurasana-wheel-pose	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.681009	2025-04-25 14:04:41.681009
688	Vajrasana Variation 1	Vajrasana Variation 1	\N	vajrasana-variation-1			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.681513	2025-04-25 14:04:41.681513
689	Vajrasana Variation 2	Vajrasana Variation 2	\N	vajrasana-Variation-2			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.682017	2025-04-25 14:04:41.682017
690	Walk Your Downward Dog	Walk Your Downward Dog	Adho Mukha Svanasana	walk-your-downward-dog			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.682494	2025-04-25 14:04:41.682494
691	Warrior One	Warrior One	Virahbadrasana	warrior-one			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.682994	2025-04-25 14:04:41.682994
692	Warrior Three	Warrior Three	Virahbadrasana	warrior-three	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.683496	2025-04-25 14:04:41.683496
693	Warrior Two	Warrior Two	Virahbadrasana	warrior-two			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.684026	2025-04-25 14:04:41.684026
694	Wide Legged Standing Forward Bend Holding Heels	Wide Legged Standing Forward Bend Holding Heels	Prasarita Padottanasana	wide-legged-standing-forward-bend-holding-heels			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.684591	2025-04-25 14:04:41.684591
695	Wild Thing Pose	Wild Thing Pose	Camatkarasana	wild-thing-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.685072	2025-04-25 14:04:41.685072
696	Yogi Arm Clock	Yogi Arm Clock	\N	yogi-arm-clock			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.685885	2025-04-25 14:04:41.685885
700	Box Jump	Box Jump	\N	box-jump	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.686486	2025-04-25 14:04:41.686486
701	Depth Jump	Depth Jump	\N	depth-jump			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.687652	2025-04-25 14:04:41.687652
702	Seated Box Jump	Seated Box Jump	\N	seated-box-jump			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.688663	2025-04-25 14:04:41.688663
703	Single Leg Box Jump	Single Leg Box Jump	\N	single-leg-box-jump			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.689624	2025-04-25 14:04:41.689624
704	Toe Tap	Toe Tap	\N	toe-tap	\N	\N	f	1	1	85	0	f	f	f	Published	2025-04-25 14:04:41.690366	2025-04-25 14:04:41.690366
705	Glute Ham Raise	Glute Ham Raise	\N	glute-ham-raise			f	80	440	300	0	t	t	f	Published	2025-04-25 14:04:41.691245	2025-04-25 14:04:41.691245
707	Medicine Ball Chest Press Partner Toss	Medicine Ball Chest Press Partner Toss	\N	chest-press-partner-toss	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.691933	2025-04-25 14:04:41.691933
708	Medicine Ball Chest Press Slam	Medicine Ball Chest Press Slam	\N	chest-press-slam			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.69281	2025-04-25 14:04:41.69281
709	Medicine Ball Chest Press Toss	Medicine Ball Chest Press Toss	\N	chest-press-toss			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.693363	2025-04-25 14:04:41.693363
710	Medicine Ball Clean And Press Slam	Medicine Ball Clean And Press Slam	\N	clean-and-press-slam	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.693919	2025-04-25 14:04:41.693919
711	Medicine Ball Half Kneeling Wood Chopper	Medicine Ball Half Kneeling Wood Chopper	\N	half-kneeling-wood-chopper			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.695176	2025-04-25 14:04:41.695176
712	Medicine Ball Halo	Medicine Ball Halo	\N	halo	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.695947	2025-04-25 14:04:41.695947
713	Medicine Ball Ball Headlock Squat	Medicine Ball Ball Headlock Squat	\N	ball-headlock-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.697172	2025-04-25 14:04:41.697172
714	Medicine Ball Hip Abduction	Medicine Ball Hip Abduction	\N	hip-abduction			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.69802	2025-04-25 14:04:41.69802
715	Medicine Ball Kneeling Wood Chopper	Medicine Ball Kneeling Wood Chopper	\N	medicine-ball-kneeling-wood-chopper			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.69849	2025-04-25 14:04:41.69849
716	Medicine Ball Lateral Lunge Slam	Medicine Ball Lateral Lunge Slam	\N	medicine-ball-lateral-lunge-slam			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.699081	2025-04-25 14:04:41.699081
717	Medicine Ball Ball Offset Squat	Medicine Ball Ball Offset Squat	\N	ball-offset-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.700118	2025-04-25 14:04:41.700118
718	Medicine Ball Overhead Reverse Lunge	Medicine Ball Overhead Reverse Lunge	\N	overhead-reverse-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.700779	2025-04-25 14:04:41.700779
719	Medicine Ball Overhead Squat	Medicine Ball Overhead Squat	\N	overhead-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.70186	2025-04-25 14:04:41.70186
720	Medicine Ball Partner Side Toss	Medicine Ball Partner Side Toss	\N	partner-side-toss			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.702494	2025-04-25 14:04:41.702494
721	Medicine Ball Partner Situp Toss	Medicine Ball Partner Situp Toss	\N	partner-situp-toss			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.703008	2025-04-25 14:04:41.703008
722	Medicine Ball Plank	Medicine Ball Plank	\N	plank			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.703724	2025-04-25 14:04:41.703724
723	Medicine Ball Press Jack	Medicine Ball Press Jack	\N	press-jack	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.70466	2025-04-25 14:04:41.70466
724	Medicine Ball Pushup	Medicine Ball Pushup	\N	medicine-ball-push-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.705467	2025-04-25 14:04:41.705467
725	Medicine Ball Rainbow Slam	Medicine Ball Rainbow Slam	\N	rainbow-slam			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.706039	2025-04-25 14:04:41.706039
726	Medicine Ball Reverse Lunge	Medicine Ball Reverse Lunge	\N	reverse-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.706724	2025-04-25 14:04:41.706724
727	Medicine Ball Reverse Lunge Twist	Medicine Ball Reverse Lunge Twist	\N	reverse-lunge-twist	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.707323	2025-04-25 14:04:41.707323
728	Medicine Ball Russian Twist	Medicine Ball Russian Twist	\N	russian-twist			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.70807	2025-04-25 14:04:41.70807
729	Medicine Ball Self Toss	Medicine Ball Self Toss	\N	self-toss	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.708622	2025-04-25 14:04:41.708622
730	Medicine Ball Single Leg Deadlift	Medicine Ball Single Leg Deadlift	\N	single-leg-deadlift			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.709981	2025-04-25 14:04:41.709981
731	Medicine Ball Slam	Medicine Ball Slam	\N	slam			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.710667	2025-04-25 14:04:41.710667
732	Medicine Ball Squat Reach	Medicine Ball Squat Reach	\N	squat-reach	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.711252	2025-04-25 14:04:41.711252
733	Medicine Ball Walkover Pushup	Medicine Ball Walkover Pushup	\N	walkover-pushup			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.712461	2025-04-25 14:04:41.712461
734	Medicine Ball Wall Ball	Medicine Ball Wall Ball	\N	wall-ball	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.713238	2025-04-25 14:04:41.713238
735	Medicine Ball Wood Chopper	Medicine Ball Wood Chopper	\N	wood-chopper			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.714302	2025-04-25 14:04:41.714302
736	Medicine Ball Wood Chopper Toss	Medicine Ball Wood Chopper Toss	\N	wood-chopper-toss			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.71478	2025-04-25 14:04:41.71478
743	Landmine Alternating Lunge And Twist	Landmine Alternating Lunge And Twist	\N	landmine-alternating-lunge-and-twist	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.715256	2025-04-25 14:04:41.715256
744	Landmine Alternating Lunge To Chest Press	Landmine Alternating Lunge To Chest Press	\N	landmine-alternating-lunge-to-chest-press			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.715947	2025-04-25 14:04:41.715947
745	Landmine Alternating Single Arm Press	Landmine Alternating Single Arm Press	\N	landmine-alternating-single-arm-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.716674	2025-04-25 14:04:41.716674
746	Landmine Bicep Curl	Landmine Bicep Curl	\N	landmine-bicep-curl			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.717681	2025-04-25 14:04:41.717681
747	Landmine Calf Raise	Landmine Calf Raise	\N	landmine-calf-raise			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.718236	2025-04-25 14:04:41.718236
748	Landmine Concentration Curl	Landmine Concentration Curl	\N	landmine-concentration-curl			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.718784	2025-04-25 14:04:41.718784
749	Landmine Curtsy Lunge	Landmine Curtsy Lunge	\N	landmine-curtsy-lunge	\N	\N	f	60	2	1	0	f	f	f	Published	2025-04-25 14:04:41.719267	2025-04-25 14:04:41.719267
750	Landmine Glute Kick Back	Landmine Glute Kick Back	\N	landmine-glute-kick-back			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.720754	2025-04-25 14:04:41.720754
751	Landmine Goblet Curtsy Lunge	Landmine Goblet Curtsy Lunge	\N	landmine-goblet-curtsy-lunge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.721434	2025-04-25 14:04:41.721434
752	Landmine Goblet Lateral Lunge	Landmine Goblet Lateral Lunge	\N	landmine-goblet-lateral-lunge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.722543	2025-04-25 14:04:41.722543
753	Landmine Hack Squat	Landmine Hack Squat	\N	landmine-hack-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.72315	2025-04-25 14:04:41.72315
754	Landmine Half Kneeling Single Arm Overhead Press	Landmine Half Kneeling Single Arm Overhead Press	\N	landmine-half-kneeling-single-arm-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.723765	2025-04-25 14:04:41.723765
755	Landmine Hollow Hold	Landmine Hollow Hold	\N	landmine-hollow-hold	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.724619	2025-04-25 14:04:41.724619
756	Landmine Kneeling Alternating Overhead Press	Landmine Kneeling Alternating Overhead Press	\N	landmine-kneeling-alternating-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.725657	2025-04-25 14:04:41.725657
757	Landmine Kneeling Overhead Press	Landmine Kneeling Overhead Press	\N	landmine-kneeling-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.726645	2025-04-25 14:04:41.726645
758	Landmine Kneeling Twist	Landmine Kneeling Twist	\N	landmine-kneeling-twist	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.727537	2025-04-25 14:04:41.727537
759	Landmine Lateral Lunge	Landmine Lateral Lunge	\N	landmine-lateral-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.728013	2025-04-25 14:04:41.728013
760	Landmine Lateral Raise	Landmine Lateral Raise	\N	landmine-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.728577	2025-04-25 14:04:41.728577
761	Landmine Lunge	Landmine Lunge	\N	landmine-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.729597	2025-04-25 14:04:41.729597
762	Landmine Lunge To Overhead Press	Landmine Lunge To Overhead Press	\N	landmine-lunge-to-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.730277	2025-04-25 14:04:41.730277
763	Landmine Lying Tricep Extension	Landmine Lying Tricep Extension	\N	landmine-lying-tricep-extension			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.731188	2025-04-25 14:04:41.731188
764	Landmine Oblique Twist	Landmine Oblique Twist	\N	landmine-oblique-twist	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.731966	2025-04-25 14:04:41.731966
765	Landmine Overhead Press	Landmine Overhead Press	\N	landmine-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.732492	2025-04-25 14:04:41.732492
766	Landmine Romanian Deadlift	Landmine Romanian Deadlift	\N	landmine-romanian-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.733374	2025-04-25 14:04:41.733374
767	Landmine Rotational Lift To Press	Landmine Rotational Lift To Press	\N	landmine-rotational-lift-to-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.73417	2025-04-25 14:04:41.73417
768	Landmine Russian Twist	Landmine Russian Twist	\N	landmine-russian-twist			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.735414	2025-04-25 14:04:41.735414
769	Landmine Seated Alternating Overhead Press	Landmine Seated Alternating Overhead Press	\N	landmine-seated-alternating-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.735941	2025-04-25 14:04:41.735941
770	Landmine Seated Overhead Press	Landmine Seated Overhead Press	\N	landmine-seated-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.736939	2025-04-25 14:04:41.736939
771	Landmine Seated Single Arm Overhead Press	Landmine Seated Single Arm Overhead Press	\N	landmine-seated-single-arm-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.738099	2025-04-25 14:04:41.738099
772	Landmine Single Arm Chest Press	Landmine Single Arm Chest Press	\N	landmine-single-arm-chest-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.739172	2025-04-25 14:04:41.739172
773	Landmine Single Arm Overhead Press	Landmine Single Arm Overhead Press	\N	landmine-single-arm-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.739741	2025-04-25 14:04:41.739741
774	Landmine Single Arm Push Press	Landmine Single Arm Push Press	\N	landmine-single-arm-push-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.740584	2025-04-25 14:04:41.740584
775	Landmine Single Arm Staggered Overhead Press	Landmine Single Arm Staggered Overhead Press	\N	landmine-single-arm-staggered-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.74149	2025-04-25 14:04:41.74149
776	Landmine Single Leg Glute Bridge	Landmine Single Leg Glute Bridge	\N	landmine-single-leg-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.742447	2025-04-25 14:04:41.742447
777	Landmine Single Leg Romanian Deadlift	Landmine Single Leg Romanian Deadlift	\N	landmine-single-leg-romanian-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.743043	2025-04-25 14:04:41.743043
778	Barbell Landmine Sissy Squat	Barbell Landmine Sissy Squat	\N	barbell-landmine-sissy-squat			f	90	1	1	0	f	f	f	Published	2025-04-25 14:04:41.744094	2025-04-25 14:04:41.744094
779	Landmine Sit Up	Landmine Sit Up	\N	landmine-sit-up			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.744921	2025-04-25 14:04:41.744921
780	Landmine Snatch	Landmine Snatch	\N	landmine-snatch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.7458	2025-04-25 14:04:41.7458
781	Landmine Split Jerk	Landmine Split Jerk	\N	landmine-split-jerk			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.746879	2025-04-25 14:04:41.746879
782	Landmine Squat	Landmine Squat	\N	landmine-squat			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.747562	2025-04-25 14:04:41.747562
783	Landmine Staggered Romanian Deadlift	Landmine Staggered Romanian Deadlift	\N	landmine-staggered-romanian-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.748383	2025-04-25 14:04:41.748383
784	Landmine Stationary Twist	Landmine Stationary Twist	\N	landmine-stationary-twist			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.749246	2025-04-25 14:04:41.749246
785	Landmine Sumo Deadlift	Landmine Sumo Deadlift	\N	landmine-sumo-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.74985	2025-04-25 14:04:41.74985
786	Landmine T Bar Rows	Landmine T Bar Rows	\N	landmine-t-bar-rows	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.750596	2025-04-25 14:04:41.750596
787	Landmine Thruster	Landmine Thruster	\N	landmine-thruster	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.75154	2025-04-25 14:04:41.75154
789	Medicine Ball Hollow Hold	Medicine Ball Hollow Hold	\N	medicine-ball-hollow-hold			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.752683	2025-04-25 14:04:41.752683
791	Bosu Ball Burpee	Bosu Ball Burpee	\N	bosu-ball-burpee			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.753265	2025-04-25 14:04:41.753265
792	Bosu Ball Calf Raise	Bosu Ball Calf Raise	\N	calf-raise	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.754195	2025-04-25 14:04:41.754195
793	Bosu Ball Curl	Bosu Ball Curl	\N	curl			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.754751	2025-04-25 14:04:41.754751
794	Bosu Ball Feet Elevated Glute Bridge	Bosu Ball Feet Elevated Glute Bridge	\N	feet-elevated-glute-bridge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.755248	2025-04-25 14:04:41.755248
795	Bosu Ball Forearm Plank	Bosu Ball Forearm Plank	\N	bosu-ball-forearm-plank	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.755739	2025-04-25 14:04:41.755739
796	Bosu Ball Forearm Sideplank	Bosu Ball Forearm Sideplank	\N	forearm-sideplank			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.756228	2025-04-25 14:04:41.756228
797	Bosu Ball Front Raise	Bosu Ball Front Raise	\N	front-raise			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.756713	2025-04-25 14:04:41.756713
798	Bosu Ball Half Burpee	Bosu Ball Half Burpee	\N	half-burpee	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.757314	2025-04-25 14:04:41.757314
799	Bosu Ball Hand Plank	Bosu Ball Hand Plank	\N	bosu-ball-hand-plank	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.758216	2025-04-25 14:04:41.758216
800	Bosu Ball Hand Sideplank	Bosu Ball Hand Sideplank	\N	hand-sideplank			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.758617	2025-04-25 14:04:41.758617
801	Bosu Ball Hand Sideplank Hip Abduction	Bosu Ball Hand Sideplank Hip Abduction	\N	hand-sideplank-hip-abduction	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.759043	2025-04-25 14:04:41.759043
802	Bosu Ball Hip Thrust	Bosu Ball Hip Thrust	\N	bosu-ball-hip-thrust			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.759674	2025-04-25 14:04:41.759674
803	Bosu Ball Lateral Lunge	Bosu Ball Lateral Lunge	\N	bosu-ball-lateral-lunge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.760054	2025-04-25 14:04:41.760054
804	Bosu Ball Offset Pushup	Bosu Ball Offset Pushup	\N	bosu-ball-offset-pushup			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.760619	2025-04-25 14:04:41.760619
805	Bosu Ball Pike Pushup	Bosu Ball Pike Pushup	\N	bosu-ball-pike-pushup	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.76106	2025-04-25 14:04:41.76106
806	Bosu Ball Pike Shrug	Bosu Ball Pike Shrug	\N	pike-shrug			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.761716	2025-04-25 14:04:41.761716
807	Bosu Ball Plank Glute Kickback	Bosu Ball Plank Glute Kickback	\N	plank-glute-kickback			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.762477	2025-04-25 14:04:41.762477
808	Bosu Ball Pullover	Bosu Ball Pullover	\N	pullover			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.763023	2025-04-25 14:04:41.763023
809	Bosu Ball Pushup	Bosu Ball Pushup	\N	bosu-ball-pushup			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.763482	2025-04-25 14:04:41.763482
810	Bosu Ball Reverse Lunge	Bosu Ball Reverse Lunge	\N	reverse-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.764534	2025-04-25 14:04:41.764534
811	Bosu Ball Row	Bosu Ball Row	\N	row			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.765208	2025-04-25 14:04:41.765208
812	Bosu Ball Single Leg Elevated Glute Bridge	Bosu Ball Single Leg Elevated Glute Bridge	\N	single-leg-elevated-glute-bridge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.765856	2025-04-25 14:04:41.765856
813	Bosu Ball Single Leg Hip Thrust	Bosu Ball Single Leg Hip Thrust	\N	single-leg-hip-thrust			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.766372	2025-04-25 14:04:41.766372
814	Bosu Ball Situp	Bosu Ball Situp	\N	situp			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.766943	2025-04-25 14:04:41.766943
815	Bosu Ball Split Squat	Bosu Ball Split Squat	\N	split-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.767516	2025-04-25 14:04:41.767516
816	Bosu Ball Squat	Bosu Ball Squat	\N	squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.768149	2025-04-25 14:04:41.768149
817	Bosu Ball Superman	Bosu Ball Superman	\N	superman			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.76874	2025-04-25 14:04:41.76874
818	Bosu Ball Toe Tap	Bosu Ball Toe Tap	\N	toe-tap	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.769204	2025-04-25 14:04:41.769204
819	Bosu Ball Up And Over	Bosu Ball Up And Over	\N	up-and-over			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.769758	2025-04-25 14:04:41.769758
820	Bosu Ball Walkover Pushup	Bosu Ball Walkover Pushup	\N	bosu-ball-walkover-pushup			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.770477	2025-04-25 14:04:41.770477
821	Bosu Ball Wood Chopper	Bosu Ball Wood Chopper	\N	wood-chopper			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.771494	2025-04-25 14:04:41.771494
824	Narrow Pulldown	Narrow Pulldown	\N	narrow-pulldown	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.772004	2025-04-25 14:04:41.772004
825	Neutral Chest Press	Neutral Chest Press	\N	neutral-chest-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.772807	2025-04-25 14:04:41.772807
826	Neutral Pulldown	Neutral Pulldown	\N	neutral-pulldown			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.773386	2025-04-25 14:04:41.773386
828	Seated Leg Curl	Seated Leg Curl	\N	seated-leg-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.774247	2025-04-25 14:04:41.774247
829	Underhand Pulldown	Underhand Pulldown	\N	underhand-pulldown			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.774824	2025-04-25 14:04:41.774824
833	Vitruvian Arnold Press	Vitruvian Arnold Press	\N	arnold-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.775542	2025-04-25 14:04:41.775542
834	Vitruvian Belt Squat	Vitruvian Belt Squat	\N	belt-squat			f	1	1	26	0	t	f	f	Published	2025-04-25 14:04:41.776358	2025-04-25 14:04:41.776358
835	Vitruvian Bench Press	Vitruvian Bench Press	\N	bench-press			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.777048	2025-04-25 14:04:41.777048
836	Vitruvian Crunch	Vitruvian Crunch	\N	crunch			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.777506	2025-04-25 14:04:41.777506
837	Vitruvian Deficit Lunge	Vitruvian Deficit Lunge	\N	deficit-lunge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.778136	2025-04-25 14:04:41.778136
838	Vitruvian Figure Four Hip Thrust	Vitruvian Figure Four Hip Thrust	\N	figure-four-hip-thrust			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.778848	2025-04-25 14:04:41.778848
839	Vitruvian Front Squat	Vitruvian Front Squat	\N	front-squat			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.779533	2025-04-25 14:04:41.779533
840	Vitruvian Hammer Curl	Vitruvian Hammer Curl	\N	hammer-curl			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.780188	2025-04-25 14:04:41.780188
841	Vitruvian Hip Thrust	Vitruvian Hip Thrust	\N	vitruvian-hip-thrust			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.780785	2025-04-25 14:04:41.780785
842	Vitruvian Kneeling Wood Chopper	Vitruvian Kneeling Wood Chopper	\N	vitruvian-kneeling-wood-chopper			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.781271	2025-04-25 14:04:41.781271
843	Vitruvian Lateral Raise	Vitruvian Lateral Raise	\N	lateral-raise	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.781748	2025-04-25 14:04:41.781748
844	Vitruvian Overhead Press	Vitruvian Overhead Press	\N	overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.782469	2025-04-25 14:04:41.782469
845	Vitruvian Pec Fly	Vitruvian Pec Fly	\N	pec-fly			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.783402	2025-04-25 14:04:41.783402
846	Vitruvian Push Up	Vitruvian Push Up	\N	vitruvian-push-up			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.783881	2025-04-25 14:04:41.783881
847	Vitruvian Rear Delt Fly	Vitruvian Rear Delt Fly	\N	rear-delt-fly	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.78452	2025-04-25 14:04:41.78452
848	Vitruvian Romanian Deadlift	Vitruvian Romanian Deadlift	\N	romanian-deadlift			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.785297	2025-04-25 14:04:41.785297
849	Vitruvian Row	Vitruvian Row	\N	row			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.786069	2025-04-25 14:04:41.786069
850	Vitruvian Seated Calf Raise	Vitruvian Seated Calf Raise	\N	seated-calf-raise			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.786948	2025-04-25 14:04:41.786948
851	Vitruvian Shrug	Vitruvian Shrug	\N	shrug			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.787543	2025-04-25 14:04:41.787543
852	Vitruvian Side Bend	Vitruvian Side Bend	\N	side-bend			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.788183	2025-04-25 14:04:41.788183
853	Vitruvian Single Arm Row	Vitruvian Single Arm Row	\N	single-arm-row			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.788746	2025-04-25 14:04:41.788746
854	Vitruvian Single Leg Deadlift	Vitruvian Single Leg Deadlift	\N	single-leg-deadlift			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.789444	2025-04-25 14:04:41.789444
855	Vitruvian Staggered Deadlift	Vitruvian Staggered Deadlift	\N	staggered-deadlift			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.790198	2025-04-25 14:04:41.790198
856	Vitruvian Standing Calf Raise	Vitruvian Standing Calf Raise	\N	standing-calf-raise			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.790915	2025-04-25 14:04:41.790915
857	Vitruvian Windmill	Vitruvian Windmill	\N	windmill			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.791645	2025-04-25 14:04:41.791645
859	Seated Tibialis Raise	Seated Tibialis Raise	\N	seated-tibialis-raise	\N	\N	f	90	2	1	0	f	f	f	Published	2025-04-25 14:04:41.792121	2025-04-25 14:04:41.792121
860	Dumbbell Seated Tibialis Raise	Dumbbell Seated Tibialis Raise	\N	dumbbell-seated-tibialis-raise	\N	\N	f	100	2	1	0	f	f	f	Published	2025-04-25 14:04:41.792649	2025-04-25 14:04:41.792649
861	Cobra Pose	Cobra Pose	\N	cobra-pose			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.793185	2025-04-25 14:04:41.793185
862	Machine Sissy Squat	Machine Sissy Squat	\N	machine-sissy-squat			f	85	2	1	0	f	f	f	Published	2025-04-25 14:04:41.793835	2025-04-25 14:04:41.793835
863	Machine Goblet Sissy Squat	Machine Goblet Sissy Squat	\N	machine-goblet-sissy-squat			f	100	2	1	0	f	f	f	Published	2025-04-25 14:04:41.794387	2025-04-25 14:04:41.794387
866	Bicycle Crunch	Bicycle Crunch	\N	bicycle-crunch			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.794987	2025-04-25 14:04:41.794987
867	Bird Dog	Bird Dog	\N	bird-dog			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.795867	2025-04-25 14:04:41.795867
869	Dead Bug	Dead Bug	\N	dead-bug			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.796409	2025-04-25 14:04:41.796409
870	Hand Side Plank Reach Through	Hand Side Plank Reach Through	\N	hand-side-plank-reach-through			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.796858	2025-04-25 14:04:41.796858
871	Long Lever Forearm Plank	Long Lever Forearm Plank	\N	long-lever-forearm-plank			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.797307	2025-04-25 14:04:41.797307
873	Situp	Situp	\N	bodyweight-situp			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.798002	2025-04-25 14:04:41.798002
879	Plate Superman	Plate Superman	\N	plate-superman			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.79881	2025-04-25 14:04:41.79881
880	Plate Superman Hold	Plate Superman Hold	\N	plate-superman-hold			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.799309	2025-04-25 14:04:41.799309
882	Reverse Crunch	Reverse Crunch	\N	reverse-crunch			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.799815	2025-04-25 14:04:41.799815
885	Dumbbell Superman Hold	Dumbbell Superman Hold	\N	dumbbell-superman-hold			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.800412	2025-04-25 14:04:41.800412
886	Kettlebell Hollow Hold	Kettlebell Hollow Hold	\N	kettlebell-hollow-hold			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.80098	2025-04-25 14:04:41.80098
887	Kettlebell Superman	Kettlebell Superman	\N	kettlebell-superman			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.801537	2025-04-25 14:04:41.801537
888	Kettlebell Superman Hold	Kettlebell Superman Hold	\N	kettlebell-superman-hold			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.802054	2025-04-25 14:04:41.802054
889	Internally Rotated Seated Rear Delt Fly	Internally Rotated Seated Rear Delt Fly	\N	internally-rotated-seated-rear-delt-fly			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.802584	2025-04-25 14:04:41.802584
890	Seated Lateral Raise	Seated Lateral Raise	\N	seated-lateral-raise			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.803299	2025-04-25 14:04:41.803299
892	Standing Tibialis Raise	Standing Tibialis Raise	\N	standing-tibialis-raise			f	105	2	1	0	f	f	f	Published	2025-04-25 14:04:41.804257	2025-04-25 14:04:41.804257
893	Dumbbell Standing Tibialis Raise	Dumbbell Standing Tibialis Raise	\N	dumbbell-standing-tibialis-raise			f	103	1	1	0	f	f	f	Published	2025-04-25 14:04:41.804722	2025-04-25 14:04:41.804722
894	Kettlebell Alternating Row	Kettlebell Alternating Row	\N	kettlebell-alternating-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.805223	2025-04-25 14:04:41.805223
895	Kettlebell Alternating Swing	Kettlebell Alternating Swing	\N	kettlebell-alternating-swing			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.806058	2025-04-25 14:04:41.806058
896	Kettlebell Bench Press	Kettlebell Bench Press	\N	kettlebell-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.806742	2025-04-25 14:04:41.806742
897	Kettlebell Clean And Press	Kettlebell Clean And Press	\N	kettlebell-clean-and-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.807356	2025-04-25 14:04:41.807356
898	Kettlebell Conventional Deadlift (Double)	Kettlebell Conventional Deadlift (Double)	\N	kettlebell-conventional-deadlift-double			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.808239	2025-04-25 14:04:41.808239
899	Kettlebell Curl	Kettlebell Curl	\N	kettlebell-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.808952	2025-04-25 14:04:41.808952
900	Kettlebell Snatch (Double)	Kettlebell Snatch (Double)	\N	kettlebell-snatch-double	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.809562	2025-04-25 14:04:41.809562
901	Kettlebell Swing (Double)	Kettlebell Swing (Double)	\N	kettlebell-swing-double	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.810361	2025-04-25 14:04:41.810361
902	Kettlebell Figure Four Hip Thrust	Kettlebell Figure Four Hip Thrust	\N	kettlebell-figure-four-hip-thrust			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.811078	2025-04-25 14:04:41.811078
903	Kettlebell Forward Lunge (Double)	Kettlebell Forward Lunge (Double)	\N	kettlebell-forward-lunge-double	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.811666	2025-04-25 14:04:41.811666
904	Kettlebell Front Rack Curtsy Lunge (Double)	Kettlebell Front Rack Curtsy Lunge (Double)	\N	kettlebell-front-rack-curtsy-lunge-double			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.81262	2025-04-25 14:04:41.81262
905	Kettlebell Front Rack Forward Lunge (Double)	Kettlebell Front Rack Forward Lunge (Double)	\N	kettlebell-front-rack-forward-lunge-double	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.813356	2025-04-25 14:04:41.813356
906	Kettlebell Front Rack Lateral Lunge (Double)	Kettlebell Front Rack Lateral Lunge (Double)	\N	kettlebell-front-rack-lateral-lunge-double	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.814055	2025-04-25 14:04:41.814055
907	Kettlebell Front Rack Reverse Lunge (Double)	Kettlebell Front Rack Reverse Lunge (Double)	\N	kettlebell-front-rack-reverse-lunge-double	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.815075	2025-04-25 14:04:41.815075
908	Kettlebell Front Rack Single Arm Lateral Lunge	Kettlebell Front Rack Single Arm Lateral Lunge	\N	kettlebell-front-rack-single-arm-lateral-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.81581	2025-04-25 14:04:41.81581
909	Kettlebell Front Rack Squat	Kettlebell Front Rack Squat	\N	kettlebell-front-rack-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.816718	2025-04-25 14:04:41.816718
910	Kettlebell Full Swing	Kettlebell Full Swing	\N	kettlebell-full-swing	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.817462	2025-04-25 14:04:41.817462
911	Kettlebell Gorilla Row	Kettlebell Gorilla Row	\N	kettlebell-gorilla-row			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.818452	2025-04-25 14:04:41.818452
912	Kettlebell Guillotine Bench Press	Kettlebell Guillotine Bench Press	\N	kettlebell-guillotine-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.81899	2025-04-25 14:04:41.81899
913	Kettlebell Lateral Lunge	Kettlebell Lateral Lunge	\N	kettlebell-lateral-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.819491	2025-04-25 14:04:41.819491
914	Kettlebell Pec Fly	Kettlebell Pec Fly	\N	kettlebell-pec-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.820257	2025-04-25 14:04:41.820257
915	Kettlebell Push Press	Kettlebell Push Press	\N	kettlebell-push-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.820914	2025-04-25 14:04:41.820914
916	Kettlebell Rear Delt Row (Double)	Kettlebell Rear Delt Row (Double)	\N	kettlebell-rear-delt-row-double	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.821575	2025-04-25 14:04:41.821575
917	Kettlebell Reverse Curl	Kettlebell Reverse Curl	\N	kettlebell-reverse-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.822408	2025-04-25 14:04:41.822408
918	Kettlebell Reverse Lunge	Kettlebell Reverse Lunge	\N	kettlebell-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.822974	2025-04-25 14:04:41.822974
919	Kettlebell Romanian Deadlift	Kettlebell Romanian Deadlift	\N	kettlebell-romanian-deadlift			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.823542	2025-04-25 14:04:41.823542
920	Kettlebell Row	Kettlebell Row	\N	kettlebell-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.824425	2025-04-25 14:04:41.824425
921	Kettlebell Shrug	Kettlebell Shrug	\N	kettlebell-shrug	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.825128	2025-04-25 14:04:41.825128
922	Kettlebell Silverback Shrug	Kettlebell Silverback Shrug	\N	kettlebell-silverback-shrug	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.825754	2025-04-25 14:04:41.825754
923	Kettlebell Single Arm Clean And Press	Kettlebell Single Arm Clean And Press	\N	kettlebell-single-arm-clean-and-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.826363	2025-04-25 14:04:41.826363
924	Kettlebell Single Arm Curtsy Lunge	Kettlebell Single Arm Curtsy Lunge	\N	Kettlebell-single-arm-curtsy-lunge			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.827491	2025-04-25 14:04:41.827491
925	Kettlebell Single Arm Front Rack Forward Lunge	Kettlebell Single Arm Front Rack Forward Lunge	\N	kettlebells-single-arm-front-rack-forward-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.828762	2025-04-25 14:04:41.828762
926	Kettlebell Single Arm Front Rack Reverse Lunge	Kettlebell Single Arm Front Rack Reverse Lunge	\N	kettlebells-single-arm-front-rack-reverse-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.82948	2025-04-25 14:04:41.82948
927	Kettlebell Single Arm Snatch	Kettlebell Single Arm Snatch	\N	kettlebells-single-arm-snatch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.830041	2025-04-25 14:04:41.830041
928	Kettlebell Single Arm Swing	Kettlebell Single Arm Swing	\N	kettlebell-single-arm-swing			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.831065	2025-04-25 14:04:41.831065
929	Kettlebell Staggered Deadlift	Kettlebell Staggered Deadlift	\N	kettlebell-staggered-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.831687	2025-04-25 14:04:41.831687
930	Kettlebell Staggered Swing	Kettlebell Staggered Swing	\N	kettlebells-staggered-swing			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.832351	2025-04-25 14:04:41.832351
931	Kettlebell Sumo Deadlift	Kettlebell Sumo Deadlift	\N	kettlebell-sumo-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.833156	2025-04-25 14:04:41.833156
932	Swing To Upright Row	Swing To Upright Row	\N	swing-to-upright-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.833868	2025-04-25 14:04:41.833868
933	Kettlebell Upright Row	Kettlebell Upright Row	\N	kettlebell-upright-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.835074	2025-04-25 14:04:41.835074
934	Smith Machine Drag Curl	Smith Machine Drag Curl	\N	smith-machine-drag-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.835945	2025-04-25 14:04:41.835945
935	Smith Machine Glute Kickback	Smith Machine Glute Kickback	\N	smith-machine-glute-kickback	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.836904	2025-04-25 14:04:41.836904
936	Smith Machine Hanging Knee Tuck	Smith Machine Hanging Knee Tuck	\N	smith-machine-hanging-knee-tuck	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.837527	2025-04-25 14:04:41.837527
937	Smith Machine Underhand Row	Smith Machine Underhand Row	\N	smith-machine-underhand-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.838135	2025-04-25 14:04:41.838135
938	Smith Machine Sissy Squat	Smith Machine Sissy Squat	\N	smith-machine-sissy-squat			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.838907	2025-04-25 14:04:41.838907
939	Smith Machine Oblique Crunch	Smith Machine Oblique Crunch	\N	smith-machine-oblique-crunch	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.839468	2025-04-25 14:04:41.839468
940	Smith Machine Reverse Crunch Hip Raise	Smith Machine Reverse Crunch Hip Raise	\N	smith-machine-reverse-crunch-hip-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.839925	2025-04-25 14:04:41.839925
941	Smith Machine Leg Press	Smith Machine Leg Press	\N	smith-machine-leg-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.840531	2025-04-25 14:04:41.840531
942	Smith Machine Side Plank Up Down	Smith Machine Side Plank Up Down	\N	smith-machine-side-plank-up-down	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.841119	2025-04-25 14:04:41.841119
943	Smith Machine Situp	Smith Machine Situp	\N	smith-machine-situp			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.841638	2025-04-25 14:04:41.841638
944	Smith Machine Single Leg Hip Thrust	Smith Machine Single Leg Hip Thrust	\N	smith-machine-single-leg-hip-thrust	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.842223	2025-04-25 14:04:41.842223
945	Smith Machine Hip Thrust	Smith Machine Hip Thrust	\N	smith-machine-hip-thrust	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.842738	2025-04-25 14:04:41.842738
946	Smith Machine Seated Calf Raise	Smith Machine Seated Calf Raise	\N	smith-machine-seated-calf-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.84348	2025-04-25 14:04:41.84348
947	Smith Machine Skullcrusher	Smith Machine Skullcrusher	\N	smith-machine-skullcrusher	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.844003	2025-04-25 14:04:41.844003
948	Smith Machine Guillotine Bench Press	Smith Machine Guillotine Bench Press	\N	smith-machine-guillotine-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.844629	2025-04-25 14:04:41.844629
949	Smith Machine Close Grip Bench Press	Smith Machine Close Grip Bench Press	\N	smith-machine-close-grip-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.845532	2025-04-25 14:04:41.845532
950	Smith Machine Bench Press	Smith Machine Bench Press	\N	smith-machine-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.846289	2025-04-25 14:04:41.846289
951	Smith Machine Incline Bench Press	Smith Machine Incline Bench Press	\N	smith-machine-incline-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.847095	2025-04-25 14:04:41.847095
952	Smith Machine Seated Overhead Press	Smith Machine Seated Overhead Press	\N	smith-machine-seated-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.847808	2025-04-25 14:04:41.847808
953	Smith Machine Bodyweight Skullcrusher	Smith Machine Bodyweight Skullcrusher	\N	smith-machine-bodyweight-skullcrusher	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.848501	2025-04-25 14:04:41.848501
954	Smith Machine Inverted Row	Smith Machine Inverted Row	\N	smith-machine-inverted-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.848971	2025-04-25 14:04:41.848971
955	Smith Machine Overhand Row	Smith Machine Overhand Row	\N	smith-machine-overhand-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.849881	2025-04-25 14:04:41.849881
956	Smith Machine Upright Row	Smith Machine Upright Row	\N	smith-machine-upright-row	\N	\N	f	1	2	80	0	f	f	f	Published	2025-04-25 14:04:41.850607	2025-04-25 14:04:41.850607
957	Smith Machine Assisted Pullup	Smith Machine Assisted Pullup	\N	smith-machine-assisted-pullup	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.851549	2025-04-25 14:04:41.851549
958	Smith Machine Pushup	Smith Machine Pushup	\N	smith-machine-pushup	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.85215	2025-04-25 14:04:41.85215
959	Smith Machine Side Bend	Smith Machine Side Bend	\N	smith-machine-side-bend	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.852615	2025-04-25 14:04:41.852615
960	Smith Machine Calf Raise	Smith Machine Calf Raise	\N	smith-machine-calf-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.853138	2025-04-25 14:04:41.853138
961	Smith Machine Sumo Romanian Deadlift	Smith Machine Sumo Romanian Deadlift	\N	smith-machine-sumo-romanian-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.853929	2025-04-25 14:04:41.853929
962	Smith Machine Staggered Deadlift	Smith Machine Staggered Deadlift	\N	smith-machine-staggered-deadlift			f	1	2	30	0	f	f	f	Published	2025-04-25 14:04:41.854636	2025-04-25 14:04:41.854636
963	Smith Machine Romanian Deadlift	Smith Machine Romanian Deadlift	\N	smith-machine-romanian-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.855277	2025-04-25 14:04:41.855277
964	Smith Machine Split Squat	Smith Machine Split Squat	\N	smith-machine-split-squat			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.856085	2025-04-25 14:04:41.856085
965	Smith Machine Reverse Lunge	Smith Machine Reverse Lunge	\N	smith-machine-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.856623	2025-04-25 14:04:41.856623
966	Smith Machine Narrow Stance Squat	Smith Machine Narrow Stance Squat	\N	smith-machine-narrow-stance-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.857154	2025-04-25 14:04:41.857154
967	Smith Machine Squat	Smith Machine Squat	\N	smith-machine-squat			f	1	2	50	0	f	f	f	Published	2025-04-25 14:04:41.85774	2025-04-25 14:04:41.85774
968	Cable Zercher Squat	Cable Zercher Squat	\N	cable-zercher-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.858642	2025-04-25 14:04:41.858642
969	Cable Tricep Kickback	Cable Tricep Kickback	\N	cable-tricep-kickback			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.859368	2025-04-25 14:04:41.859368
970	Cable Row Bar Standing Row	Cable Row Bar Standing Row	\N	cable-row-bar-standing-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.860209	2025-04-25 14:04:41.860209
971	Cable Single Arm Underhand Grip Row	Cable Single Arm Underhand Grip Row	\N	cable-single-arm-underhand-grip-row			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.860894	2025-04-25 14:04:41.860894
972	Cable Single Arm Neutral Grip Row	Cable Single Arm Neutral Grip Row	\N	cable-single-arm-neutral-grip-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.861652	2025-04-25 14:04:41.861652
973	Cable Single Arm Rear Delt Row	Cable Single Arm Rear Delt Row	\N	cable-single-arm-rear-delt-row			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.862759	2025-04-25 14:04:41.862759
974	Cable Supinating Row	Cable Supinating Row	\N	cable-supinating-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.863565	2025-04-25 14:04:41.863565
975	Cable Archer Row	Cable Archer Row	\N	cable-archer-row			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.864432	2025-04-25 14:04:41.864432
976	Cable Half Kneeling Low To High Wood Chopper	Cable Half Kneeling Low To High Wood Chopper	\N	cable-half-kneeling-low-to-high-wood-chopper			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.865226	2025-04-25 14:04:41.865226
977	Cable Half Kneeling Wood Chopper	Cable Half Kneeling Wood Chopper	\N	cable-half-kneeling-wood-chopper			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.86582	2025-04-25 14:04:41.86582
978	Cable Half Kneeling High To Low Wood Chopper	Cable Half Kneeling High To Low Wood Chopper	\N	cable-half-kneeling-high-to-low-wood-chopper			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.866351	2025-04-25 14:04:41.866351
979	Cable Straight Arm Pull In	Cable Straight Arm Pull In	\N	cable-straight-arm-pull-in			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.866852	2025-04-25 14:04:41.866852
980	Cable Rope Lat Prayer	Cable Rope Lat Prayer	\N	cable-rope-lat-prayer			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.867348	2025-04-25 14:04:41.867348
981	Cable Rope Pullover	Cable Rope Pullover	\N	cable-rope-pullover			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.867892	2025-04-25 14:04:41.867892
983	Cable Seated Bayesian Reverse Curl	Cable Seated Bayesian Reverse Curl	\N	cable-seated-bayesian-reverse-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.868386	2025-04-25 14:04:41.868386
984	Cable Seated Bayesian Hammer Curl	Cable Seated Bayesian Hammer Curl	\N	cable-seated-bayesian-hammer-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.869386	2025-04-25 14:04:41.869386
985	Cable Seated Bayesian Curl	Cable Seated Bayesian Curl	\N	cable-seated-bayesian-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.869879	2025-04-25 14:04:41.869879
986	Cable Single Arm Incline Chest Fly	Cable Single Arm Incline Chest Fly	\N	cable-single-arm-incline-chest-fly			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.870616	2025-04-25 14:04:41.870616
987	Cable Single Arm Incline Bench Press	Cable Single Arm Incline Bench Press	\N	cable-single-arm-incline-bench-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.8713	2025-04-25 14:04:41.8713
988	Cable Single Arm Bench Chest Fly	Cable Single Arm Bench Chest Fly	\N	cable-single-arm-bench-chest-fly			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.872052	2025-04-25 14:04:41.872052
989	Cable Single Arm Bench Press	Cable Single Arm Bench Press	\N	cable-single-arm-bench-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.872628	2025-04-25 14:04:41.872628
990	Cable Single Arm Decline Bench Chest Fly	Cable Single Arm Decline Bench Chest Fly	\N	cable-single-arm-decline-bench-chest-fly			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.873482	2025-04-25 14:04:41.873482
991	Cable Decline Single Arm Bench Press	Cable Decline Single Arm Bench Press	\N	cable-decline-single-arm-bench-press			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.874061	2025-04-25 14:04:41.874061
992	Cable Incline Chest Fly	Cable Incline Chest Fly	\N	cable-incline-chest-fly			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.874885	2025-04-25 14:04:41.874885
993	Cable Incline Bench Press	Cable Incline Bench Press	\N	cable-incline-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.875441	2025-04-25 14:04:41.875441
994	Cable Bench Chest Fly	Cable Bench Chest Fly	\N	cable-bench-chest-fly			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.876365	2025-04-25 14:04:41.876365
995	Cable Bench Press	Cable Bench Press	\N	cable-bench-press			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.876999	2025-04-25 14:04:41.876999
996	Cable Decline Bench Chest Fly	Cable Decline Bench Chest Fly	\N	cable-decline-bench-chest-fly			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.877727	2025-04-25 14:04:41.877727
997	Cable Decline Bench Press	Cable Decline Bench Press	\N	cable-decline-bench-press			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.878346	2025-04-25 14:04:41.878346
998	Cable Seated Leg Curl	Cable Seated Leg Curl	\N	cable-seated-leg-curl			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.879359	2025-04-25 14:04:41.879359
999	Cable Seated Leg Extension	Cable Seated Leg Extension	\N	cable-seated-leg-extension			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.879942	2025-04-25 14:04:41.879942
1000	Cable Single Leg Laying Leg Curl	Cable Single Leg Laying Leg Curl	\N	cable-single-leg-laying-leg-curl			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.88051	2025-04-25 14:04:41.88051
1001	Cable Rope Kneeling Face Pull	Cable Rope Kneeling Face Pull	\N	cable-rope-kneeling-face-pull			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.881075	2025-04-25 14:04:41.881075
1003	Cable Rope Kneeling Oblique Crunch	Cable Rope Kneeling Oblique Crunch	\N	cable-rope-kneeling-oblique-crunch			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.881631	2025-04-25 14:04:41.881631
1004	Cable Rope Kneeling Crunch	Cable Rope Kneeling Crunch	\N	cable-rope-kneeling-crunch			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.882225	2025-04-25 14:04:41.882225
1005	Cable Quadruped Hip Abduction	Cable Quadruped Hip Abduction	\N	cable-quadruped-hip-abduction			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.88303	2025-04-25 14:04:41.88303
1006	Cable Incline Bench Straight Leg Kickback	Cable Incline Bench Straight Leg Kickback	\N	cable-incline-bench-straight-leg-kickback			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.883619	2025-04-25 14:04:41.883619
1007	Cable Bench Straight Leg Kickback	Cable Bench Straight Leg Kickback	\N	cable-bench-straight-leg-kickback			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.884268	2025-04-25 14:04:41.884268
1008	Cable Standing Hip Adduction	Cable Standing Hip Adduction	\N	cable-standing-hip-adduction	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.884874	2025-04-25 14:04:41.884874
1010	Cable Standing Mid Kickback	Cable Standing Mid Kickback	\N	cable-standing-mid-kickback			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.885658	2025-04-25 14:04:41.885658
1011	Cable Standing Straight Leg Mid Kickback	Cable Standing Straight Leg Mid Kickback	\N	cable-standing-straight-leg-mid-kickback			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.886241	2025-04-25 14:04:41.886241
1012	Cable Standing Glute Kickback	Cable Standing Glute Kickback	\N	cable-standing-glute-kickback			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.887043	2025-04-25 14:04:41.887043
1015	Cable Low Bilateral Lateral Raise	Cable Low Bilateral Lateral Raise	\N	cable-low-bilateral-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.887728	2025-04-25 14:04:41.887728
1016	Cable Bar Front Raise	Cable Bar Front Raise	\N	cable-bar-front-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.888427	2025-04-25 14:04:41.888427
1017	Cable Zercher Good Morning	Cable Zercher Good Morning	\N	cable-zercher-good-morning	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.889124	2025-04-25 14:04:41.889124
1018	Cable Bar Staggered Romanian Deadlift	Cable Bar Staggered Romanian Deadlift	\N	cable-bar-staggered-romanian-deadlift			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.890008	2025-04-25 14:04:41.890008
1020	Cable Bar Reverse Grip Curl	Cable Bar Reverse Grip Curl	\N	cable-bar-reverse-grip-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.890837	2025-04-25 14:04:41.890837
1021	Cable Bar Curl	Cable Bar Curl	\N	cable-bar-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.891386	2025-04-25 14:04:41.891386
1022	Cable Bar Reverse Grip Pushdown	Cable Bar Reverse Grip Pushdown	\N	cable-bar-reverse-grip-pushdown			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.892082	2025-04-25 14:04:41.892082
1023	Cable Bar Pushdown	Cable Bar Pushdown	\N	cable-bar-pushdown			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.892818	2025-04-25 14:04:41.892818
1024	Cable Rope Single Arm Low Lateral Raise	Cable Rope Single Arm Low Lateral Raise	\N	cable-rope-single-arm-low-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.893474	2025-04-25 14:04:41.893474
1025	Cable Rope Mid Lateral Raise	Cable Rope Mid Lateral Raise	\N	cable-rope-mid-lateral-raise			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.89418	2025-04-25 14:04:41.89418
1026	Cable Single Arm Skullcrusher	Cable Single Arm Skullcrusher	\N	cable-single-arm-skullcrusher			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.89483	2025-04-25 14:04:41.89483
1027	Cable Rope Front Raise	Cable Rope Front Raise	\N	cable-rope-front-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.89528	2025-04-25 14:04:41.89528
1028	Cable Single Arm Rope Pushdown	Cable Single Arm Rope Pushdown	\N	cable-single-arm-rope-pushdown			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.896521	2025-04-25 14:04:41.896521
1031	Cable Rope Upright Row	Cable Rope Upright Row	\N	cable-rope-upright-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.89727	2025-04-25 14:04:41.89727
1032	Cable Rope Hammer Curl	Cable Rope Hammer Curl	\N	cable-rope-hammer-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.89808	2025-04-25 14:04:41.89808
1033	Cable Elevated Deadlift	Cable Elevated Deadlift	\N	cable-elevated-deadlift			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.89875	2025-04-25 14:04:41.89875
1035	Cable High Reverse Fly	Cable High Reverse Fly	\N	cable-high-reverse-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.899583	2025-04-25 14:04:41.899583
1036	Cable Single Arm Internally Rotated High Reverse Fly	Cable Single Arm Internally Rotated High Reverse Fly	\N	cable-single-arm-internally-rotated-high-reverse-fly			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.900255	2025-04-25 14:04:41.900255
1037	Cable High Internally Rotated Reverse Fly	Cable High Internally Rotated Reverse Fly	\N	cable-high-internally-rotated-reverse-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.900991	2025-04-25 14:04:41.900991
1038	Cable Single Arm Cross Pushdown	Cable Single Arm Cross Pushdown	\N	cable-single-arm-cross-pushdown			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.901757	2025-04-25 14:04:41.901757
1039	Cable Pallof Press Rotation	Cable Pallof Press Rotation	\N	cable-pallof-press-rotation			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.902282	2025-04-25 14:04:41.902282
1041	Cable Oblique Pushdown	Cable Oblique Pushdown	\N	cable-oblique-pushdown			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.90298	2025-04-25 14:04:41.90298
1042	Cable Side Bend	Cable Side Bend	\N	cable-side-bend			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.903667	2025-04-25 14:04:41.903667
1043	Cable Bar Calve Raise	Cable Bar Calve Raise	\N	cable-bar-calve-raise			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.904304	2025-04-25 14:04:41.904304
1044	Cable Hammer Bayesian Curl	Cable Hammer Bayesian Curl	\N	cable-hammer-bayesian-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.904863	2025-04-25 14:04:41.904863
1046	Cable Reverse Bayesian Curl	Cable Reverse Bayesian Curl	\N	cable-reverse-bayesian-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.905428	2025-04-25 14:04:41.905428
1049	Cable Bayesian Curl	Cable Bayesian Curl	\N	cable-bilateral-bayesian-curl	\N	\N	f	1	440	1	0	f	f	f	Published	2025-04-25 14:04:41.906184	2025-04-25 14:04:41.906184
1050	Cable Single Arm 30 Degree Shrug	Cable Single Arm 30 Degree Shrug	\N	cable-single-arm-30-degree-shrug			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.906939	2025-04-25 14:04:41.906939
1054	Barbell Behind The Neck Seated Overhead Press	Barbell Behind The Neck Seated Overhead Press	\N	barbell-behind-the-neck-seated-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.907555	2025-04-25 14:04:41.907555
1055	Barbell Drag Curl	Barbell Drag Curl	\N	barbell-drag-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.908276	2025-04-25 14:04:41.908276
1056	Barbell Figure Four Hip Thrust	Barbell Figure Four Hip Thrust	\N	barbell-figure-four-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.909073	2025-04-25 14:04:41.909073
1057	Barbell Front Squat With Straps	Barbell Front Squat With Straps	\N	barbell-front-squat-with-straps	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.909783	2025-04-25 14:04:41.909783
1058	Barbell High Incline Bench Press	Barbell High Incline Bench Press	\N	barbell-high-incline-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.910469	2025-04-25 14:04:41.910469
1059	Barbell Single Leg Hip Thrust	Barbell Single Leg Hip Thrust	\N	barbell-single-leg-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.911244	2025-04-25 14:04:41.911244
1060	Dumbbell Bench Wrist Curl	Dumbbell Bench Wrist Curl	\N	dumbbell-bench-wrist-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.911944	2025-04-25 14:04:41.911944
1061	Dumbbell Bench Wrist Extension	Dumbbell Bench Wrist Extension	\N	dumbbell-bench-wrist-extension	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.912685	2025-04-25 14:04:41.912685
1062	Dumbbell Bent Arm Lateral Raise	Dumbbell Bent Arm Lateral Raise	\N	dumbbell-bent-arm-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.91318	2025-04-25 14:04:41.91318
1063	Dumbbell Cross Body Romanian Deadlift	Dumbbell Cross Body Romanian Deadlift	\N	dumbbell-cross-body-romanian-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.913832	2025-04-25 14:04:41.913832
1064	Dumbbell High Incline Bench Press	Dumbbell High Incline Bench Press	\N	dumbbell-high-incline-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.914591	2025-04-25 14:04:41.914591
1065	Dumbbell Incline Skullover	Dumbbell Incline Skullover	\N	dumbbell-incline-skullover	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.915336	2025-04-25 14:04:41.915336
1066	Dumbbell Shoulder External Rotation	Dumbbell Shoulder External Rotation	\N	dumbbell-shoulder-external-rotation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.916304	2025-04-25 14:04:41.916304
1068	Dumbbell Standing Bayesian Lateral Raise	Dumbbell Standing Bayesian Lateral Raise	\N	dumbbell-standing-bayesian-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.916987	2025-04-25 14:04:41.916987
1069	Kettlebell High Incline Bench Press	Kettlebell High Incline Bench Press	\N	kettlebell-high-incline-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.917817	2025-04-25 14:04:41.917817
1070	Kettlebell Incline Bench Press	Kettlebell Incline Bench Press	\N	kettlebell-incline-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.918838	2025-04-25 14:04:41.918838
1071	Kettlebell Seated Overhead Press	Kettlebell Seated Overhead Press	\N	kettlebell-seated-overhead-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.919723	2025-04-25 14:04:41.919723
1072	Barbell Figure Four Heels Elevated Hip Thrust	Barbell Figure Four Heels Elevated Hip Thrust	\N	barbell-figure-four-heels-elevated-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.920838	2025-04-25 14:04:41.920838
1073	Barbell Heels Elevated Hip Thrust	Barbell Heels Elevated Hip Thrust	\N	barbell-heels-elevated-hip-thrust	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.921327	2025-04-25 14:04:41.921327
1074	Barbell Single Leg Heels Elevated Hip Thrust	Barbell Single Leg Heels Elevated Hip Thrust	\N	barbell-single-leg-heels-elevated-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.921904	2025-04-25 14:04:41.921904
1075	Backward Arm Circle	Backward Arm Circle	\N	backward-arm-circle	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.922439	2025-04-25 14:04:41.922439
1076	Bodyweight Alternating Jump Lunge	Bodyweight Alternating Jump Lunge	\N	bodyweight-alternating-jump-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.923438	2025-04-25 14:04:41.923438
1077	Bodyweight Figure Four Heels Elevated Hip Thrust	Bodyweight Figure Four Heels Elevated Hip Thrust	\N	bodyweight-figure-four-heels-elevated-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.924104	2025-04-25 14:04:41.924104
1078	Bodyweight Heels Elevated Hip Thrust	Bodyweight Heels Elevated Hip Thrust	\N	bodyweight-heels-elevated-hip-thrust	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.924582	2025-04-25 14:04:41.924582
1079	Bodyweight Lateral Lunge Jump	Bodyweight Lateral Lunge Jump	\N	bodyweight-lateral-lunge-jump	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.925169	2025-04-25 14:04:41.925169
1080	Bodyweight Pulse Squat	Bodyweight Pulse Squat	\N	bodyweight-pulse-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.925787	2025-04-25 14:04:41.925787
1081	Bodyweight Single Leg Heels Elevated Hip Thrust	Bodyweight Single Leg Heels Elevated Hip Thrust	\N	bodyweight-single-leg-heels-elevated-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.926427	2025-04-25 14:04:41.926427
1082	Bodyweight Swing Lunge	Bodyweight Swing Lunge	\N	bodyweight-swing-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.926905	2025-04-25 14:04:41.926905
1083	Bodyweight Swingthrough Lunge	Bodyweight Swingthrough Lunge	\N	bodyweight-swingthrough-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.927532	2025-04-25 14:04:41.927532
1084	Forward Arm Circle	Forward Arm Circle	\N	forward-arm-circle	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.928185	2025-04-25 14:04:41.928185
1085	In And Out Jump Squat	In And Out Jump Squat	\N	in-and-out-jump-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.929542	2025-04-25 14:04:41.929542
1086	Pole Overhead Squat	Pole Overhead Squat	\N	pole-overhead-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.930116	2025-04-25 14:04:41.930116
1087	Bodyweight Pop Squat	Bodyweight Pop Squat	\N	bodyweight-pop-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.931059	2025-04-25 14:04:41.931059
1088	Cardio Assault Bike Arms Only	Cardio Assault Bike Arms Only	\N	cardio-assault-bike-arms-only	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.93161	2025-04-25 14:04:41.93161
1089	Cardio Assault Bike	Cardio Assault Bike	\N	cardio-assault-bike	\N	\N	f	1	1	90	0	f	f	f	Published	2025-04-25 14:04:41.932087	2025-04-25 14:04:41.932087
1090	Cardio Band Hammer Curl Jacks	Cardio Band Hammer Curl Jacks	\N	cardio-band-hammer-curl-jacks	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.933147	2025-04-25 14:04:41.933147
1091	Cardio Band Press Jacks	Cardio Band Press Jacks	\N	cardio-band-press-jacks	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.933699	2025-04-25 14:04:41.933699
1092	Cardio Band Reverse Fly Jacks	Cardio Band Reverse Fly Jacks	\N	cardio-band-reverse-fly-jacks	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.934741	2025-04-25 14:04:41.934741
1093	Cardio Band Seal Jacks	Cardio Band Seal Jacks	\N	cardio-band-seal-jacks	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.935701	2025-04-25 14:04:41.935701
1094	Cardio Box Quick Feet	Cardio Box Quick Feet	\N	cardio-box-quick-feet	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.936266	2025-04-25 14:04:41.936266
1095	Cardio Criss Cross Jacks	Cardio Criss Cross Jacks	\N	cardio-criss-cross-jacks	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.936902	2025-04-25 14:04:41.936902
1096	Cardio Diamond Hop	Cardio Diamond Hop	\N	cardio-diamond-hop	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.938034	2025-04-25 14:04:41.938034
1097	Cardio Figure Eight Sprint	Cardio Figure Eight Sprint	\N	cardio-figure-eight-sprint	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.93861	2025-04-25 14:04:41.93861
1098	Cardio Forward Scissor	Cardio Forward Scissor	\N	cardio-forward-scissor	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.939405	2025-04-25 14:04:41.939405
1099	Cardio In And Out Forward	Cardio In And Out Forward	\N	cardio-in-and-out-forward	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.940219	2025-04-25 14:04:41.940219
1100	Cardio In And Outs	Cardio In And Outs	\N	cardio-in-and-outs	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.941069	2025-04-25 14:04:41.941069
1101	Cardio In In Out Out Shuffle	Cardio In In Out Out Shuffle	\N	cardio-in-in-out-out-shuffle	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.941942	2025-04-25 14:04:41.941942
1102	Cardio Jumping Jacks	Cardio Jumping Jacks	\N	cardio-jumping-jacks	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.94271	2025-04-25 14:04:41.94271
1103	Cardio Karaoke	Cardio Karaoke	\N	cardio-karaoke	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.943726	2025-04-25 14:04:41.943726
1104	Cardio Knee Taps	Cardio Knee Taps	\N	cardio-knee-taps	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.944381	2025-04-25 14:04:41.944381
1105	Cardio Lateral Quick Feet	Cardio Lateral Quick Feet	\N	cardio-lateral-quick-feet	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.945186	2025-04-25 14:04:41.945186
1106	Cardio Lateral Shuffle	Cardio Lateral Shuffle	\N	cardio-lateral-shuffle	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.94602	2025-04-25 14:04:41.94602
1107	Cardio Long Jump	Cardio Long Jump	\N	cardio-long-jump	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.946718	2025-04-25 14:04:41.946718
1108	Cardio Long Jump Shuffle Back	Cardio Long Jump Shuffle Back	\N	cardio-long-jump-shuffle-back	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.94741	2025-04-25 14:04:41.94741
1109	Cardio Quick Feet	Cardio Quick Feet	\N	cardio-quick-feet	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.948338	2025-04-25 14:04:41.948338
1110	Cardio Row Erg Rower Arms Only	Cardio Row Erg Rower Arms Only	\N	cardio-row-erg-rower-arms-only	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.948914	2025-04-25 14:04:41.948914
1111	Cardio Row Erg Rower Four Stroke Sprint Start	Cardio Row Erg Rower Four Stroke Sprint Start	\N	cardio-row-erg-rower-four-stroke-sprint-start	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.94958	2025-04-25 14:04:41.94958
1112	Cardio Row Erg Rower	Cardio Row Erg Rower	\N	cardio-row-erg-rower	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.950398	2025-04-25 14:04:41.950398
1113	Cardio Row Erg Rower Legs Only	Cardio Row Erg Rower Legs Only	\N	cardio-row-erg-rower-legs-only	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.951272	2025-04-25 14:04:41.951272
1114	Cardio Seal Jacks	Cardio Seal Jacks	\N	cardio-seal-jacks	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.95186	2025-04-25 14:04:41.95186
1115	Cardio Shuttle Sprint	Cardio Shuttle Sprint	\N	cardio-shuttle-sprint	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.952618	2025-04-25 14:04:41.952618
1116	Cardio Single Leg Forward Hop	Cardio Single Leg Forward Hop	\N	cardio-single-leg-forward-hop	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.953411	2025-04-25 14:04:41.953411
1117	Cardio Single Leg Lateral Hop	Cardio Single Leg Lateral Hop	\N	cardio-single-leg-lateral-hop	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.954073	2025-04-25 14:04:41.954073
1118	Cardio Skater	Cardio Skater	\N	cardio-skater	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.954673	2025-04-25 14:04:41.954673
1119	Cardio Skater To Single Leg Burpee	Cardio Skater To Single Leg Burpee	\N	cardio-skater-to-single-leg-burpee	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.955182	2025-04-25 14:04:41.955182
1120	Cardio Ski Erg	Cardio Ski Erg	\N	cardio-ski-erg	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.956116	2025-04-25 14:04:41.956116
1121	Cardio Sprint In Place	Cardio Sprint In Place	\N	cardio-sprint-in-place	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.956834	2025-04-25 14:04:41.956834
1122	Cardio Step Out Jacks	Cardio Step Out Jacks	\N	cardio-step-out-jacks	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.957531	2025-04-25 14:04:41.957531
1124	Cardio Three Step Heismans	Cardio Three Step Heismans	\N	cardio-three-step-heismans	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.958141	2025-04-25 14:04:41.958141
1125	Dumbbell Figure Four Heels Elevated Hip Thrust	Dumbbell Figure Four Heels Elevated Hip Thrust	\N	dumbbell-figure-four-heels-elevated-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.958911	2025-04-25 14:04:41.958911
1126	Dumbbell Heels Elevated Hip Thrust	Dumbbell Heels Elevated Hip Thrust	\N	dumbbell-heels-elevated-hip-thrust	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.959787	2025-04-25 14:04:41.959787
1127	Dumbbell Single Leg Heels Elevated Hip Thrust	Dumbbell Single Leg Heels Elevated Hip Thrust	\N	dumbbell-single-leg-heels-elevated-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.960516	2025-04-25 14:04:41.960516
1128	Rower Knee Tuck	Rower Knee Tuck	\N	rower-knee-tuck	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.961082	2025-04-25 14:04:41.961082
1129	Rower Pike	Rower Pike	\N	rower-pike	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.962014	2025-04-25 14:04:41.962014
1130	Alternating Pole Rotation	Alternating Pole Rotation	\N	alternating-pole-rotation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.962753	2025-04-25 14:04:41.962753
1131	Pole Rotation	Pole Rotation	\N	pole-rotation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.963981	2025-04-25 14:04:41.963981
1132	Bodyweight Alternating Curtsy Lunge	Bodyweight Alternating Curtsy Lunge	\N	bodyweight-alternating-curtsy-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.965003	2025-04-25 14:04:41.965003
1133	Bodyweight Alternating Lateral Lunge	Bodyweight Alternating Lateral Lunge	\N	bodyweight-alternating-lateral-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.965977	2025-04-25 14:04:41.965977
1134	Bodyweight Alternating Reverse Lunges	Bodyweight Alternating Reverse Lunges	\N	bodyweight-alternating-reverse-lunges	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.966599	2025-04-25 14:04:41.966599
1136	Bodyweight Clapping Push Up	Bodyweight Clapping Push Up	\N	bodyweight-clapping-push-up			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.967193	2025-04-25 14:04:41.967193
1137	Bodyweight Diamond Knee Push Ups	Bodyweight Diamond Knee Push Ups	\N	bodyweight-diamond-knee-push-ups			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.968042	2025-04-25 14:04:41.968042
1138	Bodyweight Elevated Push Up	Bodyweight Elevated Push Up	\N	bodyweight-elevated-push-up	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.968704	2025-04-25 14:04:41.968704
1139	Bodyweight Explosive Push Up	Bodyweight Explosive Push Up	\N	bodyweight-explosive-push-up			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.969454	2025-04-25 14:04:41.969454
1140	Bodyweight Hip Abduction	Bodyweight Hip Abduction	\N	bodyweight-hip-abduction			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.970124	2025-04-25 14:04:41.970124
1141	Bodyweight Incline Knee Push Up	Bodyweight Incline Knee Push Up	\N	bodyweight-incline-knee-push-up			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.970873	2025-04-25 14:04:41.970873
1142	Bodyweight Knee Plank Up Down	Bodyweight Knee Plank Up Down	\N	bodyweight-knee-plank-up-down			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.971669	2025-04-25 14:04:41.971669
1143	Bodyweight Knee Push Ups	Bodyweight Knee Push Ups	\N	bodyweight-knee-push-ups			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.972201	2025-04-25 14:04:41.972201
1144	Bodyweight Knee Tricep Extension	Bodyweight Knee Tricep Extension	\N	bodyweight-knee-tricep-extension			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.972965	2025-04-25 14:04:41.972965
1145	Bodyweight Pike Press	Bodyweight Pike Press	\N	bodyweight-pike-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.973472	2025-04-25 14:04:41.973472
1146	Bodyweight Pike Shrug	Bodyweight Pike Shrug	\N	bodyweight-pike-shrug	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.974517	2025-04-25 14:04:41.974517
1147	Bodyweight Plank Up Down	Bodyweight Plank Up Down	\N	bodyweight-plank-up-down			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.975085	2025-04-25 14:04:41.975085
1149	Bodyweight Tricep Extension	Bodyweight Tricep Extension	\N	bodyweight-tricep-extension			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.975702	2025-04-25 14:04:41.975702
1153	Kettlebell Step Up Double	Kettlebell Step Up Double	\N	kettlebell-step-up-double	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.976463	2025-04-25 14:04:41.976463
1154	Kettlebell Single Arm Front Rack Step Up	Kettlebell Single Arm Front Rack Step Up	\N	kettlebell-single-arm-front-rack-step-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.97707	2025-04-25 14:04:41.97707
1155	Kettlebell Front Rack Step Up	Kettlebell Front Rack Step Up	\N	kettlebell-front-rack-step-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.977768	2025-04-25 14:04:41.977768
1156	Kettlebell Single Arm Step Up Balance	Kettlebell Single Arm Step Up Balance	\N	kettlebell-single-arm-step-up-balance	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.978574	2025-04-25 14:04:41.978574
1157	Kettlebell Windmill Bottom Hand	Kettlebell Windmill Bottom Hand	\N	kettlebell-windmill-bottom-hand			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.979361	2025-04-25 14:04:41.979361
1158	Kettlebell Farmers March	Kettlebell Farmers March	\N	kettlebell-farmers-march			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.979993	2025-04-25 14:04:41.979993
1159	Kettlebell Single Arm Farmers March	Kettlebell Single Arm Farmers March	\N	kettlebell-single-arm-farmers-march			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.980661	2025-04-25 14:04:41.980661
1160	Kettlebell Walking Farmers March	Kettlebell Walking Farmers March	\N	kettlebell-walking-farmers-march			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.981368	2025-04-25 14:04:41.981368
1161	Kettlebell Single Arm Calf Raise	Kettlebell Single Arm Calf Raise	\N	kettlebell-single-arm-calf-raise			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.982025	2025-04-25 14:04:41.982025
1162	Kettlebell Goblet Calf Raise	Kettlebell Goblet Calf Raise	\N	kettlebell-goblet-calf-raise			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.982682	2025-04-25 14:04:41.982682
1163	Kettlebell Single Leg Single Arm Calf Raise	Kettlebell Single Leg Single Arm Calf Raise	\N	kettlebell-single-leg-single-arm-calf-raise			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.983379	2025-04-25 14:04:41.983379
1164	Kettlebell Single Arm Reverse Curl	Kettlebell Single Arm Reverse Curl	\N	kettlebell-single-arm-reverse-curl			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.984072	2025-04-25 14:04:41.984072
1166	Kettlebell Upright Row Single	Kettlebell Upright Row Single	\N	kettlebell-upright-row-single			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.984704	2025-04-25 14:04:41.984704
1171	Kettlebell Single Arm Row On Bench	Kettlebell Single Arm Row On Bench	\N	kettlebell-single-arm-row-on-bench	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.985434	2025-04-25 14:04:41.985434
1172	Kettlebell Seated Calf Raise Double	Kettlebell Seated Calf Raise Double	\N	kettlebell-seated-calf-raise-double			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.986212	2025-04-25 14:04:41.986212
1173	Kettlebell Bench Wrist Extension	Kettlebell Bench Wrist Extension	\N	kettlebell-bench-wrist-extension			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.986798	2025-04-25 14:04:41.986798
1174	Kettlebell Bench Wrist Curl	Kettlebell Bench Wrist Curl	\N	kettlebell-bench-wrist-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.98731	2025-04-25 14:04:41.98731
1175	Kettlebell Floor Press	Kettlebell Floor Press	\N	kettlebell-floor-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.988145	2025-04-25 14:04:41.988145
1176	Kettlebell Single Arm Floor Press	Kettlebell Single Arm Floor Press	\N	kettlebell-single-arm-floor-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.988817	2025-04-25 14:04:41.988817
1177	Kettlebell Overhead Tricep Extension	Kettlebell Overhead Tricep Extension	\N	kettlebell-overhead-tricep-extension			f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.989445	2025-04-25 14:04:41.989445
1178	Kettlebell Bottoms Up Single Arm Overhead Press	Kettlebell Bottoms Up Single Arm Overhead Press	\N	kettlebell-bottoms-up-single-arm-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.990304	2025-04-25 14:04:41.990304
1179	Kettlebell Bottoms Up Overhead Press	Kettlebell Bottoms Up Overhead Press	\N	kettlebell-bottoms-up-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.991301	2025-04-25 14:04:41.991301
1181	Dumbbell Floor Press	Dumbbell Floor Press	\N	dumbbell-floor-press			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.992288	2025-04-25 14:04:41.992288
1182	Bodyweight Box Assisted Dips	Bodyweight Box Assisted Dips	\N	bodyweight-box-assisted-dips	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.992912	2025-04-25 14:04:41.992912
1183	Barbell Wrist Extension	Barbell Wrist Extension	\N	barbell-wrist-extension			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.993739	2025-04-25 14:04:41.993739
1184	Dumbbell Seated Rear Delt Row	Dumbbell Seated Rear Delt Row	\N	dumbbell-seated-rear-delt-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.994246	2025-04-25 14:04:41.994246
1186	Dumbbell Internally Rotated Rear Delt Fly	Dumbbell Internally Rotated Rear Delt Fly	\N	dumbbell-internally-rotated-rear-delt-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.995106	2025-04-25 14:04:41.995106
1187	Dumbbell Goblet Side Step Up	Dumbbell Goblet Side Step Up	\N	dumbbell-goblet-side-step-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.995985	2025-04-25 14:04:41.995985
1188	Dumbbell Side Step Up	Dumbbell Side Step Up	\N	dumbbell-side-step-up	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.996559	2025-04-25 14:04:41.996559
1189	Dumbbell Goblet Step Up	Dumbbell Goblet Step Up	\N	dumbbell-goblet-step-up	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.997339	2025-04-25 14:04:41.997339
1190	Dumbbell Single Arm Front Rack Step Up	Dumbbell Single Arm Front Rack Step Up	\N	dumbbell-single-arm-front-rack-step-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.997993	2025-04-25 14:04:41.997993
1191	Dumbbell Front Rack Step Up	Dumbbell Front Rack Step Up	\N	dumbbell-front-rack-step-up	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.998585	2025-04-25 14:04:41.998585
1192	Dumbbell Single Arm Step Up	Dumbbell Single Arm Step Up	\N	dumbbell-single-arm-step-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:41.999196	2025-04-25 14:04:41.999196
1193	Dumbbell Step Up	Dumbbell Step Up	\N	dumbbell-step-up	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:41.999745	2025-04-25 14:04:41.999745
1198	Machine Seated Leg Curl	Machine Seated Leg Curl	\N	machine-seated-leg-curl			f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.000302	2025-04-25 14:04:42.000302
1199	Treadmill Jog	Treadmill Jog	\N	treadmill-jog	\N	\N	f	1	1	100	0	f	f	f	Published	2025-04-25 14:04:42.000961	2025-04-25 14:04:42.000961
1200	Treadmill Sprint	Treadmill Sprint	\N	treadmill-sprint	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.001885	2025-04-25 14:04:42.001885
1201	Treadmill Walk	Treadmill Walk	\N	treadmill-walk	\N	\N	f	1	1	95	0	f	f	f	Published	2025-04-25 14:04:42.002721	2025-04-25 14:04:42.002721
1202	Hamstring Stretch Supine Glide	Hamstring Stretch Supine Glide	\N	hamstring-stretch-supine-glide	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.003665	2025-04-25 14:04:42.003665
1203	Hamstring Stretch Supine Dynamic Band	Hamstring Stretch Supine Dynamic Band	\N	hamstring-stretch-supine-dynamic	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.004425	2025-04-25 14:04:42.004425
1204	Gastrocnemius Stretch Push Up Position	Gastrocnemius Stretch Push Up Position	\N	gastrocnemius-stretch-push-up-position	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.005149	2025-04-25 14:04:42.005149
1207	Lat And Shoulder External Rotation Stretch 2 Kneeling Dowel	Lat And Shoulder External Rotation Stretch 2 Kneeling Dowel	\N	lat-and-shoulder-external-rotation-stretch-2-kneeling-dowel	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.006009	2025-04-25 14:04:42.006009
1208	Lat And Shoulder External Rotation Stretch 3 Kneeling Dowel	Lat And Shoulder External Rotation Stretch 3 Kneeling Dowel	\N	lat-and-shoulder-external-rotation-stretch-3-kneeling-dowel	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.007105	2025-04-25 14:04:42.007105
1209	Dumbbell Single Arm Bench Wrist Curl	Dumbbell Single Arm Bench Wrist Curl	\N	wrist-flexor-curl-dumbbell-kneeling	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.008167	2025-04-25 14:04:42.008167
1211	Core Stability Regression Crosslateral Limb Raise Push Up Position	Core Stability Regression Crosslateral Limb Raise Push Up Position	\N	core-stability-regression-crosslateral-limb-raise-push-up-position	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.008765	2025-04-25 14:04:42.008765
1212	Kneeling Quad Stretch	Kneeling Quad Stretch	\N	quad-stretch-kneeling	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.010377	2025-04-25 14:04:42.010377
1214	Glute Hip Rotator Stretch 3 Seated	Glute Hip Rotator Stretch 3 Seated	\N	glute-hip-rotator-stretch-3-seated	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.010885	2025-04-25 14:04:42.010885
1215	Towel Knee Extension	Towel Knee Extension	\N	knee-extension-seated-active-floor-towel	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.011488	2025-04-25 14:04:42.011488
1216	Crosslateral Core Stabilisation Unilateral Load Kettlebell	Crosslateral Core Stabilisation Unilateral Load Kettlebell	\N	crosslateral-core-stabilisation-unilateral-load-kettlebell	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.011956	2025-04-25 14:04:42.011956
1217	Seated Doming	Seated Doming	\N	seated-doming	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.012783	2025-04-25 14:04:42.012783
1218	Kettlebell Kneel To Stand Shoulder Flexion Bent Elbow Hold	Kettlebell Kneel To Stand Shoulder Flexion Bent Elbow Hold	\N	kettlebell-kneel-to-stand-shoulder-flexion-bent-elbow-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.013477	2025-04-25 14:04:42.013477
1219	Bench Lift Off Active	Bench Lift Off Active	\N	bench-lift-off-active	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.014011	2025-04-25 14:04:42.014011
1220	Side Shoulder Girdle Stability Circles	Side Shoulder Girdle Stability Circles	\N	side-shoulder-girdle-stability-circles	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.014797	2025-04-25 14:04:42.014797
1221	Shoulder Girdle Stability Circles	Shoulder Girdle Stability Circles	\N	shoulder-girdle-stability-circles	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.015196	2025-04-25 14:04:42.015196
1222	Calf Stretch On Box Bilateral	Calf Stretch On Box Bilateral	\N	calf-stretch-on-box-bilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.015735	2025-04-25 14:04:42.015735
1223	Calf Raise Isometric Unilateral	Calf Raise Isometric Unilateral	\N	calf-raise-isometric-unilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.016478	2025-04-25 14:04:42.016478
1224	Ys	Ys	\N	ys	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.017311	2025-04-25 14:04:42.017311
1225	Dumbbell Wrist Supinations Pronations	Dumbbell Wrist Supinations Pronations	\N	wrist-supinations-pronations	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.017999	2025-04-25 14:04:42.017999
1226	Seated Wrist Flexor Stretch	Seated Wrist Flexor Stretch	\N	wrist-flexor-stretch-seated	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.01849	2025-04-25 14:04:42.01849
1227	Seated Wrist Extensor Stretch	Seated Wrist Extensor Stretch	\N	wrist-extensor-stretch-seated	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.019211	2025-04-25 14:04:42.019211
1228	Wrist Extensor Mobilisation	Wrist Extensor Mobilisation	\N	wrist-extensor-mobilisation-lacrosse-ball-kneeling	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.019973	2025-04-25 14:04:42.019973
1229	Wrist Extensor Kneeling Hold	Wrist Extensor Kneeling Hold	\N	wrist-extensor-isometric-dumbbell-kneeling	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.020835	2025-04-25 14:04:42.020835
1230	Bosu Ball Single Leg Squat	Bosu Ball Single Leg Squat	\N	squat-on-bosu-ball-single-leg	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.021529	2025-04-25 14:04:42.021529
1231	Seated Upper Trap And Suprispinatus Stretch	Seated Upper Trap And Suprispinatus Stretch	\N	seated-upper-trap-and-suprispinatus-stretch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.02224	2025-04-25 14:04:42.02224
1232	Seated Ulnar Nerve Tensioner	Seated Ulnar Nerve Tensioner	\N	seated-ulnar-nerve-tensioner	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.02282	2025-04-25 14:04:42.02282
1233	Seated Ulnar Nerve Slider	Seated Ulnar Nerve Slider	\N	seated-ulnar-nerve-slider	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.023527	2025-04-25 14:04:42.023527
1234	Ulnar Deviations	Ulnar Deviations	\N	ulnar-deviations	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.024039	2025-04-25 14:04:42.024039
1244	Thoracic Flexion And Extensions	Thoracic Flexion And Extensions	\N	thoracic-flexion-and-extensions	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.024536	2025-04-25 14:04:42.024536
1245	Shoulder Flexion Thoracic Extensions	Shoulder Flexion Thoracic Extensions	\N	shoulder-flexion-thoracic-extensions	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.025037	2025-04-25 14:04:42.025037
1246	Thoracic Extensions Foam Roller	Thoracic Extensions Foam Roller	\N	thoracic-extensions-foam-roller	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.025632	2025-04-25 14:04:42.025632
1250	Laying Ts	Laying Ts	\N	laying-ts	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.026215	2025-04-25 14:04:42.026215
1251	Alternating Swipe Around	Alternating Swipe Around	\N	swipe-around-prone-alternate	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.026798	2025-04-25 14:04:42.026798
1252	Swipe Around	Swipe Around	\N	swipe-around-prone	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.027505	2025-04-25 14:04:42.027505
1255	Bodyweight Step Up Knee Drive	Bodyweight Step Up Knee Drive	\N	step-up-knee-drive	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.028234	2025-04-25 14:04:42.028234
1258	Single Leg Eccentric Box Squat	Single Leg Eccentric Box Squat	\N	squat-unilateral-eccentric-box	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.029257	2025-04-25 14:04:42.029257
1260	Single Leg Concentric Squat	Single Leg Concentric Squat	\N	squat-concentric-single-leg	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.029966	2025-04-25 14:04:42.029966
1262	Soleus Stretch	Soleus Stretch	\N	soleus-stretch-static	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.030752	2025-04-25 14:04:42.030752
1264	Skydiver	Skydiver	\N	skydiver	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.031466	2025-04-25 14:04:42.031466
1265	Skater Squat	Skater Squat	\N	skater-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.032084	2025-04-25 14:04:42.032084
1268	Box Supported Single Leg Deadlift	Box Supported Single Leg Deadlift	\N	single-leg-deadlift-1-box-support	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.032806	2025-04-25 14:04:42.032806
1269	Banded Side Walks	Banded Side Walks	\N	side-walks-resisted	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.03361	2025-04-25 14:04:42.03361
1270	Side Step On And Off Box	Side Step On And Off Box	\N	side-step-on-and-off-box	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.034392	2025-04-25 14:04:42.034392
1277	Kettlebell Walking Shoulder Flexion Bent Elbow Hold	Kettlebell Walking Shoulder Flexion Bent Elbow Hold	\N	kettlebell-walking-shoulder-flexion-bent-elbow-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.035221	2025-04-25 14:04:42.035221
1278	Kettlebell Shoulder Flexion Bent Elbow Hold	Kettlebell Shoulder Flexion Bent Elbow Hold	\N	kettlebell-shoulder-flexion-bent-elbow-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.035694	2025-04-25 14:04:42.035694
1279	Shoulder Flexion Wall Stretch	Shoulder Flexion Wall Stretch	\N	shoulder-flexion-wall-stretch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.036216	2025-04-25 14:04:42.036216
1280	Standing Shoulder Flexion Mobility	Standing Shoulder Flexion Mobility	\N	standing-shoulder-flexion-mobility	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.036723	2025-04-25 14:04:42.036723
1282	Dumbbell Pullover Eccentrics	Dumbbell Pullover Eccentrics	\N	dumbbell-pullover-eccentrics	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.037321	2025-04-25 14:04:42.037321
1283	Shoulder External Internal Rotation	Shoulder External Internal Rotation	\N	shoulder-external-internal-rotation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.037907	2025-04-25 14:04:42.037907
1284	Shoulder External Rotation Deceleration	Shoulder External Rotation Deceleration	\N	shoulder-external-rotation-deceleration	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.038328	2025-04-25 14:04:42.038328
1285	Band Shoulder Y Raise	Band Shoulder Y Raise	\N	band-shoulder-y-raise	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.038734	2025-04-25 14:04:42.038734
1286	Pushup Position Shoulder Clock	Pushup Position Shoulder Clock	\N	pushup-position-shoulder-clock	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.039347	2025-04-25 14:04:42.039347
1287	Shoulder Abduction Stretch	Shoulder Abduction Stretch	\N	shoulder-abduction-stretch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.039807	2025-04-25 14:04:42.039807
1288	Standing Shoulder Abduction	Standing Shoulder Abduction	\N	standing-shoulder-abduction	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.040194	2025-04-25 14:04:42.040194
1289	Seated Shoulder Abduction	Seated Shoulder Abduction	\N	seated-shoulder-abduction	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.040705	2025-04-25 14:04:42.040705
1290	Dumbbell Service Exercise	Dumbbell Service Exercise	\N	dumbbell-service-exercise	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.041113	2025-04-25 14:04:42.041113
1291	Serratus Activation Cross Punch	Serratus Activation Cross Punch	\N	serratus-activation-cross-punch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.041813	2025-04-25 14:04:42.041813
1292	Bosu Serratus Activation Active Plank	Bosu Serratus Activation Active Plank	\N	bosu-serratus-activation-active-plank	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.042325	2025-04-25 14:04:42.042325
1293	Serratus Activation Active Plank	Serratus Activation Active Plank	\N	serratus-activation-active-plank	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.042952	2025-04-25 14:04:42.042952
1294	Bosu Serratus Activation Plank	Bosu Serratus Activation Plank	\N	bosu-serratus-activation-plank	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.043586	2025-04-25 14:04:42.043586
1295	Serratus Activation Plank	Serratus Activation Plank	\N	serratus-activation-plank	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.043966	2025-04-25 14:04:42.043966
1298	Scapular Retraction	Scapular Retraction	\N	scapular-retraction	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.044328	2025-04-25 14:04:42.044328
1299	Scapular Protraction	Scapular Protraction	\N	scapular-protraction	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.044684	2025-04-25 14:04:42.044684
1300	Scapular Elevation	Scapular Elevation	\N	scapular-elevation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.045097	2025-04-25 14:04:42.045097
1301	Scapular Depression	Scapular Depression	\N	scapular-depression	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.04582	2025-04-25 14:04:42.04582
1303	Side Lying External Rotator Cuff Stretch	Side Lying External Rotator Cuff Stretch	\N	side-lying-external-rotator-cuff-stretch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.046293	2025-04-25 14:04:42.046293
1304	Rotator Cuff External Rotations 3	Rotator Cuff External Rotations 3	\N	rotator-cuff-external-rotations-3	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.046652	2025-04-25 14:04:42.046652
1305	Rotator Cuff External Rotations 2	Rotator Cuff External Rotations 2	\N	rotator-cuff-external-rotations-2	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.047107	2025-04-25 14:04:42.047107
1306	Rotator Cuff External Rotations 1	Rotator Cuff External Rotations 1	\N	rotator-cuff-external-rotations-1	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.047574	2025-04-25 14:04:42.047574
1308	Seated Radial Nerve Tensioner	Seated Radial Nerve Tensioner	\N	seated-radial-nerve-tensioner	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.04807	2025-04-25 14:04:42.04807
1309	Seated Radial Nerve Slider	Seated Radial Nerve Slider	\N	seated-radial-nerve-slider	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.048559	2025-04-25 14:04:42.048559
1310	Resisted Radial Deviation	Resisted Radial Deviation	\N	resisted-radial-deviation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.049025	2025-04-25 14:04:42.049025
1311	Seated Quad Stretch	Seated Quad Stretch	\N	quad-stretch-seated	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.049668	2025-04-25 14:04:42.049668
1312	Band Floor Quad Stretch	Band Floor Quad Stretch	\N	quad-stretch-floor-prone	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.050262	2025-04-25 14:04:42.050262
1313	Foam Roller Quad Mobilisation	Foam Roller Quad Mobilisation	\N	quad-mobilisation-floor-foam-roller	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.050963	2025-04-25 14:04:42.050963
1314	QL Mobilisation Floor Foam Roller	QL Mobilisation Floor Foam Roller	\N	ql-mobilisation-floor-foam-roller	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.051473	2025-04-25 14:04:42.051473
1315	Prayer Stretch 2 Roller	Prayer Stretch 2 Roller	\N	prayer-stretch-2-roller	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.051956	2025-04-25 14:04:42.051956
1316	Seated Hip Flexion Hold	Seated Hip Flexion Hold	\N	hip-flexion-seated-bench-isometric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.052609	2025-04-25 14:04:42.052609
1317	Band Glute Kickback Hold	Band Glute Kickback Hold	\N	hip-extension-standing-resisted-isometric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.053237	2025-04-25 14:04:42.053237
1318	Hip Extension Into Side Flexion	Hip Extension Into Side Flexion	\N	hip-extension-into-side-flexion	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.053909	2025-04-25 14:04:42.053909
1319	Prayer Stretch 1	Prayer Stretch 1	\N	prayer-stretch-1	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.054643	2025-04-25 14:04:42.054643
1320	Prayer Stretch Side Bend	Prayer Stretch Side Bend	\N	prayer-stretch-side-bend	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.055384	2025-04-25 14:04:42.055384
1321	Prone Single Leg Hip Extension Hold	Prone Single Leg Hip Extension Hold	\N	hip-extension-prone-unilateral-isometric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.055929	2025-04-25 14:04:42.055929
1322	Hip Extension External Rotation Pulses 4Pt Position	Hip Extension External Rotation Pulses 4Pt Position	\N	hip-extension-external-rotation-pulses-4pt-position	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.05669	2025-04-25 14:04:42.05669
1323	Hip Extension External Rotation 4Pt Position	Hip Extension External Rotation 4Pt Position	\N	hip-extension-external-rotation-4pt-position	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.057276	2025-04-25 14:04:42.057276
1324	Rotator Cuff Mobilisation Lacrosse Ball	Rotator Cuff Mobilisation Lacrosse Ball	\N	rotator-cuff-mobilisation-lacrosse-ball	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.057838	2025-04-25 14:04:42.057838
1325	Hip Extension 4Pt Position Hold	Hip Extension 4Pt Position Hold	\N	hip-extension-4pt-position-isometric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.058221	2025-04-25 14:04:42.058221
1329	Hamstring Stretch Supine Static	Hamstring Stretch Supine Static	\N	hamstring-stretch-supine-static	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.058806	2025-04-25 14:04:42.058806
1330	Hamstring Stretch Static Standing Single Leg	Hamstring Stretch Static Standing Single Leg	\N	hamstring-stretch-static-standing-single-leg	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.059412	2025-04-25 14:04:42.059412
1331	Seated Plantar Flexions	Seated Plantar Flexions	\N	plantar-flexions-seated-resisted	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.059972	2025-04-25 14:04:42.059972
1332	Hamstring Stretch Seated Single Leg Isometric	Hamstring Stretch Seated Single Leg Isometric	\N	hamstring-stretch-seated-single-leg-isometric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.060544	2025-04-25 14:04:42.060544
1333	Plank Saw	Plank Saw	\N	plank-2-saw	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.061065	2025-04-25 14:04:42.061065
1334	Hamstring Stretch Seated Single Leg	Hamstring Stretch Seated Single Leg	\N	hamstring-stretch-seated-single-leg	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.061655	2025-04-25 14:04:42.061655
1335	Hamstring Stretch Dynamic Supine Alternating	Hamstring Stretch Dynamic Supine Alternating	\N	hamstring-stretch-dynamic-supine-alternating	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.062443	2025-04-25 14:04:42.062443
1337	Hamstring Stretch Dynamic Standing Bilateral	Hamstring Stretch Dynamic Standing Bilateral	\N	hamstring-stretch-dynamic-standing-bilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.063166	2025-04-25 14:04:42.063166
1338	Hamstring Mobilisation Seated Lacrosse Ball	Hamstring Mobilisation Seated Lacrosse Ball	\N	hamstring-mobilisation-seated-lacrosse-ball	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.063705	2025-04-25 14:04:42.063705
1340	Single Leg Slider Hamstring Curl 2	Single Leg Slider Hamstring Curl 2	\N	hamstring-curl-2-supine-single-leg-slider	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.06421	2025-04-25 14:04:42.06421
1341	Standing Neck Side Flexions	Standing Neck Side Flexions	\N	standing-neck-side-flexions	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.064686	2025-04-25 14:04:42.064686
1342	Slider Hamstring Curl Single Leg	Slider Hamstring Curl Single Leg	\N	hamstring-curl-1-supine-single-leg-slider	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.065164	2025-04-25 14:04:42.065164
1343	Standing Neck Rotations	Standing Neck Rotations	\N	standing-neck-rotations	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.06566	2025-04-25 14:04:42.06566
1344	Bodyweight Standing Hamstring Curl	Bodyweight Standing Hamstring Curl	\N	hamstring-curl-standing-bodyweight-single-leg	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.066127	2025-04-25 14:04:42.066127
1345	Slider Hamstring Curl	Slider Hamstring Curl	\N	hamstring-curl-supine-bilateral-slider	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.066802	2025-04-25 14:04:42.066802
1346	Standing Neck Flexions	Standing Neck Flexions	\N	standing-neck-flexions	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.067422	2025-04-25 14:04:42.067422
1347	Bodyweight Standing Hamstring Curl Isometric	Bodyweight Standing Hamstring Curl Isometric	\N	hamstring-curl-standing-isometric-bodyweight-single-leg	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.067954	2025-04-25 14:04:42.067954
1348	Standing Neck Extensions	Standing Neck Extensions	\N	standing-neck-extensions	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.068516	2025-04-25 14:04:42.068516
1349	Slider Hamstring Curl Eccentric	Slider Hamstring Curl Eccentric	\N	hamstring-curl-eccentric-supine-bilateral-sliders	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.068978	2025-04-25 14:04:42.068978
1350	Hamstring Bridge With Elevated Legs Box Unilateral	Hamstring Bridge With Elevated Legs Box Unilateral	\N	hamstring-bridge-with-elevated-legs-box-unilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.069676	2025-04-25 14:04:42.069676
1351	Hamstring Bridge With Elevated Legs Box Bilateral	Hamstring Bridge With Elevated Legs Box Bilateral	\N	hamstring-bridge-with-elevated-legs-box-bilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.070466	2025-04-25 14:04:42.070466
1352	Hamstring Bridge Isometric Open Angle	Hamstring Bridge Isometric Open Angle	\N	hamstring-bridge-isometric-open-angle	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.07111	2025-04-25 14:04:42.07111
1353	Glute Piriformis Mobilisation 1 Floor Seated Lacrosse Ball	Glute Piriformis Mobilisation 1 Floor Seated Lacrosse Ball	\N	glute-piriformis-mobilisation-1-floor-seated-lacrosse-ball	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.071739	2025-04-25 14:04:42.071739
1354	Glute Hip Rotator Stretch 2 Seated	Glute Hip Rotator Stretch 2 Seated	\N	glute-hip-rotator-stretch-2-seated	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.072238	2025-04-25 14:04:42.072238
1355	Glute Hip Rotator Stretch 1 Seated	Glute Hip Rotator Stretch 1 Seated	\N	glute-hip-rotator-stretch-1-seated	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.0728	2025-04-25 14:04:42.0728
1356	Glute Hip Rotator Stretch Supine	Glute Hip Rotator Stretch Supine	\N	glute-hip-rotator-stretch-supine	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.073323	2025-04-25 14:04:42.073323
1357	Glute Stretch Knee Pull Dynamic Standing	Glute Stretch Knee Pull Dynamic Standing	\N	glute-stretch-knee-pull-dynamic-standing-unilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.073885	2025-04-25 14:04:42.073885
1358	Standing Neck Mobility Circumductions	Standing Neck Mobility Circumductions	\N	standing-neck-mobility-circumductions	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.074478	2025-04-25 14:04:42.074478
1359	Glute Stretch Static Unilateral	Glute Stretch Static Unilateral	\N	glute-stretch-static-unilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.074948	2025-04-25 14:04:42.074948
1361	Seated Median Nerve Tensioner	Seated Median Nerve Tensioner	\N	seated-median-nerve-tensioner	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.075521	2025-04-25 14:04:42.075521
1363	Glute Bridge Isometric Hold Single Alternate	Glute Bridge Isometric Hold Single Alternate	\N	glute-bridge-isometric-hold-single-alternate	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.075923	2025-04-25 14:04:42.075923
1364	Seated Median Nerve Slider	Seated Median Nerve Slider	\N	seated-median-nerve-slider	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.076644	2025-04-25 14:04:42.076644
1365	Glute Bridge Eccentric Unilateral	Glute Bridge Eccentric Unilateral	\N	glute-bridge-eccentric-unilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.077041	2025-04-25 14:04:42.077041
1366	Gastrocnemius Stretch Unilateral On Box	Gastrocnemius Stretch Unilateral On Box	\N	gastrocnemius-stretch-unilateral-on-box	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.077531	2025-04-25 14:04:42.077531
1367	Gastrocnemius Stretch Unilateral On Wall	Gastrocnemius Stretch Unilateral On Wall	\N	gastrocnemius-stretch-unilateral-on-wall	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.078475	2025-04-25 14:04:42.078475
1369	Gastrocnemius Stretch Bilateral On Box	Gastrocnemius Stretch Bilateral On Box	\N	gastrocnemius-stretch-bilateral-on-box	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.079339	2025-04-25 14:04:42.079339
1371	Femoral Nerve Mobilisation	Femoral Nerve Mobilisation	\N	femoral-nerve-mobilisation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.080059	2025-04-25 14:04:42.080059
1372	Kettlebell Single Arm Farmers Walk	Kettlebell Single Arm Farmers Walk	\N	kettlebell-single-arm-farmers-walk	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.080505	2025-04-25 14:04:42.080505
1373	Kettlebell Suitcase Deadlift	Kettlebell Suitcase Deadlift	\N	kettlebell-suitcase-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.081039	2025-04-25 14:04:42.081039
1375	Eversions	Eversions	\N	eversions	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.08196	2025-04-25 14:04:42.08196
1376	Elbow Extensor Mobilisation Kneeling Lacrosse Ball	Elbow Extensor Mobilisation Kneeling Lacrosse Ball	\N	elbow-extensor-mobilisation-kneeling-lacrosse-ball	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.082619	2025-04-25 14:04:42.082619
1378	Elbow Extensor Isometric Seated Overhead Dumbbell	Elbow Extensor Isometric Seated Overhead Dumbbell	\N	elbow-extensor-isometric-seated-overhead-dumbbell	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.083317	2025-04-25 14:04:42.083317
1379	Dorsal Flexion Hold	Dorsal Flexion Hold	\N	dorsal-flexion-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.083887	2025-04-25 14:04:42.083887
1380	Wall Supported Dorsal Flexion	Wall Supported Dorsal Flexion	\N	wall-supported-dorsal-flexion	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.084537	2025-04-25 14:04:42.084537
1381	Bodyweight Alternating Forward Lunge	Bodyweight Alternating Forward Lunge	\N	lunge-alternate	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.085146	2025-04-25 14:04:42.085146
1382	Standing Doming	Standing Doming	\N	standing-doming	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.085767	2025-04-25 14:04:42.085767
1383	Deadlift Bounces Stretch	Deadlift Bounces Stretch	\N	deadlift-bounces-stretch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.086252	2025-04-25 14:04:42.086252
1384	Walking Lunge	Walking Lunge	\N	lunge-walking	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.087333	2025-04-25 14:04:42.087333
1385	Bodyweight Deadlift	Bodyweight Deadlift	\N	bodyweight-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.088067	2025-04-25 14:04:42.088067
1386	Dead Bugs Same Side	Dead Bugs Same Side	\N	dead-bugs-same-side	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.088767	2025-04-25 14:04:42.088767
1387	Dead Bugs Cross Lateral	Dead Bugs Cross Lateral	\N	dead-bugs-cross-lateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.089425	2025-04-25 14:04:42.089425
1388	Lumbar Rotation 5	Lumbar Rotation 5	\N	lumbar-rotation-5-active-kick	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.090354	2025-04-25 14:04:42.090354
1389	Core Stability 5 Crosslateral Limb Raise Into Knee Elbow Tuck Push Up Position	Core Stability 5 Crosslateral Limb Raise Into Knee Elbow Tuck Push Up Position	\N	core-stability-5-crosslateral-limb-raise-into-knee-elbow-tuck-push-up-position	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.090982	2025-04-25 14:04:42.090982
1390	Lumbar Rotation 3	Lumbar Rotation 3	\N	lumbar-rotation-3-supine-passive-ankle-over-opposite-knee	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.092051	2025-04-25 14:04:42.092051
1391	Core Stability 4 Crosslateral Limb Raise Push Up Position	Core Stability 4 Crosslateral Limb Raise Push Up Position	\N	core-stability-4-crosslateral-limb-raise-push-up-position	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.092702	2025-04-25 14:04:42.092702
1392	Core Stability 2 Opposite Shoulder Tap 4Pt Position	Core Stability 2 Opposite Shoulder Tap 4Pt Position	\N	core-stability-2-opposite-shoulder-tap-4pt-position	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.093726	2025-04-25 14:04:42.093726
1393	Lumbar Rotation 4	Lumbar Rotation 4	\N	lumbar-rotation-4-supine-active-crossed-legs	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.095061	2025-04-25 14:04:42.095061
1394	Lumbar Rotation 2	Lumbar Rotation 2	\N	lumbar-rotation-2-supine-active	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.095969	2025-04-25 14:04:42.095969
1395	Core Stability 1 Crosslateral Limb Raise 4Pt Position	Core Stability 1 Crosslateral Limb Raise 4Pt Position	\N	core-stability-1-crosslateral-limb-raise-4pt-position	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.096574	2025-04-25 14:04:42.096574
1396	Lumbar Rotation 1	Lumbar Rotation 1	\N	lumbar-rotation-1-supine-passive	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.0985	2025-04-25 14:04:42.0985
1397	Cobra Stretch 2	Cobra Stretch 2	\N	cobra-stretch-2	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.102552	2025-04-25 14:04:42.102552
1398	Cobra Stretch 1	Cobra Stretch 1	\N	cobra-stretch-1	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.107404	2025-04-25 14:04:42.107404
1399	Clock Taps	Clock Taps	\N	clock-taps	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.110976	2025-04-25 14:04:42.110976
1400	Floor Knee Pull Bilateral	Floor Knee Pull Bilateral	\N	lumbar-flexion-knee-pull-bilateral-floor	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.114504	2025-04-25 14:04:42.114504
1401	Lumbar Extensor Mobilisation Supine Bent Knees Peanut Tool	Lumbar Extensor Mobilisation Supine Bent Knees Peanut Tool	\N	lumbar-extensor-mobilisation-supine-bent-knees-peanut-tool	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.11775	2025-04-25 14:04:42.11775
1402	Lower Back Extensions 4	Lower Back Extensions 4	\N	lower-back-extensions-4	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.121845	2025-04-25 14:04:42.121845
1403	Lower Back Extensions 3	Lower Back Extensions 3	\N	lower-back-extensions-3	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.125059	2025-04-25 14:04:42.125059
1404	Lower Back Extensions 2	Lower Back Extensions 2	\N	lower-back-extensions-2	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.12639	2025-04-25 14:04:42.12639
1405	Partner Lower Back Extensions	Partner Lower Back Extensions	\N	lower-back-extensions-1	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.127162	2025-04-25 14:04:42.127162
1406	Laying Levator Scapulae Mobilisation Massage Ball	Laying Levator Scapulae Mobilisation Massage Ball	\N	laying-levator-scapulae-mobilisation-massage-ball	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.12776	2025-04-25 14:04:42.12776
1407	Clamshells 4 Side Lying Resisted	Clamshells 4 Side Lying Resisted	\N	clamshells-4-side-lying-resisted	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.128326	2025-04-25 14:04:42.128326
1408	Clamshells 3 Internal External Rotations Side Lying	Clamshells 3 Internal External Rotations Side Lying	\N	clamshells-3-internal-external-rotations-side-lying	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.129515	2025-04-25 14:04:42.129515
1409	Clamshells 2 Side Lying	Clamshells 2 Side Lying	\N	clamshells-2-side-lying	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.130321	2025-04-25 14:04:42.130321
1410	Floor Incline Leg Raise	Floor Incline Leg Raise	\N	leg-raise-straight-incline-seated	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.131268	2025-04-25 14:04:42.131268
1411	Clamshells 1 Side Lying	Clamshells 1 Side Lying	\N	clamshells-1-side-lying	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.131922	2025-04-25 14:04:42.131922
1412	Laying Chin Tucks	Laying Chin Tucks	\N	laying-chin-tucks	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.133305	2025-04-25 14:04:42.133305
1413	Band Seated Cervical Side Flexion	Band Seated Cervical Side Flexion	\N	cervical-side-flexion-4-seated-theraband	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.134779	2025-04-25 14:04:42.134779
1414	Leg Lowers	Leg Lowers	\N	leg-lowers	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.135541	2025-04-25 14:04:42.135541
1415	Band Seated Cervical Side Flexion Eccentric	Band Seated Cervical Side Flexion Eccentric	\N	band-seated-cervical-side-flexion-eccentric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.136813	2025-04-25 14:04:42.136813
1416	Seated Lateral Line Stretch	Seated Lateral Line Stretch	\N	lateral-line-stretch-and-lumbar-spine-rotation-seated	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.13784	2025-04-25 14:04:42.13784
1417	Lat Mobilisation Floor Foam Roller	Lat Mobilisation Floor Foam Roller	\N	lat-mobilisation-floor-foam-roller	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.138635	2025-04-25 14:04:42.138635
1418	Band Seated Cervical Side Flexion Hold	Band Seated Cervical Side Flexion Hold	\N	band-seated-cervical-side-flexion-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.139057	2025-04-25 14:04:42.139057
1419	Seated Cervical Side Flexion Hold	Seated Cervical Side Flexion Hold	\N	seated-cervical-side-flexion-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.139436	2025-04-25 14:04:42.139436
1420	Seated Cervical Rotation Hold	Seated Cervical Rotation Hold	\N	seated-cervical-rotation-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.139741	2025-04-25 14:04:42.139741
1421	Lat And Shoulder External Rotation Stretch 1 Kneeling Dowel	Lat And Shoulder External Rotation Stretch 1 Kneeling Dowel	\N	lat-and-shoulder-external-rotation-stretch-1-kneeling-dowel	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.14004	2025-04-25 14:04:42.14004
1422	Laying Cervical Flexion 2	Laying Cervical Flexion 2	\N	laying-cervical-flexion-2	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.140905	2025-04-25 14:04:42.140905
1423	Laying Cervical Flexion Isometric	Laying Cervical Flexion Isometric	\N	cervical-flexion-2-supine-isometric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.141269	2025-04-25 14:04:42.141269
1424	Seated Cervical Flexion Isometric	Seated Cervical Flexion Isometric	\N	cervical-flexion-1-seated-isometric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.141661	2025-04-25 14:04:42.141661
1425	Lat And Lateral Line Stretch	Lat And Lateral Line Stretch	\N	lat-and-lateral-line-stretch-unilateral-standing	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.142024	2025-04-25 14:04:42.142024
1426	Laying Cervical Extensor Mobilisation Peanut Tool	Laying Cervical Extensor Mobilisation Peanut Tool	\N	cervical-extensor-mobilisation-supine-peanut-tool	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.142819	2025-04-25 14:04:42.142819
1427	Seated Manual Cervical Extensor Mobilisation	Seated Manual Cervical Extensor Mobilisation	\N	cervical-extensor-mobilisation-seated-manual	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.14322	2025-04-25 14:04:42.14322
1428	Cervical Extension Band	Cervical Extension Band	\N	cervical-extension-band	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.143719	2025-04-25 14:04:42.143719
1429	Cervical Extension Eccentric Band	Cervical Extension Eccentric Band	\N	cervical-extension-eccentric-band	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.144153	2025-04-25 14:04:42.144153
1430	Cervical Extension Banded Hold	Cervical Extension Banded Hold	\N	cervical-extension-banded-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.144507	2025-04-25 14:04:42.144507
1431	Cervical Extension Hold	Cervical Extension Hold	\N	cervical-extension-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.144918	2025-04-25 14:04:42.144918
1432	Standing Knee Raise Hold	Standing Knee Raise Hold	\N	knee-raise-standing-unilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.145508	2025-04-25 14:04:42.145508
1433	Calf Raise 3B Soleus Bias Unilateral	Calf Raise 3B Soleus Bias Unilateral	\N	calf-raise-3b-soleus-bias-unilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.146305	2025-04-25 14:04:42.146305
1434	Knee Pull And Lumbar Rotation	Knee Pull And Lumbar Rotation	\N	knee-pull-and-lumbar-rotation-supine-glute-and-lower-back-stretch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.14704	2025-04-25 14:04:42.14704
1435	Calf Raise 3A Soleus Bias Bilateral	Calf Raise 3A Soleus Bias Bilateral	\N	calf-raise-3a-soleus-bias-bilateral	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.147917	2025-04-25 14:04:42.147917
1436	Knee Extension Seated Partial	Knee Extension Seated Partial	\N	knee-extension-seated-partial	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.148638	2025-04-25 14:04:42.148638
1437	Calf Raise 2D Unilateral From Box	Calf Raise 2D Unilateral From Box	\N	calf-raise-2d-unilateral-from-box	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.149245	2025-04-25 14:04:42.149245
1438	Towel Knee Extension Hold	Towel Knee Extension Hold	\N	knee-extension-seated-isometric-floor-towel	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.149824	2025-04-25 14:04:42.149824
1439	Calf Raise 2C Eccentric Unilateral From Box	Calf Raise 2C Eccentric Unilateral From Box	\N	calf-raise-2c-eccentric-unilateral-from-box	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.150339	2025-04-25 14:04:42.150339
1440	Band Knee Extension	Band Knee Extension	\N	knee-extension-closed-chain-standing-resisted	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.151193	2025-04-25 14:04:42.151193
1441	Calf Raise 2B Unilateral Floor	Calf Raise 2B Unilateral Floor	\N	calf-raise-2b-unilateral-floor	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.151787	2025-04-25 14:04:42.151787
1442	Calf Raise 2A Eccentric Unilateral Floor	Calf Raise 2A Eccentric Unilateral Floor	\N	calf-raise-2a-eccentric-unilateral-floor	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.15237	2025-04-25 14:04:42.15237
1444	Calf Raise 1E Bilateral Isometric Floor	Calf Raise 1E Bilateral Isometric Floor	\N	calf-raise-1e-bilateral-isometric-floor	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.152923	2025-04-25 14:04:42.152923
1445	Jump On And Off Box	Jump On And Off Box	\N	jump-on-and-off-box	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.153603	2025-04-25 14:04:42.153603
1447	Calf Raise 1D Bilateral From Box	Calf Raise 1D Bilateral From Box	\N	calf-raise-1d-bilateral-from-box	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.154527	2025-04-25 14:04:42.154527
1448	Jump Off Box Single Leg Landing	Jump Off Box Single Leg Landing	\N	jump-off-box-single-leg-landing	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.155149	2025-04-25 14:04:42.155149
1449	Calf Raise 1C Bilateral Eccentric From Box	Calf Raise 1C Bilateral Eccentric From Box	\N	calf-raise-1c-bilateral-eccentric-from-box	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.155845	2025-04-25 14:04:42.155845
1450	Calf Raise 1B Bilateral Floor	Calf Raise 1B Bilateral Floor	\N	calf-raise-1b-bilateral-floor	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.156422	2025-04-25 14:04:42.156422
1451	Calf Raise 1A Bilateral Eccentric Floor	Calf Raise 1A Bilateral Eccentric Floor	\N	calf-raise-1a-bilateral-eccentric-floor	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.15705	2025-04-25 14:04:42.15705
1452	Jump Into Single Leg Landing	Jump Into Single Leg Landing	\N	jump-bilateral-into-unilateral-landing	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.15751	2025-04-25 14:04:42.15751
1453	Calf Mobilisation Seated Floor Roll	Calf Mobilisation Seated Floor Roll	\N	calf-mobilisation-seated-floor-roll	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.158317	2025-04-25 14:04:42.158317
1454	Calf Isometric On Step	Calf Isometric On Step	\N	calf-isometric-on-step	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.158872	2025-04-25 14:04:42.158872
1455	Band Seated Inversions	Band Seated Inversions	\N	band-seated-inversions	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.15952	2025-04-25 14:04:42.15952
1456	Big Toe Dorsiflexion	Big Toe Dorsiflexion	\N	big-toe-dorsiflexion	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.159961	2025-04-25 14:04:42.159961
1457	Big Toe Abduction	Big Toe Abduction	\N	big-toe-abduction	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.160462	2025-04-25 14:04:42.160462
1458	Bench Lift Off Static	Bench Lift Off Static	\N	bench-lift-off-static	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.160908	2025-04-25 14:04:42.160908
1459	Single Leg Bosu Ball Balance 2	Single Leg Bosu Ball Balance 2	\N	single-leg-bosu-ball-balance-2	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.161502	2025-04-25 14:04:42.161502
1460	Standing Inversions Hold	Standing Inversions Hold	\N	standing-inversions-hold	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.162136	2025-04-25 14:04:42.162136
1461	Bosu Ball Single Leg Balance	Bosu Ball Single Leg Balance	\N	balance-3-single-leg-bosu-ball	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.162717	2025-04-25 14:04:42.162717
1462	Intrascapular Muscle Contraction	Intrascapular Muscle Contraction	\N	intrascapular-muscle-contraction	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.163281	2025-04-25 14:04:42.163281
1463	Infinity Loop Standing Hip Mobility	Infinity Loop Standing Hip Mobility	\N	infinity-loop-standing-hip-mobility	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.163723	2025-04-25 14:04:42.163723
1464	Single Leg Balance 2	Single Leg Balance 2	\N	balance-2-single-leg	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.164362	2025-04-25 14:04:42.164362
1465	I's Prone	I's Prone	\N	is-prone	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.164801	2025-04-25 14:04:42.164801
1466	Foam Roller Angel	Foam Roller Angel	\N	angel-foam-roller-floor	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.165708	2025-04-25 14:04:42.165708
1467	I Into W	I Into W	\N	i-into-w-prone	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.166081	2025-04-25 14:04:42.166081
1468	Alphabet	Alphabet	\N	alphabet	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.166659	2025-04-25 14:04:42.166659
1469	Band Hip Thrust	Band Hip Thrust	\N	hip-thrust-standing-resisted	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.167129	2025-04-25 14:04:42.167129
1470	Adductor Stretch Seated Bilateral Static	Adductor Stretch Seated Bilateral Static	\N	adductor-stretch-seated-bilateral-static	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.167769	2025-04-25 14:04:42.167769
1471	Hip Openers	Hip Openers	\N	hip-openers	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.16835	2025-04-25 14:04:42.16835
1472	Adductor Stretch Seated Bilateral Dynamic	Adductor Stretch Seated Bilateral Dynamic	\N	adductor-stretch-seated-bilateral-dynamic	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.169594	2025-04-25 14:04:42.169594
1473	Adductor Stretch Dynamic Unilateral 4 Point Position	Adductor Stretch Dynamic Unilateral 4 Point Position	\N	adductor-stretch-dynamic-unilateral-4-point-position	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.170131	2025-04-25 14:04:42.170131
1474	Hip Flexor Stretch Kneeling Lunge 3	Hip Flexor Stretch Kneeling Lunge 3	\N	hip-flexor-stretch-kneeling-lunge-3	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.170688	2025-04-25 14:04:42.170688
1475	Adductor Stretch Dynamic Standing Alternate	Adductor Stretch Dynamic Standing Alternate	\N	adductor-stretch-dynamic-standing-alternate	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.171743	2025-04-25 14:04:42.171743
1476	Hip Flexor Stretch Kneeling Lunge 2	Hip Flexor Stretch Kneeling Lunge 2	\N	hip-flexor-stretch-kneeling-lunge-2	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.1723	2025-04-25 14:04:42.1723
1477	Adductor Raise Side Lying Short Lever	Adductor Raise Side Lying Short Lever	\N	adductor-raise-side-lying-short-lever	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.172844	2025-04-25 14:04:42.172844
1478	Adductor Raise Side Lying Long Lever	Adductor Raise Side Lying Long Lever	\N	adductor-raise-side-lying-long-lever	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.173286	2025-04-25 14:04:42.173286
1479	Hip Flexor Stretch Kneeling Lunge 1	Hip Flexor Stretch Kneeling Lunge 1	\N	hip-flexor-stretch-kneeling-lunge-1	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.17376	2025-04-25 14:04:42.17376
1480	Band Straight Leg Hip Flexions	Band Straight Leg Hip Flexions	\N	hip-flexions-straight-leg-standing-resisted	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.174462	2025-04-25 14:04:42.174462
1481	Adductor Leg Raise Side Lying Isometric	Adductor Leg Raise Side Lying Isometric	\N	adductor-leg-raise-side-lying-isometric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.17507	2025-04-25 14:04:42.17507
1482	Adductor Leg Raise Side Lying	Adductor Leg Raise Side Lying	\N	adductor-leg-raise-side-lying	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.175548	2025-04-25 14:04:42.175548
1483	Standing Mini-Band Hip Flexion	Standing Mini-Band Hip Flexion	\N	hip-flexions-standing-resisted	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.176147	2025-04-25 14:04:42.176147
1484	Abductor Leg Raise Side Lying Isometric	Abductor Leg Raise Side Lying Isometric	\N	abductor-leg-raise-side-lying-isometric	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.17678	2025-04-25 14:04:42.17678
1485	Abductor Leg Raise Side Lying	Abductor Leg Raise Side Lying	\N	abductor-leg-raise-side-lying	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.177376	2025-04-25 14:04:42.177376
1486	Treadmill Backwards Walk	Treadmill Backwards Walk	\N	treadmill-backwards-walk	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.17815	2025-04-25 14:04:42.17815
1487	Treadmill Side Shuffle	Treadmill Side Shuffle	\N	treadmill-side-shuffle	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.17899	2025-04-25 14:04:42.17899
1489	Dumbbell Preacher Curl	Dumbbell Preacher Curl	\N	dumbbell-preacher-curl	\N	\N	f	1	100	1	0	f	f	f	Published	2025-04-25 14:04:42.179799	2025-04-25 14:04:42.179799
1490	EZ Bar Reverse Preacher Curl	EZ Bar Reverse Preacher Curl	\N	ez-bar-reverse-preacher-curl	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.180326	2025-04-25 14:04:42.180326
1491	EZ Bar Preacher Curl	EZ Bar Preacher Curl	\N	ez-bar-preacher-curl	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.181009	2025-04-25 14:04:42.181009
1492	Machine Assisted Parallel Bar Dips	Machine Assisted Parallel Bar Dips	\N	machine-assisted-parallel-bar-dips	\N	\N	f	1	80	1	0	f	f	f	Published	2025-04-25 14:04:42.181473	2025-04-25 14:04:42.181473
1493	Parallel Bar Dips	Parallel Bar Dips	\N	parralel-bar-dips	\N	\N	f	1	90	1	0	f	f	f	Published	2025-04-25 14:04:42.182131	2025-04-25 14:04:42.182131
1494	Machine Assisted Pull Up	Machine Assisted Pull Up	\N	machine-assisted-pull-up	\N	\N	f	1	75	1	0	f	f	f	Published	2025-04-25 14:04:42.182867	2025-04-25 14:04:42.182867
1495	Machine Assisted Narrow Pull Up	Machine Assisted Narrow Pull Up	\N	machine-assisted-narrow-pull-up	\N	\N	f	1	60	1	0	f	f	f	Published	2025-04-25 14:04:42.183461	2025-04-25 14:04:42.183461
1496	Machine Assisted Neutral Chin Up	Machine Assisted Neutral Chin Up	\N	machine-assisted-neutral-chin-up	\N	\N	f	1	80	1	0	f	f	f	Published	2025-04-25 14:04:42.184054	2025-04-25 14:04:42.184054
1497	Machine Assisted Chin Up	Machine Assisted Chin Up	\N	machine-assisted-chin-up	\N	\N	f	1	70	1	0	f	f	f	Published	2025-04-25 14:04:42.18474	2025-04-25 14:04:42.18474
1498	Machine Hip Thrust	Machine Hip Thrust	\N	machine-hip-thrust	\N	\N	f	1	40	1	0	f	f	f	Published	2025-04-25 14:04:42.185329	2025-04-25 14:04:42.185329
1499	Machine Hack Squat	Machine Hack Squat	\N	machine-hack-squat	\N	\N	f	1	80	1	0	f	f	f	Published	2025-04-25 14:04:42.186088	2025-04-25 14:04:42.186088
1500	Machine Horizontal Sissy Leg Press	Machine Horizontal Sissy Leg Press	\N	machine-horizontal-sissy-leg-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.186886	2025-04-25 14:04:42.186886
1501	Machine Horizontal Leg Press Calf Jump	Machine Horizontal Leg Press Calf Jump	\N	machine-horizontal-leg-press-calf-jump	\N	\N	f	1	10	1	0	f	f	f	Published	2025-04-25 14:04:42.187648	2025-04-25 14:04:42.187648
1502	Machine Horizontal Leg Press Calf Raise	Machine Horizontal Leg Press Calf Raise	\N	machine-horizontal-leg-press-calf-raise	\N	\N	f	1	10	1	0	f	f	f	Published	2025-04-25 14:04:42.188162	2025-04-25 14:04:42.188162
1503	Machine Horizontal Leg Press	Machine Horizontal Leg Press	\N	machine-horizontal-leg-press	\N	\N	f	1	50	1	0	f	f	f	Published	2025-04-25 14:04:42.188739	2025-04-25 14:04:42.188739
1504	Machine Hip Adduction	Machine Hip Adduction	\N	machine-hip-adduction	\N	\N	f	1	30	1	0	f	f	f	Published	2025-04-25 14:04:42.189331	2025-04-25 14:04:42.189331
1505	Machine Hip Abduction	Machine Hip Abduction	\N	machine-hip-abduction	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.189892	2025-04-25 14:04:42.189892
1506	Machine Reverse Fly	Machine Reverse Fly	\N	machine-reverse-fly	\N	\N	f	1	80	1	0	f	f	f	Published	2025-04-25 14:04:42.190455	2025-04-25 14:04:42.190455
1507	Machine Pec Fly	Machine Pec Fly	\N	machine-pec-fly	\N	\N	f	1	495	1	0	f	f	f	Published	2025-04-25 14:04:42.190954	2025-04-25 14:04:42.190954
1508	Machine Overhand Overhead Press	Machine Overhand Overhead Press	\N	machine-overhand-overhead-press	\N	\N	f	1	80	1	0	f	f	f	Published	2025-04-25 14:04:42.191536	2025-04-25 14:04:42.191536
1509	Machine Neutral Overhead Press	Machine Neutral Overhead Press	\N	machine-neutral-overhead-press	\N	\N	f	1	50	1	0	f	f	f	Published	2025-04-25 14:04:42.192045	2025-04-25 14:04:42.192045
1510	Machine Hip And Glute Adduction	Machine Hip And Glute Adduction	\N	machine-hip-and-glute-adduction	\N	\N	f	1	5	1	0	f	f	f	Published	2025-04-25 14:04:42.192552	2025-04-25 14:04:42.192552
1511	Machine Hip And Glute Abduction	Machine Hip And Glute Abduction	\N	machine-hip-and-glute-abduction	\N	\N	f	1	10	1	0	f	f	f	Published	2025-04-25 14:04:42.193585	2025-04-25 14:04:42.193585
1512	Machine Hip And Glute Kickback	Machine Hip And Glute Kickback	\N	machine-hip-and-glute-kickback	\N	\N	f	1	5	1	0	f	f	f	Published	2025-04-25 14:04:42.194164	2025-04-25 14:04:42.194164
1513	Machine Chest Press	Machine Chest Press	\N	machine-chest-press	\N	\N	f	1	50	1	0	f	f	f	Published	2025-04-25 14:04:42.194658	2025-04-25 14:04:42.194658
1514	Machine Underhand Row	Machine Underhand Row	\N	machine-underhand-row	\N	\N	f	1	75	1	0	f	f	f	Published	2025-04-25 14:04:42.195261	2025-04-25 14:04:42.195261
1515	Machine Neutral Row	Machine Neutral Row	\N	machine-neutral-row	\N	\N	f	1	75	1	0	f	f	f	Published	2025-04-25 14:04:42.195978	2025-04-25 14:04:42.195978
1516	Machine Overhand Row	Machine Overhand Row	\N	machine-overhand-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.196665	2025-04-25 14:04:42.196665
1517	Stretcher	Stretcher	\N	stretcher	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.197201	2025-04-25 14:04:42.197201
1519	Dumbbell Box Squat	Dumbbell Box Squat	\N	dumbbell-box-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.197716	2025-04-25 14:04:42.197716
1520	Kettlebell Box Squat	Kettlebell Box Squat	\N	kettlebell-box-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.198413	2025-04-25 14:04:42.198413
1521	Bodyweight Box Squat	Bodyweight Box Squat	\N	bodyweight-box-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.199119	2025-04-25 14:04:42.199119
1522	Alternating Heel Touch	Alternating Heel Touch	\N	alternating-heel-touch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.199681	2025-04-25 14:04:42.199681
1523	Bodyweight Donkey Calf Raise	Bodyweight Donkey Calf Raise	\N	bodyweight-donkey-calf-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.200478	2025-04-25 14:04:42.200478
1524	Barbell Kickstand Squat	Barbell Kickstand Squat	\N	barbell-kickstand-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.20108	2025-04-25 14:04:42.20108
1525	Dumbbell Kickstand Squat	Dumbbell Kickstand Squat	\N	dumbbell-kickstand-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.201742	2025-04-25 14:04:42.201742
1526	Kettlebell Kickstand Squat	Kettlebell Kickstand Squat	\N	kettlebell-kickstand-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.202366	2025-04-25 14:04:42.202366
1527	Bodyweight Kickstand Squat	Bodyweight Kickstand Squat	\N	bodyweight-kickstand-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.202991	2025-04-25 14:04:42.202991
1528	Reverse Crunch Kick Up	Reverse Crunch Kick Up	\N	reverse-crunch-kick-up	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.203856	2025-04-25 14:04:42.203856
1529	Eccentric Dragonflag	Eccentric Dragonflag	\N	eccentric-dragonflag	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.20439	2025-04-25 14:04:42.20439
1530	Dumbbell Incline Curl	Dumbbell Incline Curl	\N	dumbbell-incline-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.204878	2025-04-25 14:04:42.204878
1532	Laying Alternating Leg Raise	Laying Alternating Leg Raise	\N	laying-alternating-leg-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.205371	2025-04-25 14:04:42.205371
1533	Laying Bent Leg Raise	Laying Bent Leg Raise	\N	laying-bent-leg-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.205933	2025-04-25 14:04:42.205933
1534	Alternating Bent Leg Raise	Alternating Bent Leg Raise	\N	alternating-bent-leg-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.206566	2025-04-25 14:04:42.206566
1535	Scissor Kick	Scissor Kick	\N	scissor-kick	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.207054	2025-04-25 14:04:42.207054
1536	Sideways Scissor Kick	Sideways Scissor Kick	\N	sideways-scissor-kick	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.207763	2025-04-25 14:04:42.207763
1537	Windshield Wiper	Windshield Wiper	\N	windshield-wiper	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.208259	2025-04-25 14:04:42.208259
1538	Reach And Catch	Reach And Catch	\N	reach-and-catch	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.208758	2025-04-25 14:04:42.208758
1539	Oblique Crunch	Oblique Crunch	\N	oblique-crunch	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.209414	2025-04-25 14:04:42.209414
1540	Oblique Jackknife	Oblique Jackknife	\N	oblique-jackknife	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.209925	2025-04-25 14:04:42.209925
1541	Frog Crunch	Frog Crunch	\N	frog-crunch	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.210462	2025-04-25 14:04:42.210462
1542	Frog Sit Up	Frog Sit Up	\N	frog-sit-up	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.210935	2025-04-25 14:04:42.210935
1543	Elbow Plank Mountain Climber	Elbow Plank Mountain Climber	\N	elbow-plank-mountain-climber	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.211496	2025-04-25 14:04:42.211496
1544	Slow Tempo Mountain Climber	Slow Tempo Mountain Climber	\N	slow-tempo-mountain-climber	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.212015	2025-04-25 14:04:42.212015
1545	Switch Jump Mountain Climber	Switch Jump Mountain Climber	\N	switch-jump-mountain-climber	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.212813	2025-04-25 14:04:42.212813
1546	Slalom Mountain Climber	Slalom Mountain Climber	\N	slalom-mountain-climber	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.213291	2025-04-25 14:04:42.213291
1547	Jumping Mountain Climber	Jumping Mountain Climber	\N	jumping-mountain-climber	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.213772	2025-04-25 14:04:42.213772
1548	Ring Standing Pushup	Ring Standing Pushup	\N	ring-standing-pushup	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.214261	2025-04-25 14:04:42.214261
1549	Ring Row	Ring Row	\N	ring-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.215299	2025-04-25 14:04:42.215299
1550	Ring Standing Archer Pushup	Ring Standing Archer Pushup	\N	ring-standing-archer-pushup	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.215886	2025-04-25 14:04:42.215886
1551	Ring Standing Chest Fly	Ring Standing Chest Fly	\N	ring-standing-chest-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.216607	2025-04-25 14:04:42.216607
1552	Ring Rear Delt Fly	Ring Rear Delt Fly	\N	ring-rear-delt-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.217103	2025-04-25 14:04:42.217103
1553	Ring Skullcrusher	Ring Skullcrusher	\N	ring-skullcrusher	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.217708	2025-04-25 14:04:42.217708
1554	Ring Standing Roll Out	Ring Standing Roll Out	\N	ring-standing-roll-out	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.218214	2025-04-25 14:04:42.218214
1555	Ring Curl	Ring Curl	\N	ring-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.21876	2025-04-25 14:04:42.21876
1557	Bodyweight Assisted Pull Up	Bodyweight Assisted Pull Up	\N	bodyweight-assisted-pull-up	\N	\N	f	1	2	2	0	f	f	f	Published	2025-04-25 14:04:42.21926	2025-04-25 14:04:42.21926
1558	Bodyweight Assisted Chin Up	Bodyweight Assisted Chin Up	\N	bodyweight-assisted-chin-up	\N	\N	f	1	2	2	0	f	f	f	Published	2025-04-25 14:04:42.219848	2025-04-25 14:04:42.219848
1559	Bodyweight Assisted Gironda Chin Up	Bodyweight Assisted Gironda Chin Up	\N	bodyweight-assisted-gironda-chin-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.220819	2025-04-25 14:04:42.220819
1560	Bodyweight Assisted Mixed Grip Pullup	Bodyweight Assisted Mixed Grip Pullup	\N	bodyweight-assisted-mixed-grip-pullup	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.22144	2025-04-25 14:04:42.22144
1561	Bodyweight Hanging L Sit	Bodyweight Hanging L Sit	\N	bodyweight-hanging-l-sit	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.222182	2025-04-25 14:04:42.222182
1562	Bodyweight Hanging Knee Tuck	Bodyweight Hanging Knee Tuck	\N	bodyweight-hanging-knee-tuck	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.222787	2025-04-25 14:04:42.222787
1563	Bodyweight Underhand Inverted Row	Bodyweight Underhand Inverted Row	\N	bodyweight-underhand-inverted-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.22337	2025-04-25 14:04:42.22337
1564	Bodyweight Overhand Inverted Row	Bodyweight Overhand Inverted Row	\N	bodyweight-overhand-inverted-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.224086	2025-04-25 14:04:42.224086
1565	Bodyweight Standing Inverted Row	Bodyweight Standing Inverted Row	\N	bodyweight-standing-inverted-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.224893	2025-04-25 14:04:42.224893
1566	Bodyweight Concentration Curl	Bodyweight Concentration Curl	\N	bodyweight-concentration-curl	\N	\N	f	1	2	2	0	f	f	f	Published	2025-04-25 14:04:42.225586	2025-04-25 14:04:42.225586
1567	Bodyweight Inverted Curl	Bodyweight Inverted Curl	\N	bodyweight-inverted-curl	\N	\N	f	1	2	2	0	f	f	f	Published	2025-04-25 14:04:42.22635	2025-04-25 14:04:42.22635
1568	Bodyweight Close Grip Inverted Curl	Bodyweight Close Grip Inverted Curl	\N	bodyweight-close-grip-inverted-curl	\N	\N	f	1	2	2	0	f	f	f	Published	2025-04-25 14:04:42.226804	2025-04-25 14:04:42.226804
1569	Stationary Bike	Stationary Bike	\N	stationary-bike	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.227316	2025-04-25 14:04:42.227316
1570	Bodyweight Butterfly Stretch	Bodyweight Butterfly Stretch	\N	bodyweight-butterfly-stretch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.227955	2025-04-25 14:04:42.227955
1571	Bodyweight Ninety Ninety Hip Stretch	Bodyweight Ninety Ninety Hip Stretch	\N	bodyweight-ninety-ninety-hip-stretch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.228683	2025-04-25 14:04:42.228683
1572	Bodyweight Thoracic Spine Rotation	Bodyweight Thoracic Spine Rotation	\N	bodyweight-thoracic-spine-rotation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.229301	2025-04-25 14:04:42.229301
1573	Bodyweight Single Leg Balance Stable	Bodyweight Single Leg Balance Stable	\N	bodyweight-single-leg-balance-stable	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.229797	2025-04-25 14:04:42.229797
1574	Kettlebell Incline Guillotine Bench Press	Kettlebell Incline Guillotine Bench Press	\N	kettlebell-incline-guillotine-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.230275	2025-04-25 14:04:42.230275
1576	Kettlebell Swing Lunge	Kettlebell Swing Lunge	\N	kettlebell-swing-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.230896	2025-04-25 14:04:42.230896
1577	Kettlebell Alternating Curtsy Lunge	Kettlebell Alternating Curtsy Lunge	\N	kettlebell-alternating-curtsy-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.231452	2025-04-25 14:04:42.231452
1578	Kettlebell Alternating Lateral Lunge	Kettlebell Alternating Lateral Lunge	\N	kettlebell-alternating-lateral-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.232513	2025-04-25 14:04:42.232513
1579	Kettlebell Alternating Reverse Lunge	Kettlebell Alternating Reverse Lunge	\N	kettlebell-alternating-reverse-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.233278	2025-04-25 14:04:42.233278
1580	Kettlebell Alternating Forward Lunge	Kettlebell Alternating Forward Lunge	\N	kettlebell-alternating-forward-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.234063	2025-04-25 14:04:42.234063
1581	Dumbbell Swing Lunge	Dumbbell Swing Lunge	\N	dumbbell-swing-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.234709	2025-04-25 14:04:42.234709
1582	Dumbbell Goblet Alternating Curtsy Lunge	Dumbbell Goblet Alternating Curtsy Lunge	\N	dumbbell-goblet-alternating-curtsy-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.23529	2025-04-25 14:04:42.23529
1583	Dumbbell Alternating Lateral Lunge	Dumbbell Alternating Lateral Lunge	\N	dumbbell-alternating-lateral-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.236334	2025-04-25 14:04:42.236334
1584	Dumbbell Alternating Reverse Lunge	Dumbbell Alternating Reverse Lunge	\N	dumbbell-alternating-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.237239	2025-04-25 14:04:42.237239
1585	Dumbbell Alternating Forward Lunge	Dumbbell Alternating Forward Lunge	\N	dumbbell-alternating-forward-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.237876	2025-04-25 14:04:42.237876
1586	Weighted Plank Up Down	Weighted Plank Up Down	\N	weighted-plank-up-down	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.238481	2025-04-25 14:04:42.238481
1587	Bodyweight Hands Up Push Ups	Bodyweight Hands Up Push Ups	\N	bodyweight-hands-up-push-ups	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.238978	2025-04-25 14:04:42.238978
1588	Weighted Push Ups	Weighted Push Ups	\N	weighted-push-ups	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.239931	2025-04-25 14:04:42.239931
1589	Weighted Diamond Push Ups	Weighted Diamond Push Ups	\N	weighted-diamond-push-ups	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.240528	2025-04-25 14:04:42.240528
1590	Weighted Knee Push Ups	Weighted Knee Push Ups	\N	weighted-knee-push-ups	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.241205	2025-04-25 14:04:42.241205
1591	Bodyweight Single Leg Squat	Bodyweight Single Leg Squat	\N	bodyweight-single-leg-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.241902	2025-04-25 14:04:42.241902
1592	Bodyweight Plank Jack	Bodyweight Plank Jack	\N	bodyweight-plank-jack	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.24252	2025-04-25 14:04:42.24252
1593	Bodyweight Plank Arm Lift	Bodyweight Plank Arm Lift	\N	bodyweight-plank-arm-lift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.243061	2025-04-25 14:04:42.243061
1594	Inchworm	Inchworm	\N	inchworm	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.243663	2025-04-25 14:04:42.243663
1595	Weighted Wall Sit	Weighted Wall Sit	\N	weighted-wall-sit	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.244307	2025-04-25 14:04:42.244307
1596	Wall Sit	Wall Sit	\N	wall-sit	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.244806	2025-04-25 14:04:42.244806
1597	Jump Rope	Jump Rope	\N	jump-rope	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.245436	2025-04-25 14:04:42.245436
1598	Wall Angels	Wall Angels	\N	wall-angels	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.246155	2025-04-25 14:04:42.246155
1599	Butt Kick	Butt Kick	\N	butt-kick	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.246943	2025-04-25 14:04:42.246943
1600	Ankle Circle	Ankle Circle	\N	ankle-circle	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.247463	2025-04-25 14:04:42.247463
1601	Kettlebell Assisted Bulgarian Split Squat	Kettlebell Assisted Bulgarian Split Squat	\N	kettlebell-assisted-bulgarian-split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.247938	2025-04-25 14:04:42.247938
1602	Dumbbell Assisted Bulgarian Split Squat	Dumbbell Assisted Bulgarian Split Squat	\N	dumbbell-assisted-bulgarian-split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.248512	2025-04-25 14:04:42.248512
1603	Plate Weighted Inverted Row	Plate Weighted Inverted Row	\N	plate-weighted-inverted-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.24914	2025-04-25 14:04:42.24914
1604	Dumbbell Weighted Pull Ups	Dumbbell Weighted Pull Ups	\N	dumbbell-weighted-pull-ups	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.249916	2025-04-25 14:04:42.249916
1605	Dumbbell Weighted Chin Ups	Dumbbell Weighted Chin Ups	\N	dumbbell-weighted-chin-ups	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.250514	2025-04-25 14:04:42.250514
1606	Weighted Pull Ups	Weighted Pull Ups	\N	weighted-pull-ups	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.251246	2025-04-25 14:04:42.251246
1607	Weighted Chin Ups	Weighted Chin Ups	\N	weighted-chin-ups	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.251972	2025-04-25 14:04:42.251972
1608	Dumbbell Weighted Dip	Dumbbell Weighted Dip	\N	dumbbell-weighted-dip	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.252663	2025-04-25 14:04:42.252663
1609	Plate Weighted Dip	Plate Weighted Dip	\N	plate-weighted-dip	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.253436	2025-04-25 14:04:42.253436
1610	Dumbbell Internal Rotation	Dumbbell Internal Rotation	\N	dumbbell-internal-rotation	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.25445	2025-04-25 14:04:42.25445
1611	Dumbbell External Rotation	Dumbbell External Rotation	\N	dumbbell-external-rotation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.254938	2025-04-25 14:04:42.254938
1612	Leg Raised Push Up	Leg Raised Push Up	\N	leg-raised-push-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.255502	2025-04-25 14:04:42.255502
1613	Kettlebell Kneeling Bottoms Up Overhead Press	Kettlebell Kneeling Bottoms Up Overhead Press	\N	kettlebell-kneeling-bottoms-up-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.256039	2025-04-25 14:04:42.256039
1614	Dumbbell Half Kneeling Single Arm Overhead Press	Dumbbell Half Kneeling Single Arm Overhead Press	\N	dumbbell-half-kneeling-single-arm-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.256863	2025-04-25 14:04:42.256863
1615	Dumbbell Half Kneeling Overhead Press	Dumbbell Half Kneeling Overhead Press	\N	dumbbell-half-kneeling-overhead-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.257923	2025-04-25 14:04:42.257923
1616	Barbell Reverse Grip Bench Press	Barbell Reverse Grip Bench Press	\N	barbell-reverse-grip-bench-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.25874	2025-04-25 14:04:42.25874
1617	Dumbbell Reverse Grip Bench Press	Dumbbell Reverse Grip Bench Press	\N	dumbbell-reverse-grip-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.259437	2025-04-25 14:04:42.259437
1618	Dumbbell Head On Bench Rear Delt Fly	Dumbbell Head On Bench Rear Delt Fly	\N	dumbbell-head-on-bench-rear-delt-fly	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.260077	2025-04-25 14:04:42.260077
1619	Dumbbell Incline Front Raise	Dumbbell Incline Front Raise	\N	dumbbell-incline-front-raise	\N	\N	f	1	50	1	0	f	f	f	Published	2025-04-25 14:04:42.260934	2025-04-25 14:04:42.260934
1620	Barbell Seated Full Front Raise	Barbell Seated Full Front Raise	\N	barbell-seated-full-front-raise	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.261669	2025-04-25 14:04:42.261669
1621	Dumbbell Seated Single Arm Arnold Press	Dumbbell Seated Single Arm Arnold Press	\N	dumbbell-seated-single-arm-arnold-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.262483	2025-04-25 14:04:42.262483
1622	Dumbbell Seated Y Press	Dumbbell Seated Y Press	\N	dumbbell-seated-y-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.263461	2025-04-25 14:04:42.263461
1623	Dumbbell Alternating Rear Delt Fly	Dumbbell Alternating Rear Delt Fly	\N	dumbbell-alternating-rear-delt-fly	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.264303	2025-04-25 14:04:42.264303
1624	Band Upright Row	Band Upright Row	\N	band-upright-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.265042	2025-04-25 14:04:42.265042
1625	Barbell Suitcase Carry	Barbell Suitcase Carry	\N	barbell-suitcase-carry	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.266014	2025-04-25 14:04:42.266014
1626	Dumbbell Farmer Walk	Dumbbell Farmer Walk	\N	dumbbell-farmer-walk	\N	\N	f	1	50	1	0	f	f	f	Published	2025-04-25 14:04:42.267019	2025-04-25 14:04:42.267019
1627	Barbell Sumo Pause Deadlift	Barbell Sumo Pause Deadlift	\N	barbell-sumo-pause-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.267547	2025-04-25 14:04:42.267547
1628	Dumbbell Y Press	Dumbbell Y Press	\N	dumbbell-y-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.268195	2025-04-25 14:04:42.268195
1629	Dumbbell Cuban Press	Dumbbell Cuban Press	\N	dumbbell-cuban-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.269083	2025-04-25 14:04:42.269083
1630	Barbell Jefferson Deadlift	Barbell Jefferson Deadlift	\N	barbell-jefferson-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.269683	2025-04-25 14:04:42.269683
1631	Barbell Conventional Pause Deadlift	Barbell Conventional Pause Deadlift	\N	barbell-conventional-pause-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.270378	2025-04-25 14:04:42.270378
1632	Barbell Block Conventional Deadlift	Barbell Block Conventional Deadlift	\N	barbell-block-conventional-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.271091	2025-04-25 14:04:42.271091
1633	Barbell Deficit Conventional Deadlift	Barbell Deficit Conventional Deadlift	\N	barbell-deficit-conventional-deadlift	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.271723	2025-04-25 14:04:42.271723
1634	Barbell Bradford Press	Barbell Bradford Press	\N	barbell-bradford-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.272347	2025-04-25 14:04:42.272347
1635	Dumbbell Six Way Lateral Raise	Dumbbell Six Way Lateral Raise	\N	dumbbell-six-way-lateral-raise	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.273115	2025-04-25 14:04:42.273115
1636	Dumbbell Full Lateral Raise	Dumbbell Full Lateral Raise	\N	dumbbell-full-lateral-raise	\N	\N	f	1	75	1	0	f	f	f	Published	2025-04-25 14:04:42.273919	2025-04-25 14:04:42.273919
1637	Barbell Full Front Raise	Barbell Full Front Raise	\N	barbell-full-front-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.274709	2025-04-25 14:04:42.274709
1638	Dumbbell Full Front Raise	Dumbbell Full Front Raise	\N	dumbbell-full-front-raise	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.27547	2025-04-25 14:04:42.27547
1639	Plate Weighted Dead Hang	Plate Weighted Dead Hang	\N	plate-weighted-dead-hang	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.276249	2025-04-25 14:04:42.276249
1640	L Sit Chin Up	L Sit Chin Up	\N	l-sit-chin-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.276731	2025-04-25 14:04:42.276731
1641	L Sit Pull Up	L Sit Pull Up	\N	l-sit-pull-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.277452	2025-04-25 14:04:42.277452
1642	Hanging L Sit	Hanging L Sit	\N	hanging-l-sit	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.278046	2025-04-25 14:04:42.278046
1643	Dead Hang	Dead Hang	\N	dead-hang	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.278756	2025-04-25 14:04:42.278756
1644	Medicine Ball Dead Bug	Medicine Ball Dead Bug	\N	medicine-ball-dead-bug	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.279411	2025-04-25 14:04:42.279411
1645	Band Standing Chest Press	Band Standing Chest Press	\N	band-standing-chest-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.280063	2025-04-25 14:04:42.280063
1646	Band Tricep Kickback	Band Tricep Kickback	\N	band-tricep-kickback	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.280743	2025-04-25 14:04:42.280743
1647	Band Squat Hold Single Arm Row	Band Squat Hold Single Arm Row	\N	band-squat-hold-single-arm-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.281434	2025-04-25 14:04:42.281434
1648	Band Squat Hold Row	Band Squat Hold Row	\N	band-squat-hold-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.282243	2025-04-25 14:04:42.282243
1649	Band Goblet Squat	Band Goblet Squat	\N	band-goblet-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.283061	2025-04-25 14:04:42.283061
1650	Band Single Arm Pulldown	Band Single Arm Pulldown	\N	band-single-arm-pulldown	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.283746	2025-04-25 14:04:42.283746
1651	Band Single Arm Row	Band Single Arm Row	\N	band-single-arm-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.284394	2025-04-25 14:04:42.284394
1652	Machine Plate Loaded Crunch	Machine Plate Loaded Crunch	\N	machine-plate-loaded-crunch	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.284972	2025-04-25 14:04:42.284972
1653	Machine Plate Loaded Incline Chest Press	Machine Plate Loaded Incline Chest Press	\N	machine-plate-loaded-incline-chest-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.285575	2025-04-25 14:04:42.285575
1654	Machine Plate Loaded Decline Chest Press	Machine Plate Loaded Decline Chest Press	\N	machine-plate-loaded-decline-chest-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.286168	2025-04-25 14:04:42.286168
1655	Machine Plate Loaded Low Incline Bench Press	Machine Plate Loaded Low Incline Bench Press	\N	machine-plate-loaded-low-incline-bench-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.286772	2025-04-25 14:04:42.286772
1656	Machine Bent Arm Pec Fly	Machine Bent Arm Pec Fly	\N	machine-bent-arm-pec-fly	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.287433	2025-04-25 14:04:42.287433
1657	Machine Plate Loaded Front Military Press	Machine Plate Loaded Front Military Press	\N	machine-front-military-press	\N	\N	f	1	5	1	0	f	f	f	Published	2025-04-25 14:04:42.288317	2025-04-25 14:04:42.288317
1658	Machine Chest Supported T Bar Row	Machine Chest Supported T Bar Row	\N	machine-chest-supported-t-bar-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.288836	2025-04-25 14:04:42.288836
1659	Machine Plate Loaded Pulldown	Machine Plate Loaded Pulldown	\N	machine-plate-loaded-pulldown	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.289338	2025-04-25 14:04:42.289338
1660	Machine Rear Deltoid Row	Machine Rear Deltoid Row	\N	machine-rear-deltoid-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.289969	2025-04-25 14:04:42.289969
1661	Machine Pullover	Machine Pullover	\N	machine-pullover	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.290564	2025-04-25 14:04:42.290564
1662	Machine Seated Shrug	Machine Seated Shrug	\N	machine-seated-shrug	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.291086	2025-04-25 14:04:42.291086
1663	Machine Standing Shrug	Machine Standing Shrug	\N	machine-standing-shrug	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.291589	2025-04-25 14:04:42.291589
1664	Machine Back Extension	Machine Back Extension	\N	machine-back-extension	\N	\N	f	1	1	5	0	f	f	f	Published	2025-04-25 14:04:42.292102	2025-04-25 14:04:42.292102
1665	Machine Standing Lateral Raise	Machine Standing Lateral Raise	\N	machine-standing-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.292649	2025-04-25 14:04:42.292649
1666	Machine Standing Plate Loaded Preacher Curl	Machine Standing Plate Loaded Preacher Curl	\N	machine-standing-plate-loaded-preacher-curl	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.293171	2025-04-25 14:04:42.293171
1667	Machine Seated Plate Loaded Preacher Curl	Machine Seated Plate Loaded Preacher Curl	\N	machine-seated-plate-loaded-preacher-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.293693	2025-04-25 14:04:42.293693
1668	Machine Overhead Tricep Extension	Machine Overhead Tricep Extension	\N	machine-overhead-tricep-extension	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.294175	2025-04-25 14:04:42.294175
1669	Machine Reverse Hyperextension	Machine Reverse Hyperextension	\N	machine-reverse-hyperextension	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.294642	2025-04-25 14:04:42.294642
1670	Machine Pendulum Squat	Machine Pendulum Squat	\N	machine-pendulum-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.295611	2025-04-25 14:04:42.295611
1671	Machine Single Leg Leg Press	Machine Single Leg Leg Press	\N	machine-single-leg-leg-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.296527	2025-04-25 14:04:42.296527
1672	Machine Squat Press	Machine Squat Press	\N	machine-squat-press	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.297183	2025-04-25 14:04:42.297183
1673	Machine Donkey Calf Raise	Machine Donkey Calf Raise	\N	machine-donkey-calf-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.297783	2025-04-25 14:04:42.297783
1674	Machine 45 Degree Calf Raise	Machine 45 Degree Calf Raise	\N	machine-45-degree-calf-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.29828	2025-04-25 14:04:42.29828
1675	Machine Plate Loaded Hip Thrust	Machine Plate Loaded Hip Thrust	\N	machine-plate-loaded-hip-thrust	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.298868	2025-04-25 14:04:42.298868
1676	Machine Plate Loaded Low Row	Machine Plate Loaded Low Row	\N	machine-plate-loaded-low-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.299456	2025-04-25 14:04:42.299456
1677	Machine Plate Loaded Seal Row	Machine Plate Loaded Seal Row	\N	machine-plate-loaded-seal-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.300051	2025-04-25 14:04:42.300051
1678	Machine Plate Loaded T Bar Row	Machine Plate Loaded T Bar Row	\N	machine-plate-loaded-t-bar-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.300543	2025-04-25 14:04:42.300543
1679	Machine Plate Loaded Row	Machine Plate Loaded Row	\N	machine-plate-loaded-row	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.301101	2025-04-25 14:04:42.301101
1680	Machine Bicep Curl	Machine Bicep Curl	\N	machine-bicep-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.301707	2025-04-25 14:04:42.301707
1681	Machine Tricep Pushdown	Machine Tricep Pushdown	\N	machine-tricep-pushdown	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.302237	2025-04-25 14:04:42.302237
1682	Machine Dips	Machine Dips	\N	machine-dips	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.302707	2025-04-25 14:04:42.302707
1683	Machine Standing Hamstring Curl	Machine Standing Hamstring Curl	\N	machine-standing-hamstring-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.303616	2025-04-25 14:04:42.303616
1684	Machine Plate Loaded Kneeling Hamstring Curl	Machine Plate Loaded Kneeling Hamstring Curl	\N	machine-plate-loaded-kneeling-hamstring-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.30443	2025-04-25 14:04:42.30443
1685	Horizontal Hack Squat	Horizontal Hack Squat	\N	horizontal-hack-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.305023	2025-04-25 14:04:42.305023
1686	Machine Crunch	Machine Crunch	\N	machine-crunch	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.305622	2025-04-25 14:04:42.305622
1687	Machine Glute Kickback	Machine Glute Kickback	\N	machine-glute-kickback	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.306125	2025-04-25 14:04:42.306125
1688	Machine Plate Loaded Calf Raise	Machine Plate Loaded Calf Raise	\N	machine-plate-loaded-calf-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.306739	2025-04-25 14:04:42.306739
1689	Gluteator	Gluteator	\N	gluteator	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.307402	2025-04-25 14:04:42.307402
1690	Vertical Leg Press	Vertical Leg Press	\N	vertical-leg-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.307904	2025-04-25 14:04:42.307904
1691	Machine Belt Squat	Machine Belt Squat	\N	machine-belt-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.30849	2025-04-25 14:04:42.30849
1693	Machine Plate Loaded Leg Extension	Machine Plate Loaded Leg Extension	\N	machine-plate-loaded-leg-extension	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.309127	2025-04-25 14:04:42.309127
1694	Machine Seated Hamstring Curl	Machine Seated Hamstring Curl	\N	machine-seated-hamstring-curl	\N	\N	f	1	5	1	0	f	f	f	Published	2025-04-25 14:04:42.309673	2025-04-25 14:04:42.309673
1695	Dumbbell Laying Curl	Dumbbell Laying Curl	\N	dumbbell-laying-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.310457	2025-04-25 14:04:42.310457
1697	Cable High Bayesian Curl	Cable High Bayesian Curl	\N	cable-high-bayesian-curl	\N	\N	f	1	5	1	0	f	f	f	Published	2025-04-25 14:04:42.311694	2025-04-25 14:04:42.311694
1698	Cable Single Arm Overhead Tricep Extension	Cable Single Arm Overhead Tricep Extension	\N	cable-single-arm-overhead-tricep-extension	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.312671	2025-04-25 14:04:42.312671
1699	Cable Overhead Tricep Press	Cable Overhead Tricep Press	\N	cable-overhead-tricep-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.313254	2025-04-25 14:04:42.313254
1700	Cable Internal Rotation	Cable Internal Rotation	\N	cable-internal-rotation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.313853	2025-04-25 14:04:42.313853
1701	Cable External Rotation	Cable External Rotation	\N	cable-external-rotation	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.31433	2025-04-25 14:04:42.31433
1702	Cable Kayak Row	Cable Kayak Row	\N	cable-kayak-row	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.314836	2025-04-25 14:04:42.314836
1703	Cable Belt Calf Raise	Cable Belt Calf Raise	\N	cable-belt-calf-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.315327	2025-04-25 14:04:42.315327
1704	Cable Belt Split Squat	Cable Belt Split Squat	\N	cable-belt-split-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.31585	2025-04-25 14:04:42.31585
1705	Cable Belt Squat	Cable Belt Squat	\N	cable-belt-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.316403	2025-04-25 14:04:42.316403
1706	Barbell Muscle Snatch	Barbell Muscle Snatch	\N	barbell-muscle-snatch	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.317184	2025-04-25 14:04:42.317184
1707	Barbell High Pull	Barbell High Pull	\N	barbell-high-pull	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.318148	2025-04-25 14:04:42.318148
1708	Barbell Split Jerk	Barbell Split Jerk	\N	barbell-split-jerk	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.318976	2025-04-25 14:04:42.318976
1709	Barbell Power Snatch	Barbell Power Snatch	\N	barbell-power-snatch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.319457	2025-04-25 14:04:42.319457
1710	Barbell Clean And Jerk	Barbell Clean And Jerk	\N	barbell-clean-and-jerk	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.320358	2025-04-25 14:04:42.320358
1711	Barbell Snatch	Barbell Snatch	\N	barbell-snatch	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.321112	2025-04-25 14:04:42.321112
1712	Barbell Snatch Grip High Pull	Barbell Snatch Grip High Pull	\N	barbell-snatch-grip-high-pull	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.321774	2025-04-25 14:04:42.321774
1713	Kettlebell Front Rack Deficit Reverse Lunge	Kettlebell Front Rack Deficit Reverse Lunge	\N	kettlebell-front-rack-deficit-reverse-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.322513	2025-04-25 14:04:42.322513
1714	Dumbbell Front Rack Deficit Reverse Lunge	Dumbbell Front Rack Deficit Reverse Lunge	\N	dumbbell-front-rack-deficit-reverse-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.323163	2025-04-25 14:04:42.323163
1715	Dumbbell Goblet Deficit Reverse Lunge	Dumbbell Goblet Deficit Reverse Lunge	\N	dumbbell-goblet-deficit-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.32375	2025-04-25 14:04:42.32375
1716	Plate Goblet Deficit Reverse Lunge	Plate Goblet Deficit Reverse Lunge	\N	plate-goblet-deficit-reverse-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.324527	2025-04-25 14:04:42.324527
1717	Kettlebell Staggered Waiters Bow	Kettlebell Staggered Waiters Bow	\N	kettlebell-staggered-waiters-bow	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.325157	2025-04-25 14:04:42.325157
1718	Kettlebell Deficit Reverse Lunge	Kettlebell Deficit Reverse Lunge	\N	kettlebell-deficit-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.326025	2025-04-25 14:04:42.326025
1719	Dumbbell Deficit Reverse Lunge	Dumbbell Deficit Reverse Lunge	\N	dumbbell-deficit-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.326623	2025-04-25 14:04:42.326623
1720	Bodyweight Deficit Reverse Lunge	Bodyweight Deficit Reverse Lunge	\N	bodyweight-deficit-reverse-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.327203	2025-04-25 14:04:42.327203
1721	Dumbbell Laying Incline Lateral Raise	Dumbbell Laying Incline Lateral Raise	\N	dumbbell-laying-incline-lateral-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.327741	2025-04-25 14:04:42.327741
1722	Bodyweight Staggered Waiters Bow	Bodyweight Staggered Waiters Bow	\N	bodyweight-staggered-waiters-bow	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.328657	2025-04-25 14:04:42.328657
1723	Plate Staggered Waiters Bow	Plate Staggered Waiters Bow	\N	plate-staggered-waiters-bow	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.329798	2025-04-25 14:04:42.329798
1724	Dumbbell Staggered Waiters Bow	Dumbbell Staggered Waiters Bow	\N	dumbbell-staggered-waiters-bow	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.330508	2025-04-25 14:04:42.330508
1725	Bodyweight Waiters Bow	Bodyweight Waiters Bow	\N	bodyweight-waiters-bow	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.331214	2025-04-25 14:04:42.331214
1726	Dumbbell Waiters Bow	Dumbbell Waiters Bow	\N	dumbbell-waiters-bow	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.332	2025-04-25 14:04:42.332
1727	Kettlebell Waiters Bow	Kettlebell Waiters Bow	\N	kettlebell-waiters-bow	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.332688	2025-04-25 14:04:42.332688
1728	Plate Waiters Bow	Plate Waiters Bow	\N	plate-waiters-bow	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.333349	2025-04-25 14:04:42.333349
1729	Dumbbell Tricep Guillotine Press	Dumbbell Tricep Guillotine Press	\N	dumbbell-tricep-guillotine-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.334143	2025-04-25 14:04:42.334143
1730	Barbell Tricep Guillotine Press	Barbell Tricep Guillotine Press	\N	barbell-tricep-guillotine-press	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.334724	2025-04-25 14:04:42.334724
1731	Dumbbell Bench Braced Single Arm Overhead Tricep Extension	Dumbbell Bench Braced Single Arm Overhead Tricep Extension	\N	dumbbell-bench-braced-single-arm-overhead-tricep-extension	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.335214	2025-04-25 14:04:42.335214
1732	Dumbbell Bench Braced Rolling Curl	Dumbbell Bench Braced Rolling Curl	\N	dumbbell-bench-braced-rolling-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.335685	2025-04-25 14:04:42.335685
1733	Dumbbell Single Arm Bench Braced Reverse Flat Curl	Dumbbell Single Arm Bench Braced Reverse Flat Curl	\N	dumbbell-single-arm-bench-braced-reverse-flat-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.336343	2025-04-25 14:04:42.336343
1734	Dumbbell Bench Braced Reverse Flat Curl	Dumbbell Bench Braced Reverse Flat Curl	\N	dumbbell-bench-braced-reverse-flat-curl	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.336945	2025-04-25 14:04:42.336945
1735	Dumbbell Single Arm Bench Braced Hammer Flat Curl	Dumbbell Single Arm Bench Braced Hammer Flat Curl	\N	dumbbell-single-arm-bench-braced-hammer-flat-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.33763	2025-04-25 14:04:42.33763
1736	Dumbbell Bench Braced Hammer Flat Curl	Dumbbell Bench Braced Hammer Flat Curl	\N	dumbbell-bench-braced-hammer-flat-curl	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.338164	2025-04-25 14:04:42.338164
1737	Dumbbell Single Arm Bench Braced Flat Curl	Dumbbell Single Arm Bench Braced Flat Curl	\N	dumbbell-single-arm-bench-braced-flat-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.338653	2025-04-25 14:04:42.338653
1738	Dumbbell Bench Braced Flat Curl	Dumbbell Bench Braced Flat Curl	\N	dumbbell-bench-braced-flat-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.339137	2025-04-25 14:04:42.339137
1739	Dumbbell Single Arm Bench Braced Reverse Incline Curl	Dumbbell Single Arm Bench Braced Reverse Incline Curl	\N	dumbbell-single-arm-bench-braced-reverse-incline-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.339682	2025-04-25 14:04:42.339682
1740	Dumbbell Bench Braced Reverse Incline Curl	Dumbbell Bench Braced Reverse Incline Curl	\N	dumbbell-bench-braced-reverse-incline-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.340299	2025-04-25 14:04:42.340299
1741	Dumbbell Single Arm Bench Braced Hammer Incline Curl	Dumbbell Single Arm Bench Braced Hammer Incline Curl	\N	dumbbell-single-arm-bench-braced-hammer-incline-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.340943	2025-04-25 14:04:42.340943
1742	Dumbbell Bench Braced Hammer Incline Curl	Dumbbell Bench Braced Hammer Incline Curl	\N	dumbbell-bench-braced-hammer-incline-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.341441	2025-04-25 14:04:42.341441
1743	Dumbbell Single Arm Bench Braced Incline Curl	Dumbbell Single Arm Bench Braced Incline Curl	\N	dumbbell-single-arm-bench-braced-incline-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.341928	2025-04-25 14:04:42.341928
1744	Dumbbell Bench Braced Incline Curl	Dumbbell Bench Braced Incline Curl	\N	dumbbell-bench-braced-incline-curl	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.342423	2025-04-25 14:04:42.342423
1745	Kettlebell Quad Stomp	Kettlebell Quad Stomp	\N	kettlebell-quad-stomp	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.343274	2025-04-25 14:04:42.343274
1746	Barbell Quad Stomp	Barbell Quad Stomp	\N	barbell-quad-stomp	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.344088	2025-04-25 14:04:42.344088
1747	Dumbbell Quad Stomp	Dumbbell Quad Stomp	\N	dumbbell-quad-stomp	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.344771	2025-04-25 14:04:42.344771
1748	Bodyweight Quad Stomp	Bodyweight Quad Stomp	\N	bodyweight-quad-stomp	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.345589	2025-04-25 14:04:42.345589
1749	Dumbbell Single Leg Calf Raise	Dumbbell Single Leg Calf Raise	\N	dumbbell-single-leg-calf-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.3464	2025-04-25 14:04:42.3464
1750	Bodyweight Single Leg Calf Raise	Bodyweight Single Leg Calf Raise	\N	bodyweight-single-leg-calf-raise	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.346994	2025-04-25 14:04:42.346994
1751	Barbell Zercher Deficit Lunge	Barbell Zercher Deficit Lunge	\N	barbell-zercher-deficit-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.347609	2025-04-25 14:04:42.347609
1752	Barbell Front Rack Deficit Lunge	Barbell Front Rack Deficit Lunge	\N	barbell-front-rack-deficit-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.348317	2025-04-25 14:04:42.348317
1754	Barbell Curtsy Deficit Lunge	Barbell Curtsy Deficit Lunge	\N	barbell-curtsy-deficit-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.348903	2025-04-25 14:04:42.348903
1755	Dumbbell Curtsy Deficit Lunge	Dumbbell Curtsy Deficit Lunge	\N	dumbbell-curtsy-deficit-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.349616	2025-04-25 14:04:42.349616
1756	Dumbbell Front Rack Curtsy Deficit Lunge	Dumbbell Front Rack Curtsy Deficit Lunge	\N	dumbbell-front-rack-curtsy-deficit-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.350278	2025-04-25 14:04:42.350278
1757	Dumbbell Goblet Curtsy Deficit Lunge	Dumbbell Goblet Curtsy Deficit Lunge	\N	dumbbell-goblet-curtsy-deficit-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.351094	2025-04-25 14:04:42.351094
1758	Stability Ball V Up Pass	Stability Ball V Up Pass	\N	stability-ball-v-up-pass	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.351681	2025-04-25 14:04:42.351681
1759	Bodyweight Curtsy Deficit Lunge	Bodyweight Curtsy Deficit Lunge	\N	bodyweight-curtsy-deficit-lunge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.352188	2025-04-25 14:04:42.352188
1760	Barbell Deficit Lunge	Barbell Deficit Lunge	\N	barbell-deficit-lunge	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.352789	2025-04-25 14:04:42.352789
1761	Stability Ball Sissy Squat	Stability Ball Sissy Squat	\N	stability-ball-sissy-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.353417	2025-04-25 14:04:42.353417
1762	Stability Ball Single Leg Hip Thrust	Stability Ball Single Leg Hip Thrust	\N	stability-ball-single-leg-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.35413	2025-04-25 14:04:42.35413
1763	Stability Ball Windshield Wiper	Stability Ball Windshield Wiper	\N	stability-ball-windshield-wiper	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.354742	2025-04-25 14:04:42.354742
1764	Stability Ball Straight Leg Glute Bridge	Stability Ball Straight Leg Glute Bridge	\N	stability-ball-straight-leg-glute-bridge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.35526	2025-04-25 14:04:42.35526
1765	Stability Ball Hamstring Curl	Stability Ball Hamstring Curl	\N	stability-ball-hamstring-curl	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.355747	2025-04-25 14:04:42.355747
1766	Stability Ball Glute Bridge	Stability Ball Glute Bridge	\N	stability-ball-glute-bridge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.356225	2025-04-25 14:04:42.356225
1767	Stability Ball Hip Thrust	Stability Ball Hip Thrust	\N	stability-ball-hip-thrust	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.356693	2025-04-25 14:04:42.356693
1768	Stability Ball Side Crunch	Stability Ball Side Crunch	\N	stability-ball-side-crunch	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.357273	2025-04-25 14:04:42.357273
1769	Stability Ball Atomic Push Up	Stability Ball Atomic Push Up	\N	stability-ball-atomic-push-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.357779	2025-04-25 14:04:42.357779
1770	Stability Ball Push Up	Stability Ball Push Up	\N	stability-ball-push-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.358832	2025-04-25 14:04:42.358832
1771	Stability Ball Pike	Stability Ball Pike	\N	stability-ball-pike	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.359502	2025-04-25 14:04:42.359502
1772	Stability Ball Knee Tuck	Stability Ball Knee Tuck	\N	stability-ball-knee-tuck	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.360246	2025-04-25 14:04:42.360246
1773	Stability Ball Reverse Hyperextension	Stability Ball Reverse Hyperextension	\N	stability-ball-reverse-hyperextension	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.360813	2025-04-25 14:04:42.360813
1774	Stability Ball Stir The Pot	Stability Ball Stir The Pot	\N	stability-ball-stir-the-pot	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.361482	2025-04-25 14:04:42.361482
1775	Bodyweight Stability Ball Crunch	Bodyweight Stability Ball Crunch	\N	bodyweight-stability-ball-crunch	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.362101	2025-04-25 14:04:42.362101
1777	Bodyweight Stability Ball Hyperextension	Bodyweight Stability Ball Hyperextension	\N	bodyweight-stability-ball-hyperextension	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.362675	2025-04-25 14:04:42.362675
1778	Stability Ball Goblet Wall Squat	Stability Ball Goblet Wall Squat	\N	stability-ball-goblet-wall-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.363439	2025-04-25 14:04:42.363439
1779	Dumbbell Stability Ball Wall Squat	Dumbbell Stability Ball Wall Squat	\N	dumbbell-stability-ball-wall-squat	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.364043	2025-04-25 14:04:42.364043
1780	Dumbbell Front Rack Stability Ball Wall Squat	Dumbbell Front Rack Stability Ball Wall Squat	\N	dumbbell-front-rack-stability-ball-wall-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.364626	2025-04-25 14:04:42.364626
1781	Stability Ball Wall Squat	Stability Ball Wall Squat	\N	stability-ball-wall-squat	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.365673	2025-04-25 14:04:42.365673
1782	Dumbbell Half Kneeling Romanian Deadlift	Dumbbell Half Kneeling Romanian Deadlift	\N	dumbbell-half-kneeling-romanian-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.366364	2025-04-25 14:04:42.366364
1783	Dumbbell Half Kneeling Goblet Romanian Deadlift	Dumbbell Half Kneeling Goblet Romanian Deadlift	\N	dumbbell-half-kneeling-goblet-romanian-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.36707	2025-04-25 14:04:42.36707
1784	Kettlebell Half Kneeling Romanian Deadlift	Kettlebell Half Kneeling Romanian Deadlift	\N	kettlebell-half-kneeling-romanian-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.367827	2025-04-25 14:04:42.367827
1785	Kettlebell Half Kneeling Goblet Romanian Deadlift	Kettlebell Half Kneeling Goblet Romanian Deadlift	\N	kettlebell-half-kneeling-goblet-romanian-deadlift	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.368485	2025-04-25 14:04:42.368485
1786	Half Kneeling Hip Hinge	Half Kneeling Hip Hinge	\N	half-kneeling-hip-hinge	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.369212	2025-04-25 14:04:42.369212
1787	Gironda Chin Up	Gironda Chin Up	\N	gironda-chin-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.36999	2025-04-25 14:04:42.36999
1788	Ring Chin Up	Ring Chin Up	\N	ring-chin-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.370898	2025-04-25 14:04:42.370898
1789	Ring Twisting Chin Up	Ring Twisting Chin Up	\N	ring-twisting-chin-up	\N	\N	f	1	2	1	0	f	f	f	Published	2025-04-25 14:04:42.371633	2025-04-25 14:04:42.371633
1790	Ring Pull Up	Ring Pull Up	\N	ring-pull-up	\N	\N	f	1	1	1	0	f	f	f	Published	2025-04-25 14:04:42.372495	2025-04-25 14:04:42.372495
\.


--
-- Data for Name: exercise_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.exercise_categories (exercise_id, category_id, is_primary) FROM stdin;
1	1	t
2	2	t
3	2	t
4	1	t
5	3	t
7	2	t
8	1	t
9	4	t
10	4	t
11	2	t
12	2	t
16	2	t
17	4	t
18	3	t
20	2	t
21	2	t
22	9	t
23	4	t
24	4	t
25	3	t
26	2	t
27	1	t
28	4	t
29	3	t
30	1	t
31	1	t
32	2	t
33	4	t
34	4	t
35	3	t
37	3	t
39	1	t
40	4	t
42	3	t
43	4	t
44	1	t
45	2	t
46	2	t
47	2	t
48	1	t
50	3	t
52	1	t
54	4	t
55	1	t
56	7	t
57	7	t
58	7	t
59	7	t
60	7	t
61	7	t
62	7	t
63	7	t
64	7	t
65	7	t
66	7	t
67	7	t
68	7	t
69	7	t
70	7	t
71	7	t
72	7	t
73	7	t
74	7	t
75	7	t
76	7	t
77	7	t
78	7	t
79	7	t
80	7	t
81	7	t
82	7	t
83	7	t
84	7	t
85	7	t
86	7	t
87	7	t
88	7	t
89	7	t
90	7	t
91	7	t
92	7	t
93	7	t
94	7	t
95	7	t
96	7	t
97	7	t
98	7	t
99	7	t
100	7	t
101	7	t
102	7	t
103	7	t
104	7	t
105	7	t
119	8	t
119	105	f
120	8	t
120	105	f
121	8	t
121	105	f
122	8	t
122	105	f
123	8	t
123	105	f
124	8	t
125	8	t
126	8	t
127	8	t
128	8	t
129	8	t
130	8	t
131	8	t
132	8	t
133	8	t
134	8	t
135	8	t
136	8	t
137	8	t
138	8	t
139	8	t
140	8	t
141	8	t
142	8	t
143	8	t
144	8	t
145	8	t
146	8	t
147	8	t
148	8	t
149	8	t
150	8	t
151	8	t
152	8	t
153	8	t
154	8	t
155	8	t
156	8	t
157	8	t
158	8	t
159	8	t
160	8	t
161	8	t
162	8	t
163	8	t
164	8	t
165	8	t
166	8	t
167	8	t
168	8	t
182	3	t
183	3	t
184	3	t
186	3	t
187	3	t
188	3	t
189	3	t
190	3	t
191	3	t
192	3	t
193	3	t
194	3	t
195	3	t
196	3	t
197	3	t
198	3	t
201	3	t
202	3	t
204	3	t
206	3	t
207	3	t
208	3	t
209	1	t
210	1	t
211	1	t
212	1	t
213	1	t
215	1	t
216	9	t
217	9	t
218	9	t
219	9	t
220	9	t
221	9	t
222	9	t
223	9	t
224	9	t
225	9	t
226	9	t
227	9	t
228	9	t
229	9	t
230	9	t
231	9	t
232	9	t
233	9	t
234	9	t
235	9	t
236	9	t
237	9	t
238	9	t
239	9	t
240	9	t
241	9	t
242	9	t
243	9	t
244	9	t
245	9	t
246	9	t
247	9	t
248	9	t
249	9	t
250	9	t
251	10	t
252	10	t
253	10	t
254	10	t
255	10	t
256	10	t
257	10	t
258	10	t
259	10	t
260	10	t
261	10	t
262	10	t
263	10	t
264	10	t
265	10	t
266	10	t
267	10	t
268	10	t
269	10	t
270	10	t
271	10	t
272	10	t
273	10	t
274	10	t
275	10	t
276	10	t
277	10	t
278	10	t
279	10	t
280	10	t
281	2	t
282	2	t
283	2	t
284	2	t
285	2	t
286	2	t
287	2	t
288	2	t
289	2	t
290	2	t
291	2	t
292	2	t
293	2	t
294	2	t
295	1	t
296	1	t
297	1	t
298	1	t
299	1	t
300	1	t
301	1	t
303	1	t
304	1	t
305	1	t
306	1	t
307	1	t
308	1	t
309	1	t
310	1	t
311	1	t
313	1	t
314	1	t
315	1	t
316	2	t
317	2	t
319	2	t
321	3	t
322	3	t
323	3	t
324	3	t
325	3	t
326	3	t
327	3	t
328	3	t
329	1	t
330	1	t
332	1	t
333	1	t
334	1	t
335	1	t
336	1	t
337	1	t
338	1	t
339	1	t
340	1	t
341	1	t
342	1	t
343	1	t
344	1	t
345	1	t
346	1	t
347	1	t
348	1	t
349	3	t
350	1	t
351	1	t
352	1	t
353	1	t
354	1	t
355	1	t
356	1	t
357	1	t
358	1	t
359	1	t
360	1	t
361	1	t
362	1	t
363	1	t
364	1	t
365	1	t
366	1	t
367	3	t
369	3	t
370	3	t
371	3	t
372	3	t
373	3	t
374	3	t
375	2	t
376	2	t
377	2	t
379	2	t
380	2	t
381	2	t
382	2	t
384	2	t
385	2	t
386	2	t
387	2	t
388	2	t
389	2	t
390	2	t
391	2	t
392	2	t
393	2	t
394	2	t
395	2	t
396	2	t
397	2	t
398	2	t
399	2	t
400	2	t
401	2	t
402	2	t
403	2	t
404	2	t
405	2	t
406	2	t
407	2	t
408	2	t
409	2	t
410	2	t
411	2	t
412	2	t
413	2	t
414	2	t
415	2	t
416	2	t
417	2	t
418	2	t
419	2	t
420	2	t
421	2	t
422	2	t
423	2	t
424	2	t
425	2	t
426	2	t
427	2	t
428	2	t
429	2	t
430	2	t
431	2	t
432	2	t
433	2	t
434	2	t
435	2	t
436	2	t
437	2	t
438	2	t
439	2	t
440	2	t
441	2	t
443	2	t
444	2	t
445	2	t
446	2	t
447	2	t
448	2	t
449	2	t
450	2	t
451	2	t
452	2	t
453	2	t
454	2	t
455	2	t
456	2	t
457	2	t
458	2	t
459	2	t
460	2	t
461	2	t
462	2	t
463	2	t
464	2	t
465	2	t
466	2	t
467	2	t
468	2	t
469	2	t
470	2	t
471	2	t
472	2	t
473	2	t
474	3	t
475	3	t
476	11	t
477	11	t
478	11	t
479	11	t
480	11	t
481	11	t
483	11	t
484	11	t
485	11	t
486	11	t
488	11	t
489	11	t
490	11	t
491	11	t
492	11	t
493	11	t
494	11	t
495	11	t
496	11	t
497	11	t
498	10	t
499	10	t
500	10	t
501	10	t
502	10	t
503	10	t
504	11	t
505	10	t
506	11	t
507	11	t
508	10	t
509	10	t
510	10	t
511	11	t
512	10	t
513	11	t
514	10	t
515	10	t
516	10	t
517	11	t
518	10	t
519	11	t
520	10	t
521	11	t
522	10	t
523	10	t
524	11	t
525	10	t
526	10	t
527	10	t
528	11	t
529	11	t
530	11	t
531	11	t
532	11	t
533	11	t
534	11	t
535	11	t
536	11	t
537	11	t
538	11	t
539	11	t
540	11	t
541	11	t
542	11	t
543	11	t
544	11	t
545	11	t
546	11	t
547	11	t
548	11	t
549	11	t
550	11	t
551	11	t
552	1	t
553	1	t
554	1	t
555	1	t
556	3	t
557	3	t
558	3	t
560	3	t
561	2	t
562	2	t
563	2	t
564	2	t
565	2	t
566	2	t
567	2	t
568	2	t
569	2	t
570	2	t
571	2	t
572	2	t
573	2	t
574	2	t
575	2	t
576	2	t
577	2	t
578	2	t
579	2	t
580	2	t
581	2	t
582	2	t
583	2	t
584	2	t
585	12	t
586	12	t
587	12	t
588	12	t
589	12	t
590	12	t
591	12	t
592	12	t
593	12	t
594	12	t
595	12	t
596	12	t
597	12	t
598	12	t
599	12	t
600	12	t
601	12	t
602	12	t
603	12	t
604	12	t
605	12	t
606	12	t
607	12	t
608	12	t
609	12	t
610	12	t
611	12	t
612	12	t
613	12	t
614	12	t
615	12	t
617	13	t
618	13	t
619	13	t
620	13	t
621	13	t
622	13	t
623	13	t
624	13	t
625	13	t
626	13	t
627	13	t
629	13	t
630	13	t
631	13	t
632	13	t
633	13	t
634	13	t
635	13	t
636	13	t
637	13	t
638	13	t
639	13	t
641	13	t
642	13	t
643	13	t
644	13	t
645	13	t
646	13	t
647	13	t
648	13	t
649	13	t
650	13	t
651	13	t
652	13	t
653	13	t
655	13	t
656	13	t
657	13	t
658	13	t
659	13	t
660	13	t
661	13	t
662	13	t
663	13	t
664	13	t
665	13	t
666	13	t
668	13	t
670	13	t
671	13	t
672	13	t
673	13	t
674	13	t
675	13	t
676	13	t
677	13	t
678	13	t
680	13	t
681	13	t
682	13	t
683	13	t
684	13	t
685	13	t
686	13	t
687	13	t
688	13	t
689	13	t
690	13	t
691	13	t
692	13	t
693	13	t
694	13	t
695	13	t
696	13	t
700	3	t
701	3	t
702	3	t
703	3	t
704	27	t
705	4	t
707	6	t
708	6	t
709	6	t
710	6	t
711	6	t
712	6	t
713	6	t
714	6	t
715	6	t
716	6	t
717	6	t
718	6	t
719	6	t
720	6	t
721	6	t
722	6	t
723	6	t
724	6	t
725	6	t
726	6	t
727	6	t
728	6	t
729	6	t
730	6	t
731	6	t
732	6	t
733	6	t
734	6	t
735	6	t
736	6	t
743	1	t
744	1	t
745	1	t
746	1	t
747	1	t
748	1	t
749	1	t
750	1	t
751	1	t
752	1	t
753	1	t
754	1	t
755	1	t
756	1	t
757	1	t
758	1	t
759	1	t
760	1	t
761	1	t
762	1	t
763	1	t
764	1	t
765	1	t
766	1	t
767	1	t
768	1	t
769	1	t
770	1	t
771	1	t
772	1	t
773	1	t
774	1	t
775	1	t
776	1	t
777	1	t
778	1	t
779	1	t
780	1	t
781	1	t
782	1	t
783	1	t
784	1	t
785	1	t
786	1	t
787	1	t
789	6	t
791	24	t
792	24	t
793	24	t
794	24	t
795	24	t
796	24	t
797	24	t
798	24	t
799	24	t
800	24	t
801	24	t
802	24	t
803	24	t
804	24	t
805	24	t
806	24	t
807	24	t
808	24	t
809	24	t
810	24	t
811	24	t
812	24	t
813	24	t
814	24	t
815	24	t
816	24	t
817	24	t
818	24	t
819	24	t
820	24	t
821	24	t
824	4	t
825	4	t
826	4	t
828	4	t
829	4	t
833	26	t
834	26	t
835	26	t
836	26	t
837	26	t
838	26	t
839	26	t
840	26	t
841	26	t
842	26	t
843	26	t
844	26	t
845	26	t
846	26	t
847	26	t
848	26	t
849	26	t
850	26	t
851	26	t
852	26	t
853	26	t
854	26	t
855	26	t
856	26	t
857	26	t
859	3	t
860	2	t
861	13	t
862	4	t
863	4	t
866	3	t
867	3	t
869	3	t
870	3	t
871	3	t
873	3	t
879	11	t
880	11	t
882	3	t
885	2	t
886	7	t
887	7	t
888	7	t
889	2	t
890	2	t
892	1	t
893	2	t
894	7	t
895	7	t
896	7	t
897	7	t
898	7	t
899	7	t
900	7	t
901	7	t
902	7	t
903	7	t
904	7	t
905	7	t
906	7	t
907	7	t
908	7	t
909	7	t
910	7	t
911	7	t
912	7	t
913	7	t
914	7	t
915	7	t
916	7	t
917	7	t
918	7	t
919	7	t
920	7	t
921	7	t
922	7	t
923	7	t
924	7	t
925	7	t
926	7	t
927	7	t
928	7	t
929	7	t
930	7	t
931	7	t
932	7	t
933	7	t
934	85	t
935	85	t
936	85	t
937	85	t
938	85	t
939	85	t
940	85	t
941	85	t
942	85	t
943	85	t
944	85	t
945	85	t
946	85	t
947	85	t
948	85	t
949	85	t
950	85	t
951	85	t
952	85	t
953	85	t
954	85	t
955	85	t
956	85	t
957	85	t
958	85	t
959	85	t
960	85	t
961	85	t
962	85	t
963	85	t
964	85	t
965	85	t
966	85	t
967	85	t
968	9	t
969	9	t
970	9	t
971	9	t
972	9	t
973	9	t
974	9	t
975	9	t
976	9	t
977	9	t
978	9	t
979	9	t
980	9	t
981	9	t
983	9	t
984	9	t
985	9	t
986	9	t
987	9	t
988	9	t
989	9	t
990	9	t
991	9	t
992	9	t
993	9	t
994	9	t
995	9	t
996	9	t
997	9	t
998	9	t
999	9	t
1000	9	t
1001	9	t
1003	9	t
1004	9	t
1005	9	t
1006	9	t
1007	9	t
1008	9	t
1010	9	t
1011	9	t
1012	9	t
1015	9	t
1016	9	t
1017	9	t
1018	9	t
1020	9	t
1021	9	t
1022	9	t
1023	9	t
1024	9	t
1025	9	t
1026	9	t
1027	9	t
1028	9	t
1031	9	t
1032	9	t
1033	9	t
1035	9	t
1036	9	t
1037	9	t
1038	9	t
1039	9	t
1041	9	t
1042	9	t
1043	9	t
1044	9	t
1046	9	t
1049	9	t
1050	9	t
1054	1	t
1055	1	t
1056	1	t
1057	1	t
1058	1	t
1059	1	t
1060	2	t
1061	2	t
1062	2	t
1063	2	t
1064	2	t
1065	2	t
1066	2	t
1068	2	t
1069	7	t
1070	7	t
1071	7	t
1072	1	t
1073	1	t
1074	1	t
1075	3	t
1076	3	t
1077	3	t
1078	3	t
1079	3	t
1080	3	t
1081	3	t
1082	3	t
1083	3	t
1084	3	t
1085	3	t
1086	3	t
1087	3	t
1088	27	t
1089	27	t
1090	27	t
1091	27	t
1092	27	t
1093	27	t
1094	27	t
1095	27	t
1096	27	t
1097	27	t
1098	27	t
1099	27	t
1100	27	t
1101	27	t
1102	27	t
1102	3	f
1103	27	t
1104	27	t
1105	27	t
1106	27	t
1107	27	t
1108	27	t
1109	27	t
1110	27	t
1111	27	t
1112	27	t
1113	27	t
1114	27	t
1115	27	t
1116	27	t
1117	27	t
1118	27	t
1119	27	t
1120	27	t
1121	27	t
1122	27	t
1124	27	t
1125	2	t
1126	2	t
1127	2	t
1128	4	t
1129	4	t
1130	8	t
1131	8	t
1132	3	t
1133	3	t
1134	3	t
1136	3	t
1137	3	t
1138	3	t
1139	3	t
1140	3	t
1141	3	t
1142	3	t
1143	3	t
1144	3	t
1145	3	t
1146	3	t
1147	3	t
1149	3	t
1153	7	t
1154	7	t
1155	7	t
1156	7	t
1157	7	t
1158	7	t
1159	7	t
1160	7	t
1161	7	t
1162	7	t
1163	7	t
1164	7	t
1166	7	t
1171	7	t
1172	7	t
1173	7	t
1174	7	t
1175	7	t
1176	7	t
1177	7	t
1178	7	t
1179	7	t
1181	2	t
1182	3	t
1183	1	t
1184	2	t
1186	2	t
1187	2	t
1188	2	t
1189	2	t
1190	2	t
1191	2	t
1192	2	t
1193	2	t
1198	4	t
1199	27	t
1200	27	t
1201	27	t
1202	105	t
1203	105	t
1203	8	f
1204	105	t
1204	3	f
1204	8	f
1207	105	t
1207	8	f
1208	105	t
1208	8	f
1209	2	t
1211	105	t
1211	3	f
1212	105	t
1214	105	t
1214	8	f
1215	105	t
1216	105	t
1216	7	f
1217	105	t
1218	105	t
1218	7	f
1219	105	t
1219	3	f
1220	105	t
1221	105	t
1222	105	t
1222	3	f
1222	8	f
1223	105	t
1223	3	f
1224	105	t
1224	3	f
1225	2	t
1226	105	t
1226	8	f
1227	105	t
1227	8	f
1228	105	t
1229	105	t
1229	2	f
1230	105	t
1230	24	f
1231	105	t
1231	8	f
1232	105	t
1233	105	t
1234	105	t
1244	105	t
1245	105	t
1246	105	t
1250	105	t
1251	105	t
1252	105	t
1255	3	t
1258	105	t
1258	3	f
1260	105	t
1260	3	f
1262	105	t
1262	8	f
1264	105	t
1264	3	f
1265	105	t
1265	3	f
1268	105	t
1269	10	t
1270	105	t
1270	3	f
1277	105	t
1278	105	t
1278	7	f
1279	105	t
1280	105	t
1282	105	t
1283	105	t
1284	105	t
1285	105	t
1285	10	f
1286	105	t
1286	10	f
1287	105	t
1288	105	t
1289	105	t
1290	105	t
1290	2	f
1291	105	t
1292	105	t
1293	105	t
1294	105	t
1295	105	t
1298	105	t
1299	105	t
1300	105	t
1300	3	f
1301	105	t
1301	3	f
1303	105	t
1304	105	t
1304	10	f
1305	105	t
1305	10	f
1306	105	t
1306	10	f
1308	105	t
1309	105	t
1310	105	t
1311	105	t
1311	8	f
1312	105	t
1312	8	f
1313	105	t
1314	105	t
1315	105	t
1316	105	t
1316	3	f
1317	105	t
1317	10	f
1318	105	t
1318	3	f
1319	105	t
1319	8	f
1320	105	t
1320	8	f
1321	105	t
1321	3	f
1322	105	t
1322	3	f
1323	105	t
1323	3	f
1324	105	t
1325	105	t
1325	3	f
1329	105	t
1329	8	f
1330	105	t
1330	8	f
1331	105	t
1331	10	f
1332	105	t
1332	8	f
1333	3	t
1334	105	t
1334	8	f
1335	105	t
1335	8	f
1337	105	t
1337	8	f
1338	105	t
1340	3	t
1341	105	t
1342	3	t
1343	105	t
1344	3	t
1344	105	f
1345	3	t
1345	105	f
1346	105	t
1347	3	t
1347	105	f
1348	105	t
1349	3	t
1350	3	t
1351	3	t
1352	3	t
1353	105	t
1354	105	t
1354	8	f
1355	105	t
1355	8	f
1356	105	t
1356	8	f
1357	105	t
1357	8	f
1358	105	t
1359	105	t
1359	8	f
1361	105	t
1363	3	t
1364	105	t
1365	3	t
1366	105	t
1366	3	f
1366	8	f
1367	105	t
1367	3	f
1367	8	f
1369	105	t
1369	3	f
1369	8	f
1371	105	t
1372	7	t
1373	7	t
1375	105	t
1375	10	f
1376	105	t
1378	105	t
1378	2	f
1379	105	t
1379	3	f
1380	105	t
1380	3	f
1381	3	t
1382	105	t
1383	105	t
1383	3	f
1384	3	t
1385	105	t
1385	3	f
1386	105	t
1386	3	f
1387	105	t
1387	3	f
1388	105	t
1388	8	f
1389	105	t
1389	3	f
1390	105	t
1390	8	f
1391	105	t
1392	105	t
1393	105	t
1394	105	t
1394	8	f
1395	105	t
1396	105	t
1396	8	f
1397	105	t
1397	3	f
1397	8	f
1398	105	t
1398	3	f
1398	8	f
1399	105	t
1399	3	f
1400	105	t
1400	8	f
1401	105	t
1402	105	t
1402	3	f
1403	105	t
1403	3	f
1404	105	t
1404	3	f
1405	105	t
1405	3	f
1406	105	t
1407	105	t
1407	10	f
1408	105	t
1408	3	f
1409	105	t
1409	3	f
1410	105	t
1410	3	f
1411	105	t
1411	3	f
1412	105	t
1413	105	t
1414	105	t
1414	3	f
1415	105	t
1415	10	f
1416	105	t
1416	8	f
1417	105	t
1418	105	t
1418	10	f
1419	105	t
1420	105	t
1421	105	t
1421	8	f
1422	105	t
1423	105	t
1424	105	t
1425	105	t
1425	8	f
1426	105	t
1427	105	t
1428	105	t
1429	105	t
1430	105	t
1431	105	t
1432	105	t
1432	3	f
1433	105	t
1433	3	f
1434	105	t
1434	8	f
1435	105	t
1435	3	f
1436	105	t
1436	3	f
1437	105	t
1437	3	f
1438	105	t
1439	105	t
1439	3	f
1440	105	t
1440	10	f
1441	105	t
1441	3	f
1442	105	t
1442	3	f
1444	105	t
1444	3	f
1445	105	t
1445	3	f
1447	105	t
1447	3	f
1448	105	t
1448	3	f
1449	105	t
1449	3	f
1450	105	t
1450	3	f
1451	105	t
1452	105	t
1452	3	f
1453	105	t
1454	105	t
1454	8	f
1455	105	t
1456	105	t
1457	105	t
1458	105	t
1459	105	t
1460	105	t
1461	105	t
1462	105	t
1463	105	t
1463	3	f
1464	105	t
1465	105	t
1465	3	f
1466	105	t
1467	105	t
1468	105	t
1469	105	t
1469	10	f
1470	105	t
1470	8	f
1471	105	t
1471	3	f
1472	105	t
1472	8	f
1473	105	t
1473	8	f
1474	105	t
1474	8	f
1475	105	t
1475	8	f
1476	105	t
1477	105	t
1478	105	t
1479	105	t
1479	8	f
1480	105	t
1480	10	f
1481	105	t
1482	105	t
1483	105	t
1483	10	f
1484	105	t
1485	105	t
1486	27	t
1487	27	t
1489	2	t
1490	1	t
1491	1	t
1492	4	t
1493	3	t
1494	4	t
1495	4	t
1496	4	t
1497	4	t
1498	4	t
1499	4	t
1500	4	t
1501	4	t
1502	4	t
1503	4	t
1504	4	t
1505	4	t
1506	4	t
1507	4	t
1508	4	t
1509	4	t
1510	4	t
1511	4	t
1512	4	t
1513	4	t
1514	4	t
1515	4	t
1516	4	t
1517	4	t
1519	2	t
1520	7	t
1521	3	t
1522	3	t
1523	3	t
1524	1	t
1525	2	t
1526	7	t
1527	3	t
1528	3	t
1529	3	t
1530	2	t
1532	3	t
1533	3	t
1534	3	t
1535	3	t
1536	3	t
1537	3	t
1538	3	t
1539	3	t
1540	3	t
1541	3	t
1542	3	t
1543	3	t
1544	3	t
1545	3	t
1546	3	t
1547	3	t
1548	3	t
1549	3	t
1550	3	t
1551	3	t
1552	3	t
1553	3	t
1554	3	t
1555	3	t
1557	3	t
1558	3	t
1559	3	t
1560	3	t
1561	3	t
1562	3	t
1563	3	t
1564	3	t
1565	3	t
1566	3	t
1567	3	t
1568	3	t
1569	27	t
1570	3	t
1570	8	f
1571	3	t
1572	3	t
1573	3	t
1574	7	t
1576	7	t
1577	7	t
1578	7	t
1579	7	t
1580	7	t
1581	2	t
1582	2	t
1583	2	t
1584	2	t
1585	2	t
1586	11	t
1587	3	t
1588	11	t
1589	11	t
1590	11	t
1591	3	t
1592	3	t
1593	3	t
1594	105	t
1595	11	t
1596	3	t
1597	27	t
1598	105	t
1599	27	t
1600	105	t
1601	7	t
1602	2	t
1603	11	t
1604	2	t
1605	2	t
1606	11	t
1607	11	t
1608	2	t
1609	11	t
1610	2	t
1611	2	t
1611	105	f
1612	3	t
1613	7	t
1614	2	t
1615	2	t
1616	1	t
1617	2	t
1618	2	t
1619	2	t
1620	1	t
1621	2	t
1622	2	t
1623	2	t
1624	10	t
1625	1	t
1626	2	t
1627	1	t
1628	2	t
1629	2	t
1630	1	t
1631	1	t
1632	1	t
1633	1	t
1634	1	t
1635	2	t
1636	2	t
1637	1	t
1638	2	t
1639	11	t
1640	3	t
1641	3	t
1642	3	t
1643	3	t
1644	6	t
1645	10	t
1646	10	t
1647	10	t
1648	10	t
1649	10	t
1650	10	t
1651	10	t
1652	4	t
1653	4	t
1654	4	t
1655	4	t
1656	4	t
1657	4	t
1658	4	t
1659	4	t
1660	4	t
1661	4	t
1662	4	t
1663	4	t
1664	4	t
1665	4	t
1666	4	t
1667	4	t
1668	4	t
1669	4	t
1670	4	t
1671	4	t
1672	4	t
1673	4	t
1674	4	t
1675	4	t
1676	4	t
1677	4	t
1678	4	t
1679	4	t
1680	4	t
1681	4	t
1682	4	t
1683	4	t
1684	4	t
1685	4	t
1686	4	t
1687	4	t
1688	4	t
1689	4	t
1690	4	t
1691	4	t
1693	4	t
1694	4	t
1695	2	t
1696	27	t
1697	9	t
1698	9	t
1699	9	t
1700	9	t
1701	9	t
1702	9	t
1703	9	t
1704	9	t
1705	9	t
1706	1	t
1707	1	t
1708	1	t
1709	1	t
1710	1	t
1711	1	t
1712	1	t
1713	7	t
1714	2	t
1715	2	t
1716	11	t
1717	7	t
1718	7	t
1719	2	t
1720	3	t
1721	2	t
1722	3	t
1723	11	t
1724	2	t
1725	3	t
1726	2	t
1727	7	t
1728	11	t
1729	2	t
1730	1	t
1731	2	t
1732	2	t
1733	2	t
1734	2	t
1735	2	t
1736	2	t
1737	2	t
1738	2	t
1739	2	t
1740	2	t
1741	2	t
1742	2	t
1743	2	t
1744	2	t
1745	7	t
1746	1	t
1747	2	t
1748	3	t
1749	2	t
1750	3	t
1751	1	t
1752	1	t
1754	1	t
1755	2	t
1756	2	t
1757	2	t
1758	3	t
1759	3	t
1760	1	t
1761	3	t
1762	3	t
1763	3	t
1764	3	t
1765	3	t
1766	3	t
1767	3	t
1768	3	t
1769	3	t
1770	3	t
1771	3	t
1772	3	t
1773	3	t
1774	3	t
1775	3	t
1777	3	t
1778	2	t
1779	2	t
1780	2	t
1781	3	t
1782	2	t
1783	2	t
1784	7	t
1785	7	t
1786	3	t
1787	3	t
1788	3	t
1789	3	t
1790	3	t
\.


--
-- Data for Name: forces; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forces (id, name, url_name, name_en_us, description, description_en_us) FROM stdin;
4	Pull	musclewiki.com/force	Pull	Pulling towards the body.	Pulling towards the body.
3	Push	musclewiki.com/force	Push	Pushing away from the body.	Pushing away from the body.
1					
5	Hold	musclewiki.com/force	Hold	Exercise which resists movement as opposed to inducing.	Exercise which resists movement as opposed to inducing.
\.


--
-- Data for Name: mechanics; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mechanics (id, name, url_name, name_en_us, description, description_en_us) FROM stdin;
4	Isolation	musclewiki.com/force	Isolation	Exercise trains a single body part.	Exercise trains a single body part.
3	Compound	musclewiki.com/mechanic	Compound	Exercise trains multiple body parts.	Exercise trains multiple body parts.
1					
\.


--
-- Data for Name: exercise_details; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.exercise_details (exercise_id, difficulty_id, force_id, mechanic_id) FROM stdin;
\.


--
-- Data for Name: exercise_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.exercise_images (id, exercise_id, gender, order_num, og_image, original_video, unbranded_video, branded_video) FROM stdin;
\.


--
-- Data for Name: muscles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.muscles (id, name, name_en_us, scientific_name, url_name, description, description_en_us, lft, rght, tree_id, level, parent) FROM stdin;
1	Biceps	Biceps	\N	Biceps	The biceps brachii is one of the most often trained muscles. stereotypically most guys want big biceps - and in practice, this is often true. As is commonly known, the main function of the biceps brachii is elbow flexion (what occurs during a curl exercise). However, the biceps have far more responsibilities than just curls.	The biceps brachii is one of the most often trained muscles. stereotypically most guys want big biceps - and in practice, this is often true. As is commonly known, the main function of the biceps brachii is elbow flexion (what occurs during a curl exercise). However, the biceps have far more responsibilities than just curls.	1	6	1	0	\N
16	Long Head Bicep	Long Head Bicep	\N	long-head-bicep			2	3	1	1	1
17	Short Head Bicep	Short Head Bicep	\N	short-head-bicep			4	5	1	1	1
2	Chest	Chest	\N	Chest	Primarily, there are three chest muscles involved in movement: the pectoralis major, the pectoralis minor, and the serratus anterior.\r\n\r\nPectoral muscles are most predominantly associated with movement of the shoulders and arms. When working together, they provide stability for bone structures such as the clavicle (collar bone) and the scapula (shoulder). Muscles of the chest enable us to lift, extend, and rotate our arms, along with playing a part in the process of respiration. Chest muscles are required in order to carry out everyday activities like moving furniture, lifting heavy objects, pitching a baseball, and stretching our arms.	Primarily, there are three chest muscles involved in movement: the pectoralis major, the pectoralis minor, and the serratus anterior.\r\n\r\nPectoral muscles are most predominantly associated with movement of the shoulders and arms. When working together, they provide stability for bone structures such as the clavicle (collar bone) and the scapula (shoulder). Muscles of the chest enable us to lift, extend, and rotate our arms, along with playing a part in the process of respiration. Chest muscles are required in order to carry out everyday activities like moving furniture, lifting heavy objects, pitching a baseball, and stretching our arms.	1	6	14	0	\N
24	Mid and Lower Chest	Mid and Lower Chest	Sternocostal Head	mid-lower-pectoralis			4	5	14	1	2
5	Triceps	Triceps	\N	Triceps	The triceps are a muscle with three heads, hence the name. Those heads are the long head, lateral head, and medial head. The triceps are traditionally considered a powerhouse due to their overwhelmingly fast twitch. This expression refers to muscle fibers which expend energy quickly, and the triceps are particularly dominant in this trait. The triceps are involved during any pushing movement.	The triceps are a muscle with three heads, hence the name. Those heads are the long head, lateral head, and medial head. The triceps are traditionally considered a powerhouse due to their overwhelmingly fast twitch. This expression refers to muscle fibers which expend energy quickly, and the triceps are particularly dominant in this trait. The triceps are involved during any pushing movement.	1	8	11	0	\N
19	Anterior Deltoid	Anterior Deltoid	\N	anterior-deltoid			4	5	10	1	6
23	Upper Pectoralis	Upper Pectoralis	Sternoclavicular Head	upper-pectoralis			2	3	14	1	2
47	Front Shoulders	Front Shoulders	Front Deltoids	front-shoulders	\N	\N	1	2	19	0	\N
9	Glutes	Glutes	\N	Glutes	With regard to desirability, the glutes are gaining in popularity, however the glutes are far more than something nice to look at. The gluteus maximus is the largest muscle in the body and serves many important functions.	With regard to desirability, the glutes are gaining in popularity, however the glutes are far more than something nice to look at. The gluteus maximus is the largest muscle in the body and serves many important functions.	1	6	7	0	\N
38	Gluteus Maximus	Gluteus Maximus	\N	gluteus-maximus			4	5	7	1	9
3	Quads	Quads	\N	Quads	The quadriceps consist of four heads (hence the name quadriceps). The heads are: the rectus femoris, vastus lateralis, vastus medialis, and vastus intermedius.\r\n\r\nWith the exception of the rectus femoris, all of the heads of the quadriceps have one function, which is extending the knee.\r\n\r\nThat means that the quadriceps are active every time you walk or stand up. Additionally, and in conjunction with the hamstrings, the quadriceps stabilizes the knee.	The quadriceps consist of four heads (hence the name quadriceps). The heads are: the rectus femoris, vastus lateralis, vastus medialis, and vastus intermedius.\r\n\r\nWith the exception of the rectus femoris, all of the heads of the quadriceps have one function, which is extending the knee.\r\n\r\nThat means that the quadriceps are active every time you walk or stand up. Additionally, and in conjunction with the hamstrings, the quadriceps stabilizes the knee.	1	10	13	0	\N
27	Inner Thigh	Inner Thigh	Hip Adductors	inner-thigh			2	3	13	1	3
28	Inner Quadriceps	Inner Quadriceps	Vastus Medialis	inner-quadricep			4	5	13	1	3
29	Outer Quadricep	Outer Quadricep	Vastus Lateralis	outer-quadricep			6	7	13	1	3
50	Groin	Groin	\N	groin	\N	\N	1	2	22	0	\N
4	Traps	Traps	\N	Traps	There is far more to the trapezius muscle than meets the eye. The traps are not just the muscle that sits on top of your shoulders. The traps actually travel a large portion of your spine. When well developed, the traps take on the look of a cobra hood.\r\n\r\nThe traps are divided into three portions. Those portions are referred to as the superior, medial, and inferior fibers. All three parts serve similar, but different functions.	There is far more to the trapezius muscle than meets the eye. The traps are not just the muscle that sits on top of your shoulders. The traps actually travel a large portion of your spine. When well developed, the traps take on the look of a cobra hood.\r\n\r\nThe traps are divided into three portions. Those portions are referred to as the superior, medial, and inferior fibers. All three parts serve similar, but different functions.	1	6	12	0	\N
41	Upper Traps	Upper Traps	Superior Trapezius	upper-trapezius			2	3	12	1	4
35	Lateral Head Triceps	Lateral Head Triceps	\N	lateral-head-triceps			4	5	11	1	5
36	Medial Head Triceps	Medial Head Triceps	\N	medial-head-triceps			6	7	11	1	5
6	Shoulders	Shoulders	\N	Shoulders	For both men and women, the deltoids, also referred to as delts, are a very desirable muscle to build. Well-developed shoulders can give the appearance of a smaller waist (because the shoulders look broader). Therefore, well-trained delts improve the look of the entire physique.\r\n\r\nThe deltoid has three different heads: anterior (front), lateral (middle), and posterior (rear). Each head has similar functions, but they do have some variance.	For both men and women, the deltoids, also referred to as delts, are a very desirable muscle to build. Well-developed shoulders can give the appearance of a smaller waist (because the shoulders look broader). Therefore, well-trained delts improve the look of the entire physique.\r\n\r\nThe deltoid has three different heads: anterior (front), lateral (middle), and posterior (rear). Each head has similar functions, but they do have some variance.	1	8	10	0	\N
18	Lateral Deltoid	Lateral Deltoid	\N	lateral-deltoid			2	3	10	1	6
20	Posterior Deltoid	Posterior Deltoid	\N	posterior-deltoid			6	7	10	1	6
48	Rear Shoulders	Rear Shoulders	Rear Deltoids	rear-shoulders	\N	\N	1	2	20	0	\N
7	Lats	Lats	\N	Lats	The lats are a large flat muscle that has origin points at the mid and lower spine, the iliac crest (pelvis), and the ribs. Well-developed lats give the appearance of a wider back, therefore making the waist look smaller.	The lats are a large flat muscle that has origin points at the mid and lower spine, the iliac crest (pelvis), and the ribs. Well-developed lats give the appearance of a wider back, therefore making the waist look smaller.	1	2	9	0	\N
42	Lower Traps	Lower Traps	Inferior Traps	lower-trapezius			4	5	12	1	4
14	Traps (mid-back)	Traps (mid-back)	\N	traps-middle	There is far more to the trapezius muscle than meets the eye. The traps are not just the muscle that sits on top of your shoulders. The traps actually travel a large portion of your spine. When well developed, the traps take on the look of a cobra hood.\r\n\r\nThe traps are divided into three portions. Those portions are referred to as the superior, medial, and inferior fibers. All three parts serve similar, but different functions.	There is far more to the trapezius muscle than meets the eye. The traps are not just the muscle that sits on top of your shoulders. The traps actually travel a large portion of your spine. When well developed, the traps take on the look of a cobra hood.\r\n\r\nThe traps are divided into three portions. Those portions are referred to as the superior, medial, and inferior fibers. All three parts serve similar, but different functions.	1	2	2	0	\N
13	Lower back	Lower back	\N	Lowerback	The erector spinae is another often-misunderstood muscle. The spinal erectors are thought of as the “lower back” muscles. However, the spinal erectors travel the length of the entire spine. The upper fibers tuck under the latissimus dorsi and trapezius, and therefore are not visible to the naked eye.	The erector spinae is another often-misunderstood muscle. The spinal erectors are thought of as the “lower back” muscles. However, the spinal erectors travel the length of the entire spine. The upper fibers tuck under the latissimus dorsi and trapezius, and therefore are not visible to the naked eye.	1	2	3	0	\N
8	Hamstrings	Hamstrings	\N	Hamstrings	The hamstrings are the big muscles on the back of your thighs. Together with the quadriceps, the hamstrings make walking and standing possible.\r\n\r\nThe hamstrings are made up of the following muscles - the biceps femoris (short and long head), the semimembranosus, and the semitendinosus.\r\n\r\nThe hamstrings are a weak muscle when compared with the quadriceps (front thigh muscle). Both the hamstrings and the quadriceps pull on the knee joint, so if one of those muscles is stronger than the other, then knee problems are bound to arise. A good rule of thumb is to make sure that the hamstrings are 2/3 as strong as the quadriceps. For example, if you can resist 100 lbs with your quads, then you should be able to resist 66 lbs with your hamstrings.	The hamstrings are the big muscles on the back of your thighs. Together with the quadriceps, the hamstrings make walking and standing possible.\r\n\r\nThe hamstrings are made up of the following muscles - the biceps femoris (short and long head), the semimembranosus, and the semitendinosus.\r\n\r\nThe hamstrings are a weak muscle when compared with the quadriceps (front thigh muscle). Both the hamstrings and the quadriceps pull on the knee joint, so if one of those muscles is stronger than the other, then knee problems are bound to arise. A good rule of thumb is to make sure that the hamstrings are 2/3 as strong as the quadriceps. For example, if you can resist 100 lbs with your quads, then you should be able to resist 66 lbs with your hamstrings.	1	6	8	0	\N
40	Lateral Hamstrings	Lateral Hamstrings	\N	lateral-hamstrings			4	5	8	1	8
39	Medial Hamstrings	Medial Hamstrings	\N	medial-hamstrings			2	3	8	1	8
10	Forearms	Forearms	\N	Forearms	The forearms consist of many different muscles and the exact number depends on the anatomy book you are reading! Frequently, the forearms are broken down into three main parts: the brachioradialis, the wrist flexors, and the pronator teres.	The forearms consist of many different muscles and the exact number depends on the anatomy book you are reading! Frequently, the forearms are broken down into three main parts: the brachioradialis, the wrist flexors, and the pronator teres.	1	6	6	0	\N
26	Wrist Flexors	Wrist Flexors	\N	wrist-flexors			4	5	6	1	10
11	Calves	Calves	\N	Calves	The calves are composed of two muscles, the gastrocnemius, and the soleus. Both muscles are active every time the ankle joint flexes. In other words, the calves are involved every time you take a step, stand up, or jump.	The calves are composed of two muscles, the gastrocnemius, and the soleus. Both muscles are active every time the ankle joint flexes. In other words, the calves are involved every time you take a step, stand up, or jump.	1	8	5	0	\N
33	Gastrocnemius	Gastrocnemius	\N	gastrocnemius			6	7	5	1	11
32	Soleus	Soleus	\N	soleus			4	5	5	1	11
12	Abdominals	Abdominals	\N	Abdominals	Aesthetically, the abs are seen as one of the most desirable muscles to possess. To the majority of people, abs consist of only the “6 pack,” however, this is only one part of the abdominals.	Aesthetically, the abs are seen as one of the most desirable muscles to possess. To the majority of people, abs consist of only the “6 pack,” however, this is only one part of the abdominals.	1	6	4	0	\N
22	Upper Abdominals	Upper Abdominals	\N	upper-abdominals			4	5	4	1	12
21	Lower Abdominals	Lower Abdominals	\N	lower-abdominals	\N	\N	2	3	4	1	12
15	Obliques	Obliques	\N	Obliques	The obliques are made up of the internal and external obliques. \r\n\r\nThe internal oblique sits between the transverse abdominis and the external oblique. The origin is from the iliac crest, and the lower part of the pelvis. The insertion is at the linea alba, pubic crest, and the lower 3-4 ribs.\r\n\r\nThe internal oblique serves the exact same functions as the external oblique - aiding rotation, flexion and lateral flexion of the spine.\r\n\r\nThe external oblique is visible at low body fat percentages. The muscle appears as a series of diagonal lines connecting to the six-pack.\r\n\r\nThe external oblique originates from the 5th – 8th ribs, and insert at several points (linea alba, iliac spine, pubic crest, and the iliac crest).\r\n\r\nThe functions of the external oblique are to aid in rotation (chopping down a tree), flexion (bending over), and lateral flexion of the spine (bending to the side).	The obliques are made up of the internal and external obliques. \r\n\r\nThe internal oblique sits between the transverse abdominis and the external oblique. The origin is from the iliac crest, and the lower part of the pelvis. The insertion is at the linea alba, pubic crest, and the lower 3-4 ribs.\r\n\r\nThe internal oblique serves the exact same functions as the external oblique - aiding rotation, flexion and lateral flexion of the spine.\r\n\r\nThe external oblique is visible at low body fat percentages. The muscle appears as a series of diagonal lines connecting to the six-pack.\r\n\r\nThe external oblique originates from the 5th – 8th ribs, and insert at several points (linea alba, iliac spine, pubic crest, and the iliac crest).\r\n\r\nThe functions of the external oblique are to aid in rotation (chopping down a tree), flexion (bending over), and lateral flexion of the spine (bending to the side).	1	2	15	0	\N
43	Hands	Hands	Hands	hands			1	2	16	0	\N
25	Wrist Extensors	Wrist Extensors	\N	wrist-extensors			2	3	6	1	10
34	Long Head Tricep	Long Head Tricep	\N	long-head-triceps			2	3	11	1	5
37	Gluteus Medius	Gluteus Medius	\N	gluteus-medius			2	3	7	1	9
30	Rectus Femoris	Rectus Femoris	\N	rectus-femoris			8	9	13	1	3
31	Tibialis	Tibialis	\N	tibialis			2	3	5	1	11
46	Feet	Feet	\N	feet	\N	\N	1	2	18	0	\N
49	Neck	Neck	\N	neck	\N	\N	1	2	21	0	\N
\.


--
-- Data for Name: exercise_muscles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.exercise_muscles (exercise_id, muscle_id, is_primary, is_secondary, is_tertiary) FROM stdin;
1	1	t	f	f
1	16	f	f	f
1	17	f	f	f
2	1	t	f	f
3	1	t	f	f
3	17	f	f	f
4	2	t	f	f
4	24	f	f	f
5	5	f	t	f
5	2	t	f	f
5	24	f	f	f
7	19	f	f	f
7	2	t	f	f
7	23	f	f	f
7	47	f	f	f
8	9	f	t	f
8	38	f	f	f
8	3	t	f	f
8	27	f	f	f
8	28	f	f	f
8	29	f	f	f
8	50	f	f	t
9	9	t	f	f
9	3	t	f	f
10	3	t	f	f
11	9	t	f	f
11	3	t	f	f
11	50	f	f	t
12	4	t	f	f
12	41	f	f	f
16	5	t	f	f
17	5	t	f	f
18	5	t	f	f
18	35	f	f	f
18	36	f	f	f
20	6	t	f	f
20	18	t	f	f
20	47	t	f	f
21	6	t	f	f
21	20	t	f	f
21	48	t	f	f
22	6	t	f	f
22	20	t	f	f
22	48	t	f	f
23	7	t	f	f
23	42	f	f	t
24	1	f	t	f
24	14	f	f	t
24	7	t	f	f
25	14	f	t	f
25	7	t	f	f
26	14	t	f	f
26	13	f	f	t
26	7	t	f	f
27	9	t	f	f
27	38	f	f	f
27	8	t	f	f
27	40	f	f	f
28	8	t	f	f
28	39	f	f	f
29	9	t	f	f
30	9	t	f	f
30	38	f	f	f
31	10	t	f	f
31	26	f	f	f
32	10	t	f	f
32	26	f	f	f
33	11	t	f	f
33	33	f	f	f
34	11	t	f	f
34	32	f	f	f
35	12	t	f	f
35	22	f	f	f
37	12	t	f	f
37	21	f	f	f
39	14	t	f	f
39	13	t	f	f
39	9	f	t	f
40	13	t	f	f
42	9	t	f	f
42	3	t	f	f
43	4	t	f	f
43	41	f	f	f
44	5	t	f	f
44	35	f	f	f
44	36	f	f	f
45	6	t	f	f
45	18	f	t	f
45	19	t	f	f
45	47	t	f	f
46	6	t	f	f
46	19	t	f	f
46	47	t	f	f
47	6	t	f	f
47	20	t	f	f
47	48	t	f	f
48	1	f	t	f
48	10	f	f	t
48	7	t	f	f
50	9	t	f	f
52	10	t	f	f
52	26	f	f	f
54	12	t	f	f
54	21	f	f	f
54	22	f	f	f
55	19	f	f	f
55	2	t	f	f
55	23	f	f	f
55	47	f	f	f
56	5	t	f	f
57	12	t	f	f
57	22	f	f	f
58	12	f	t	f
58	15	t	f	f
59	15	t	f	f
60	12	f	t	f
60	15	t	f	f
61	1	t	f	f
62	1	t	f	f
63	1	t	f	f
64	11	t	f	f
64	33	f	f	f
65	11	t	f	f
66	11	t	f	f
66	32	f	f	f
67	5	f	t	f
67	2	t	f	f
68	2	t	f	f
69	5	f	t	f
69	2	t	f	f
70	5	f	t	f
70	2	t	f	f
71	10	t	f	f
71	26	f	f	f
71	43	f	f	f
72	10	t	f	f
72	25	f	f	f
73	10	t	f	f
73	26	f	f	f
74	9	t	f	f
75	9	t	f	f
76	9	t	f	f
77	9	t	f	f
78	14	t	f	f
78	13	f	t	f
78	8	t	f	f
79	13	f	t	f
79	9	t	f	f
79	8	t	f	f
80	1	f	t	f
80	14	t	f	f
80	10	f	f	t
80	7	t	f	f
81	13	f	t	f
81	9	t	f	f
81	8	t	f	f
82	7	t	f	f
83	13	f	t	f
83	9	t	f	f
83	8	t	f	f
84	13	f	t	f
84	9	t	f	f
84	8	t	f	f
85	1	f	t	f
85	6	t	f	f
85	20	t	f	f
85	48	t	f	f
86	6	t	f	f
86	19	t	f	f
86	47	t	f	f
87	6	t	f	f
87	20	t	f	f
87	48	t	f	f
88	1	t	f	f
89	5	t	f	f
90	5	t	f	f
90	34	f	f	f
91	1	f	t	f
91	10	f	f	t
91	7	t	f	f
92	7	t	f	f
93	6	t	f	f
93	18	t	f	f
93	47	t	f	f
94	6	t	f	f
94	18	t	f	f
94	47	t	f	f
95	4	t	f	f
96	6	t	f	f
96	18	t	f	f
96	4	t	f	f
96	47	t	f	f
97	14	f	t	f
97	4	t	f	f
98	14	t	f	f
98	4	f	t	f
99	9	t	f	f
99	3	t	f	f
100	9	t	f	f
100	3	t	f	f
101	9	t	f	f
101	3	t	f	f
102	9	t	f	f
102	3	t	f	f
103	9	t	f	f
103	3	t	f	f
104	9	t	f	f
104	37	t	f	f
104	3	t	f	f
105	5	t	f	f
119	1	t	f	f
120	1	t	f	f
121	1	t	f	f
122	1	t	f	f
123	1	t	f	f
124	2	t	f	f
125	2	t	f	f
126	2	t	f	f
127	2	t	f	f
128	3	t	f	f
129	3	t	f	f
130	3	t	f	f
131	3	t	f	f
132	4	t	f	f
133	4	t	f	f
134	4	t	f	f
135	5	t	f	f
136	5	t	f	f
137	5	t	f	f
138	6	t	f	f
138	20	t	f	f
138	48	t	f	f
139	6	t	f	f
139	19	t	f	f
139	47	t	f	f
140	6	t	f	f
140	19	t	f	f
140	20	t	f	f
140	47	t	f	f
140	48	t	f	f
141	6	t	f	f
141	18	t	f	f
141	19	t	f	f
141	47	t	f	f
142	7	t	f	f
143	7	t	f	f
144	7	t	f	f
145	8	t	f	f
146	8	t	f	f
147	8	t	f	f
148	8	t	f	f
149	9	t	f	f
150	9	t	f	f
151	9	t	f	f
152	10	t	f	f
153	10	t	f	f
154	10	t	f	f
155	10	t	f	f
156	11	t	f	f
157	11	t	f	f
158	11	t	f	f
159	12	t	f	f
160	12	t	f	f
160	15	t	f	f
161	12	t	f	f
161	15	t	f	f
162	12	t	f	f
163	13	t	f	f
164	13	t	f	f
165	13	t	f	f
166	13	t	f	f
167	14	t	f	f
168	14	t	f	f
182	2	t	f	f
182	24	f	f	f
183	14	t	f	f
183	10	f	f	t
183	7	t	f	f
184	1	f	t	f
184	10	f	f	t
184	7	t	f	f
186	5	f	t	f
186	2	t	f	f
187	5	f	t	f
187	2	t	f	f
188	4	t	f	f
188	41	t	f	f
189	9	f	t	f
189	3	t	f	f
190	9	t	f	f
190	3	t	f	f
190	27	f	f	f
190	28	f	f	f
190	29	f	f	f
191	9	t	f	f
191	3	t	f	f
192	9	t	f	f
192	3	t	f	f
192	50	f	t	f
193	5	t	f	f
193	35	f	f	f
193	36	f	f	f
194	13	f	t	f
194	9	t	f	f
194	8	t	f	f
195	13	t	f	f
196	9	f	f	f
197	13	f	t	f
197	9	t	f	f
197	8	t	f	f
198	14	t	f	f
198	6	t	f	f
198	18	t	f	f
198	19	t	f	f
198	4	f	t	f
198	47	t	f	f
201	11	t	f	f
202	11	t	f	f
202	33	f	f	f
204	12	t	f	f
206	12	t	f	f
206	21	f	f	f
207	11	t	f	f
207	33	f	f	f
208	8	t	f	f
208	39	f	f	f
209	12	t	f	f
210	11	t	f	f
210	33	f	f	f
211	5	t	f	f
211	35	f	f	f
211	36	f	f	f
212	9	t	f	f
212	37	t	f	f
212	3	t	f	f
212	27	f	f	f
212	28	f	f	f
212	29	f	f	f
213	4	t	f	f
215	15	t	f	f
216	2	t	f	f
216	24	f	f	f
217	19	f	t	f
217	2	t	f	f
217	24	f	f	f
217	47	f	f	f
218	13	f	t	f
218	9	t	f	f
218	3	t	f	f
219	9	t	f	f
219	3	t	f	f
220	13	f	t	f
220	9	t	f	f
220	8	t	f	f
220	40	f	f	f
221	13	f	t	f
221	9	t	f	f
221	8	t	f	f
222	13	f	t	f
222	9	t	f	f
222	8	t	f	f
223	9	t	f	f
223	37	f	f	f
224	13	t	f	f
224	9	t	f	f
225	8	t	f	f
225	39	f	f	f
226	6	t	f	f
226	18	f	t	f
226	19	t	f	f
226	47	t	f	f
227	6	t	f	f
227	18	t	f	f
227	47	t	f	f
228	6	t	f	f
228	20	t	f	f
228	48	t	f	f
229	6	t	f	f
229	18	t	f	f
229	4	f	t	f
229	47	t	f	f
230	10	t	f	f
230	26	f	f	f
231	10	t	f	f
231	25	f	f	f
232	7	t	f	f
233	7	t	f	f
234	1	f	t	f
234	7	t	f	f
235	4	t	f	f
235	41	f	f	f
236	14	t	f	f
236	4	f	t	f
237	1	t	f	f
238	1	t	f	f
238	16	f	f	f
238	17	f	f	f
239	1	t	f	f
239	10	f	t	f
239	25	f	f	f
239	26	f	f	f
240	1	t	f	f
241	5	t	f	f
241	35	f	f	f
241	36	f	f	f
242	5	t	f	f
243	5	t	f	f
244	5	t	f	f
244	34	f	f	f
245	11	t	f	f
246	3	t	f	f
246	30	f	f	f
247	15	t	f	f
248	12	t	f	f
249	12	t	f	f
249	22	f	f	f
250	15	t	f	f
251	11	t	f	f
252	2	t	f	f
253	5	f	t	f
253	2	t	f	f
254	15	t	f	f
255	6	t	f	f
255	20	t	f	f
255	48	t	f	f
256	9	t	f	f
256	3	t	f	f
257	12	t	f	f
258	1	t	f	f
259	6	t	f	f
259	19	t	f	f
259	47	t	f	f
260	13	f	t	f
260	9	t	f	f
260	8	t	f	f
261	1	t	f	f
261	10	t	f	f
262	14	t	f	f
262	4	t	f	f
263	9	t	f	f
264	1	f	t	f
264	7	t	f	f
265	6	t	f	f
265	18	t	f	f
265	47	t	f	f
266	9	t	f	f
266	3	t	f	f
267	5	t	f	f
267	34	f	f	f
268	15	t	f	f
269	14	f	t	f
269	6	t	f	f
269	20	t	f	f
269	48	t	f	f
270	7	t	f	f
271	13	f	t	f
271	9	t	f	f
271	8	t	f	f
272	5	t	f	f
273	5	f	t	f
273	2	t	f	f
273	24	f	f	f
274	13	f	t	f
274	9	t	f	f
274	8	t	f	f
275	1	t	f	f
275	10	f	t	f
276	1	f	t	f
276	7	t	f	f
277	6	t	f	f
277	18	t	f	f
277	19	t	f	f
277	4	t	f	t
277	47	t	f	f
278	4	t	f	f
279	5	t	f	f
280	9	t	f	f
280	3	t	f	f
281	1	t	f	f
281	10	f	t	f
281	25	f	f	f
281	26	f	f	f
282	14	t	f	f
282	10	f	f	t
282	7	t	f	f
283	13	f	t	f
283	9	t	f	f
283	8	t	f	f
284	9	t	f	f
284	3	t	f	f
285	5	t	f	f
285	35	f	f	f
286	9	t	f	f
286	38	f	f	f
287	15	t	f	f
288	12	t	f	f
288	22	f	f	f
289	12	f	t	f
289	15	t	f	f
290	4	t	f	f
290	41	f	f	f
291	13	f	t	f
291	9	t	f	f
291	8	t	f	f
291	40	f	f	f
292	12	t	f	f
293	9	t	f	f
293	8	t	f	f
293	3	t	f	f
294	11	t	f	f
294	33	f	f	f
295	9	t	f	f
295	3	t	f	f
296	5	t	f	f
296	2	f	t	f
297	6	t	f	f
297	19	t	f	f
297	47	t	f	f
298	12	f	t	f
298	9	t	f	f
298	3	t	f	f
299	9	t	f	f
299	3	t	f	f
300	13	f	t	f
300	9	t	f	f
300	8	t	f	f
301	13	f	f	t
301	9	f	t	f
301	8	t	f	f
303	6	t	f	f
303	18	f	f	f
303	19	f	f	f
303	47	t	f	f
304	6	t	f	f
304	18	t	f	f
304	19	f	t	f
304	4	f	t	f
304	41	f	f	f
304	47	t	f	f
305	13	f	f	t
305	9	t	f	f
305	3	f	t	f
306	13	f	t	f
306	9	t	f	f
306	8	t	f	f
307	5	t	f	f
307	34	f	f	f
308	13	f	t	f
308	9	t	f	f
308	8	t	f	f
309	12	t	f	f
309	22	f	f	f
310	1	t	f	f
310	10	f	t	f
310	25	f	f	f
310	26	f	f	f
311	5	t	f	f
311	34	f	f	f
313	13	f	t	f
313	9	t	f	f
313	8	t	f	f
314	9	t	f	f
314	3	t	f	f
315	13	f	t	f
315	9	t	f	f
315	3	t	f	f
316	10	t	f	f
316	25	f	f	f
317	9	t	f	f
317	38	f	f	f
317	3	t	f	f
317	27	f	f	f
317	28	f	f	f
317	29	f	f	f
319	1	f	f	t
319	14	f	t	f
319	6	t	f	f
319	20	t	f	f
319	48	t	f	f
321	12	f	t	f
321	15	t	f	f
322	15	t	f	f
323	15	t	f	f
324	12	t	f	f
324	21	f	f	f
324	22	f	f	f
325	15	t	f	f
326	15	t	f	f
327	12	t	f	f
327	21	f	f	f
327	22	f	f	f
328	12	t	f	f
328	21	f	f	f
328	22	f	f	f
329	11	t	f	f
329	32	f	f	f
329	33	f	f	f
330	13	f	t	f
330	9	t	f	f
330	3	t	f	f
332	9	t	f	f
332	3	t	f	f
333	9	t	f	f
333	3	t	f	f
334	9	t	f	f
334	38	f	f	f
335	9	t	f	f
335	3	t	f	f
336	9	t	f	f
336	3	t	f	f
337	12	f	f	t
337	5	f	t	f
337	2	t	f	f
338	1	f	t	f
338	14	t	f	f
338	10	f	f	t
338	7	t	f	f
339	12	f	f	t
339	21	f	f	f
339	5	f	t	f
339	2	t	f	f
340	9	t	f	f
340	3	t	f	f
341	1	f	t	f
341	10	f	f	t
341	7	t	f	f
342	1	f	t	f
342	10	f	f	t
342	7	t	f	f
343	13	f	t	f
343	9	t	f	f
343	3	t	f	f
344	13	f	t	t
344	9	t	f	f
344	3	t	f	f
345	1	f	t	f
345	13	f	f	t
345	7	t	f	f
346	1	f	t	f
346	10	f	f	t
346	7	t	f	f
347	13	f	f	t
347	9	f	t	f
347	3	t	f	f
348	9	f	t	f
348	3	t	f	f
349	3	t	f	f
349	30	f	f	f
350	11	t	f	f
350	32	f	f	f
351	4	t	f	f
352	9	t	f	f
352	3	t	f	f
353	13	f	t	f
353	9	t	f	f
353	8	t	f	f
354	13	f	t	f
354	9	t	f	f
354	8	t	f	f
354	40	f	f	f
355	9	t	f	f
355	3	t	f	f
356	5	f	t	f
356	2	t	f	f
357	9	t	f	f
357	3	t	f	f
358	9	f	t	f
358	3	t	f	f
359	13	f	t	f
359	9	t	f	f
359	8	t	f	f
359	15	t	f	f
359	43	f	f	f
360	1	f	t	f
360	13	f	f	t
360	7	t	f	f
361	1	f	t	f
361	13	f	f	t
361	7	t	f	f
362	9	t	f	f
362	3	t	f	f
363	11	t	f	f
364	13	f	t	f
364	9	t	f	f
364	8	t	f	f
365	13	f	t	f
365	9	t	f	f
365	3	t	f	f
366	6	t	f	f
366	18	f	t	f
366	19	t	f	f
366	5	f	f	t
366	4	f	t	f
366	47	t	f	f
367	9	t	f	f
367	3	t	f	f
369	9	t	f	f
369	37	f	f	f
369	3	t	f	f
369	27	f	f	f
369	28	f	f	f
369	29	f	f	f
370	9	t	f	f
370	3	t	f	f
371	9	t	f	f
371	3	t	f	f
372	9	t	f	f
372	3	t	f	f
373	8	f	f	f
373	3	t	t	f
374	9	t	f	f
374	3	t	f	f
375	5	f	t	f
375	2	t	f	f
376	6	t	f	f
376	18	t	f	f
376	47	t	f	f
377	5	f	t	f
377	2	t	f	f
377	24	f	f	f
379	2	t	f	f
380	5	f	t	f
380	2	t	f	f
381	5	f	t	f
381	2	t	f	f
382	2	t	f	f
384	5	f	t	f
384	2	t	f	f
385	6	t	f	f
385	19	t	f	f
385	5	f	t	f
385	2	f	t	f
385	47	t	f	f
386	5	f	t	f
386	2	t	f	f
387	5	t	f	f
388	5	f	t	f
388	2	t	f	f
389	9	t	f	f
389	3	t	f	f
390	9	t	f	f
390	3	t	f	f
391	9	t	f	f
391	37	f	f	f
391	38	f	f	f
391	3	t	f	f
391	27	f	f	f
391	28	f	f	f
391	29	f	f	f
392	9	t	f	f
392	3	t	f	f
393	9	t	f	f
393	3	t	f	f
394	9	t	f	f
394	3	t	f	f
395	9	t	f	f
395	3	t	f	f
396	5	f	t	f
396	2	t	f	f
397	5	f	t	f
397	2	t	f	f
397	23	f	f	f
398	19	f	t	f
398	2	t	f	f
398	23	f	f	f
398	47	f	f	f
399	2	t	f	f
399	23	f	f	f
400	1	t	f	f
400	16	f	f	f
401	1	t	f	f
401	16	f	f	f
401	10	f	t	f
401	26	f	f	f
402	1	t	f	f
402	16	f	f	f
402	10	f	t	f
402	26	f	f	f
403	2	t	f	f
404	2	t	f	f
404	23	f	f	f
405	9	t	f	f
405	3	t	f	f
406	4	t	f	f
407	6	t	f	f
407	20	t	f	f
407	48	t	f	f
408	6	t	f	f
408	20	t	f	f
408	48	t	f	f
409	14	t	f	f
409	4	f	t	f
410	6	t	f	f
410	19	t	f	f
410	5	f	t	f
410	2	t	f	f
410	47	t	f	f
411	6	t	f	f
411	19	t	f	f
411	5	f	t	f
411	2	t	f	f
411	23	f	f	f
411	47	t	f	f
412	6	t	f	f
412	19	t	f	f
412	5	f	t	f
412	47	t	f	f
413	7	t	f	f
414	9	t	f	f
414	3	t	f	f
415	5	t	f	f
415	34	f	f	f
415	35	f	f	f
415	36	f	f	f
416	6	t	f	f
416	18	f	t	f
416	19	t	f	f
416	5	f	t	f
416	47	t	f	f
417	5	f	t	f
417	2	t	f	f
418	5	f	t	f
418	2	t	f	f
419	9	t	f	f
419	3	t	f	f
420	6	t	f	f
420	18	t	f	f
420	19	t	f	f
420	5	f	t	f
420	47	t	f	f
421	6	t	f	f
421	18	f	t	f
421	19	t	f	f
421	5	f	t	f
421	47	t	f	f
422	1	f	t	f
422	13	f	f	t
422	7	t	f	f
423	6	t	f	f
423	18	f	t	f
423	19	t	f	f
423	5	f	t	f
423	47	t	f	f
424	9	t	f	f
425	9	t	f	f
426	13	f	t	f
426	9	t	f	f
426	3	t	f	f
427	9	t	f	f
427	3	t	f	f
428	9	f	t	f
428	3	t	f	f
429	12	f	t	f
429	15	t	f	f
430	9	t	f	f
430	3	t	f	f
431	9	t	f	f
431	3	t	f	f
432	12	t	f	f
433	1	f	t	f
433	7	t	f	f
434	15	t	f	f
435	1	f	t	f
435	7	t	f	f
436	8	t	f	f
437	3	t	f	f
438	6	t	f	f
438	19	t	f	f
438	5	f	t	f
438	47	t	f	f
439	6	t	f	f
439	19	t	f	f
439	5	f	t	f
439	47	t	f	f
440	9	t	f	f
440	3	t	f	f
440	15	f	t	f
441	6	t	f	f
441	18	f	t	f
441	19	t	f	f
441	5	f	t	f
441	47	t	f	f
443	15	t	f	f
444	5	t	f	f
445	1	f	t	f
445	7	t	f	f
446	6	t	f	f
446	18	f	t	f
446	19	t	f	f
446	5	f	t	f
446	47	t	f	f
447	12	t	f	f
448	11	t	f	f
448	32	f	f	f
449	7	t	f	f
450	15	t	f	f
451	14	t	f	f
451	4	f	t	f
452	6	t	f	f
452	18	f	t	f
452	19	t	f	f
452	5	f	t	f
452	47	t	f	f
453	6	t	f	f
453	18	f	t	f
453	19	t	f	f
453	5	f	t	f
453	47	t	f	f
454	6	t	f	f
454	18	f	t	f
454	19	t	f	f
454	5	f	t	f
454	47	t	f	f
455	1	t	f	f
456	1	f	t	f
456	7	t	f	f
457	1	f	t	f
457	7	t	f	f
458	1	t	f	f
459	9	t	f	f
460	9	t	f	f
461	13	f	t	f
461	9	t	f	f
461	8	t	f	f
462	13	f	t	f
462	9	t	f	f
462	8	t	f	f
462	40	f	f	f
463	1	t	f	f
464	13	f	t	f
464	9	t	f	f
464	8	t	f	f
465	9	t	f	f
466	9	t	f	f
467	13	f	t	f
467	9	t	f	f
467	3	f	t	f
468	13	f	t	f
468	9	t	f	f
468	8	t	f	f
469	9	t	f	f
469	6	f	t	f
469	18	f	t	f
469	19	t	f	f
469	3	t	f	f
469	47	t	f	f
470	5	t	f	f
471	1	t	f	f
472	15	t	f	f
473	15	t	f	f
474	12	t	f	f
474	21	f	f	f
475	12	t	f	f
475	9	f	f	t
475	3	f	t	f
475	2	t	f	f
476	7	t	f	f
477	1	t	f	f
478	9	t	f	f
478	3	t	f	f
479	9	t	f	f
479	6	f	t	f
479	18	f	t	f
479	19	f	t	f
479	47	f	t	f
480	9	f	t	f
480	6	t	f	f
480	19	t	f	f
480	3	f	t	f
480	47	t	f	f
481	9	t	f	f
483	1	t	f	f
483	6	f	t	f
483	18	f	f	t
483	19	f	t	f
483	47	f	t	f
484	9	f	t	f
484	6	t	f	f
484	19	t	f	f
484	5	t	f	f
484	3	f	t	f
484	47	t	f	f
485	1	t	f	f
485	6	f	t	f
485	18	f	f	t
485	19	f	t	f
485	5	t	f	f
485	47	f	t	f
486	9	t	f	f
486	37	f	f	f
486	38	f	f	f
486	3	f	t	f
486	27	f	f	f
486	28	f	f	f
486	29	f	f	f
488	13	f	t	f
488	9	t	f	f
488	8	t	f	f
489	1	t	f	f
489	9	f	t	f
489	3	f	t	f
490	13	f	f	t
490	10	t	f	f
490	9	f	t	f
490	8	t	f	f
491	6	t	f	f
491	19	t	f	f
491	47	t	f	f
492	6	t	f	f
492	19	t	f	f
492	47	t	f	f
493	13	f	t	f
493	9	t	f	f
493	8	t	f	f
494	13	f	t	f
494	9	t	f	f
494	8	t	f	f
495	6	t	f	f
495	18	t	f	f
495	19	t	f	f
495	47	t	f	f
496	9	t	f	f
496	3	f	t	f
497	9	f	t	f
497	3	t	f	f
498	1	t	f	f
499	1	t	f	f
500	1	t	f	f
500	10	f	t	f
501	2	t	f	f
502	5	f	t	f
502	2	t	f	f
503	1	t	f	f
504	13	f	t	f
504	9	t	f	f
504	8	t	f	f
505	14	f	t	f
505	6	t	f	f
505	20	t	f	f
505	48	t	f	f
506	9	t	f	f
506	3	t	f	f
506	15	f	t	f
507	9	t	f	f
507	3	t	f	f
508	9	t	f	f
508	37	f	f	f
509	9	t	f	f
509	27	f	f	f
509	50	t	f	f
510	2	t	f	f
511	10	t	f	f
511	15	f	t	f
512	8	t	f	f
513	1	f	f	t
513	10	t	f	f
513	7	f	t	f
514	3	t	f	f
515	6	t	f	f
515	18	t	f	f
515	47	t	f	f
516	6	t	f	f
516	18	t	f	f
516	47	t	f	f
517	13	f	f	t
517	10	t	f	f
517	7	t	f	f
517	43	f	f	f
518	6	t	f	f
518	18	f	t	f
518	19	t	f	f
518	5	f	t	f
518	47	t	f	f
519	5	t	f	f
520	5	t	f	f
521	9	t	f	f
521	3	t	f	f
522	14	f	t	f
522	6	t	f	f
522	20	t	f	f
522	48	t	f	f
523	1	t	f	f
523	10	f	t	f
524	6	f	t	f
524	19	f	t	f
524	5	t	f	f
524	47	f	t	f
525	5	t	f	f
526	5	t	f	f
527	5	t	f	f
528	9	t	f	f
528	3	t	f	f
529	5	f	t	f
529	2	t	f	f
530	6	t	f	f
530	18	t	f	f
530	19	t	f	f
530	47	t	f	f
531	9	f	t	f
531	2	t	f	f
532	9	f	t	f
532	7	t	f	f
533	14	t	f	f
533	6	t	f	f
533	20	t	f	f
533	48	t	f	f
534	6	t	f	f
534	18	t	f	f
534	47	t	f	f
535	12	t	f	f
535	6	f	t	f
535	18	f	f	t
535	19	f	t	f
535	4	t	f	f
535	47	f	t	f
536	4	t	f	f
537	9	t	f	f
537	3	t	f	f
538	10	t	f	f
538	43	f	f	f
539	14	f	t	f
539	6	t	f	f
539	20	t	f	f
539	48	t	f	f
540	12	f	t	f
540	15	t	f	f
541	12	t	f	f
542	9	t	f	f
542	3	t	f	f
543	12	t	f	f
544	13	f	t	f
544	9	t	f	f
544	8	t	f	f
545	13	f	f	t
545	10	t	f	f
545	9	f	t	f
545	8	t	f	f
546	9	t	f	f
546	6	t	f	f
546	18	f	t	f
546	19	t	f	f
546	3	t	f	f
546	47	t	f	f
547	6	t	f	f
547	19	t	f	f
547	47	t	f	f
548	15	t	f	f
549	12	t	f	f
550	12	t	f	f
551	15	t	f	f
552	9	t	f	f
553	9	t	f	f
554	9	t	f	f
555	9	t	f	f
556	9	t	f	f
557	9	t	f	f
558	9	t	f	f
560	9	t	f	f
561	1	f	t	f
561	7	t	f	f
562	1	t	f	f
563	12	t	f	f
564	5	f	t	f
564	2	t	f	f
565	9	t	f	f
566	9	t	f	f
567	9	t	f	f
568	9	t	f	f
569	1	f	t	f
569	7	t	f	f
570	6	t	f	f
570	18	t	f	f
570	47	t	f	f
571	15	t	f	f
572	9	t	f	f
572	6	f	t	f
572	18	f	t	f
572	19	f	t	f
572	3	t	f	f
572	47	f	t	f
573	12	t	f	f
573	6	f	t	f
574	12	f	f	t
574	7	f	t	f
574	2	t	f	f
575	15	t	f	f
576	9	f	f	t
576	6	f	t	f
576	3	t	f	f
577	5	t	f	f
578	6	t	f	f
578	18	t	f	f
578	4	f	t	f
578	47	t	f	f
579	6	t	f	f
579	18	t	f	f
579	47	t	f	f
580	9	t	f	f
580	37	f	f	f
581	12	t	f	f
582	13	t	f	f
583	1	f	t	f
583	7	t	f	f
584	5	t	f	f
585	13	f	f	t
585	12	t	f	f
585	7	f	t	f
586	11	t	f	f
587	2	t	f	f
588	1	t	f	f
589	9	t	f	f
589	3	t	f	f
590	12	t	f	f
591	15	t	f	f
592	9	t	f	f
593	1	t	f	f
594	8	t	f	f
594	39	f	f	f
595	12	t	f	f
596	6	t	f	f
596	19	t	f	f
596	47	t	f	f
597	9	t	f	f
597	3	t	f	f
598	12	t	f	f
598	7	f	t	f
599	12	t	f	f
599	21	f	f	f
600	9	t	f	f
600	3	t	f	f
601	12	t	f	f
601	21	f	f	f
602	15	t	f	f
603	12	t	f	f
603	21	f	f	f
604	6	f	f	t
604	19	t	f	f
604	5	f	t	f
604	2	t	f	f
604	47	t	f	f
605	14	f	t	f
605	6	t	f	f
605	20	t	f	f
605	48	t	f	f
606	14	f	t	f
606	6	t	f	f
606	20	t	f	f
606	48	t	f	f
607	1	t	f	f
607	10	f	t	f
608	9	t	f	f
608	3	t	f	f
609	1	f	t	f
609	7	t	f	f
610	1	f	t	f
610	7	t	f	f
611	5	t	f	f
612	9	t	f	f
612	3	t	f	f
613	9	t	f	f
613	3	t	f	f
614	14	f	t	f
614	6	t	f	f
614	20	t	f	f
614	48	t	f	f
615	6	t	f	f
615	18	t	f	f
615	19	t	f	f
615	4	f	t	f
615	47	t	f	f
617	7	t	f	f
618	7	t	f	f
619	7	t	f	f
620	10	t	f	f
621	10	t	f	f
622	10	t	f	f
623	2	t	f	f
624	4	t	f	f
625	14	f	t	f
626	3	t	f	f
627	5	t	f	f
629	1	t	f	f
630	3	t	f	f
631	3	t	f	f
632	3	t	f	f
633	1	t	f	f
634	9	t	f	f
635	1	t	f	f
636	11	t	f	f
637	1	t	f	f
638	4	t	f	f
639	6	t	f	f
641	4	t	f	f
642	14	f	f	f
643	7	t	f	f
644	7	t	f	f
645	15	t	f	f
646	7	t	f	f
647	9	t	f	f
648	8	t	f	f
649	4	t	f	f
650	13	t	f	f
651	6	t	f	f
651	18	f	t	f
651	19	t	f	f
651	47	t	f	f
652	3	t	f	f
653	3	t	f	f
655	2	t	f	f
656	5	t	f	f
657	8	t	f	f
658	9	t	f	f
659	6	t	f	f
659	19	t	f	f
659	47	t	f	f
660	6	t	f	f
660	20	t	f	f
660	48	t	f	f
661	8	t	f	f
662	11	t	f	f
663	8	t	f	f
664	5	t	f	f
665	9	t	f	f
666	9	t	f	f
668	6	t	f	f
668	18	t	f	f
668	19	t	f	f
668	47	t	f	f
670	15	t	f	f
671	14	t	f	f
672	14	t	f	f
673	3	t	f	f
674	1	t	f	f
675	1	t	f	f
676	15	t	f	f
677	14	t	f	f
678	13	t	f	f
680	8	t	f	f
681	8	t	f	f
682	15	t	f	f
683	2	t	f	f
684	4	t	f	f
685	2	t	f	f
686	7	t	f	f
687	12	t	f	f
688	10	t	f	f
689	10	t	f	f
690	11	t	f	f
691	2	t	f	f
692	8	t	f	f
693	2	t	f	f
694	8	t	f	f
695	15	t	f	f
696	2	t	f	f
700	9	t	f	f
700	38	f	f	f
700	3	t	f	f
700	28	f	f	f
700	29	f	f	f
701	9	t	f	f
701	38	f	f	f
701	3	t	f	f
701	28	f	f	f
701	29	f	f	f
702	9	t	f	f
702	38	f	f	f
702	3	t	f	f
702	28	f	f	f
702	29	f	f	f
703	9	t	f	f
703	38	f	f	f
703	3	t	f	f
704	12	t	f	f
704	21	f	f	f
705	8	t	f	f
705	39	f	f	f
707	5	f	t	f
707	2	t	f	f
708	2	t	f	f
709	2	t	f	f
710	9	t	f	f
710	38	f	f	f
710	6	f	f	t
710	19	f	f	t
710	3	f	t	f
710	28	f	t	f
710	29	f	t	f
710	47	f	f	t
711	15	t	f	f
712	12	f	t	f
712	6	t	f	f
712	18	t	f	f
712	19	t	f	f
712	20	t	f	f
712	47	t	f	f
712	48	t	f	f
713	9	t	f	f
713	38	f	f	f
713	3	t	f	f
713	28	t	f	f
713	29	t	f	f
714	37	t	f	f
715	15	t	f	f
716	37	t	f	f
716	3	f	t	f
716	28	f	t	f
716	29	f	t	f
717	9	t	f	f
717	3	t	f	f
718	9	f	t	f
718	38	f	t	f
718	6	f	f	t
718	18	f	f	t
718	19	f	f	t
718	3	t	f	f
718	47	f	f	t
719	9	f	t	f
719	3	t	f	f
720	15	t	f	f
721	12	f	f	f
721	22	t	f	f
722	12	t	f	f
722	21	t	f	f
722	22	t	f	f
723	37	f	t	f
723	6	t	f	f
723	19	f	f	f
723	47	t	f	f
724	5	t	f	f
724	2	t	f	f
725	15	t	f	f
726	9	t	f	f
726	3	t	f	f
727	9	t	f	f
727	3	t	f	f
727	15	f	t	f
728	15	t	f	f
729	9	f	t	f
729	38	f	t	f
729	6	f	f	t
729	18	f	f	t
729	19	f	f	t
729	3	t	f	f
729	28	t	f	f
729	29	t	f	f
729	47	f	f	t
730	13	f	f	t
730	9	f	t	f
730	8	t	f	f
731	12	t	f	f
731	22	t	f	f
732	9	f	t	f
732	6	f	f	t
732	18	f	f	t
732	19	f	f	t
732	3	t	f	f
732	47	f	f	t
733	5	f	t	f
733	2	t	f	f
734	9	f	t	f
734	6	f	f	t
734	18	f	f	t
734	19	f	f	t
734	3	t	f	f
734	47	f	f	t
735	15	t	f	f
736	15	t	f	f
743	9	f	t	f
743	3	f	t	f
743	15	t	f	f
744	9	f	t	f
744	3	t	f	f
744	2	f	f	t
745	6	t	f	f
745	18	t	f	f
745	19	t	f	f
745	5	f	t	f
745	47	t	f	f
746	1	t	f	f
747	11	t	f	f
748	1	t	f	f
749	9	t	f	f
749	37	t	f	f
749	38	f	f	f
749	3	f	t	f
749	27	f	f	f
749	28	f	f	f
749	29	f	f	f
750	9	t	f	f
751	9	t	f	f
751	37	f	f	f
751	38	f	f	f
751	3	f	t	f
751	27	f	f	f
751	28	f	f	f
751	29	f	f	f
752	9	t	f	f
752	3	f	t	f
753	9	t	f	f
753	3	t	f	f
754	6	t	f	f
754	18	f	t	f
754	19	t	f	f
754	47	t	f	f
755	12	t	f	f
755	6	f	t	f
755	19	f	t	f
755	47	f	f	f
756	6	t	f	f
756	18	f	t	f
756	19	t	f	f
756	5	f	t	f
756	47	t	f	f
757	6	t	f	f
757	18	f	t	f
757	19	t	f	f
757	5	f	t	f
757	47	t	f	f
758	15	t	f	f
759	9	t	f	f
759	3	t	f	f
760	6	t	f	f
760	18	t	f	f
760	19	f	t	f
760	47	t	f	f
761	9	t	f	f
761	3	t	f	f
762	9	f	t	f
762	6	t	f	f
762	18	f	f	t
762	19	t	f	f
762	3	f	t	f
762	47	t	f	f
763	5	t	f	f
764	15	t	f	f
765	6	t	f	f
765	18	f	t	f
765	19	t	f	f
765	5	f	t	f
765	47	t	f	f
766	13	f	t	f
766	9	t	f	f
766	8	t	f	f
767	9	f	f	t
767	6	t	f	f
767	18	f	t	f
767	19	t	f	f
767	3	f	f	t
767	15	f	t	f
767	47	t	f	f
768	15	t	f	f
769	6	t	f	f
769	18	f	t	f
769	19	t	f	f
769	5	f	t	f
769	47	t	f	f
770	6	t	f	f
770	18	f	t	f
770	19	t	f	f
770	5	f	t	f
770	47	t	f	f
771	6	t	f	f
771	18	f	f	f
771	19	t	t	f
771	5	f	t	f
771	47	t	f	f
772	5	f	t	f
772	2	t	f	f
773	6	t	f	f
773	18	f	t	f
773	19	t	f	f
773	5	f	t	f
773	47	t	f	f
774	6	t	f	f
774	18	f	t	f
774	19	t	f	f
774	5	f	t	f
774	47	t	f	f
775	6	t	f	f
775	18	f	t	f
775	19	t	f	f
775	5	f	t	f
775	47	t	f	f
776	9	t	f	f
776	38	t	f	f
777	13	f	t	f
777	9	t	f	f
777	38	t	f	f
777	8	t	f	f
777	40	t	f	f
778	3	t	f	f
778	30	t	f	f
779	12	t	f	f
779	22	t	f	f
780	13	f	t	f
780	9	t	f	f
780	38	f	f	f
780	6	t	f	f
780	18	f	f	f
780	19	f	f	t
780	47	f	f	t
781	6	t	f	f
781	19	t	f	f
781	47	t	f	f
782	9	t	f	f
782	38	f	f	f
782	3	t	f	f
782	28	f	f	f
782	29	f	f	f
783	13	f	t	f
783	9	t	f	f
783	38	f	f	f
783	8	t	f	f
783	40	t	f	f
784	15	t	f	f
785	9	t	f	f
785	38	t	f	f
785	3	f	t	f
786	1	f	t	f
786	13	f	f	t
786	7	t	f	f
787	9	t	f	f
787	38	f	f	f
787	6	t	f	f
787	19	t	f	f
787	3	t	f	f
787	28	f	f	f
787	29	f	f	f
787	47	t	f	f
789	12	t	f	f
791	9	t	f	f
791	3	t	f	f
791	2	f	t	f
792	11	t	f	f
793	1	t	f	f
794	9	t	f	f
795	12	t	f	f
796	15	t	f	f
797	19	t	f	f
797	47	t	f	f
798	9	t	f	f
798	3	f	t	f
798	2	f	f	t
799	12	t	f	f
800	15	t	f	f
801	37	f	t	f
801	15	t	f	f
802	9	t	f	f
803	9	f	f	t
803	37	f	t	f
803	3	t	f	f
804	5	f	t	f
804	2	t	f	f
805	6	t	f	f
805	19	t	f	f
805	5	f	t	f
805	47	t	f	f
806	4	t	f	f
806	41	f	f	f
807	12	f	t	f
807	9	t	f	f
808	7	t	f	f
809	5	f	t	f
809	2	t	f	f
810	9	t	f	f
810	3	t	f	f
811	1	f	t	f
811	7	t	f	f
812	9	t	f	f
813	13	f	t	f
813	9	t	f	f
814	12	t	f	f
814	22	f	t	f
815	9	t	f	f
815	3	t	f	f
816	9	t	f	f
816	3	t	f	f
817	13	t	f	f
818	12	t	f	f
818	21	t	f	f
819	12	t	f	f
819	21	f	t	f
820	12	f	f	t
820	5	f	t	f
820	2	t	f	f
821	15	t	f	f
824	1	f	t	f
824	14	f	t	f
824	7	t	f	f
824	42	f	f	f
825	5	f	t	f
825	2	t	f	f
826	1	f	t	f
826	14	f	f	t
826	7	t	f	f
826	42	f	f	f
828	8	t	f	f
828	39	t	f	f
829	1	f	t	f
829	7	t	f	f
829	42	f	f	t
833	6	t	f	f
833	18	t	f	f
833	19	t	f	f
833	47	t	f	f
834	9	t	f	f
834	3	t	f	f
835	2	f	f	f
836	12	t	f	f
837	9	f	t	f
837	3	t	f	f
838	9	t	f	f
839	9	f	t	f
839	3	t	f	f
840	1	t	f	f
840	10	f	f	f
841	9	t	f	f
842	15	t	f	f
843	6	t	f	f
843	18	t	f	f
843	47	t	f	f
844	6	t	f	f
844	18	f	t	f
844	19	t	f	f
844	47	t	f	f
845	2	t	f	f
846	5	f	t	f
846	2	t	f	f
847	6	t	f	f
847	20	t	f	f
847	48	t	f	f
848	13	f	f	t
848	10	f	f	f
848	9	f	t	f
848	8	t	f	f
849	1	f	t	f
849	14	f	f	f
849	10	f	f	f
849	7	t	f	f
850	11	t	f	f
851	4	t	f	f
852	15	t	f	f
853	1	f	t	f
853	14	f	f	f
853	7	t	f	f
854	13	f	f	t
854	9	f	t	f
854	8	t	f	f
855	13	f	f	t
855	9	f	t	f
855	8	t	f	f
856	11	t	f	f
857	15	t	f	f
859	31	t	f	f
860	31	t	f	f
861	13	t	f	f
861	12	t	f	f
862	3	t	f	f
862	30	t	f	f
863	3	t	f	f
863	30	t	f	f
866	12	t	t	f
866	21	t	f	t
866	22	t	f	t
867	12	t	f	f
869	12	t	f	f
870	15	t	f	f
871	12	t	f	f
871	21	f	f	f
871	22	f	f	f
873	12	f	f	f
873	22	t	f	f
879	13	t	f	f
880	13	t	f	f
882	12	f	f	f
882	21	t	f	f
885	13	t	f	f
886	12	t	f	f
887	13	t	f	f
888	13	t	f	f
889	6	f	f	f
889	20	t	f	f
889	48	t	f	f
890	6	f	f	f
890	18	t	f	f
890	47	t	f	f
892	31	t	f	f
893	31	t	f	f
894	1	f	t	f
894	10	f	f	t
894	7	t	f	f
895	13	f	t	f
895	9	t	f	f
895	8	t	f	f
896	5	f	t	f
896	2	t	f	f
897	9	t	f	f
897	6	f	t	f
897	18	f	t	f
897	19	f	t	f
897	47	f	t	f
898	13	f	f	t
898	9	t	f	f
898	8	f	t	f
899	1	t	f	f
900	9	t	f	f
900	6	f	t	f
900	19	f	t	f
900	47	f	t	f
901	13	f	f	t
901	9	f	t	f
901	8	t	f	f
902	9	t	f	f
903	9	t	f	f
903	3	t	f	f
904	12	f	f	t
904	9	t	f	f
904	37	t	f	f
904	3	f	t	f
905	12	f	t	f
905	9	t	f	f
905	3	t	f	f
906	12	f	t	f
906	9	t	f	f
906	37	t	f	f
906	3	t	f	f
906	28	t	f	f
907	12	f	t	f
907	9	t	f	f
907	3	t	f	f
908	12	f	t	f
908	9	t	f	f
908	37	f	f	f
908	3	t	f	f
908	28	f	f	f
909	12	f	t	f
909	9	t	f	f
909	3	t	f	f
910	13	f	t	f
910	9	t	f	f
910	8	t	f	f
910	6	f	f	t
910	19	f	f	t
910	47	f	f	t
911	1	f	t	f
911	7	t	f	f
911	15	f	f	t
912	5	f	t	f
912	2	t	f	f
913	9	t	f	f
913	37	f	f	f
913	3	t	f	f
913	28	t	f	f
914	2	t	f	f
915	6	t	f	f
915	18	f	t	f
915	19	t	f	f
915	5	f	t	f
915	47	t	f	f
916	1	f	f	t
916	14	f	t	f
916	6	f	f	f
916	20	t	f	f
916	48	t	f	f
917	1	t	f	f
917	10	t	f	f
918	9	t	f	f
918	3	t	f	f
919	13	f	t	f
919	9	t	f	f
919	8	t	f	f
920	1	f	t	f
920	10	f	f	t
920	7	t	f	f
921	4	t	f	f
921	41	t	f	f
922	14	t	f	f
922	41	t	f	f
923	9	t	f	f
923	6	f	t	f
923	18	f	f	t
923	19	f	t	f
923	5	f	f	t
923	47	f	t	f
924	9	t	f	f
924	37	t	f	f
924	38	t	f	f
924	3	f	t	f
924	28	f	t	f
925	12	f	t	f
925	9	t	f	f
925	3	t	f	f
926	9	t	f	f
926	3	t	f	f
927	9	t	f	f
927	6	f	t	f
927	19	f	t	f
927	47	f	t	f
928	13	f	t	f
928	9	t	f	f
928	8	t	f	f
929	13	f	t	f
929	9	t	f	f
929	8	t	f	f
930	13	f	t	f
930	9	t	f	f
930	8	t	f	f
931	13	f	t	f
931	9	t	f	f
931	3	f	t	f
932	13	f	f	t
932	9	f	t	f
932	8	f	t	f
932	6	t	f	f
932	18	t	f	f
932	19	t	f	f
932	4	f	f	t
932	47	t	f	f
933	6	t	f	f
933	18	t	f	f
933	4	f	t	f
933	41	f	f	f
933	47	t	f	f
934	1	t	f	f
934	16	t	f	f
934	17	t	f	f
935	9	t	f	f
936	12	t	f	f
936	21	f	f	f
937	1	f	t	f
937	13	f	f	f
937	7	t	f	f
938	3	t	f	f
938	30	t	f	f
939	15	t	f	f
940	12	f	f	f
940	21	t	f	f
941	9	f	t	f
941	3	t	f	f
942	15	t	f	f
943	12	t	f	f
943	22	t	f	f
944	9	t	f	f
945	9	t	f	f
945	38	f	f	f
946	11	t	f	f
946	32	f	f	f
947	5	t	f	f
947	34	f	f	f
948	5	f	t	f
948	2	t	f	f
949	5	t	f	f
949	35	f	f	f
949	36	f	f	f
950	19	f	f	f
950	2	t	f	f
950	24	f	f	f
950	47	f	f	f
951	19	f	f	f
951	2	t	f	f
951	23	f	f	f
951	47	f	f	f
952	6	t	f	f
952	18	f	t	f
952	19	t	f	f
952	47	t	f	f
953	5	t	f	f
954	14	t	f	f
954	10	f	f	t
954	7	t	f	f
955	1	f	t	f
955	13	f	f	t
955	7	t	f	f
956	6	t	f	f
956	18	t	f	f
956	4	f	t	f
956	41	f	f	f
956	47	t	f	f
957	14	f	t	f
957	7	t	f	f
958	2	t	f	f
959	15	t	f	f
960	11	t	f	f
960	33	f	f	f
961	13	f	f	t
961	9	t	f	f
961	8	f	t	f
962	13	f	f	f
962	9	f	t	f
962	8	t	f	f
963	13	f	f	t
963	9	f	t	f
963	8	t	f	f
964	9	f	t	f
964	3	t	f	f
965	9	f	t	f
965	3	t	f	f
966	9	f	t	f
966	3	t	f	f
967	38	f	f	f
967	3	t	f	f
967	27	f	f	f
967	28	f	f	f
967	29	f	f	f
968	13	f	t	f
968	9	t	f	f
968	3	t	f	f
969	5	t	f	f
969	35	f	f	f
969	36	f	f	f
970	1	f	t	f
970	14	f	f	t
970	7	t	f	f
971	1	f	t	f
971	14	f	f	t
971	7	t	f	f
972	1	f	t	f
972	14	f	f	t
972	7	t	f	f
973	14	f	t	f
973	6	t	f	f
973	20	t	f	f
973	48	t	f	f
974	1	f	f	t
974	7	t	f	f
974	20	f	t	f
974	48	f	f	f
975	1	f	f	t
975	7	t	f	f
975	20	f	t	f
975	48	f	f	f
976	15	t	f	f
977	15	t	f	f
978	15	t	f	f
979	7	t	f	f
980	7	t	f	f
981	7	t	f	f
983	1	t	f	f
983	10	f	t	f
983	25	f	f	f
983	26	f	f	f
984	1	t	f	f
985	1	t	f	f
985	16	f	f	f
985	17	f	f	f
986	2	t	f	f
987	5	f	t	f
987	2	t	f	f
987	23	t	f	f
988	2	t	f	f
988	24	f	f	f
989	19	f	f	t
989	5	f	t	f
989	2	t	f	f
989	24	f	f	f
989	47	f	f	f
990	2	t	f	f
990	24	f	f	f
991	19	f	f	t
991	2	t	f	f
991	24	f	f	f
991	47	f	f	f
992	2	t	f	f
993	2	t	f	f
993	23	t	f	f
994	2	t	f	f
994	24	f	f	f
995	19	f	f	t
995	2	t	f	f
995	24	f	f	f
995	47	f	f	f
996	2	t	f	f
996	24	f	f	f
997	19	f	f	t
997	2	t	f	f
997	24	f	f	f
997	47	f	f	f
998	8	f	f	f
998	39	t	f	f
999	3	t	f	f
1000	8	f	f	f
1000	39	t	f	f
1001	20	t	f	f
1001	48	t	f	f
1003	12	t	f	f
1003	22	f	f	f
1004	12	t	f	f
1004	22	f	f	f
1005	9	t	f	f
1005	37	f	f	f
1006	13	f	t	f
1006	9	t	f	f
1007	13	f	t	f
1007	9	t	f	f
1008	9	t	f	f
1008	27	t	f	f
1008	50	t	f	f
1010	13	f	f	f
1010	9	t	f	f
1011	13	t	f	f
1011	9	t	f	f
1012	9	t	f	f
1012	38	f	f	f
1015	6	t	f	f
1015	18	t	f	f
1015	47	t	f	f
1016	6	t	f	f
1016	19	t	f	f
1016	47	t	f	f
1017	13	f	t	f
1017	9	t	f	f
1017	8	t	f	f
1018	13	f	f	t
1018	9	f	t	f
1018	8	t	f	f
1018	40	f	f	f
1020	10	t	f	f
1021	1	t	f	f
1021	16	t	f	f
1021	17	t	f	f
1022	5	t	f	f
1022	35	f	f	f
1022	36	f	f	f
1023	5	t	f	f
1023	35	f	f	f
1023	36	f	f	f
1024	6	t	f	f
1024	18	t	f	f
1024	47	t	f	f
1025	6	t	f	f
1025	18	t	f	f
1025	47	t	f	f
1026	5	t	f	f
1027	6	f	f	f
1027	19	t	f	f
1027	47	t	f	f
1028	5	t	f	f
1028	35	f	f	f
1028	36	f	f	f
1031	6	t	f	f
1031	18	t	f	f
1031	4	f	t	f
1031	47	t	f	f
1032	1	t	f	f
1032	16	t	f	f
1032	17	t	f	f
1033	13	f	f	t
1033	9	f	t	f
1033	8	t	f	f
1033	40	f	f	f
1035	6	t	f	f
1035	20	t	f	f
1035	48	t	f	f
1036	6	t	f	f
1036	20	t	f	f
1036	48	t	f	f
1037	6	t	f	f
1037	20	t	f	f
1037	48	t	f	f
1038	5	t	f	f
1039	15	t	f	f
1041	15	t	f	f
1042	15	t	f	f
1043	11	t	f	f
1044	1	t	f	f
1044	16	t	f	f
1046	1	t	f	f
1046	10	f	t	f
1046	25	f	f	f
1046	26	f	f	f
1049	1	t	f	f
1049	16	f	f	f
1049	17	f	f	f
1050	4	f	f	f
1050	41	t	f	f
1054	6	t	f	f
1054	18	t	f	f
1054	19	t	f	f
1054	47	t	f	f
1055	1	t	f	f
1055	16	t	f	f
1055	17	t	f	f
1056	9	t	f	f
1057	9	t	f	f
1057	3	t	f	f
1058	19	f	f	f
1058	2	t	f	f
1058	23	f	f	f
1058	47	f	f	f
1059	9	t	f	f
1060	10	t	f	f
1060	26	f	f	f
1061	25	f	f	f
1062	6	t	f	f
1062	18	t	f	f
1062	47	t	f	f
1063	13	f	t	f
1063	9	t	f	f
1063	8	t	f	f
1063	40	f	f	f
1064	19	f	f	f
1064	2	t	f	f
1064	23	f	f	f
1064	47	f	f	f
1065	5	t	f	f
1065	34	f	f	f
1065	35	f	f	f
1065	36	f	f	f
1066	6	t	f	f
1066	20	t	f	f
1066	48	t	f	f
1068	6	t	f	f
1068	18	t	f	f
1068	47	t	f	f
1069	19	f	f	f
1069	5	f	t	f
1069	2	t	f	f
1069	23	f	f	f
1069	47	f	f	f
1070	19	f	f	f
1070	5	f	t	f
1070	2	t	f	f
1070	23	f	f	f
1070	47	f	f	f
1071	6	t	f	f
1071	18	t	f	f
1071	19	t	f	f
1071	5	f	t	f
1071	47	t	f	f
1072	9	t	f	f
1073	9	t	f	f
1073	38	f	f	f
1074	9	t	f	f
1075	6	t	f	f
1075	20	t	f	f
1075	47	t	f	f
1075	48	t	f	f
1076	9	t	f	f
1076	3	t	f	f
1077	9	t	f	f
1078	9	t	f	f
1079	9	t	f	f
1079	3	t	f	f
1080	9	t	f	f
1080	3	t	f	f
1081	9	t	f	f
1082	9	t	f	f
1082	3	t	f	f
1083	9	t	f	f
1083	3	t	f	f
1084	6	t	f	f
1084	18	t	f	f
1084	19	t	f	f
1084	20	t	f	f
1084	47	t	f	f
1084	48	t	f	f
1085	9	t	f	f
1085	3	t	f	f
1086	9	t	f	f
1086	6	f	t	f
1086	18	f	t	f
1086	19	f	t	f
1086	3	t	f	f
1086	47	f	f	f
1087	9	t	f	f
1087	3	t	f	f
1088	2	f	f	f
1089	9	t	f	f
1089	6	f	f	t
1089	19	f	f	t
1089	3	t	f	f
1089	2	f	t	f
1089	47	f	f	f
1090	1	t	f	f
1090	37	t	f	f
1091	37	t	f	f
1091	6	t	f	f
1091	18	t	f	f
1091	19	t	f	f
1091	5	t	f	f
1091	47	t	f	f
1092	37	t	f	f
1092	20	t	f	f
1092	48	t	f	f
1093	37	t	f	f
1093	2	t	f	f
1094	11	t	f	f
1095	11	t	f	f
1095	9	t	f	f
1095	37	t	f	f
1095	6	t	f	f
1095	18	t	f	f
1095	19	t	f	f
1095	47	t	f	f
1096	11	t	f	f
1097	11	t	f	f
1097	9	t	f	f
1097	8	t	f	f
1097	3	f	t	f
1098	12	t	f	f
1098	21	t	f	f
1098	9	t	f	f
1098	3	t	f	f
1098	30	t	f	f
1099	12	t	f	f
1099	21	t	f	f
1099	9	t	f	f
1099	3	t	f	f
1099	30	t	f	f
1100	11	t	f	f
1100	9	t	f	f
1100	37	t	f	f
1101	11	t	f	f
1101	9	t	f	f
1101	37	t	f	f
1102	37	t	f	f
1102	6	t	f	f
1102	18	t	f	f
1102	19	t	f	f
1102	47	t	f	f
1103	9	t	f	f
1103	3	t	f	f
1104	11	t	f	f
1104	8	t	f	f
1104	3	t	f	f
1105	11	t	f	f
1105	9	t	f	f
1105	3	t	f	f
1106	11	t	f	f
1106	9	t	f	f
1106	3	t	f	f
1107	11	t	f	f
1107	9	t	f	f
1107	3	t	f	f
1108	11	t	f	f
1108	9	t	f	f
1108	3	t	f	f
1109	11	t	f	f
1110	1	t	f	f
1110	7	t	f	f
1111	1	t	f	f
1111	9	t	f	f
1111	7	t	f	f
1111	3	t	f	f
1112	1	t	f	f
1112	9	t	f	f
1112	7	t	f	f
1112	3	t	f	f
1113	9	t	f	f
1113	3	t	f	f
1114	11	t	f	f
1114	37	t	f	f
1114	47	f	t	f
1114	48	f	t	f
1115	11	t	f	f
1115	9	t	f	f
1115	3	t	f	f
1116	11	t	f	f
1117	11	t	f	f
1118	9	t	f	f
1119	11	t	f	f
1119	9	t	f	f
1119	2	t	f	f
1120	12	t	f	f
1120	7	t	f	f
1120	5	t	f	f
1121	11	t	f	f
1121	9	t	f	f
1121	3	t	f	f
1122	9	t	f	f
1122	47	t	f	f
1124	11	t	f	f
1124	9	t	f	f
1124	8	t	f	f
1124	3	t	f	f
1125	9	t	f	f
1126	9	t	f	f
1126	38	f	f	f
1127	9	t	f	f
1128	12	t	f	f
1128	21	f	f	f
1129	12	t	f	f
1129	21	f	f	f
1130	6	t	f	f
1130	18	t	f	f
1130	19	t	f	f
1130	20	t	f	f
1130	47	t	f	f
1130	48	t	f	f
1131	6	t	f	f
1131	18	t	f	f
1131	19	t	f	f
1131	20	t	f	f
1131	47	t	f	f
1131	48	t	f	f
1132	9	t	f	f
1132	37	f	f	f
1132	3	t	f	f
1132	27	f	f	f
1132	28	f	f	f
1132	29	f	f	f
1133	9	t	f	f
1133	3	t	f	f
1134	9	t	f	f
1134	3	t	f	f
1136	5	f	t	f
1136	2	t	f	f
1136	24	f	f	f
1137	5	f	t	f
1137	2	t	f	f
1137	24	f	f	f
1138	5	f	t	f
1138	2	t	f	f
1139	5	f	t	f
1139	2	t	f	f
1139	24	f	f	f
1140	9	t	f	f
1140	37	f	f	f
1141	5	f	t	f
1141	2	t	f	f
1142	12	t	f	f
1143	5	f	t	f
1143	2	t	f	f
1143	24	f	f	f
1144	5	t	f	f
1145	14	t	f	f
1145	6	t	f	f
1145	18	f	f	f
1145	19	t	t	f
1145	4	f	t	f
1145	47	t	f	f
1146	4	t	f	f
1146	41	t	f	f
1147	12	t	f	f
1149	5	t	f	f
1153	9	t	f	f
1153	3	t	f	f
1154	12	f	t	f
1154	9	t	f	f
1154	3	t	f	f
1155	12	f	t	f
1155	9	t	f	f
1155	3	t	f	f
1156	9	t	f	f
1156	3	t	f	f
1157	12	f	t	f
1157	15	t	f	f
1158	10	t	f	f
1158	43	f	f	f
1159	10	t	f	f
1159	26	f	f	f
1159	43	f	f	f
1160	10	t	f	f
1160	26	f	f	f
1160	43	f	f	f
1161	11	t	f	f
1161	33	f	f	f
1162	11	t	f	f
1163	11	t	f	f
1163	33	f	f	f
1164	1	t	f	f
1164	10	t	f	f
1166	18	t	f	f
1166	4	t	f	f
1166	47	t	f	f
1171	1	f	t	f
1171	10	f	f	t
1171	7	t	f	f
1172	11	t	f	f
1172	32	f	f	f
1173	25	f	f	f
1174	10	t	f	f
1174	26	f	f	f
1175	5	t	f	f
1175	2	f	t	f
1176	5	t	f	f
1176	2	f	t	f
1177	5	t	f	f
1177	34	f	f	f
1178	6	t	f	f
1178	18	t	f	f
1178	19	t	f	f
1178	5	f	t	f
1178	47	t	f	f
1179	6	t	f	f
1179	18	t	f	f
1179	19	t	f	f
1179	5	f	t	f
1179	47	t	f	f
1181	5	t	f	f
1181	2	f	t	f
1182	5	t	f	f
1182	35	f	f	f
1182	36	f	f	f
1182	2	f	t	f
1183	25	f	f	f
1184	14	f	t	f
1184	6	t	f	f
1184	20	t	f	f
1184	48	t	f	f
1186	6	f	f	f
1186	20	t	f	f
1186	48	t	f	f
1187	9	t	f	f
1187	3	t	f	f
1188	9	t	f	f
1188	3	t	f	f
1189	9	t	f	f
1189	3	t	f	f
1190	9	t	f	f
1190	3	t	f	f
1191	9	t	f	f
1191	3	t	f	f
1192	9	t	f	f
1192	3	t	f	f
1193	9	t	f	f
1193	3	t	f	f
1198	8	t	f	f
1198	39	t	f	f
1199	11	f	f	f
1199	9	f	f	f
1199	8	f	f	f
1199	3	f	f	f
1200	11	f	t	f
1200	9	f	t	f
1200	8	f	t	f
1200	3	f	t	f
1201	11	f	f	f
1201	9	f	f	f
1201	8	f	f	f
1201	3	f	f	f
1202	8	t	f	f
1203	8	t	f	f
1204	11	t	f	f
1204	33	t	f	f
1207	7	t	f	f
1207	6	t	f	f
1207	19	t	f	f
1207	20	t	f	f
1207	47	t	f	f
1207	48	t	f	f
1208	7	t	f	f
1208	6	t	f	f
1208	19	t	f	f
1208	20	t	f	f
1208	47	t	f	f
1208	48	t	f	f
1209	10	t	f	f
1209	26	t	f	f
1211	12	t	f	f
1211	9	t	f	f
1211	6	t	f	f
1211	19	t	f	f
1211	15	f	f	f
1211	47	t	f	f
1212	3	t	f	f
1214	9	t	f	f
1215	3	t	f	f
1216	10	t	f	f
1216	15	t	f	f
1217	46	t	f	f
1219	21	t	f	f
1219	42	t	f	f
1222	11	t	f	f
1223	11	t	f	f
1224	48	t	f	f
1225	10	t	f	f
1226	10	t	f	f
1226	26	t	f	f
1227	10	t	f	f
1227	25	t	f	f
1228	10	t	f	f
1228	25	t	f	f
1229	10	t	f	f
1229	25	t	f	f
1230	9	t	f	f
1230	3	t	f	f
1231	4	t	f	f
1232	1	t	f	f
1233	1	t	f	f
1234	10	t	f	f
1244	4	t	f	f
1245	4	t	f	f
1246	4	t	f	f
1250	14	t	f	f
1250	48	t	f	f
1251	13	t	f	f
1251	7	t	f	f
1251	6	t	f	f
1252	13	t	f	f
1252	7	t	f	f
1252	6	t	f	f
1255	9	t	f	f
1255	3	t	f	f
1258	9	t	f	f
1258	3	t	f	f
1260	9	t	f	f
1260	3	t	f	f
1262	11	t	f	f
1262	32	t	f	f
1264	13	t	f	f
1265	9	t	f	f
1265	3	t	f	f
1268	13	f	t	f
1268	9	t	f	f
1268	8	t	f	f
1269	9	t	f	f
1269	37	t	f	f
1270	9	t	f	f
1270	3	t	f	f
1282	7	t	f	f
1285	47	t	f	f
1290	1	t	f	f
1290	47	t	f	f
1291	2	t	f	f
1292	12	t	f	f
1292	2	t	f	f
1293	12	t	f	f
1293	2	t	f	f
1294	2	t	f	f
1295	2	t	f	f
1298	14	t	f	f
1300	41	t	f	f
1301	42	t	f	f
1308	49	t	f	f
1309	49	t	f	f
1311	3	t	f	f
1312	3	t	f	f
1313	3	t	f	f
1314	13	t	f	f
1315	13	t	f	f
1315	9	t	f	f
1315	7	t	f	f
1316	3	t	f	f
1316	30	t	f	f
1317	9	t	f	f
1318	9	t	f	f
1319	13	t	f	f
1319	9	t	f	f
1319	7	t	f	f
1320	15	t	f	f
1321	9	t	f	f
1322	9	t	f	f
1323	9	t	f	f
1325	9	t	f	f
1329	8	t	f	f
1330	8	t	f	f
1331	11	t	f	f
1332	8	t	f	f
1333	12	t	f	f
1334	8	t	f	f
1335	8	t	f	f
1337	8	t	f	f
1338	8	t	f	f
1340	8	t	f	f
1341	49	t	f	f
1342	8	t	f	f
1343	49	t	f	f
1344	8	t	f	f
1345	8	t	f	f
1346	49	t	f	f
1347	8	t	f	f
1348	49	t	f	f
1349	8	t	f	f
1350	9	t	f	f
1350	8	t	f	f
1351	9	t	f	f
1351	8	t	f	f
1352	9	t	f	f
1352	8	t	f	f
1353	9	t	f	f
1354	9	t	f	f
1355	9	t	f	f
1356	9	t	f	f
1357	9	t	f	f
1358	49	t	f	f
1359	9	t	f	f
1363	9	t	f	f
1365	9	t	f	f
1366	11	t	f	f
1366	33	t	f	f
1367	11	t	f	f
1367	33	t	f	f
1369	11	t	f	f
1369	33	t	f	f
1371	3	t	f	f
1372	10	t	f	f
1372	15	t	f	f
1373	13	f	t	f
1373	9	t	f	f
1373	8	t	f	f
1373	15	t	f	f
1373	43	f	f	f
1375	46	t	f	f
1376	5	t	f	f
1378	5	t	f	f
1379	31	t	f	f
1380	31	t	f	f
1381	9	t	f	f
1381	3	t	f	f
1382	46	t	f	f
1383	13	f	t	f
1383	9	t	f	f
1383	8	t	f	f
1384	9	t	f	f
1384	3	t	f	f
1385	13	t	f	f
1385	9	f	t	f
1386	12	t	f	f
1386	15	t	f	f
1387	12	t	f	f
1387	15	t	f	f
1388	13	t	f	f
1389	12	t	f	f
1389	9	t	f	f
1389	6	t	f	f
1389	19	t	f	f
1389	15	f	f	f
1389	47	t	f	f
1390	13	t	f	f
1391	12	t	f	f
1391	9	t	f	f
1391	6	t	f	f
1391	19	t	f	f
1391	15	f	f	f
1391	47	t	f	f
1392	1	t	f	f
1392	12	t	f	f
1392	6	t	f	f
1392	19	t	f	f
1392	5	t	f	f
1392	15	t	f	f
1392	47	t	f	f
1393	13	t	f	f
1394	13	t	f	f
1395	12	t	f	f
1395	9	t	f	f
1395	6	t	f	f
1395	19	t	f	f
1395	15	f	f	f
1395	47	t	f	f
1396	13	t	f	f
1397	13	t	f	f
1398	13	t	f	f
1399	9	t	f	f
1399	3	t	f	f
1400	13	t	f	f
1401	13	t	f	f
1402	13	t	f	f
1403	13	t	f	f
1404	13	t	f	f
1405	13	t	f	f
1407	9	t	f	f
1407	37	f	f	f
1408	9	t	f	f
1408	37	f	f	f
1409	9	t	f	f
1409	37	f	f	f
1410	30	t	f	f
1411	9	t	f	f
1411	37	f	f	f
1414	12	t	f	f
1414	21	t	f	f
1416	15	t	f	f
1417	7	t	f	f
1421	7	t	f	f
1421	6	t	f	f
1421	19	t	f	f
1421	20	t	f	f
1421	47	t	f	f
1421	48	t	f	f
1425	15	t	f	f
1432	30	t	f	f
1433	11	t	f	f
1433	32	t	f	f
1434	13	t	f	f
1434	9	t	f	f
1434	2	f	t	f
1435	11	t	f	f
1435	32	t	f	f
1436	3	t	f	f
1437	11	t	f	f
1438	3	t	f	f
1439	11	t	f	f
1440	3	t	f	f
1441	11	t	f	f
1442	11	t	f	f
1444	11	t	f	f
1445	9	t	f	f
1445	3	t	f	f
1447	11	t	f	f
1448	9	t	f	f
1448	3	t	f	f
1449	11	t	f	f
1450	11	t	f	f
1451	11	t	f	f
1452	9	t	f	f
1452	3	t	f	f
1453	11	t	f	f
1454	11	t	f	f
1455	46	t	f	f
1456	46	t	f	f
1457	46	t	f	f
1458	21	t	f	f
1458	42	t	f	f
1459	46	t	f	f
1460	46	t	f	f
1463	9	t	f	f
1463	30	t	f	f
1464	46	t	f	f
1465	6	t	f	f
1465	19	t	f	f
1465	47	t	f	f
1467	13	t	f	f
1467	7	t	f	f
1468	46	t	f	f
1469	9	t	f	f
1470	27	t	f	f
1471	9	t	f	f
1471	6	t	f	f
1471	19	t	f	f
1471	20	t	f	f
1471	2	t	f	f
1471	47	t	f	f
1471	48	t	f	f
1472	27	t	f	f
1473	27	t	f	f
1474	3	t	f	f
1474	30	t	f	f
1475	27	t	f	f
1476	3	t	f	f
1476	30	f	f	f
1477	27	t	f	f
1478	27	t	f	f
1479	3	t	f	f
1479	30	t	f	f
1480	30	t	f	f
1481	27	t	f	f
1482	27	t	f	f
1483	3	t	f	f
1483	30	t	f	f
1484	9	t	f	f
1484	37	t	f	f
1485	9	t	f	f
1485	37	t	f	f
1486	3	t	f	f
1487	9	t	f	f
1487	37	t	f	f
1489	1	t	f	f
1490	1	t	f	f
1490	10	t	f	f
1491	1	t	f	f
1492	5	f	t	f
1492	2	t	f	f
1492	24	f	f	f
1493	5	f	t	f
1493	2	t	f	f
1493	24	f	f	f
1494	1	f	t	f
1494	7	t	f	f
1495	1	f	t	f
1495	7	t	f	f
1496	1	f	t	f
1496	7	t	f	f
1497	1	f	t	f
1497	7	t	f	f
1498	9	t	f	f
1499	9	t	f	f
1499	3	t	f	f
1500	9	t	f	f
1500	3	t	f	f
1501	11	t	f	f
1502	11	t	f	f
1502	33	f	f	f
1503	9	t	f	f
1503	3	t	f	f
1504	27	t	f	f
1504	50	t	f	f
1505	9	t	f	f
1505	37	t	f	f
1506	48	t	f	f
1507	2	t	f	f
1508	47	t	f	f
1509	47	t	f	f
1510	27	t	f	f
1510	50	t	f	f
1511	9	t	f	f
1511	37	t	f	f
1512	9	t	f	f
1513	5	f	t	f
1513	2	t	f	f
1514	1	t	f	f
1514	7	t	f	f
1515	7	t	f	f
1516	48	t	f	f
1517	7	t	f	f
1519	13	f	t	f
1519	9	t	f	f
1519	3	t	f	f
1520	13	f	t	f
1520	9	t	f	f
1520	3	t	f	f
1521	9	t	f	f
1521	3	t	f	f
1522	12	t	f	f
1522	15	t	f	f
1523	11	t	f	f
1524	9	t	f	f
1524	3	t	f	f
1525	9	t	f	f
1525	3	t	f	f
1526	9	t	f	f
1526	3	t	f	f
1527	9	t	f	f
1527	3	t	f	f
1528	12	t	f	f
1529	12	t	f	f
1530	1	t	f	f
1532	12	t	f	f
1532	21	t	f	f
1533	12	t	f	f
1533	21	t	f	f
1534	12	t	f	f
1535	12	t	f	f
1536	12	t	f	f
1537	15	t	f	f
1538	12	t	f	f
1538	15	t	f	f
1539	15	t	f	f
1540	15	t	f	f
1541	12	t	f	f
1542	12	t	f	f
1543	12	t	f	f
1544	12	t	f	f
1544	21	f	f	f
1545	12	t	f	f
1546	12	t	f	f
1547	12	t	f	f
1548	6	f	f	t
1548	19	t	f	f
1548	5	f	t	f
1548	2	t	f	f
1548	47	t	f	f
1549	1	t	f	f
1549	7	t	f	f
1550	5	f	t	f
1550	2	t	f	f
1551	2	t	f	f
1552	48	t	f	f
1553	5	t	f	f
1554	12	t	f	f
1555	1	t	f	f
1557	1	f	t	f
1557	7	f	f	f
1558	1	t	f	f
1558	7	t	f	f
1559	1	t	f	f
1559	7	t	f	f
1560	1	t	f	f
1560	7	t	f	f
1561	12	t	f	f
1561	21	t	f	f
1562	12	t	f	f
1562	21	t	f	f
1563	1	f	t	f
1563	10	f	f	t
1563	7	t	f	f
1564	14	t	f	f
1564	10	f	f	t
1564	7	t	f	f
1565	14	t	f	f
1565	10	f	f	t
1565	7	t	f	f
1566	1	t	f	f
1567	1	t	f	f
1568	1	t	f	f
1569	9	t	f	f
1569	3	t	f	f
1570	50	t	f	f
1571	9	t	f	f
1572	15	t	f	f
1573	8	t	f	f
1574	5	f	t	f
1574	2	t	f	f
1576	9	t	f	f
1576	3	t	f	f
1577	9	t	f	f
1577	37	f	f	f
1577	38	f	f	f
1577	3	f	t	f
1577	27	f	f	f
1577	28	f	f	f
1577	29	f	f	f
1578	9	t	f	f
1578	3	t	f	f
1579	9	t	f	f
1579	3	t	f	f
1580	9	t	f	f
1580	3	t	f	f
1581	9	t	f	f
1581	3	t	f	f
1582	9	t	f	f
1582	37	f	f	f
1582	38	f	f	f
1582	3	f	t	f
1582	27	f	f	f
1582	28	f	f	f
1582	29	f	f	f
1583	9	t	f	f
1583	3	t	f	f
1584	9	t	f	f
1584	3	t	f	f
1585	9	t	f	f
1585	3	t	f	f
1586	12	t	f	f
1587	2	t	f	f
1587	24	f	f	f
1588	2	t	f	f
1588	24	f	f	f
1589	5	t	f	f
1589	35	f	f	f
1589	36	f	f	f
1590	5	f	t	f
1590	2	t	f	f
1590	24	f	f	f
1591	9	t	f	f
1591	3	t	f	f
1592	12	t	f	f
1593	12	t	f	f
1593	6	f	t	f
1594	13	t	f	f
1594	9	t	f	f
1594	8	t	f	f
1595	3	t	f	f
1596	3	t	f	f
1597	11	t	f	f
1598	47	t	f	f
1598	48	t	f	f
1599	8	t	f	f
1600	11	t	f	f
1601	9	t	f	f
1601	3	t	f	f
1602	9	t	f	f
1602	3	t	f	f
1603	14	t	f	f
1603	10	f	f	t
1603	7	t	f	f
1604	14	f	t	f
1604	7	t	f	f
1605	1	f	t	f
1605	10	f	f	t
1605	7	t	f	f
1606	14	f	t	f
1606	7	t	f	f
1607	1	f	t	f
1607	10	f	f	t
1607	7	t	f	f
1608	5	f	t	f
1608	2	t	f	f
1608	24	f	f	f
1609	5	f	t	f
1609	2	t	f	f
1609	24	f	f	f
1610	47	t	f	f
1611	48	t	f	f
1612	2	t	f	f
1612	24	f	f	f
1613	6	t	f	f
1613	18	t	f	f
1613	19	t	f	f
1613	5	f	t	f
1613	47	t	f	f
1614	6	t	f	f
1614	18	f	t	f
1614	19	t	f	f
1614	47	t	f	f
1615	6	t	f	f
1615	18	f	t	f
1615	19	t	f	f
1615	47	t	f	f
1616	2	t	f	f
1616	24	f	f	f
1617	2	t	f	f
1617	24	f	f	f
1618	6	t	f	f
1618	20	t	f	f
1618	48	t	f	f
1619	6	t	f	f
1619	19	t	f	f
1619	47	t	f	f
1620	6	t	f	f
1620	19	t	f	f
1620	47	t	f	f
1621	6	t	f	f
1621	18	f	t	f
1621	19	t	f	f
1621	5	f	t	f
1621	47	t	f	f
1622	6	t	f	f
1622	19	t	f	f
1622	5	f	t	f
1622	47	t	f	f
1623	6	t	f	f
1623	20	t	f	f
1623	48	t	f	f
1624	6	t	f	f
1624	18	t	f	f
1624	19	f	t	f
1624	4	f	t	f
1624	41	f	f	f
1624	47	t	f	f
1625	13	f	t	f
1625	9	t	f	f
1625	8	t	f	f
1625	15	t	f	f
1625	43	f	f	f
1626	10	t	f	f
1627	13	t	f	f
1627	9	t	f	f
1628	6	t	f	f
1628	19	t	f	f
1628	5	f	t	f
1628	47	t	f	f
1629	47	t	f	f
1630	13	t	f	f
1630	9	t	f	f
1631	13	t	f	f
1631	9	t	f	f
1632	13	t	f	f
1632	9	t	f	f
1633	13	t	f	f
1633	9	t	f	f
1634	6	t	f	f
1634	18	f	f	f
1634	19	f	f	f
1634	47	t	f	f
1635	47	t	f	f
1636	6	t	f	f
1636	18	t	f	f
1636	47	t	f	f
1637	6	t	f	f
1637	19	t	f	f
1637	47	t	f	f
1638	6	t	f	f
1638	19	t	f	f
1638	47	t	f	f
1639	10	t	f	f
1640	1	f	t	f
1640	10	f	f	t
1640	7	t	f	f
1641	14	f	t	f
1641	7	t	f	f
1642	12	t	f	f
1642	10	t	f	f
1643	10	t	f	f
1644	12	t	f	f
1645	5	f	t	f
1645	2	t	f	f
1646	5	t	f	f
1647	1	f	t	f
1647	9	t	f	f
1647	7	t	f	f
1647	3	t	f	f
1648	1	f	t	f
1648	9	t	f	f
1648	7	t	f	f
1648	3	t	f	f
1649	9	t	f	f
1649	3	t	f	f
1650	1	f	t	f
1650	7	t	f	f
1651	1	f	t	f
1651	7	t	f	f
1652	12	t	f	f
1653	5	f	t	f
1653	2	t	f	f
1654	5	f	t	f
1654	2	t	f	f
1655	5	f	t	f
1655	2	t	f	f
1656	2	t	f	f
1657	47	t	f	f
1658	7	t	f	f
1659	1	f	t	f
1659	7	t	f	f
1660	48	t	f	f
1661	7	t	f	f
1662	4	t	f	f
1663	4	t	f	f
1664	13	t	f	f
1665	47	t	f	f
1666	1	t	f	f
1667	1	t	f	f
1668	5	t	f	f
1669	13	t	f	f
1669	9	t	f	f
1669	8	t	f	f
1670	9	t	f	f
1670	3	t	f	f
1671	9	t	f	f
1671	3	t	f	f
1672	9	t	f	f
1672	3	t	f	f
1673	11	t	f	f
1674	11	t	f	f
1674	33	f	f	f
1675	9	t	f	f
1676	14	f	t	f
1676	48	t	f	f
1677	7	t	f	f
1678	7	t	f	f
1679	7	t	f	f
1680	1	t	f	f
1681	5	t	f	f
1682	5	f	t	f
1682	2	t	f	f
1682	24	f	f	f
1683	8	t	f	f
1683	39	f	f	f
1684	8	t	f	f
1684	39	f	f	f
1685	9	t	f	f
1685	3	t	f	f
1686	12	t	f	f
1687	9	t	f	f
1687	38	f	f	f
1688	11	t	f	f
1688	33	f	f	f
1689	9	t	f	f
1690	9	t	f	f
1690	3	f	t	f
1691	9	t	f	f
1691	3	t	f	f
1693	3	t	f	f
1694	8	t	f	f
1694	39	f	f	f
1695	1	t	f	f
1696	9	f	f	f
1696	3	f	f	f
1697	1	t	f	f
1697	16	f	f	f
1697	17	f	f	f
1698	5	t	f	f
1698	34	f	f	f
1699	5	t	f	f
1699	34	f	f	f
1700	47	t	f	f
1701	48	t	f	f
1702	7	t	f	f
1703	11	t	f	f
1704	9	f	t	f
1704	3	t	f	f
1705	9	f	t	f
1705	3	t	f	f
1706	13	t	f	f
1706	9	t	f	f
1706	47	t	f	f
1707	14	t	f	f
1707	13	t	f	f
1707	9	t	f	f
1707	4	t	f	f
1708	47	t	f	f
1709	13	t	f	f
1709	9	t	f	f
1709	47	t	f	f
1710	13	t	f	f
1710	9	t	f	f
1710	47	t	f	f
1711	13	t	f	f
1711	9	t	f	f
1711	47	t	f	f
1712	14	t	f	f
1712	13	t	f	f
1712	9	t	f	f
1712	4	t	f	f
1713	9	t	f	f
1713	3	f	t	f
1714	9	t	f	f
1714	3	f	t	f
1715	9	t	f	f
1715	3	f	t	f
1716	9	t	f	f
1716	3	f	t	f
1717	13	f	t	f
1717	9	t	f	f
1717	8	t	f	f
1718	9	t	f	f
1718	3	f	t	f
1719	9	t	f	f
1719	3	f	t	f
1720	9	t	f	f
1720	3	f	t	f
1721	6	t	f	f
1721	18	t	f	f
1721	47	t	f	f
1722	13	f	t	f
1722	9	t	f	f
1722	8	t	f	f
1723	13	f	t	f
1723	9	t	f	f
1723	8	t	f	f
1724	13	f	t	f
1724	9	t	f	f
1724	8	t	f	f
1725	13	f	t	f
1725	9	t	f	f
1725	8	t	f	f
1726	13	f	t	f
1726	9	t	f	f
1726	8	t	f	f
1727	13	f	t	f
1727	9	t	f	f
1727	8	t	f	f
1728	13	f	t	f
1728	9	t	f	f
1728	8	t	f	f
1729	5	t	f	f
1730	5	t	f	f
1731	5	t	f	f
1732	1	t	f	f
1733	1	t	f	f
1734	1	t	f	f
1735	1	t	f	f
1736	1	t	f	f
1737	1	t	f	f
1738	1	t	f	f
1739	1	t	f	f
1739	10	t	f	f
1740	1	t	f	f
1740	10	t	f	f
1741	1	t	f	f
1742	1	t	f	f
1743	1	t	f	f
1744	1	t	f	f
1745	9	f	t	f
1745	3	t	f	f
1746	9	f	t	f
1746	3	t	f	f
1747	9	f	f	t
1747	3	t	f	f
1748	9	f	t	f
1748	3	t	f	f
1749	11	t	f	f
1749	33	f	f	f
1750	11	t	f	f
1750	33	f	f	f
1751	13	f	t	f
1751	9	t	f	f
1751	3	t	f	f
1752	9	t	f	f
1752	3	f	t	f
1754	9	t	f	f
1754	3	f	t	f
1755	9	t	f	f
1755	3	f	t	f
1756	9	t	f	f
1756	3	f	t	f
1757	9	t	f	f
1757	3	f	t	f
1758	12	t	f	f
1759	9	t	f	f
1759	3	f	t	f
1760	9	t	f	f
1760	3	f	t	f
1761	3	t	f	f
1762	9	t	f	f
1763	12	t	f	f
1764	9	t	f	f
1765	8	t	f	f
1766	9	t	f	f
1767	9	t	f	f
1767	38	f	f	f
1768	15	t	f	f
1769	12	f	f	t
1769	2	t	f	f
1770	2	t	f	f
1770	24	f	f	f
1771	12	t	f	f
1771	21	f	f	f
1772	12	t	f	f
1772	21	t	f	f
1773	13	t	f	f
1773	9	t	f	f
1773	8	t	f	f
1774	12	t	f	f
1775	12	t	f	f
1777	13	t	f	f
1777	9	f	t	f
1777	8	f	t	f
1778	9	f	t	f
1778	3	t	f	f
1779	9	f	t	f
1779	3	t	f	f
1780	9	f	t	f
1780	3	t	f	f
1781	9	f	t	f
1781	3	t	f	f
1782	13	f	t	f
1782	9	t	f	f
1782	8	t	f	f
1783	13	f	t	f
1783	9	t	f	f
1783	8	t	f	f
1784	13	f	t	f
1784	9	t	f	f
1784	8	t	f	f
1785	13	f	t	f
1785	9	t	f	f
1785	8	t	f	f
1786	13	f	t	f
1786	9	t	f	f
1786	8	t	f	f
1787	1	f	t	f
1787	10	f	f	t
1787	7	t	f	f
1788	1	f	t	f
1788	10	f	f	t
1788	7	t	f	f
1789	1	f	t	f
1789	10	f	f	t
1789	7	t	f	f
1790	14	f	t	f
1790	7	t	f	f
\.


--
-- Data for Name: exercise_steps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.exercise_steps (id, exercise_id, order_num, text, text_en_us) FROM stdin;
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: difficulties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.difficulties_id_seq', 1, false);


--
-- Name: exercise_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.exercise_images_id_seq', 1, false);


--
-- Name: exercise_steps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.exercise_steps_id_seq', 1, false);


--
-- Name: exercises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.exercises_id_seq', 1, false);


--
-- Name: forces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.forces_id_seq', 1, false);


--
-- Name: mechanics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mechanics_id_seq', 1, false);


--
-- Name: muscles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.muscles_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

