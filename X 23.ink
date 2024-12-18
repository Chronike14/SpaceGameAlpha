
== X_Setup
//Take input info of planet's name and which choice were on and then pick the right part of the story
    {
    - planetState == 1: -> X_chosen_first
    - planetState == 2: -> X_chosen_second
    - else: -> X_chosen_third
    }
    ->DONE

== X_23
    Looking around the planet, the researchers can barely open their eyes as the bright light from the blue star blinds them as it fills the sky. The planet is tinted with a dark sapphire colored appearance. As far as the eyes can see, the entire planet is sandy dunes and dry, rocky plateaus with not a drop of moisture anywhere to be found or felt in the air. No plant life can be seen either, but there are small prints in the sand showing evidence of life on the planet. There are high winds carrying sand through the air and whistling past the researchers’ ears. Occasional cries can be heard from the fauna native to the planet.

	Preparing to explore the planet the researchers have to decide where to start gathering research. -> expedition

    = expedition
    +[Venture down into the valley below the ship] -> interactions_valley
    +[Climb to the top of a nearby sand dune]-> interactions_dune
    +{Team ? (Lars)} [Follow the animal tracks] -> interactions_tracks
    +{Team ? (Willy)} [Climb to the top of a nearby plateau] -> interactions_plateau
    -> DONE
    
    = interactions_valley
    The researchers head down into a valley between dunes near where the ship landed. They struggle to keep their footing on the loose sand as they head down but manage to make it to the bottom without incident.
    *{Team ? (Lars)} [Lars]
    //if Lars chosen
        As the group of researchers is examining the area, Lars finds more animal tracks but isn’t able to find where they’re leading. He continues to look around the area and finds a hole in the sand similar to the ones made by antlions on earth. Figuring that an animal must be lying in wait at the bottom of it, he takes out a glass container and scoops it under the bottom of the pit encapsulating the sand at the bottom. Slightly shaking the container after closing it, he finds that he successfully captured a small lizard-like creature.
        Lars: (to the creature he captured) Interesting way of hunting for a reptile-like creature. I’ve only ever seen that hunting pattern in insects before. I’m curious to see what other methods of survival you’ve evolved to have on a planet like this!
        //if Team doesnt have Ridan
        {Team !? (Ridan)}   As the researchers continue their way deeper into the valley, Lars loses his footing and falls at a wrong angle onto his knee making a loud cracking and popping sound. The other researchers on the expedition are too far away from him to hear him fall.

            Lars: Uh oh… 

            Lars looks down at his leg. It doesn’t look broken but it definitely is not healthy either. He doesn’t want to draw attention or make the others on the expedition think he’s weak so he doesn’t bring any of their attention to it. He slowly tries to get up. Trying to put the least amount of pressure onto his leg as possible, he weakly limps around for the rest of the expedition.
        //if Team does have Ridan
        {Team ? (Ridan)}    As the researchers continue their way deeper into the valley, Lars loses his footing and falls at a wrong angle onto his knee making a loud cracking and popping sound.

        	Ridan: That did not sound good. Guess you want me to help with that?
        
        	Lars: I’d really appreciate that, yea!
        
        	Ridan examines Lars’s leg and quickly identifies the issue.
        
        	Ridan: It looks like you dislocated your knee. I can pop it back into the socket and give you some meds to ease the pain and help with recovery time, but you should still take it pretty easy for a few hours before the meds fully take effect and heal it completely.
        	
        	Ridan hands Lars a few pills and injects a syringe into his knee before pulling his leg back and pushing his knee back into socket. Amazingly, Lars feels little remaining pain and is able to walk on it almost completely fine.
        
        	Lars: Thanks doc! I don’t know what I’d do if you weren’t out here with us!
        
        	The two of them get back to exploring the area around them. -> interactions_valley

    *{Team ? (Iris)} [Iris]
    //if Iris chosen
        Iris looks around the surrounding area but isn’t able to find a single remnant of plant life anywhere. Disheartened, she gives up on her grand adventure to find any desert plants and mopes around for the rest of this expedition. -> interactions_valley
    
    *{Team !? (Lars)} [Crew]
    //if Lars not chosen
        The crew is unable to find much of anything on the planet here. They attempt to follow the animal tracks but quickly come up cold with no success in finding the actual specimen. There are no plants anywhere for them to collect. With little else to do, they collect samples of the sand in the area surrounding them and record the temperature of the planet. -> interactions_valley
        
    *->
        Feeling as though they have done all they can on this planet, the researchers head back to the ship and prepare to take off. -> returning_to_ship
    
    = interactions_dune
    The researchers struggle as they try to climb to the top of a nearby sand dune, finding difficulty in maintaining their footing as they attempt to reach the peak of the towering sand hill.
    *{Team ? (Lars)} [Lars]
    //if Lars chosen
        As the group of researchers is examining the area, Lars finds more animal tracks but isn’t able to find where they’re leading. He continues to look around the area and finds a hole in the sand similar to the ones made by antlions on earth. Figuring that an animal must be lying in wait at the bottom of it, he takes out a glass container and scoops it under the bottom of the pit encapsulating the sand at the bottom. Slightly shaking the container after closing it, he finds that he successfully captured a small lizard-like creature.
        Lars: (to the creature he captured) Interesting way of hunting for a reptile-like creature. I’ve only ever seen that hunting pattern in insects before. I’m curious to see what other methods of survival you’ve evolved to have on a planet like this!
        {Team !? (Ridan)}   As the researchers continue their way up to the top of the dune, Lars loses his footing and falls at a wrong angle onto his knee making a loud cracking and popping sound. The other researchers on the expedition are too far away from him to hear him fall.
            
            Lars: Uh oh… 

            Lars looks down at his leg. It doesn’t look broken but it definitely is not healthy either. He doesn’t want to draw attention or make the others on the expedition think he’s weak so he doesn’t bring any of their attention to it. He slowly tries to get up. Trying to put the least amount of pressure onto his leg as possible, he weakly limps around for the rest of the expedition.
        
        {Team ? (Ridan)}    As the researchers continue their way up to the top of the dune, Lars loses his footing and falls at a wrong angle onto his knee making a loud cracking and popping sound.

	Ridan: That did not sound good. Guess you want me to help with that?

	Lars: I’d really appreciate that, yea!

	Ridan examines Lars’s leg and quickly identifies the issue.

	Ridan: It looks like you dislocated your knee. I can pop it back into the socket and give you some meds to ease the pain and help with recovery time, but you should still take it pretty easy for a few hours before the meds fully take effect and heal it completely.
	
	Ridan hands Lars a few pills and injects a syringe into his knee before pulling his leg back and pushing his knee back into socket. Amazingly, Lars feels little remaining pain and is able to walk on it almost completely fine.

	Lars: Thanks doc! I don’t know what I’d do if you weren’t out here with us!

	The two of them get back to exploring the area around them. -> interactions_dune

    *{Team ? (Iris)} [Iris]
        Iris looks around the surrounding area but isn’t able to find a single remnant of plant life anywhere. Disheartened, she gives up on her grand adventure to find any desert plants and mopes around for the rest of this expedition. -> interactions_dune

    *{Team !? (Lars)} [Crew]
        The crew is unable to find much of anything on the planet here. They attempt to follow the animal tracks but quickly come up cold with no success in finding the actual specimen. There are no plants anywhere for them to collect. With little else to do, they collect samples of the sand in the area surrounding them and record the temperature of the planet. -> interactions_dune

    *->
        Feeling as though they have done all they can on this planet, the researchers head back to the ship and prepare to take off. -> returning_to_ship
    
    = interactions_tracks
    Lars leads the group of researchers as he tracks animal prints in the sand. He hopes it will lead them to where the animals find themselves living and thriving on this planet.
	
	Lars is eventually able to find an area where many different tracks all lead to the same spot: a small hole in the ground at the bottom of a cone shaped divot. Lars sets out a trap and prepares several cages to contain any animals that may fall for the bait. It doesn’t take long for several rodent-like creatures to jolt out of their hole and quickly make their way over to the cages.
	+ [CLOSE TRAPS]
	    When they venture inside to get the food left by Lars, he heads over and shuts them all inside allowing him to capture a full family of whatever animal it may be.
    
        Lars: Look at that everyone! I caught more animals to study!!
        // if Ridan not chosen
        {Team !? (Ridan)}   As the researchers continue exploring near the animals’ den, Lars loses his footing and falls at a wrong angle onto his knee making a loud cracking and popping sound. The other researchers on the expedition are too far away from him to hear him fall.

        Lars: Uh oh… 
    
        Lars looks down at his leg. It doesn’t look broken but it definitely is not healthy either. He doesn’t want to draw attention or make the others on the expedition think he’s weak so he doesn’t bring any of their attention to it. He slowly tries to get up. Trying to put the least amount of pressure onto his leg as possible, he weakly limps around for the rest of the expedition.
        // if Ridan chosen
        {Team ? (Ridan)}    As the researchers continue to explore the area around the animals’ den, Lars loses his footing and falls at a wrong angle onto his knee making a loud cracking and popping sound.

	    Ridan: That did not sound good. Guess you want me to help with that?

	    Lars: I’d really appreciate that, yea!

    	Ridan examines Lars’s leg and quickly identifies the issue.
    
    	Ridan: It looks like you dislocated your knee. I can pop it back into the socket and give you some meds to ease the pain and help with recovery time, but you should still take it pretty easy for a few hours before the meds fully take effect and heal it completely.
    	
    	Ridan hands Lars a few pills and injects a syringe into his knee before pulling his leg back and pushing his knee back into socket. Amazingly, Lars feels little remaining pain and is able to walk on it almost completely fine.
    
    	Lars: Thanks doc! I don’t know what I’d do if you weren’t out here with us!
    
    	The two of them get back to exploring the area around them. -> interactions_tracks
    *->
    Feeling as though they have done all they can on this planet, the researchers head back to the ship and prepare to take off.
    -> returning_to_ship
    
    = interactions_plateau
    Willy leads the crew to the base of a plateau before attempting to scale it. Finding that even he is having difficulty climbing the natural structure, he pulls a rope and a climbing pick out of his satchel.

	Willy: I’m gonna climb up to the top and then find a place to tie this rope down before sending it down. That should make it easier for the rest of you to make your way up!
	
	+ [CLIMB] -> climb
	=climb
	Willy wraps the rope around his body and with the pick in hand, begins to scale the side of the plateau to the best of his abilities. After nearly 30 minutes of climbing, Willy finally makes it to the top of the flat landscape. Unable to find anything to tie the rope to, he wedges the pick firmly into the ground ensuring stability, ties the rope around it, and throws it down to the other researchers waiting at the base. The rest of the crew manages to make it to the top of the plateau and examines the area.
	
	*{Team ? (Lars)} [Lars]
	    Lars sees a dog-like animal running in the distance. Wanting more than anything to capture it as it would be quite a large specimen to study, he set a trap and lied in wait for the dog to approach. 

    	Placing meat from his rations inside of a cage and then setting up a pulley system to close the latch from a distance, Lars continued to watch the dog’s movement as it came closer and closer to his trap. Eventually, the dog wandered in to take the meat and Lars quickly pulled the rope back to lock him in the cage.
    
    	Willy: Nice catch there! I’m surprised you were able to come up with a trap like that!
    	
    	Lars: Years of field work helped me learn the best methods at catching different animals. Can you help me lower it down from up here so we can easily transport it to the ship later?
    
    	Willy: I guess that won’t be too much of a problem.
    
    	Lars and Willy tie the cage to the end of a rope and work together to slowly lower the cage down to the surface below for retrieval on their way back.

        {Team !? (Ridan)}   As the researchers continue their way on top of the plateau, Lars loses his footing and falls at a wrong angle onto his knee making a loud cracking and popping sound. The other researchers on the expedition are too far away from him to hear him fall.

            Lars: Uh oh… 
            
            Lars looks down at his leg. It doesn’t look broken but it definitely is not healthy either. He doesn’t want to draw attention or make the others on the expedition think he’s weak so he doesn’t bring any of their attention to it. He slowly tries to get up. Trying to put the least amount of pressure onto his leg as possible, he weakly limps around for the rest of the expedition.
        
        {Team ? (Ridan)}    As the researchers continue their way atop the plateau, Lars loses his footing and falls at a wrong angle onto his knee making a loud cracking and popping sound.

        	Ridan: That did not sound good. Guess you want me to help with that?
        
        	Lars: I’d really appreciate that, yea!
        
        	Ridan examines Lars’s leg and quickly identifies the issue.
        
        	Ridan: It looks like you dislocated your knee. I can pop it back into the socket and give you some meds to ease the pain and help with recovery time, but you should still take it pretty easy for a few hours before the meds fully take effect and heal it completely.
        	
        	Ridan hands Lars a few pills and injects a syringe into his knee before pulling his leg back and pushing his knee back into socket. Amazingly, Lars feels little remaining pain and is able to walk on it almost completely fine.
        
        	Lars: Thanks doc! I don’t know what I’d do if you weren’t out here with us!
        
        	The two of them get back to exploring the area around them. -> interactions_plateau

    *{Team ? (Iris)} [Iris]
        Iris looks around the surrounding area but isn’t able to find a single remnant of plant life anywhere. Disheartened, she gives up on her grand adventure to find any desert plants and mopes around for the rest of this expedition. -> interactions_plateau
        
    *{Team !? (Lars)} [Crew]
        The crew is unable to find much of anything on the planet here. They attempt to follow the animal tracks but quickly come up cold with no success in finding the actual specimen. There are no plants anywhere for them to collect. With little else to do, they collect samples of the sand in the area surrounding them and record the temperature of the planet. -> interactions_plateau
        
    *->
    -> returning_to_ship
    
