== Prologue

DEEP SPACE, 4587
Aboard the S.S. Star Jumper
-> prologue

=== prologue ===
/*
(Captain Rebecca is going to go around checking the ship before take off. In doing this she is also going to have an opportunity to talk with each member of the crew and learn more about them.)

(The player can choose to first go down either the dorm hallway, the common room hallway, or the lab hallway.)

(In the dorm hallway they can go into Rebecca’s room. Iris Peacetree is in her room decorating and Lars is also in his room decorating. Dr. Ridan’s room door is open so the player can choose to have Rebecca explore the room with the “justification” of checking the ship, or they could choose to respect his privacy and not go into his room.)

(In the common room hallway Willy Richardson is in the cargo bay taking inventory.)

(Down the labs hallway Dr. Ridan Tyndale is in the doctor's office checking supplies and taking inventory, and Dr. Giorgio is in the main Research lab taking inventory and checking equipment.) 
*/
C: (Checking her Tech-Pad along with her cockpit display, talking to herself) Ok… Everyone seems to be on the ship with all their stuff... Right! Time to do a walkthrough and make sure this puppy is all ready to fly.
-> ship_base

=== ship_base ===
* {not winter_warning}{dorms_hall && commons_hall && labs_hall} [!NEW NOTIFICATION!] -> winter_warning
-> winter_warning
+ Dorm Hallway
-> dorms_hall
+ Commons Hallway
-> commons_hall
+ Lab Hallway
-> labs_hall
+ Open Tech-Pad
-> tech_pad

= winter_warning
WD: You better have taken off by now! We don’t have the time to sit around all day and you have some work that needs to be done, if you’re wanting to be paid and keep your job! I’ve sent you a list of exoplanets and descriptions based on our satellite data. I need you and your crew to go down and explore their surfaces! I don’t care what order you do them in, but it better get done fast!
+ [Better Get a Move On] -> ship_base

=== dorms_hall ===
This is a long hallway with 6 dorm rooms along the left side.
+ Cpnt. Rebecca's Room
    -> rooms.rebecca
+ Willy Richardson's Room
    -> rooms.willy
+ Iris Peacetree's Room
    -> rooms.iris
+ Dr.Giorgio's Room
    -> rooms.giorgio
+ Lars Clarckson's Room
    -> rooms.lars
+ Ridan Tyndale's Room
    -> rooms.ridan
+ [Back]
    -> ship_base

=== commons_hall ===
+ Commons Room
    -> commons.room
+ Kitchen
    -> commons.kitchen
+ Cargo Bay
    -> commons.cargobay
+ [Back]
    -> ship_base

=== labs_hall ===
+ Doctors Office
    -> labs.doctor
+ Research Lab
    -> labs.research
+ Botany Lab
    -> labs.botany
+ Zoology Lab
    -> labs.zoology
+ [Back]
    -> ship_base

=== rooms ===
= rebecca
Captain Rebecca’s Room: Open. Unoccupied.

Rebecca’s room seems very lived in. There are various posters and pictures of space including various solar systems, stars, planets, and galaxies hanging around her room. Flight manuals, ship maintenance books, and maps of space are scattered around her room and over the floor. Everything in her room seems well-loved and disorganized except for a picture of her family sitting in pristine condition on her nightstand.

C: Ah… Home sweet home. Do I have to check my room again? I probably should since I was distracted with unpacking before. 

//Things seen description
Looking more closely at some of the books scattered around, Rebecca finds the original mission statement from Miss Daniels. She picks it up and places it upon her desk. While at her desk, she looks at the map she has sprawled out showing the star system that her crew would be traveling to with red circles around the planets Regis B, Cyprus 45-B, and X-23. On the edge of her desk is a book titled “Exploring Outer Galaxies: The Guide.” It is well-loved and reminds Rebecca of her time in flight school.
    -> dorms_hall

= willy
Willy’s Room: Closed.

C: Oh! This is Willy’s room. It seems like he is not in right now. Welp I’ll just assume that it's all ok.
    -> dorms_hall

