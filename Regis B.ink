INCLUDE Intro.ink
INCLUDE Prologue.ink
INCLUDE Endings.ink

LIST Team = Rebecca, Willy, Iris, Lars, Ridan
VAR teamOne = ()
VAR teamTwo = ()
VAR teamThree = ()

CONST planetChoice = 1

VAR both_routes = false

-> Intro

=== function teamAssign()
    ~ teamOne = Team(1)
    ~ teamTwo = Team(2)
    ~ teamThree = Team(3)


=== ship ===
+ [Chosen First] ->chosen_first
+ [Chosen Second] -> chosen_second
+ [Chosen Third] -> chosen_third
-> DONE

== chosen_first
    Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.
    C: Alright everyone! We’re headed off to the first planet for our expedition! I’ve decided to start us with Regis B. It seems similar to our atmosphere so I figured it’d be a good start.
    In her room as she finishes unpacking, Iris lets out a squeal of excitement at the prospect of discovering alien plants that are sure to be thriving on a planet similar to earth.
    In the animal lab, Lars begins preparing crates for any fauna that roam this planet's surface. 
    Willy walks around the cargo bay with a satchel in hand, browsing their supplies and packing rations of food, water, knives, rope, and other survival gear he thinks will be necessary for those going out on the expedition.
    Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface.
    C: Brace yourselves everyone! This ride’s about to get a lot rougher!
    + [Enter Planet Coordinates] -> coordinates
    = coordinates
    Rebecca types the coordinates of Regis B into her interplanetary navigation system, or INS, and charts the course through the stars. Starting to push the ship into max hyperdrive, Rebecca prepares for a lightspeed launch across the cosmos. 
    As the ship shakes heavily with turbulence, Dr. Ridan is woken from an accidental slumber that he fell into sitting at the desk of the medbay.
    + [NEXT] -> ridan_wakes
    = ridan_wakes
    Ridan: (to himself) Finally taking off I guess. Guess I should get back to work…
    Ridan begins to organize the rest of his supplies but is knocked onto the sick bed by another sudden jolt where he quickly dozes off to sleep once again.
    + [NEXT] -> pa_system
    = pa_system
    After about an hour of travel with the various crew members preparing themselves for the true start to their expedition, Rebecca comes onto the PA system once again.
    C: Get ready everyone! We’re enterin’ Regis B’s atmosphere as I speak!
    The loud announcement wakes Ridan up once again and the rest of the crew is brought to attention. Giorgio makes his way to the cockpit and takes the PA system.
    Giorgio: All crew members report to the cargo bay. We’ve got to prepare for our first expedition!
    His stern voice implies urgency as he runs on Winter Daniels’s time. Ridan begrudgingly stands and makes his way to the back of the ship. Iris and Lars run into each other in the hallway and walk together to the cargo bay. Willy had never left the bay and sits on boxes waiting for the rest of the crew to arrive.
    + [NEXT] -> regis_b

    = regis_b
    Rebecca finishes the landing procedure just as roughly as she had when picking up the crew. Everyone felt a large rumble throughout the ship as it came to a halt. Iris falls down to the ground with Lars helping her up soon after. Ridan stumbles around but manages to catch himself saving himself from tumbling to the ground. Willy braces himself on the boxes he sits on top of. 
    Giorgio: You have to work on that landing Captain. I know this is your ship, but other people are on it now and you hold responsibility for them.
    C: Understood Doc! I’ll try ‘nd work on that!!
    Moments later, the ship’s engine is turned off and Giorgio and Rebecca walk into the cargo bay together. The rest of the crew draws their attention to them.
	Giorgio: I’ll be sending out a few of you to do the research we need! The rest of you will stay on the ship and do anything else to help contribute! I’ll be staying on the ship to continue my own work. -> expedition_choice

    = expedition_choice
    The Team Roster: {Team}    
        * [Captain Rebecca Monroe]
        //~Team += Rebecca
            Giorgio: Rebecca, why don’t you get out there and explore a bit?
            C: I should probably stay on the ship and check to make sure all the systems are still raring to go!
            Giorgio: That makes sense. 
        
        * [Willy Richardson]
        ~Team += Willy
        	Giorgio: Willy, we could use-
            Willy cuts Giorgio off
        	Willy: Sergeant.
            Giorgio looks annoyed at being interrupted.
            Giorgio: (mockingly) Sergeant, I know your survival skills are high quality. Make sure no one gets hurt. 
        
        * [Iris Peacetree]
        ~Team += Iris
            Giorgio: Iris, this planet seems to be covered in different plant species. We could use someone like you out there to gather the best information we can.
        	Iris: Ooh ooh thank you so much! I won’t let you down!!
            {Team ? (Lars): -> shared_smile}
        
        * [Lars Clarkson]
        ~Team += Lars
            Giorgio: Lars, this planet has the perfect conditions for life, why don’t you get out there and see if you can find anything!
            Lars: I’ll do my best, sir. Thank you for the opportunity!
            {Team ? (Iris): -> shared_smile}
        
        * [Ridan Tyndale]
        ~Team += Ridan
        	Giorgio: Ridan, you seem like you’d be a good fit for this expedition.
            Ridan groans but doesn’t have the willpower to fight back so he accepts his fate
        	Ridan: If I have to…
    
    	//{!Iris gets a bit more antsy and giddy. She desperately wants to explore the scenery of this foreign planet.|Iris gets even more antsy and can’t contain herself. It’s taking everything in her not to scream out.|Iris looks down sadly and looks as though she’s holding back tears.}
    	-
    	
    	{
        - LIST_COUNT(Team) < 3: -> expedition_choice
        - else: -> team_with
        }
    = shared_smile
        Lars and Iris glance at each other sharing a warm smile.
        {
        - LIST_COUNT(Team) < 3: -> expedition_choice
        - else: -> team_with
        }
    
    = team_with
    	Giorgio: Alright crew! Those of you chosen finish getting ready to head out. The rest of you stay on the ship and keep doing the work expected of you. This is not a vacation!
    	The chosen crew of {Team} finish packing up their supplies. Giorgio enters in the code to open the cargo bay door and the crew steps out onto Regis B.
    	Looking around the planet, the researchers are met with bright light as the sun reflects off of the cerulean oceans sprawling to the horizon. The rhythmic splashing of the ocean’s currents on the shore and the salty smell of the atmosphere reminds the crew of beaches back on Earth. In the distance, the green peaks of neighboring islands can be made out. The air is heavy and humid creating a thick feeling all around them with tropical heat brushing over them. 
    	Preparing to explore the planet the researchers have to decide where to start gathering research.
    -> explore

    = explore
    //CHOICE:
    * [Walk the shoreline]
    -> shoreline
    * [Enter the inland forest]
    -> forest
    //(Only if Willy was chosen)
    * {Team ? (Willy)} [Venture out on the coastline, return in the forest]
    ~ both_routes = true
    -> shoreline

    = shoreline
    Expedition Team: {Team}
	The researchers walk the coastline and take in the scenery. The beautiful shoreline and tropical smells bring a serene sense of peace to all of them. -> shoreline_interactions
    
    =shoreline_interactions
    * {Team ? (Lars)} [Lars]
        //(If Lars is on the expedition)
        Along the shore, Lars notices animal prints in the sand. He signals to the other researchers on the expedition to remain quiet and move slowly. He pulls out a net from his bag and begins to follow the prints. Hearing some ruffling in a nearby bush, he casts the net out and pulls it back, capturing the alien species and placing it in a cage.
        Lars: Good start to a new planet! Already captured my first specimen!
    	The other crew members seem happy with his success and continue on their expedition.
    	-> shoreline_interactions
    
    * {Team ? (Iris)} [Iris]
        //(If Iris is on the expedition)
    	Iris notices some seaweed like plants that washed onto shore. Putting a glove on her hand and taking out a small plastic bag, she picks up the plant and places it into the bag.
    	
    	Iris: Already got my first plant to research!! This is gonna be so so so much fun!! 
        -> shoreline_interactions
    /* {Team != (Lars, Iris)} [Crew]
        //(If neither Iris nor Lars were chosen)
    	The crew continues along the shoreline but fails to identify any specimen worth picking up to research.
    	-> shoreline_interactions*/
    	
    * {Team ? (Lars, Iris)} [lars & Iris]
        //(If Lars and Iris are on the expedition)
        Iris: I always wished to visit the beaches on Earth more. I never really had the chance to just walk the coastline like this with someone. It’s so exciting to be somewhere new and get an experience like this!!
        Lars: It is nice just getting to walk the shore and take in the sights. It’s different from anything I’ve done before, that’s for sure.
        The two smile at each other warmly. (Third crew member) feels out of place, as though they’re the third wheel on a date.
        -> shoreline_interactions
    
    *   {both_routes} [Forest]
        //(If following the choice 3 path)
	    Finishing up collecting data they need on the shoreline, the researchers decide to venture deeper inland to the forest covering the island. -> forest
	
	*->   
        The crew takes temperatures of the atmosphere and water, recording them to meet the required quota of research data and continues on their way. 
    	Finishing up everything they could do on the shoreline, the researchers decide that they’ve collected enough data to return to the ship and turn around, retracing their steps in the sand back to where they came from. -> returning_to_ship

    = forest
    {Team}
    //Choice 2/End of Choice 3:
	Entering into the vast forest, the crew is met with lush foliage and thick brush under their feet. It was hard to believe that they were on an island as they were surrounded by thick jungle with no sight of the shore. -> forest_interactions
    
    =forest_interactions
    * {Team ? (Iris)} [Iris]
        //(If Iris is on the expedition)
    	Iris: I don’t even know where to begin!! There are so so so many different species here I’ve never seen before. It’s all so foreign I have to get a little bit of everything!!
    	Iris spends the next 30 minutes cutting away pieces of every plant she can find, keeping them in their own bags to research on the ship later. She tries to collect as many seeds, spores, and cones as possible to try and regrow these plants aboard the ship as well. ->forest_interactions
    
    * {Team ? (Lars)} [Lars]
        //(If Lars is on the expedition)
    	Lars hears cries from different animals all around him in the jungle. Knowing he realistically won’t be able to capture them all, he lays a trap out putting bait into a cage meant for field research and instructs the crew to quietly wait with him in a nearby bush. After what felt like hours of waiting, the other members of the crew began drifting off as Lars patiently watched the cage. Soon thereafter, an animal looking like a small cat sneaks into the cage and begins eating the bait. Lars rushes over and closes the door trapping the animal inside.
    	Lars: Got it!!
    	Lars’s shout jolts the other two researchers awake and they approach him and the cage, peering at the animal they just trapped.
    	(Researcher 2): It’s kinda cute!
    	Moving on, Lars decided to spare the time of everyone else that this is the only trap he will set. As the crew continues to venture through the forest, he picks up any bugs and smaller, easier to catch animals that he can. ->forest_interactions
    
    * {Team ? (Lars, Iris)} [lars & Iris]
        //(If Iris and Lars chosen)
    	Iris clumsily trips over the vines lining the floor of the forest. Lars rushes over to help her up and make sure she’s ok.
    	Lars: Is everything alright, Iris? That looks like it could’ve hurt!
    	Iris: Yea, I’m alright I think! I’m used to tripping over and falling.
    	Lars and Iris laugh together as Lars helps Iris stand up. The two of them continue on ahead, leaving (3rd crew member) trailing behind. ->forest_interactions
    	
    /* {Team != (Lars, Iris)} [Crew]
        //(If neither Lars nor Iris were chosen)
    	The crew ventures through the interior of the forest. Knowing that they’re there to research the different components of the island, they grab random plants and insects and store them to bring back to the ship. ->forest_interactions */
    
    
    * {both_routes} [Leave]
        //End of Choice 3:
    	Willy leads the crew through the forest, tracking the movement of astral bodies and listening for the sounds of the waves to find their way back to the ship.
    	Willy: This turf ain’t nuthin’! I could navigate us back to the ship with my eyes closed and both arms tied behind my back! I was hoping for a real struggle in the adventurin’ out here!
    	The researchers find their way out of the forest with an efficient use of their time and head back onto the ship. Willy, feeling like he led them through the toughest journey of their lives, feels especially rewarded for his ability to lead them around the planet effectively. -> returning_to_ship
    
    *->
        //(If following the Choice 2 Path)
    	The researchers feel that they’ve collected sufficient amounts of data and turn around, stumbling their way through the woods to find their way back to the ship. -> returning_to_ship
    
    == returning_to_ship
    ++ [Head Back]
    ~ Team = ()
    ~ both_routes = false
    -> ship_base
    