== team_choice
    {
    - LIST_COUNT(Team) < 3:
    The Team Roster: {Team}    
        * [Captain Rebecca Monroe]
        //~Team += Rebecca
            {
            - planetState == 1: Giorgio: Rebecca, why don’t you get out there and explore a bit?
                C: I should probably stay on the ship and check to make sure all the systems are still raring to go!
                Giorgio: That makes sense. 
            - planetState == 2: Giorgio: I’m assuming you still need to stay on the ship, Rebecca? 
                C: Yea! There’s a few things I should check out on the ship while the researchers are out!
            - else: Giorgio: I’m assuming you still need to stay on the ship, Rebecca? 
                C: Yup! Gotta start getting the ship ready for the return trip!!
            } -> team_choice
        * [Willy Richardson]
        ~Team += Willy
        	{
        	- planetState == 1: Giorgio: Willy, we could use-
    			Willy cuts Giorgio off
    			Willy: Sergeant.
    			Giorgio looks annoyed at being interrupted.
                Giorgio: (mockingly) Sergeant, I know your survival skills are high quality. Make sure no one gets hurt.
            - planetState == 2: Giorgio: Willy, you think-
    			Willy cuts Giorgio off
    			Willy: It’s still sergeant.
    			Giorgio glares at Willy for interrupting him.
                Giorgio: (mockingly) OK sergeant, I know your survival skills are high quality. The thick forest here seems like a perfect environment for you.
            - else: Giorgio: Willy, you think this planet is up your alley? It’s a cold, rocky, and barren planet but I think you’d be great at leading the field team around!
                Willy: It’s still sergeant, but I’ll head out there and take charge! I’d love to show people the way around!!
            } -> team_choice
        * [Iris Peacetree]
        ~Team += Iris
            {
            - planetState == 1: Giorgio: Iris, if you’re able to find plants that are able to thrive in an environment like this, they’re definitely plants worth researching.
			    Iris: I’ll try my hardest to see if I can find anything! {Team ? (Lars): -> shared_smile}
            - planetState == 2: Giorgio: Iris, I don’t think you’ll be able to find much of anything here, but if you manage to find even residual plant matter I guess that will have to do.
                Iris: I’ll try my best! I love desert plants!! {Team ? (Iris): -> hold_hands}
            - else: Giorgio: Iris, I don’t think you’ll be able to find much of anything here, but if you manage to find even residual plant matter I guess that will have to do.
                Iris: I’ll try my best! I love desert plants!! {Team ? (Iris): -> cuddle}
            } -> team_choice
        * [Lars Clarkson]
        ~Team += Lars
            {
            - planetState == 1: Giorgio: Lars, I doubt anything would be able to survive on a planet like this but keep your eyes out for any signs of life!
			    Lars: Yes sir! I’ll keep my eyes peeled for anything I might find! {Team ? (Iris): -> shared_smile}
			- planetState == 2: Giorgio: Lars, the satellite data from this planet has recorded animal movement on the surface. See if you can find out what’s living here so we can figure out how it manages to live on a planet like this! {Team ? (Iris): -> hold_hands}
			    Lars: I’ll definitely keep my eyes open! Tracking animals in sand is typically pretty easy too!!
			- else: Giorgio: Lars, the satellite data from this planet has recorded animal movement on the surface. See if you can find out what’s living here so we can figure out how it manages to live on a planet like this!
			    Lars: I’ll definitely keep my eyes open! Tracking animals in sand is typically pretty easy too!! {Team ? (Iris): -> cuddle}
			} -> team_choice
        * [Ridan Tyndale]
        ~Team += Ridan
        	{
        	- planetState == 1: Giorgio: Ridan, why don’t you get out there and do some field work?
                Ridan groans but doesn’t have the willpower to fight back so he accepts his fate
    			Ridan: Cold and alone. I guess I can get behind that…
    		- planetState == 2: Giorgio: Ridan, this seems like a place you might want to visit.
                Ridan groans but doesn’t have the willpower to fight back so he accepts his fate
                Ridan: Hot and dry… just how I like to sleep…
    		- else: Giorgio: Ridan, this seems like a place you might want to visit.
                Ridan groans but doesn’t have the willpower to fight back so he accepts his fate
			    Ridan: Hot and dry… just how I like to sleep…
    		} -> team_choice
    	//{!Iris gets a bit more antsy and giddy. She desperately wants to explore the scenery of this foreign planet.|Iris gets even more antsy and can’t contain herself. It’s taking everything in her not to scream out.|Iris looks down sadly and looks as though she’s holding back tears.}
    - else:
    + [That makes three!] -> team_with
    }
    = shared_smile
        Lars and Iris glance at each other sharing a warm smile. -> team_choice
    = hold_hands
        Lars and Iris reach out to one another and hold hands. -> team_choice
    = cuddle
		 Lars and Iris link arms and cuddle up to one another. -> team_choice
        {
        - LIST_COUNT(Team) < 3: -> team_choice
        - else: 
        + [That makes three!] -> team_with
        }
    
    = team_with
    	Giorgio: Alright crew! Those of you chosen finish getting ready to head out. The rest of you stay on the ship and keep doing the work expected of you. This is not a vacation!

	The chosen crew of {Team} finish packing up their supplies. Giorgio enters in the code to open the cargo bay door and the crew steps out onto X-23. -> X_23
    