= iris
Iris’ Room: Open. Occupied.

C: Next up appears to be Iris Peacetree’s room. 
(Rebecca knocks on the door)

I: (muffled by the door) Come in!

(Rebecca opens the door and enters Iris’ room)

//Basic room description
Immediately upon walking into her room, Rebecca is met with a rush of warmth. Looking around the room, Iris has already unpacked and decorated most of her room with a few boxes still remaining. In one corner of her room, she has a table with grow lights and various plants sitting under them. On all of her walls, fairy lights hang down from above illuminating the room. Iris has opted not to use the overhead lighting in her room allowing the sole light sources to be her grow lamps and these fairy lights. Also hanging on her walls she has various pictures of plants with an occasional image of her parents or siblings. She has a few posters portraying various sci-fi movies and games. In one of the boxes yet to be unpacked, Rebecca notices various books on horticulture, agriculture, botany, as well as the occasional teen sci-fi romance.

I: Oh hi there! Captain Rebecca right? What can I help you with?

C: Hi! Yeah. I just need to check the ship before we are able to take off.

I: Oh yeah no problem! Please feel free to look around.

//Need an option to speak to the crew member and some dialog options here to learn some basic stuff about Iris.
    -> dorms_hall

= giorgio
Dr. Giorgio’s Room: Closed.

C: And this is Dr. Giorgio’s room. Looks like he is probably in his lab. I’m sure his room is fine.
    -> dorms_hall

= lars
Lars’ Room: Open. Occupied.

C: Ok and this here appears to be Lars Clarkson’s room.
(Rebecca knocks on the door)

L: (Muffled by door) Uh… Yeah?

C: Hi. Sorry. I just need to check the rooms before we are able to take off.

L: (Muffled by door) Oh! Uh… y-yeah come in.

(Rebecca opens the door and enters) 

//Basic room description
Lars is almost completely finished unpacking in his room, currently working on his last box. On his bed, he has various stuffed animals including various types of cats, dogs, birds, and other common animals. He has categorical pictures on his walls each focusing on one class of vertebrate depicting various species of animals and their scientific names under them. He has figurines of animals displayed on his shelves alongside figurines of superheroes and other comic book characters. Aside from the occasional biology or zoology book, Lars seems to only have comic books in his collection.

//Need an option to speak to the crew member and some dialog options here to learn some basic stuff about Lars.
    -> dorms_hall

= ridan
Dr. Ridan’s Room: Open. Unoccupied. 

Captain Rebeccs walks up to the last room in the hallway. She sees that the door to this room is slightly ajar. Her tablet says that the last room belongs to Dr. Ridan.

C: Hmm. It seems like Dr. Ridan is not in his room, but his door is open for some reason. Maybe he left it open by accident. I should respect his privacy and not snoop through his room. On the other hand I do technically have to check everything before takeoff.
* Enter and snoop.
When entering the room, Rebecca notices that Ridan has not begun unpacking at all, with a few boxes having their lids open but nothing taken out or spread around the room. There is a life size anatomical model of a human hanging in one corner of his room next to a full model of a human skeleton. Overall, his room feels very empty save for a few bottles containing an unknown liquid scattered around his desk and nightstand.
    -> dorms_hall
* Respect privacy and close the door.
    -> dorms_hall
+ [BACK]
    -> dorms_hall

=== commons ===
= room
Common Room: Open. Unoccupied.
Rebecca walks into the common room. With everyone still working hard getting prepared for the trip ahead of them, the common room remains untouched and empty by the members of the crew. There’s a large, red couch sitting on one of the walls with a flatscreen TV amplified to work in the depths of space hanging on the opposite wall. There’s a coffee table in between the two stacked with various magazines, lined with coasters, and the remote for the TV sitting on the edge. There are a few other arm chairs off the heads of the coffee table and an end table on either end of the couch, both completely empty except for a lamp on one. Rebecca ensures that all the furniture in the room is bolted to the floor so that it doesn’t move with the turbulence of the ship.