== chosen_second
    Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.
	C: Good work everyone! We’re headed off to the next planet for our expedition! I’ve decided to bring us to Regis B. It seems similar to our atmosphere so I figured it’d be a nice place to go!!
	In her room reading a book on modern agricultural practices, Iris lets out a squeal of excitement at the prospect of discovering alien plants that are sure to be thriving on a planet similar to earth.
	In the animal lab, Lars begins preparing new crates for any fauna that roam this planet's surface. 
	Willy goes back to the cargo, scanning the remaining supplies and packing more rations of food, water, knives, rope, and other gear that he thinks the crew might use out on the expedition.
    Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface.
	C: Alright! Time to head off! I’ll try to make this trip a bit smoother than the last time!
    + [Enter Planet Coordinates] -> coordinates
    = coordinates
	Rebecca types the coordinates of Regis B into her INS charting the course through the stars. Pushing the ship into hyperdrive but ensuring not to max out the throttle, Rebecca prepares for another lightspeed launch across the cosmos. 
	+ [NEXT] -> regis_b2
	= regis_b2
	The trip takes about four hours to get over to Regis B and as the ship nears its destination, Rebecca comes onto the PA system once again.
	C: We’re finally here! Sorry it took so long, but we’re enterin’ Regis B’s atmosphere now!
	Giorgio heads up to the cockpit for another announcement over the PA system.
	Giorgio: You all know the drill by now. All crew members report to the cargo bay. We’ve got another expedition to head out on!
	Giorgio is less stern, but has concerns about losing funding from Winter Daniels. Ridan leaves his office to join the company of the crew in the back of the ship. Iris and Lars meet up outside their labs so that they can walk to the back of the ship with one another. Willy was still in the bay making the final preparations for the expedition packs. 
	Rebecca lands the crew much more smoothly this time around. There was still a rough jolt that shook the ship as it touched down, but significantly less than the last time. Lars holds Iris up to keep her from falling over again. Ridan plants his feet firmly stabilizing himself. Willy leans against a wall to help maintain his balance as he is ready for the touchdown.
	Giorgio: Much better landing this time around Rebecca! I can tell you’re trying your best to be a good captain!
	C: Thank you Giorgio! I’ll keep trying my hardest!
	Moments later, the ship’s engine is turned off and Giorgio and Rebecca walk into the cargo bay together. The researchers all turn their attention to the two of them.
	Giorgio: As you all know, I’ll be sending out a few of you to do the research we need! The people I don’t choose will stay on the ship and do any research that they can! Just like last time, I will be staying on the ship myself to continue my own work. -> expedition_choice
	
	= expedition_choice
    The Team Roster: {Team}    
        * [Captain Rebecca Monroe]
        //~Team += Rebecca
            Giorgio: I’m assuming you still need to stay on the ship, Rebecca? 
            Captain Rebecca: Yea! There’s a few things I should check out on the ship while the researchers are out!
        
        * [Willy Richardson]
        ~Team += Willy
        	Giorgio: Willy, you think-
			Willy cuts Giorgio off
			Willy: It’s still sergeant.
			Giorgio glares at Willy for interrupting him.
			Giorgio: (mockingly) OK sergeant, I know your survival skills are high quality. The thick forest here seems like a perfect environment for you.
        
        * [Iris Peacetree]
        ~Team += Iris
            Giorgio: Iris, this planet seems to be covered in different plant species. We could use someone like you out there to gather the best information we can.
			Iris: Ooh ooh thank you so much! I won’t let you down!!
            {Team ? (Lars): -> hold_hands}
        
        * [Lars Clarkson]
        ~Team += Lars
            Giorgio: Lars, this planet has the perfect conditions for life, why don’t you get out there and see if you can find anything!
			Lars: I’ll do my best, sir. Thank you for the opportunity!
            {Team ? (Iris): -> hold_hands}
        
        * [Ridan Tyndale]
        ~Team += Ridan
        	Giorgio: Ridan, you seem like you’d be a good fit for this expedition.
        	Ridan groans but doesn’t have the willpower to fight back so he accepts his fate
			Ridan: If I have to…
		{
        - LIST_COUNT(Team) < 3: -> expedition_choice
        - else: -> team_with
        }
    
    	//{!Iris gets a bit more antsy and giddy. She desperately wants to explore the scenery of this foreign planet.|Iris gets even more antsy and can’t contain herself. It’s taking everything in her not to scream out.|Iris looks down sadly and looks as though she’s holding back tears.}
    	-
    	
    	{
        - LIST_COUNT(Team) < 3: -> expedition_choice
        - else: -> team_with
        }
        = hold_hands
        Lars and Iris reach out to one another and hold hands.
        {
        - LIST_COUNT(Team) < 3: -> expedition_choice
        - else: -> team_with
        }
			
    //{After the first choice:
		//(If Iris is not chosen) Iris gets a bit more antsy and giddy. She desperately wants to explore the scenery of this foreign planet.
	//After the second choice:
        //(If Iris is not chosen) Iris gets even more antsy and can’t contain herself. It’s taking everything in her not to scream out.
	//After the third choice:
		//(If Iris is not chosen) Iris looks down sadly and looks as though she’s holding back tears.}
	= team_with
	Giorgio: Alright crew, Willy… (sarcastically) I mean Sergeant Willy, packed up everything you should need for the expedition. The rest of you staying on the ship, keep up the good work! Just another reminder, this is not a vacation!
	The chosen crew of (choice 1), (choice 2), and (choice 3) finish packing up their supplies. Giorgio enters in the code to open the cargo bay door and the crew steps out onto Regis B.
	Looking around the planet, the researchers are met with bright light as the sun reflects off of the cerulean oceans sprawling to the horizon. The rhythmic splashing of the ocean’s currents on the shore and the salty smell of the atmosphere reminds the crew of beaches back on Earth. In the distance, the green peaks of neighboring islands can be made out. The air is heavy and humid creating a thick feeling all around them with tropical heat brushing over them. 
	Preparing to explore the planet the researchers have to decide where to start gathering research.
	-> explore

    = explore
    //CHOICE:
    * [Walk the shoreline]
    -> shoreline
    * [Enter the inland forest]
    -> forest
    //(Only if Willy was chosen)
    * {Team ? (Willy)} [Venture out on the coastline, return in the forest]
    ~ both_routes = true
    -> shoreline

    = shoreline
    Expedition Team: {Team}
	The researchers walk the coastline and take in the scenery. The beautiful shoreline and tropical smells bring a serene sense of peace to all of them. -> shoreline_interactions
	
	=shoreline_interactions
    * {Team ? (Lars)} [Lars]
        //(If Lars is on the expedition)
        Along the shore, Lars notices animal prints in the sand. He signals to the other researchers on the expedition to remain quiet and move slowly. He pulls out a net from his bag and begins to follow the prints. Hearing some ruffling in a nearby bush, he casts the net out and pulls it back, capturing the alien species and placing it in a cage.
        Lars: Good start to a new planet! Already captured my first specimen!
    	The other crew members seem happy with his success and continue on their expedition.
    	-> shoreline_interactions
    
    * {Team ? (Iris)} [Iris]
        //(If Iris is on the expedition)
    	Iris notices some seaweed like plants that washed onto shore. Putting a glove on her hand and taking out a small plastic bag, she picks up the plant and places it into the bag.
    	Iris: Got another plant to research! Aqua-based specimens are always fun to learn about!!
        -> shoreline_interactions
    /* {Team != (Lars, Iris)} [Crew]
        //(If neither Iris nor Lars were chosen)
    	The crew continues along the shoreline but fails to identify any specimen worth picking up to research.
    	-> shoreline_interactions*/
    	
    * {Team ? (Lars, Iris)} [lars & Iris]
        //(If Lars and Iris are on the expedition)
        Iris: I always wished to visit the beaches on Earth more. I never really had the chance to just walk the coastline like this with someone. It’s so exciting to be somewhere new and get an experience like this!!
        Lars: It is nice just getting to walk the shore and take in the sights. It’s different from anything I’ve done before, that’s for sure.
        The two smile at each other warmly. (Third crew member) feels out of place, as though they’re the third wheel on a date.
        -> shoreline_interactions
    
    *   {both_routes} [Forest]
        //(If following the choice 3 path)
	    Finishing up collecting data they need on the shoreline, the researchers decide to venture deeper inland to the forest covering the island. -> forest
	
	*->
        The crew takes temperatures of the atmosphere and water, recording them to meet the required quota of research data and continues on their way.     
    	Finishing up everything they could do on the shoreline, the researchers decide that they’ve collected enough data to return to the ship and turn around, retracing their steps in the sand back to where they came from. -> returning_to_ship
	
    = forest
    {Team}
    //Choice 2/End of Choice 3:
	Entering into the vast forest, the crew is met with lush foliage and thick brush under their feet. It was hard to believe that they were on an island as they were surrounded by thick jungle with no sight of the shore. -> forest_interactions
	
    =forest_interactions
    * {Team ? (Iris)} [Iris]
        //(If Iris is on the expedition)
    	Iris: I don’t even know where to begin!! There are so so so many different species here I’ve never seen before. It’s all so foreign I have to get a little bit of everything!!
    	Iris spends the next 30 minutes cutting away pieces of every plant she can find, keeping them in their own bags to research on the ship later. She tries to collect as many seeds, spores, and cones as possible to try and regrow these plants aboard the ship as well. -> forest_interactions
    
    * {Team ? (Lars)} [Lars]
        //(If Lars is on the expedition)
    	Lars hears cries from different animals all around him in the jungle. Knowing he realistically won’t be able to capture them all, he lays a trap out putting bait into a cage meant for field research and instructs the crew to quietly wait with him in a nearby bush. After what felt like hours of waiting, the other members of the crew began drifting off as Lars patiently watched the cage. Soon thereafter, an animal looking like a small cat sneaks into the cage and begins eating the bait. Lars rushes over and closes the door trapping the animal inside.
    	Lars: Got it!!
    	Lars’s shout jolts the other two researchers awake and they approach him and the cage, peering at the animal they just trapped.
    	(Researcher 2): It’s kinda cute!
    	Moving on, Lars decided to spare the time of everyone else that this is the only trap he will set. As the crew continues to venture through the forest, he picks up any bugs and smaller, easier to catch animals that he can. -> forest_interactions
    
    * {Team ? (Lars, Iris)} [lars & Iris]
        //(If Iris and Lars chosen)
    	Iris clumsily trips over the vines lining the floor of the forest. Lars rushes over to help her up and make sure she’s ok.
    	Lars: Is everything alright, Iris? That looks like it could’ve hurt!
    	Iris: Yea, I’m alright I think! I’m used to tripping over and falling.
    	Lars and Iris laugh together as Lars helps Iris stand up. The two of them continue on ahead, leaving (3rd crew member) trailing behind. -> forest_interactions
    	
    /* {Team != (Lars, Iris)} [Crew]
        //(If neither Lars nor Iris were chosen)
    	The crew ventures through the interior of the forest. Knowing that they’re there to research the different components of the island, they grab random plants and insects and store them to bring back to the ship. -> forest_interactions */
    
    * {both_routes} [Leave]
        //End of Choice 3:
    	Willy leads the crew through the forest, tracking the movement of astral bodies and listening for the sounds of the waves to find their way back to the ship.
    	Willy: This turf ain’t nuthin’! I could navigate us back to the ship with my eyes closed and both arms tied behind my back! I was hoping for a real struggle in the adventurin’ out here!
    	The researchers find their way out of the forest with an efficient use of their time and head back onto the ship. Willy, feeling like he led them through the toughest journey of their lives, feels especially rewarded for his ability to lead them around the planet effectively. -> returning_to_ship
    
    *->
        //(If following the Choice 2 Path)
    	The researchers feel that they’ve collected sufficient amounts of data and turn around, stumbling their way through the woods to find their way back to the ship. -> returning_to_ship