== X_chosen_first
    Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.

	C: Alright everyone! We’re headed off to the first planet for our expedition! I’ve decided to start us with X-23. It’s a barren planet covered in deserts filled with plateaus and dunes. I figured the emptiness would make it a good starting point!
	
	+ [...] -> lars_lab
    =lars_lab
	In the animal lab, Lars begins preparing crates by raising the temperatures in their climate controlled environment to prepare for any animals he might find that are accustomed to the high temperatures of this planet. 
    
    + [...] -> willy_walks
    =willy_walks
	Willy walks around the cargo bay with a satchel in hand, browsing their supplies and packing rations of food, water, knives, rope, and other survival gear he thinks will be necessary for those going out on the expedition.
    
    + [...] -> giorgio_notes
    =giorgio_notes
    Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface.
    
	C: Brace yourselves everyone! This ride’s about to get a lot rougher!
    
    + [PUNCH IN COORDINATES] -> enter_coordinates
    =enter_coordinates
	Rebecca types the coordinates of X-23 into her Interplanetary Navigation System, or INS, and charts the course through the stars. Starting to push the ship into max hyperdrive, Rebecca prepares for a lightspeed launch across the cosmos. 
    
    + [...] -> ridan_wakes
    =ridan_wakes
	As the ship shakes heavily with turbulence, Dr. Ridan is woken from an accidental slumber that he fell into sitting at the desk of the medbay.

	Ridan: (to himself) Finally taking off I guess. Guess I should get back to work…

	Ridan begins to organize the rest of his supplies but is knocked onto the sick bed by another sudden jolt where he quickly dozes off to sleep once again.
    
	After about an hour of travel with the various crew members preparing themselves for the true start to their expedition, Rebecca comes onto the P.A. system once again.
    
    + [P.A. SYSTEM] -> pa_rebecca
    =pa_rebecca
	C: Get ready everyone! We’re enterin’ X-23’s atmosphere as I speak!

	The loud announcement wakes Ridan up once again and the rest of the crew is brought to attention. Giorgio makes his way to the cockpit and takes the PA system.

	Giorgio: All crew members report to the cargo bay. We’ve got to prepare for our first expedition!

	His stern voice implies urgency as he runs on Winter Daniels’s time. Ridan begrudgingly stands and makes his way to the back of the ship. Iris and Lars run into each other in the hallway and walk together to the cargo bay. Willy had never left the bay and sits on boxes waiting for the rest of the crew to arrive. 
    
    + [LAND SHIP] -> landing_X_23
    =landing_X_23
	Rebecca finishes the landing procedure just as roughly as she had when picking up the crew. Everyone felt a large rumble throughout the ship as it came to a halt. Iris falls down to the ground with Lars helping her up soon after. Ridan stumbles around but manages to catch himself saving himself from tumbling to the ground. Willy braces himself on the boxes he sits on top of. 

	Giorgio: You have to work on that landing Captain. I know this is your ship, but other people are on it now and you hold responsibility for them.

	C: Understood Doc! I’ll try ‘nd work on that!!

	Moments later, the ship’s engine is turned off and Giorgio and Rebecca walk into the cargo bay together. The rest of the crew draws their attention to them.

	Giorgio: I’ll be sending out a few of you to do the research we need! The rest of you will stay on the ship and do anything else to help contribute to our research! I’ll be staying on the ship to continue my own work. -> team_choice
		-> DONE
	