C: Everything looks nice and secure! I really hope that we can spend some time together as a crew here!

+ Bathrooms
-> bathroom
+ [Back]
-> commons_hall

= bathroom
Bathrooms: Open. 
In the bathrooms, Rebecca had walked in to see three stalls, three sinks, and three showers allowing for half the crew to use any specific part of the bathroom at any time. The bathrooms were not split by gender and were communal for all members of the crew. The interior was a very reflective white marble appearance with bright lighting illuminating every inch of the room. The center of the room was decently spacious with a bench in the middle of the room for those using the various features. 

C: There’s nothin’ in here that I need to check.

+ [Back]
-> commons_hall

= kitchen
Kitchen: Open. Unoccupied.
Rebecca ventures into the kitchen. It has brand new chrome appliances that were replaced just before this crew was chosen for the research mission. There’s a large fridge stocked with years worth of food thanks to enhanced technology. There are three ovens and stoves lining the wall with smoke hoods over each. There’s a large metallic shelf on one end of the kitchen stacked with pots, pans, plates, utensils, and every other dish imaginable. On the counter, there were other appliances including toasters, air fryers, and fabricators capable of creating small dishes from thin air. There was also a large wooden table with 6 chairs surrounding it. Rebecca went through and ensured that everything was stabilized in place to keep it from shifting as the ship flew around.

C: Unfortunate that we couldn’t get a chef on this expedition. Maybe I can convince someone else in the crew to cook for me.
+ [Back]
-> commons_hall

= cargobay
Cargobay: Open. Occupied.
Walking into the cargo bay, Rebecca is met with a large, disorganized mess of a room. Boxes are scattered around the room, some are open while others are still sealed. All of the non-food supplies the crew will need during their exploration is stored in this room. Despite the size of the room, the mess of supplies still takes up the majority of the space present. At the back end of the room, there’s a large air-locked door leading outside of the ship for loading and unloading the ship at necessary points in time. Willy is in a far end of the room examining the contents of the boxes.
+ Willy
C: How’s it goin’ Sergeant?

W: Everything’s fine over here! I saw how disorganized everything in here was so I thought I’d try to make it a bit easier to find things!

C: I hope it isn’t too much trouble! There’s a lot of supplies in here so don’t overwork yourself on the first day either!

//Need an option to speak to the crew member and some dialog options here to learn some basic stuff about Willy.
    ++ [Back]
    -> cargobay
+ Cargobay Door
-> baydoor
+ [Back]
-> commons_hall

= baydoor
Door: Closed.
	Closer inspection of the door reveals that it is tightly sealed and does not appear to have any issues in closing and protecting the crew from the vacuum of space.

C: Everything here looks all good to fly!
+ [Back]
-> cargobay

=== labs ===
= doctor
Doctors Office: Open. Occupied.
In the doctor’s office, Rebecca sees shelves lined with various jars and containers of medical supplies like bandages, cotton balls, gloves, masks, and every piece of first aid that anyone could need in their life. There’s a small desk built into an alcove on the wall where Ridan sits hunched over some paperwork with a desk lamp providing dim light for his work. Throughout the rest of the room, Rebecca sees an examination table, old-school scale, sickbay bed, and a few other chairs scattered around the borders. 

C: Oh! Dr. Ridan hi! It is so great to meet you and I am so happy to have you as a part of our crew.

R: Sighs Yep. Great to be here. (He says sarcastically)

C: Ok. Well, uh, I just need to check out the room to make sure we are all good for our journey.

R: Go ahead. Knock yourself out. … Please don’t actually knock yourself out.

C: Ok will do and not do.

//Need an option to speak to the crew member and some dialog options here to learn some basic stuff about Ridan.
+ [Back]
-> labs_hall

= research
Main Research: Open. Occupied.
Rebecca ventures to the main research lab. Inside were various machines and instruments that she couldn’t even fathom the purposes of. Computer screens were filled with spreadsheets of data. Beeps could be heard periodically emitting from some of the machines. Tables sat in the middle of the room reminiscent of the lab tables Rebecca saw in her high school biology class. Rebecca was dumbfounded by the sheer amount of scientific machines around the room that she had never seen before.