== chosen_third
    Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.
	Captain Rebecca: Great work crew! We’re headed off to the last planet for our expedition! I’ve decided to finish Regis B. It seems similar to our atmosphere so I figured it’d be a nice place to remind us of home!!
	In her lab researching the specimens gathered on the previous expeditions, Iris lets out a squeal of excitement at the prospect of discovering alien plants that are sure to be thriving on a planet similar to earth.
	In the animal lab, Lars begins preparing new crates for any fauna that roam this planet's surface while finishing up some research he was doing on specimens taken from the last planets.
	Willy goes back to the cargo, parsing through the last remaining supplies and packing the last rations of food, water, knives, rope, and other gear that he thinks the others might need.
	Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface for the last time.
	C: Smooth sailing from here on out! I think I’ve figured how to fly this to all of your comfort!
    + [Enter Planet Coordinates] -> coordinates
    =coordinates
	Rebecca types the coordinates of Regis B into her INS charting the course through the stars. Pushing the ship into hyperdrive, setting it at a lower speed, Rebecca starts up another lightspeed launch across the cosmos. 
    + [NEXT] -> regis_b3
    = regis_b3
	The trip takes about two and a half hours to get over to Regis B and as the ship nears its destination, Rebecca comes onto the PA system once again.
	C: We’re finally here! Hope it was a smooth trip for all of you! We’re touching down in Regis B as I speak!!
	Giorgio heads up to the cockpit for another announcement over the PA system.
	Giorgio: Alright everyone! This is the last time I’ll be making this announcement but all crew members report back to the cargo bay!
	Giorgio is much less relaxed having made it through almost the entire research expedition without any major incidents. Ridan finishes up in his office to join with everyone else. Iris and Lars wait for each other in the hallway, hugging and taking the other’s hand before journeying to the back of the ship. Willy already finished packing the expedition bags for everyone and was relaxing in the cargo bay waiting for everyone else.
	Rebecca’s landing was perfect, not a single tremor as the ship settled on the ground. Lars and Iris stood hand in hand waiting for the captain and Giorgio. Ridan and Willy stood near each other, talking quietly amongst themselves as they prepared for the last excursion.
	Giorgio: Perfect landing Rebecca! You’ve gotten much better at handling a ship with other people on it!
	C: Thank you Gio! I’m glad I was able to be the captain for your research!
	Moments later, the ship’s engine is turned off and Giorgio and Rebecca walk into the cargo bay together. The researchers all turn their attention to the two of them.
	Giorgio: I’m sure you all know exactly what I’m gonna say, but I’ll be sending out three of you to do the final research we need! The people I don’t choose will stay on the ship and finish up all the research that they can! I think I’ll be heading out and helping with the field work this time around! -> expedition_choice
    = expedition_choice
    The Team Roster: {Team}    
        * [Captain Rebecca Monroe]
        //~Team += Rebecca
            Giorgio: I’m assuming you still need to stay on the ship, Rebecca?
            Captain Rebecca: Yup! Gotta start getting the ship ready for the return trip!!
            
        * [Willy Richardson]
        ~Team += Willy
        	Giorgio: Willy, you think this planet is up your alley? It’s covered in forests and I think you’d be great at leading the field team around!
        	Willy: It’s still sergeant, but I’ll head out there and take charge! I’d love to show people the way around!!
        
        * [Iris Peacetree]
        ~Team += Iris
            Giorgio: Iris, this planet seems to be covered in different plant species. We could use someone like you out there to gather the best information we can.
			Iris: Ooh ooh thank you so much! I won’t let you down!!

            {Team ? (Lars): -> cuddle}
        
        * [Lars Clarkson]
        ~Team += Lars
            Giorgio: Lars, this planet has the perfect conditions for life, why don’t you get out there and see if you can find anything!
		    Lars: I’ll keep doing my best, sir. Thank you for the opportunity!
            {Team ? (Iris): -> cuddle}
        
        * [Ridan Tyndale]
        ~Team += Ridan
        	Giorgio: Ridan, you seem like you’d be a good fit for this expedition.
        	Ridan still isn’t eager to venture out but he isn’t adamantly opposed.
			Ridan: I guess I can head out…
		-
		
		{
        - LIST_COUNT(Team) < 3: -> expedition_choice
        - else: -> team_with
        }
		= cuddle
		 Lars and Iris link arms and cuddle up to one another.
        {
        - LIST_COUNT(Team) < 3: -> expedition_choice
        - else: -> team_with
        }
		
	= team_with
	Giorgio: Alright crew, Sergeant Willy packed up all the supplies we’ll need for the expedition. Everyone staying on the ship, I trust that you’ll keep doing your work! Last reminder, this still is not a vacation!
	The chosen crew of (choice 1), (choice 2), and (choice 3) alongside Giorgio finish collecting their supplies. Giorgio enters in the code to open the cargo bay door and the crew steps out onto Regis B.
	Looking around the planet, the researchers are met with bright light as the sun reflects off of the cerulean oceans sprawling to the horizon. The rhythmic splashing of the ocean’s currents on the shore and the salty smell of the atmosphere reminds the crew of beaches back on Earth. In the distance, the green peaks of neighboring islands can be made out. The air is heavy and humid creating a thick feeling all around them with tropical heat brushing over them. 
	Preparing to explore the planet the researchers have to decide where to start gathering research.
	-> explore
    
    = explore
    //CHOICE:
    * [Walk the shoreline]
    -> shoreline
    * [Enter the inland forest]
    -> forest
    //(Only if Willy was chosen)
    * {Team ? (Willy)} [Venture out on the coastline, return in the forest]
    ~ both_routes = true
    -> shoreline

    = shoreline
    Expedition Team: {Team}
	The researchers walk the coastline and take in the scenery. The beautiful shoreline and tropical smells bring a serene sense of peace to all of them. -> shoreline_interactions
	
	=shoreline_interactions
    * {Team ? (Lars)} [Lars]
        //(If Lars is on the expedition)
        Along the shore, Lars notices animal prints in the sand. He signals to the other researchers on the expedition to remain quiet and move slowly. He pulls out a net from his bag and begins to follow the prints. Hearing some ruffling in a nearby bush, he casts the net out and pulls it back, capturing the alien species and placing it in a cage.
        Lars: Good start to a new planet! Already captured my first specimen!
    	The other crew members seem happy with his success and continue on their expedition.
    	-> shoreline_interactions
    
    * {Team ? (Iris)} [Iris]
        //(If Iris is on the expedition)
    	Iris notices some seaweed like plants that washed onto shore. Putting a glove on her hand and taking out a small plastic bag, she picks up the plant and places it into the bag.
    	
    	Iris: Already got my first plant to research!! This is gonna be so so so much fun!! 
        -> shoreline_interactions
    /* {Team != (Lars, Iris)} [Crew]
        //(If neither Iris nor Lars were chosen)
    	The crew continues along the shoreline but fails to identify any specimen worth picking up to research.
    	-> shoreline_interactions*/
    	
    * {Team ? (Lars, Iris)} [lars & Iris]
        //(If Lars and Iris are on the expedition)
        Iris: I always wished to visit the beaches on Earth more. I never really had the chance to just walk the coastline like this with someone. It’s so exciting to be somewhere new and get an experience like this!!
        Lars: It is nice just getting to walk the shore and take in the sights. It’s different from anything I’ve done before, that’s for sure.
        The two smile at each other warmly. (Third crew member) feels out of place, as though they’re the third wheel on a date.
        -> shoreline_interactions
        
    *   {both_routes} [Forest]
        //(If following the choice 3 path)
	    Finishing up collecting data they need on the shoreline, the researchers decide to venture deeper inland to the forest covering the island. -> forest
    
    *->
        The crew takes temperatures of the atmosphere and water, recording them to meet the required quota of research data and continues on their way.-    
    	Finishing up everything they could do on the shoreline, the researchers decide that they’ve collected enough data to return to the ship and turn around, retracing their steps in the sand back to where they came from. 
	    -> Regular
	
	= forest
	{Team}
    //Choice 2/End of Choice 3:
	Entering into the vast forest, the crew is met with lush foliage and thick brush under their feet. It was hard to believe that they were on an island as they were surrounded by thick jungle with no sight of the shore. -> forest_interactions
    
    = forest_interactions
    * {Team ? (Iris)} [Iris]
        //(If Iris is on the expedition)
    	Iris: I don’t even know where to begin!! There are so so so many different species here I’ve never seen before. It’s all so foreign I have to get a little bit of everything!!
    	Iris spends the next 30 minutes cutting away pieces of every plant she can find, keeping them in their own bags to research on the ship later. She tries to collect as many seeds, spores, and cones as possible to try and regrow these plants aboard the ship as well. -> forest_interactions
    
    * {Team ? (Lars)} [Lars]
        //(If Lars is on the expedition)
    	Lars hears cries from different animals all around him in the jungle. Knowing he realistically won’t be able to capture them all, he lays a trap out putting bait into a cage meant for field research and instructs the crew to quietly wait with him in a nearby bush. After what felt like hours of waiting, the other members of the crew began drifting off as Lars patiently watched the cage. Soon thereafter, an animal looking like a small cat sneaks into the cage and begins eating the bait. Lars rushes over and closes the door trapping the animal inside.
    	Lars: Got it!!
    	Lars’s shout jolts the other two researchers awake and they approach him and the cage, peering at the animal they just trapped.
    	(Researcher 2): It’s kinda cute!
    	Moving on, Lars decided to spare the time of everyone else that this is the only trap he will set. As the crew continues to venture through the forest, he picks up any bugs and smaller, easier to catch animals that he can. -> forest_interactions
    
    * {Team ? (Lars, Iris)} [lars & Iris]
        //(If Iris and Lars chosen)
    	Iris clumsily trips over the vines lining the floor of the forest. Lars rushes over to help her up and make sure she’s ok.
    	Lars: Is everything alright, Iris? That looks like it could’ve hurt!
    	Iris: Yea, I’m alright I think! I’m used to tripping over and falling.
    	Lars and Iris laugh together as Lars helps Iris stand up. The two of them continue on ahead, leaving (3rd crew member) trailing behind. -> forest_interactions
    	
    /* {Team != (Lars, Iris)} [Crew]
        //(If neither Lars nor Iris were chosen)
    	The crew ventures through the interior of the forest. Knowing that they’re there to research the different components of the island, they grab random plants and insects and store them to bring back to the ship. -> forest_interactions */
    
    * {both_routes} [Leave]
        //End of Choice 3:
    	Willy leads the crew through the forest, tracking the movement of astral bodies and listening for the sounds of the waves to find their way back to the ship.
    	Willy: This turf ain’t nuthin’! I could navigate us back to the ship with my eyes closed and both arms tied behind my back! I was hoping for a real struggle in the adventurin’ out here!
    	The researchers find their way out of the forest with an efficient use of their time and head back onto the ship. Willy, feeling like he led them through the toughest journey of their lives, feels especially rewarded for his ability to lead them around the planet effectively. -> MasterResearchers
    
    *->
        //(If following the Choice 2 Path)
    	The researchers feel that they’ve collected sufficient amounts of data and turn around, stumbling their way through the woods to find their way back to the ship.
    
        -> Regular

/*
Choice 4:
(Follow the path of Choice 3 up until the end/this path replaces end of choice 3 with this)

Giorgio scouts the land around him, filling his mind with memories of Earth. 

(If Lars, Iris, and Willy are on the expedition)

Giorgio: What do you guys think?

Willy: What do you mean?

Giorgio: I mean, do you think this would be a good place to settle down?

Iris looks over at Lars.

Iris: I could get used to it here!

Lars looks back at Iris

Lars: It definitely seems like a viable option for people to come live!

Willy rolls his eyes at the love birds.

Willy: In terms of actual survivability, the atmosphere is breathable and the climate is similar to Earth’s with a good chance of being able to thrive off the land!

Giorgio seems satisfied with the responses the crew gave. 

Giorgio: Then it’s decided. We’re abandoning our mission and staying here. It’s time we break away from the stress and rigor with everything on Earth. Why not just kick back and try to thrive on our own off the land here?

The three on the expedition are easily convinced and they head back to the ship the alert the rest of the crew.

-> Colonization
*/