== X_chosen_second
	Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.

	C: Good work everyone! We’re headed off to the next planet for our expedition! I’ve decided to bring us to X-23. It’s a barren planet covered in deserts filled with plateaus and dunes.
	
	+ [...] -> lars_lab
    =lars_lab
	In the animal lab, Lars begins preparing crates by raising the temperatures in their climate controlled environment to prepare for any animals he might find that are accustomed to the high temperatures of this planet. 
    
    + [...] -> willy_walks
    =willy_walks
	Willy walks around the cargo bay with a satchel in hand, browsing their supplies and packing rations of food, water, knives, rope, and other survival gear he thinks will be necessary for those going out on the expedition.
    
    + [...] -> giorgio_notes
    =giorgio_notes
    Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface.
    
	C: Alright! Time to head off! I’ll try to make this trip a bit smoother than the last time!
    
    + [PUNCH IN COORDINATES] -> enter_coordinates
    =enter_coordinates
	Rebecca types the coordinates of X-23 into her Interplanetary Navigation System, or INS, and charts the course through the stars. Pushing the ship into hyperdrive but ensuring not to max out the throttle, Rebecca prepares for another lightspeed launch across the cosmos.
   
    + [P.A. SYSTEM] -> pa_rebecca
    =pa_rebecca
    After about an hour of travel with the various crew members preparing themselves for the true start to their expedition, Rebecca comes onto the P.A. system once again.
    
	C: Get ready everyone! We’re enterin’ X-23’s atmosphere as I speak!

	Giorgio heads up to the cockpit for another announcement over the PA system.

    Giorgio: You all know the drill by now. All crew members report to the cargo bay. We’ve got another expedition to head out on!

	Giorgio is less stern, but still commanding, worried about losing funding from Winter Daniels. Ridan leaves his office to join the company of the crew in the back of the ship. Iris and Lars meet up outside their labs so that they can walk to the back of the ship with one another. Willy was still in the bay making the final preparations for the expedition packs. 
    
    + [LAND SHIP] -> landing_X_23
    =landing_X_23
	Rebecca lands the crew much more smoothly this time around. There was still a rough jolt that shook the ship as it touched down, but significantly less than the last time. Lars holds Iris up to keep her from falling over again. Ridan plants his feet firmly stabilizing himself. Willy leans against a wall to help maintain his balance as he is ready for the touchdown.

	Giorgio: Much better landing this time around Rebecca! I can tell you’re trying your best to be a good captain!

	C: Thank you Giorgio! I’ll keep trying my hardest!

	Moments later, the ship’s engine is turned off and Giorgio and Rebecca walk into the cargo bay together. The researchers all turn their attention to the two of them.

	Giorgio: As you all know, I’ll be sending out a few of you to do the research we need! The people I don’t choose will stay on the ship and do any research that they can! Just like last time, I will be staying on the ship myself to continue my own work. -> team_choice
	->DONE
	