C: Oh wow this place is crazy!

G: Don’t. Touch. Anything.

C: Oh! Right. Got it! Hey you’re Dr. Giorgio right! Nice to meet you. I just ran into Dr. Ridan. Isn’t it so funny that we have two doctors on the ship but like hes a medicine doctor and you’re science doctor.

G: Uh huh…

C: Anyways I just needed to check around the room to make sure everything is secure and we are all good for take off.

G: Ok. Just please stay out of my way.

//Need an option to speak to the crew member and some dialog options here to learn some basic stuff about Giorgio.
+ [Back]
-> labs_hall

= botany
Plant Lab: Open. Unoccupied. 
	Entering the plant lab, Rebecca saw short tables line the room in neat rows. Each table had large lights hanging low over them and the tables were covered in pots and grow beds. There was a desk on the farthest wall from the entrance that had a few papers scattered on it and a box opened with microscopes, soil probes, pH meters, and other instruments used to study plant life. While the room was largely empty save for a few flowers and fruits native to Earth in the far corner of the room, she knows that any plant specimen collected by the crew throughout their expedition would be brought here for Iris to research.

C: I can’t wait until we have some more plants to fill up this room! You can take the girl out of the farm but that doesn’t mean the farmer leaves the girl!
+ [Back]
-> labs_hall

= zoology
Animal Lab: Closed.
	While the animal lab was currently closed, Rebecca peered through the window to gaze into the room before her. On one side of the room, she saw countless cages and glass containers of various sizes fill the wall from floor to ceiling. Presumably, this is where any animal species would be kept for research by Lars. There was an operating table in the middle of the room where she could picture examinations of these alien species would occur. There were some sealed boxes on the desk in the corner of the room that Rebecca assumed would be filled with any of the tools needed to do the research required.

C: I can’t wait to see all the new species we’re gonna come across throughout this trip!
	After checking everything out, Rebecca notes that the crew members are all on board, everyone is tending to their rooms and unpacking as they need, and people begin to settle into their places. Finishing up the last system checks, Rebecca starts the ship’s engine. Breaking through the gravitational pull of Earth, the ship staggers and shakes with large amounts of turbulence. 

Breaking into the dark abyss, the Earth begins to trail behind them and the ship smooths out a bit, but still maintains an unusual amount of turbulence from the rough manor Rebecca handles the ship in. As Rebecca makes her way out of the Solar System, she receives a ping on a communications computer nearby. 
+ [Back]
-> labs_hall

=== tech_pad ===
+ Open Mission Brief
There are three planets I’ve tasked your crew with researching: -> planets

+ Pick-a-Planet Module
    {planetState}
    ** Regis-B
    ~ planetState ++
    //-> Setup(Planets)
    -> Regis_Setup
    ** Cyprus 45-B
    ~ planetState ++
    //-> Setup(Planets)
    -> Cyprus_Setup
    X-23
    ~ planetState ++
    //-> Setup(Planets)
    -> X_Setup
    ++ [BACK] -> tech_pad
    
+ [CLOSE PAD] -> ship_base
= planets
    ++ Regis B:
    A large blue planet about three times the size of Earth, mostly covered in water with archipelagos dotting the cerulean oceans with little green specks.
    -> planets
    ++ Cyprus 45-B:
    A planet slightly smaller than Earth. Located near a red dwarf star, the planet’s temperature readings are extremely cold and the geography appears very homogenous and rocky.
    -> planets
    ++ X-23:
    A planet about 1.5 times the size of Earth. X-23 is located in the system of a blue star causing the planet to have very high temperatures and a very dry climate. The surface is made up almost entirely of dry plateaus and sandy dunes with a desert like appearance.
    -> planets
    "W. Daniels"
    ++ [BACK]
    -> tech_pad
    
-> END