== X_chosen_third
    Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.

	C: Great work crew! We’re headed off to the last planet for our expedition! I’ve decided to bring us to X-23, a barren planet covered in deserts filled with plateaus and dunes. Definitely one that will be interesting to finish everything off for you to explore!
	
	+ [...] -> lars_lab
    =lars_lab
	In the animal lab, Lars begins preparing crates by raising the temperatures in their climate controlled environment to prepare for any animals he might find that are accustomed to the high temperatures of this planet. 
    
    + [...] -> willy_walks
    =willy_walks
	Willy walks around the cargo bay with a satchel in hand, browsing their supplies and packing rations of food, water, knives, rope, and other survival gear he thinks will be necessary for those going out on the expedition.
    
    + [...] -> giorgio_notes
    =giorgio_notes
    Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface for the last time.
    
    C: Smooth sailing from here on out! I think I’ve figured how to fly this to all of your comfort!

    + [PUNCH IN COORDINATES] -> enter_coordinates
    =enter_coordinates
	Rebecca types the coordinates of Cyprus 45-B into her INS charting the course through the stars. Pushing the ship into hyperdrive, setting it at a lower speed, Rebecca starts up another lightspeed launch across the cosmos.
   
    + [P.A. SYSTEM] -> pa_rebecca
    =pa_rebecca
    The trip takes about two and a half hours to get over to X-23, and as the ship nears its destination, Rebecca comes onto the PA system once again.
    
	C: We’re finally here! Hope it was a smooth trip for all of you! We’re touching down in Cyprus 45-B as I speak!!

	Giorgio heads up to the cockpit for another announcement over the PA system.

    Giorgio: Alright everyone! This is the last time I’ll be making this announcement but all crew members report back to the cargo bay!

	Giorgio is much less relaxed having made it through almost the entire research expedition without any major incidents. Ridan finishes up in his office to join with everyone else. Iris and Lars wait for each other in the hallway, hugging and taking the other’s hand before journeying to the back of the ship. Willy already finished packing the expedition bags for everyone and was relaxing in the cargo bay waiting for everyone else. 
    
    + [LAND SHIP] -> landing_X_23
    =landing_X_23
	Rebecca’s landing was perfect, not a single tremor as the ship settled on the ground. Lars and Iris stood hand in hand waiting for the captain and Giorgio. Ridan and Willy stood near each other, talking quietly amongst themselves as they prepared for the last excursion.

	Giorgio: Perfect landing Rebecca! You’ve gotten much better at handling a ship with other people on it!

	C: Thank you Gio! I’m glad I was able to be the captain for your research!

	Moments later, the ship’s engine is turned off and Giorgio and Rebecca walk into the cargo bay together. The researchers all turn their attention to the two of them.

	Giorgio: I’m sure you all know exactly what I’m gonna say, but I’ll be sending out three of you to do the final research we need! The people I don’t choose will stay on the ship and finish up all the research that they can! I think I’ll be heading out and helping with the field work this time around! -> team_choice
    ->DONE
