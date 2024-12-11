
== Cyprus_Setup
{
- planet_jump == 1: -> Cyprus_chosen_first
- planet_jump == 2: -> Cyprus_chosen_second
- else: -> Cyprus_chosen_third
}
    -> DONE
    
== Cyprus_chosen_first
    Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.

	C: Alright everyone! We’re headed off to the first planet for our expedition! I’ve decided to start us with Cyprus 45-B. It’s a colder planet orbiting a red dwarf star. Definitely one that will be fun for you to explore!

	Iris grabs a book on plants able to survive in colder and more barren climates. Parsing through the pages to see what she should be looking out for.

	Willy walks around the cargo bay with a satchel in hand, browsing their supplies and packing rations of food, water, knives, rope, and other survival gear he thinks will be necessary for those going out on the expedition.

    Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface.

	C: Brace yourselves everyone! This ride’s about to get a lot rougher!
    + [Enter Planet Coordinates] -> coordinates
    = coordinates
    Rebecca types the coordinates of Cyprus 45-B into her interplanetary navigation system, or INS, and charts the course through the stars. Starting to push the ship into max hyperdrive, Rebecca prepares for a lightspeed launch across the cosmos. 

	As the ship shakes heavily with turbulence, Dr. Ridan is woken from an accidental slumber that he fell into sitting at the desk of the medbay.

    + [NEXT] -> ridan_wakes
    = ridan_wakes
    Ridan: (to himself) Finally taking off I guess. Guess I should get back to work…

	Ridan begins to organize the rest of his supplies but is knocked onto the sick bed by another sudden jolt where he quickly dozes off to sleep once again.
    + [NEXT] -> pa_system
    = pa_system
    After about an hour of travel with the various crew members preparing themselves for the true start to their expedition, Rebecca comes onto the PA system once again.

	C: Get ready everyone! We’re enterin’ Cyprus 45-B’s atmosphere as I speak!

	The loud announcement wakes Ridan up once again and the rest of the crew is brought to attention. Giorgio makes his way to the cockpit and takes the PA system.

	Giorgio: All crew members report to the cargo bay. We’ve got to prepare for our first expedition!

	His stern voice implies urgency as he runs on Winter Daniels’s time. Ridan begrudgingly stands and makes his way to the back of the ship. Iris and Lars run into each other in the hallway and walk together to the cargo bay. Willy had never left the bay and sits on boxes waiting for the rest of the crew to arrive.
    + [NEXT] -> landing_cyprus_45b

    = landing_cyprus_45b
    Rebecca finishes the landing procedure just as roughly as she had when picking up the crew. Everyone felt a large rumble throughout the ship as it came to a halt. Iris falls down to the ground with Lars helping her up soon after. Ridan stumbles around but manages to catch himself saving himself from tumbling to the ground. Willy braces himself on the boxes he sits on top of. 
    
    Giorgio: You have to work on that landing Captain. I know this is your ship, but other people are on it now and you hold responsibility for them.
    
    C: Understood Doc! I’ll try ‘nd work on that!!
    
    Moments later, the ship’s engine is turned off and Giorgio and Rebecca walk into the cargo bay together. The rest of the crew draws their attention to them.
    
    Giorgio: I’ll be sending out a few of you to do the research we need! The rest of you will stay on the ship and do anything else to help contribute to our research! I’ll be staying on the ship to continue my own work. -> expedition_choice

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
            Giorgio: Iris, if you’re able to find plants that are able to thrive in an environment like this, they’re definitely plants worth researching.

			Iris: I’ll try my hardest to see if I can find anything!
            {Team ? (Lars): -> shared_smile}
        
        * [Lars Clarkson]
        ~Team += Lars
            Giorgio: Lars, I doubt anything would be able to survive on a planet like this but keep your eyes out for any signs of life!
			
            Lars: Yes sir! I’ll keep my eyes peeled for anything I might find!

            {Team ? (Iris): -> shared_smile}
        
        * [Ridan Tyndale]
        ~Team += Ridan
        	Giorgio: Ridan, why don’t you get out there and do some field work?

            Ridan groans but doesn’t have the willpower to fight back so he accepts his fate

			Ridan: Cold and alone. I guess I can get behind that…
    
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

	The chosen crew of {Team} finish packing up their supplies. Giorgio enters in the code to open the cargo bay door and the crew steps out onto Cyprus 45-B. -> Cyprus_45B

    = Cyprus_45B
	Looking around the planet, the researchers are met with a dim planet covered in a red hue. There’s sparse vegetation spanning the area lacking any hue. Hard rock and rigid mounds fill the area creating a very mountainous feel to the planet. It’s almost dead silent in the area with subtle breezes blowing small rocks through the air to break the complete emptiness. Every breath is filled with a crisp feeling with a metallic smell and taste in the air. Lingering dust in the air causes a gritty feeling all around them. The frigid temperatures cause the crew to shiver.

	Preparing to explore the planet the researchers have to decide where to start gathering research.
    -> explore

    = explore
    //CHOICE:
    * [Stay nearby the ship and only gather research in the immediately safe areas]
    -> nearby
    * [Venture down a path naturally carved by weathering until it ends]
    -> path
    //(Only if Willy was chosen)
    * {Team ? (Willy)} [Climb a steep mound and see what lies at the peak]
    ~ both_routes = true
    -> mound

    = nearby
    Expedition Team: {Team}
	Scared of the potential dangers of falling or getting trapped on this rugged terrain, the researchers choose to stay in the clearing where the ship landed and avoid any chance of injury. -> nearby_interactions
    
    = nearby_interactions
    * {Team ? (Lars)} [Lars]
        //(If Lars is on the expedition)
        Unable to find any signs of life, Lars feels like he’s out of place researching on this planet. He gives up on trying to find any animal specimen and begins to collect some plants for Iris instead. -> nearby_interactions
    
    * {Team ? (Iris)} [Iris]
        //(If Iris is on the expedition)
        Iris looks around the ship and finds small, weed-like plants completely missing any color. They resemble the transparent, white appearing fish found in caves and at the bottom of the ocean. Fascinated by their ability to survive with such little light, she collects as many of the various plants she can find.
        
        Iris trips on a rock and scrapes the top layer of skin off of her shin.
    
    	Iris: Ooooh that is NOT good!
    
    	//(If Ridan not chosen and Iris chosen)
    	{Team !? (Ridan)} The other members of the crew turn back to look at Iris. None of them know anything beyond basic first aid. Iris opens her satchel, pulls out some bandages packed inside, and loosely wraps them around her leg. The other researchers help Iris to her feet and she walks with a slight limp for the rest of the expedition. 
        
        //(If Iris and Ridan chosen)
    	{Team ? (Ridan, Iris)} Ridan: That looks painful! Let me take a look at it.
    
    	Ridan grabs Iris’s leg and pulls it towards him a bit roughly. He takes out a spray bottle and some bandages from his satchel.
    
    	Ridan: This should help you heal quicker and avoid any risk of infection. Keep it there for a few hours and the skin should grow over it by the time we’re done on the surface here!
    
    	Ridan sprays the disinfectant skin regrowth serum on Iris’s leg and wraps it up in a bandage before leaving her and going back to doing more research. Amazingly, Iris feels little remaining pain and is able to get back up and continue collecting specimens. -> nearby_interactions
    * {Team !? (Iris)} [Crew]
        //(If neither Iris nor Lars were chosen)
    	The crew continues along the shoreline but fails to identify any specimen worth picking up to research. -> nearby_interactions
    	
    * {Team ? (Lars, Iris)} [lars & Iris]
        //(If Lars and Iris are on the expedition)
        Seeing as how the majority of the planet is barren, the researchers collect a few plants scattered around the ship and take a few samples of the rock on the planet as well. Recording the temperature of the atmosphere, they finish up everything they feel they need to do. -> nearby_interactions
    
	*->   
        The researchers finish up everything they need to do on Cyprus 45-B and find their way back onto the ship ready to head off of the planet. -> returning_to_ship

    = path
    {Team}
    //Choice 2:
	Seeing a clear carved path in the ground ahead of them, the researchers head down away from the ship to a more rugged part of the planet. -> path_interactions
    
    = path_interactions
    * {Team ? (Iris)} [Iris]
        //(If Iris is on the expedition)
    	Iris looks around the bottom of the path under her feet and finds small, weed-like plants completely missing any color. They resemble the transparent, white appearing fish found in caves and at the bottom of the ocean. Fascinated by their ability to survive with such little light, she collects as many of the various plants she can find.
        
        Iris trips on a rock and scrapes the top layer of skin off of her shin.
    
    	Iris: Ooooh that is NOT good!!
    	
    	//(If Ridan not chosen and Iris chosen)
    	{Team !? (Ridan)} The other members of the crew turn back to look at Iris. None of them know anything beyond basic first aid. Iris opens her satchel, pulls out some bandages packed inside, and loosely wraps them around her leg. The other researchers help Iris to her feet and she walks with a slight limp for the rest of the expedition. 
    
        //(If Iris and Ridan chosen)
    	{Team ? (Ridan)} Ridan: That looks painful! Let me take a look at it.
    
    	Ridan grabs Iris’s leg and pulls it towards him a bit roughly. He takes out a spray bottle and some bandages from his satchel.
    
    	Ridan: This should help you heal quicker and avoid any risk of infection. Keep it there for a few hours and the skin should grow over it by the time we’re done on the surface here!
    
    	Ridan sprays the disinfectant skin regrowth serum on Iris’s leg and wraps it up in a bandage before leaving her and going back to doing more research. Amazingly, Iris feels little remaining pain and is able to get back up and continue collecting specimens. ->path_interactions
    
    * {Team ? (Lars)} [Lars]
        //(If Lars is on the expedition)
    	Unable to find any signs of life, Lars feels like he’s out of place researching on this planet. He gives up on trying to find any animal specimen and begins to collect some plants for Iris instead. ->path_interactions
    
    * {Team ? (Lars, Iris)} [lars & Iris]
        //(If Iris and Lars chosen)
    	Lars and Iris begin to walk with each other, Lars guiding the way and helping Iris to make sure she doesn’t fall again.

	Iris: I’m really glad we’re getting to spend more time together. A planet like this is really cool to be able to do it on too!!

	Lars: I’m happy to spend time with you no matter what planet we’re on!

	The two of them laugh as the other researcher rolls their eyes in annoyance at the public flirting. ->path_interactions
    	
    * {Team !? (Iris)} [Crew]
        //(If Iris were not chosen)
    	Seeing as how the majority of the planet is barren, the researchers collect a few plants scattered around the ship and take a few samples of the rock on the planet as well. Recording the temperature of the atmosphere, they finish up everything they feel they need to do. -> path_interactions 

    *->
        //(If following the Choice 2 Path)
    	The researchers finish up everything they need to do on Cyprus 45-B and find their way back onto the ship ready to head off of the planet. -> returning_to_ship
    
    = mound
    {Team}
    //Choice 3:
    Willy leads the crew members to a steep and ridgid cliff a few hundred feet away from the ship. Appearing difficult to climb and worried about the crew’s safety, Willy takes the rope out of his satchel.

	Willy: I’m gonna go ahead and climb up to the top. Once I’m there, I’ll tie this rope and send it down for you two to climb up so it’s a bit easier for you both.

	Willy began to climb up the steep cliff, showing off his impressive scaling abilities. Once at the top, Willy ties a figure eight follow loop around a jagged piece of rock, tugs at it to make sure it’s stable, then tosses the rope down to the researchers below. They grab a hold of the rope and begin to climb up to the top.
	
	At the peak, the researchers gaze upon the vast landscape and are taken aback by the sheer openness of everything that lays out before them. Nothing but rocky cliffs and mountains cover the surface with a few small, flat craters similar to the one they had landed in. -> mound_interactions
	
	= mound_interactions
	* {Team ? (Iris)} [Iris]
	    //(If Iris chosen)~
	    At the peak of this mountain, there are a significant amount of plants that she didn’t see in the crater. Even in a barren landscape like this one, Iris is amazed to see a vast difference in species that have been able to root themselves into the stone and find enough nutrients to keep themselves alive. She collects as many samples as she can hold in her satchel and still feels like she’s missing some.
	    
    	Iris trips on a rock and scrapes the top layer of skin off of her shin.
    
    	Iris: Ooooh that is NOT good!!
    	
        //(If Ridan not chosen and Iris chosen)~~
    	{Team !? (Ridan)} The other members of the crew turn back to look at Iris. None of them know anything beyond basic first aid. Iris opens her satchel, pulls out some bandages packed inside, and loosely wraps them around her leg. The other researchers help Iris to her feet and she walks with a slight limp for the rest of the expedition. 
    
        //(If Iris and Ridan chosen)~~
    	{Team ? (Ridan)} Ridan: That looks painful! Let me take a look at it.
    
    	Ridan grabs Iris’s leg and pulls it towards him a bit roughly. He takes out a spray bottle and some bandages from his satchel.
    
    	Ridan: This should help you heal quicker and avoid any risk of infection. Keep it there for a few hours and the skin should grow over it by the time we’re done on the surface here!
    
    	Willy: It’s a good thing I remembered to pack up some first aid supplies!
    
    	Ridan sprays the disinfectant skin regrowth serum on Iris’s leg and wraps it up in a bandage before leaving her and going back to doing more research. Amazingly, Iris feels little remaining pain and is able to get back up and continue collecting specimens.
    
    	Willy: If you need help getting down from up here, don’t hesitate to ask!
    
    	Iris: Thanks Wil- I mean Sergeant!! I’ll definitely take you up on that offer! -> mound_interactions

    * {Team ? (Lars)} [Lars]
    //(If Lars chosen)
    Unable to find any signs of life, Lars feels like he’s out of place researching on this planet. He gives up on trying to find any animal specimen and begins to collect some plants for Iris instead. -> mound_interactions
    
    * {Team ? (Lars, Iris)} [Lars & Iris]
    //(If Lars and Iris chosen)
	Lars and Iris begin to walk with each other, Lars guiding the way and helping Iris to make sure she doesn’t fall again.

	Iris: I’m really glad we’re getting to spend more time together. A planet like this is really cool to be able to do it on too!!

	Lars: I’m happy to spend time with you no matter what planet we’re on!

	The two of them laugh as Willy rolls his eyes in annoyance at the public flirting.

	Willy: Alright love birds, let’s get a move on!! -> mound_interactions

    * {Team !? (Iris)} [Crew]
    //(If Iris not chosen)
	Seeing as how the majority of the planet is barren, the researchers collect a few plants scattered around the ship and take a few samples of the rock on the planet as well. Recording the temperature of the atmosphere, they finish up everything they feel they need to do. -> mound_interactions
    
    *->
	The researchers finish up everything they need to do on Cyprus 45-B climbing back down the mountain and returning to their ship in the crater. -> returning_to_ship
-> DONE
    
== Cyprus_chosen_second
    Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.

	C: Good work everyone! We’re headed off to the next planet for our expedition! I’ve decided to bring us to Regis B. It seems similar to our atmosphere so I figured it’d be a nice place to go!!

	Iris grabs a book on plants able to survive in colder and more barren climates. Parsing through the pages to see what she should be looking out for.

	Willy walks around the cargo bay with a satchel in hand, browsing their supplies and packing rations of food, water, knives, rope, and other survival gear he thinks will be necessary for those going out on the expedition.
    
    Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface.

	C: Alright! Time to head off! I’ll try to make this trip a bit smoother than the last time!
    + [Enter Planet Coordinates] -> coordinates
    = coordinates
	Rebecca types the coordinates of Cyprus 45-B into her INS charting the course through the stars. Pushing the ship into hyperdrive but ensuring not to max out the throttle, Rebecca prepares for another lightspeed launch across the cosmos. 

	The trip takes about four hours to get over to Cyprus 45-B and as the ship nears its destination, Rebecca comes onto the PA system once again.
    + [NEXT] -> pa_system
    = pa_system
	C: We’re finally here! Sorry it took so long, but we’re enterin’ Cyprus 45-B’s atmosphere now!

	Giorgio heads up to the cockpit for another announcement over the PA system.
    + [NEXT] -> giorgio_pa
    = giorgio_pa
	Giorgio: You all know the drill by now. All crew members report to the cargo bay. We’ve got another expedition to head out on!
    
	Giorgio is less stern, but still commanding, worried about losing funding from Winter Daniels. Ridan leaves his office to join the company of the crew in the back of the ship. Iris and Lars meet up outside their labs so that they can walk to the back of the ship with one another. Willy was still in the bay making the final preparations for the expedition packs. 
    + [NEXT] -> cyprus_landing
    = cyprus_landing
	Rebecca lands the crew much more smoothly this time around. There was still a rough jolt that shook the ship as it touched down, but significantly less than the last time. Lars holds Iris up to keep her from falling over again. Ridan plants his feet firmly stabilizing himself. Willy leans against a wall to help maintain his balance as he is ready for the touchdown.

	Giorgio: Much better landing this time around Rebecca! I can tell you’re trying your best to be a good captain!

	C: Thank you Giorgio! I’ll keep trying my hardest!

	Moments later, the ship’s engine is turned off and Giorgio and Rebecca walk into the cargo bay together. The researchers all turn their attention to the two of them.

	Giorgio: As you all know, I’ll be sending out a few of you to do the research we need! The people I don’t choose will stay on the ship and do any research that they can! Just like last time, I will be staying on the ship myself to continue my own work. -> expedition_choice
    
    = expedition_choice
    Team: {Team}
    + [Captain Rebecca Monroe]
    
    	Giorgio: I’m assuming you still need to stay on the ship, Rebecca? 
    
        C: Yea! There’s a few things I should check out on the ship while the researchers are out!
    
    + [Willy Richardson]
    ~Team += Willy			
    	Giorgio: Willy, you think-
    
    	Willy cuts Giorgio off
    
    	Willy: It’s still sergeant.
    
    	Giorgio glares at Willy for interrupting him.
    
        Giorgio: (mockingly) OK sergeant, I know your survival skills are high quality. The thick forest here seems like a perfect environment for you.
    
    + [Iris Peacetree]
    ~Team += Iris
        Giorgio: Iris, if you’re able to find plants that are able to thrive in an environment like this, they’re definitely plants worth researching.
    
    	Iris: I’ll try my hardest to see if I can find anything!
    
        {Team ? (Lars)} Lars and Iris reach out to one another and hold hands.
    
    + [Lars Clarkson]
    ~Team += Lars
        Giorgio: Lars, I doubt anything would be able to survive on a planet like this but keep your eyes out for any signs of life!
    			
        Lars: Yes sir! I’ll keep my eyes peeled for anything I might find!
    
        {Team ? (Iris)} Lars and Iris reach out to one another and hold hands.
    
    + [Ridan Tyndale]
    ~Team += Ridan
    	Giorgio: Ridan, why don’t you get out there and do some field work?
    
        Ridan groans but doesn’t have the willpower to fight back so he accepts his fate
    
    	Ridan: Cold and barren. I guess I can get behind that…
    			
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
    Giorgio: Alright crew, Willy… (sarcastically) I mean Sergeant Willy, packed up everything you should need for the expedition. The rest of you staying on the ship, keep up the good work! Just another reminder, this is not a vacation!
    
    The chosen crew of {Team} finish packing up their supplies. Giorgio enters in the code to open the cargo bay door and the crew steps out onto Cyprus 45-B. -> Cyprus_45B
    
    = Cyprus_45B
    Looking around the planet, the researchers are met with a dim planet covered in a red hue. There’s sparse vegetation spanning the area lacking any hue. Hard rock and rigid mounds fill the area creating a very mountainous feel to the planet. It’s almost dead silent in the area with subtle breezes blowing small rocks through the air to break the complete emptiness. Every breath is filled with a crisp feeling with a metallic smell and taste in the air. Lingering dust in the air causes a gritty feeling all around them. The frigid temperatures cause the crew to shiver. 
    
    Preparing to explore the planet the researchers have to decide where to start gathering research. -> explore
    	
    = explore
    //CHOICE:
    * [Stay nearby the ship and only gather research in the immediately safe areas] -> nearby
    * [Venture down a path naturally carved by weathering until it ends] -> path
    //(Only if Willy Chosen) 
    * {Team ? (Willy)} [Climb a steep mound and see what lies at the peak]
    ~ both_routes = true
    -> mound
    
    = nearby
    //Choice 1:
    	Scared of the potential dangers of falling or getting trapped on this rugged terrain, the researchers choose to stay in the clearing where the ship landed and avoid any chance of injury. -> mound_interactions
    
    = nearby_interactions
    //(If Iris chosen)
    * {Team ? Iris} [Iris]
        Iris looks around the ship and finds small, weed-like plants completely missing any color. They resemble the transparent, white appearing fish found in caves and at the bottom of the ocean. Fascinated by their ability to survive with such little light, she collects as many of the various plants she can find.
    
        //(If Ridan not chosen and Iris chosen)
        {Team !? (Ridan)}   Iris trips on a rock and scrapes the top layer of skin off of her shin.
    
    	    Iris: Ooooh that is NOT good!!
    
    	    The other members of the crew turn back to look at Iris. None of them know anything beyond basic first aid. Iris opens her satchel, pulls out some bandages packed inside, and loosely wraps them around her leg. The other researchers help Iris to her feet and she walks with a slight limp for the rest of the expedition. 
    
        //(If Iris and Ridan chosen)
        {Team ? (Ridan, Iris)}    Iris trips on a rock and scrapes the top layer of skin off of her shin.
        
        	Iris: Ooooh that is NOT good!!
        
        	Ridan: That looks painful! Let me take a look at it.
        
        	Ridan grabs Iris’s leg and pulls it towards him a bit roughly. He takes out a spray bottle and some bandages from his satchel.
        
        	Ridan: This should help you heal quicker and avoid any risk of infection. Keep it there for a few hours and the skin should grow over it by the time we’re done on the surface here!
        
        	Ridan sprays the disinfectant skin regrowth serum on Iris’s leg and wraps it up in a bandage before leaving her and going back to doing more research. Amazingly, Iris feels little remaining pain and is able to get back up and continue collecting specimens. -> nearby_interactions
    
    //(If Lars chosen)
    * {Team ? (Lars)} [Lars]
    	Unable to find any signs of life, Lars feels like he’s out of place researching on this planet. He gives up on trying to find any animal specimen and begins to collect some plants for Iris instead. -> nearby_interactions
    
    
    //(If Lars and Iris chosen)
    * {Team ? (Lars, Iris)} [Lars, Iris]
    	Lars and Iris begin to walk with each other, Lars guiding the way and helping Iris to make sure she doesn’t fall again.
    
    	Iris: I’m really glad we’re getting to spend more time together. A planet like this is really cool to be able to do it on too!!
    
    	Lars: I’m happy to spend time with you no matter what planet we’re on!
    
    	The two of them laugh as the other researcher rolls their eyes in annoyance at the public flirting. -> nearby_interactions
    
    //(If Iris not chosen)
    * {Team !? (Iris)} [CREW]
    	Seeing as how the majority of the planet is barren, the researchers collect a few plants scattered around the ship and take a few samples of the rock on the planet as well. Recording the temperature of the atmosphere, they finish up everything they feel they need to do. -> nearby_interactions
    
    *->
    The researchers finish up everything they need to do on Cyprus 45-B and find their way back onto the ship ready to head off of the planet. -> returning_to_ship
    
    = path
    //Choice 2:
    	Seeing a clear carved path in the ground ahead of them, the researchers head down away from the ship to a more rugged part of the planet. -> path_interactions
    
    = path_interactions
    //(If Iris chosen)
    * {Team ? Iris} [Iris]
    	Iris looks around the bottom of the path under her feet and finds small, weed-like plants completely missing any color. They resemble the transparent, white appearing fish found in caves and at the bottom of the ocean. Fascinated by their ability to survive with such little light, she collects as many of the various plants she can find.
    
        //(If Ridan not chosen and Iris chosen)
        {Team !? (Ridan)}   Iris trips on a rock and scrapes the top layer of skin off of her shin.
        
        	Iris: Ooooh that is NOT good!!
        
        	The other members of the crew turn back to look at Iris. None of them know anything beyond basic first aid. Iris opens her satchel, pulls out some bandages packed inside, and loosely wraps them around her leg. The other researchers help Iris to her feet and she walks with a slight limp for the rest of the expedition. 
        
        //(If Iris and Ridan chosen)
        {Team ? (Ridan)}	Iris trips on a rock and scrapes the top layer of skin off of her shin.
        
        	Iris: Ooooh that is NOT good!!
        
        	Ridan: That looks painful! Let me take a look at it.
        
        	Ridan grabs Iris’s leg and pulls it towards him a bit roughly. He takes out a spray bottle and some bandages from his satchel.
        
        	Ridan: This should help you heal quicker and avoid any risk of infection. Keep it there for a few hours and the skin should grow over it by the time we’re done on the surface here!
        
        	Ridan sprays the disinfectant skin regrowth serum on Iris’s leg and wraps it up in a bandage before leaving her and going back to doing more research. Amazingly, Iris feels little remaining pain and is able to get back up and continue collecting specimens. -> path_interactions
    
    //(If Lars chosen)
    * {Team ? (Lars)} [Lars]
        Unable to find any signs of life, Lars feels like he’s out of place researching on this planet. He gives up on trying to find any animal specimen and begins to collect some plants for Iris instead. -> path_interactions
    
    //(If Lars and Iris chosen)
    * {Team ? (Lars, Iris)}
        Lars and Iris begin to walk with each other, Lars guiding the way and helping Iris to make sure she doesn’t fall again.
    
    	Iris: I’m really glad we’re getting to spend more time together. A planet like this is really cool to be able to do it on too!!
    
    	Lars: I’m happy to spend time with you no matter what planet we’re on!
    
    	The two of them laugh as the other researcher rolls their eyes in annoyance at the public flirting. -> path_interactions
    
    //(If Iris not chosen)
    * {Team !? (Iris)} [Crew]
    	Seeing as how the majority of the planet is barren, the researchers collect a few plants scattered around the ship and take a few samples of the rock on the planet as well. Recording the temperature of the atmosphere, they finish up everything they feel they need to do. -> path_interactions
    
    *->
    The researchers finish up everything they need to do on Cyprus 45-B and find their way back onto the ship ready to head off of the planet. -> returning_to_ship
    
    = mound
    //Choice 3:
    	Willy leads the crew members to a steep and ridgid cliff a few hundred feet away from the ship. Appearing difficult to climb and worried about the crew’s safety, Willy takes the rope out of his satchel.
    
    	Willy: I’m gonna go ahead and climb up to the top. Once I’m there, I’ll tie this rope and send it down for you two to climb up so it’s a bit easier for you both.
    
    	Willy began to climb up the steep cliff, showing off his impressive scaling abilities. Once at the top, Willy ties a figure eight follow loop around a jagged piece of rock, tugs at it to make sure it’s stable, then tosses the rope down to the researchers below. They grab a hold of the rope and begin to climb up to the top. 
    
    	At the peak, the researchers gaze upon the vast landscape and are taken aback by the sheer openness of everything that lays out before them. Nothing but rocky cliffs and mountains cover the surface with a few small, flat craters similar to the one they had landed in. -> mound_interactions
    
    = mound_interactions
    (If Iris chosen)
    * {Team ? (Iris)} [Iris]
    	At the peak of this mountain, there are a significant amount of plants that she didn’t see in the crater. Even in a barren landscape like this one, Iris is amazed to see a vast difference in species that have been able to root themselves into the stone and find enough nutrients to keep themselves alive. She collects as many samples as she can hold in her satchel and still feels like she’s missing some.
    
    
        (If Ridan not chosen and Iris chosen)
        {Team !? (Ridan)}	Iris trips on a rock and scrapes the top layer of skin off of her shin.
        
        	Iris: Ooooh that is NOT good!!
        
        	The other members of the crew turn back to look at Iris. None of them know anything beyond basic first aid. Willy opens his satchel, pulls out some bandages packed inside, and wraps them around her leg as best he can. He then helps Iris to her feet and she walks with a slight limp for the rest of the expedition. 
        
        (If Iris and Ridan chosen)
        {Team ? (Ridan)}	Iris trips on a rock and scrapes the top layer of skin off of her shin.
        
        	Iris: Ooooh that is NOT good!!
        
        	Ridan: Ooh that looks painful! Let me take a look at it.
        
        	Ridan grabs Iris’s leg and pulls it towards him a bit roughly. He takes out a spray bottle and some bandages from his satchel.
        
        	Ridan: This should help you heal quicker and avoid any risk of infection. Keep it there for a few hours and the skin should grow over it by the time we’re done on the surface here!
        
        	Willy: It’s a good thing I remembered to pack up some first aid supplies!
        
        	Ridan sprays the disinfectant skin regrowth serum on Iris’s leg and wraps it up in a bandage before leaving her and going back to doing more research. Amazingly, Iris feels little remaining pain and is able to get back up and continue collecting specimens.
        
        	Willy: If you need help getting down from up here, don’t hesitate to ask!
        
        	Iris: Thanks Wil- I mean Sergeant!! I’ll definitely take you up on that offer! -> mound_interactions
    
    (If Lars chosen)
    * {Team ? (Lars)} [Lars]
    	Unable to find any signs of life, Lars feels like he’s out of place researching on this planet. He gives up on trying to find any animal specimen and begins to collect some plants for Iris instead. -> mound_interactions
    
    (If Lars and Iris chosen)
    * {Team ? (Lars, Iris)} [Lars & Iris]
    	Lars and Iris begin to walk with each other, Lars guiding the way and helping Iris to make sure she doesn’t fall again.
    
    	Iris: I’m really glad we’re getting to spend more time together. A planet like this is really cool to be able to do it on too!!
    
    	Lars: I’m happy to spend time with you no matter what planet we’re on! I’m sorry you fell!
    
    	The two of them laugh as Willy rolls his eyes in annoyance at the public flirting.
    
    	Willy: Alright love birds, let’s get a move on!! -> mound_interactions
    
    (If Iris not chosen)
    * {Team !? (Iris)} [Crew]
    	Seeing as how the majority of the planet is barren, the researchers collect a few plants scattered around the ship and take a few samples of the rock on the planet as well. Recording the temperature of the atmosphere, they finish up everything they feel they need to do. -> mound_interactions
    
    *->
    The researchers finish up everything they need to do on Cyprus 45-B climbing back down the mountain and returning to their ship in the crater. -> returning_to_ship
    
== Cyprus_chosen_third
    If Chosen Third:
Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.

	C: Great work crew! We’re headed off to the last planet for our expedition! I’ve decided to finish Cyprus 45-B. It’s a colder planet orbiting a red dwarf star. Definitely one that will be fun to finish everything off for you to explore!

	Iris grabs a book on plants able to survive in colder and more barren climates. Parsing through the pages to see what she should be looking out for.

	Willy walks around the cargo bay with a satchel in hand, browsing their supplies and packing rations of food, water, knives, rope, and other survival gear he thinks will be necessary for those going out on the expedition.

Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface for the last time.

	C: Smooth sailing from here on out! I think I’ve figured how to fly this to all of your comfort!
    + [Enter Planet Coordinates] -> coordinates
    = coordinates
    Rebecca types the coordinates of Cyprus 45-B into her INS charting the course through the stars. Pushing the ship into hyperdrive, setting it at a lower speed, Rebecca starts up another lightspeed launch across the cosmos. 

	The trip takes about two and a half hours to get over to Cyprus 45-B and as the ship nears its destination, Rebecca comes onto the PA system once again.
    + [NEXT] -> pa_system
    = pa_system
    C: We’re finally here! Hope it was a smooth trip for all of you! We’re touching down in Cyprus 45-B as I speak!!

	Giorgio heads up to the cockpit for another announcement over the PA system.
    + [NEXT] -> giorgio_pa
    = giorgio_pa
    Giorgio: Alright everyone! This is the last time I’ll be making this announcement but all crew members report back to the cargo bay!

	Giorgio is much less relaxed having made it through almost the entire research expedition without any major incidents. Ridan finishes up in his office to join with everyone else. Iris and Lars wait for each other in the hallway, hugging and taking the other’s hand before journeying to the back of the ship. Willy already finished packing the expedition bags for everyone and was relaxing in the cargo bay waiting for everyone else. 

    + [NEXT] -> cyprus_landing
    = cyprus_landing
    Rebecca’s landing was perfect, not a single tremor as the ship settled on the ground. Lars and Iris stood hand in hand waiting for the captain and Giorgio. Ridan and Willy stood near each other, talking quietly amongst themselves as they prepared for the last excursion.

	Giorgio: Perfect landing Rebecca! You’ve gotten much better at handling a ship with other people on it!

	C: Thank you Gio! I’m glad I was able to be the captain for your research!

	Moments later, the ship’s engine is turned off and Giorgio and Rebecca walk into the cargo bay together. The researchers all turn their attention to the two of them.

	Giorgio: I’m sure you all know exactly what I’m gonna say, but I’ll be sending out three of you to do the final research we need! The people I don’t choose will stay on the ship and finish up all the research that they can! I think I’ll be heading out and helping with the field work this time around! -> expedition_choice
    
    = expedition_choice
    Team: {Team}
    + [Captain Rebecca Monroe]
        Giorgio: I’m assuming you still need to stay on the ship, Rebecca? 

        C: Yup! Gotta start getting the ship ready for the return trip!!

    + [Willy Richardson]
    ~Team += Willy			
    	Giorgio: Willy, you think this planet is up your alley? It’s a cold, rocky, and barren planet but I think you’d be great at leading the field team around!

        Willy: It’s still sergeant, but I’ll head out there and take charge! I’d love to show people the way around!!

    + [Iris Peacetree]
    ~Team += Iris
        Giorgio: Iris, if you’re able to find plants that are able to thrive in an environment like this, they’re definitely plants worth researching.

	    Iris: I’ll try my hardest to see if I can find anything!
        
        {Team ? (Lars)} Lars and Iris link arms and cuddle up to one another.
    
    + [Lars Clarkson]
    ~Team += Lars
        Giorgio: Lars, I doubt anything would be able to survive on a planet like this but keep your eyes out for any signs of life!
		
        Lars: Yes sir! I’ll keep my eyes peeled for anything I might find!
        
        {Team ? (Iris)} Lars and Iris link arms and cuddle up to one another.
    
    + [Ridan Tyndale]
    ~Team += Ridan
        Giorgio: Ridan, why don’t you get out there and do some field work?

        Ridan groans but doesn’t have the willpower to fight back so he accepts his fate

		Ridan: Cold. I guess I can get behind that…
    			
    //{!Iris gets a bit more antsy and giddy. She desperately wants to explore the scenery of this foreign planet.|Iris gets even more antsy and can’t contain herself. It’s taking everything in her not to scream out.|Iris looks down sadly and looks as though she’s holding back tears.}
        -
    	
    	{
        - LIST_COUNT(Team) < 3: -> expedition_choice
        - else: -> team_with
        }
        = team_with
    Giorgio: Alright crew! Those of you chosen finish getting ready to head out. The rest of you stay on the ship and keep doing the work expected of you. This is not a vacation!
    
    The chosen crew of {Team} finish packing up their supplies. Giorgio enters in the code to open the cargo bay door and the crew steps out onto Cyprus 45-B. -> Cyprus_45B
    
    = Cyprus_45B
    Looking around the planet, the researchers are met with a dim planet covered in a red hue. There’s sparse vegetation spanning the area lacking any hue. Hard rock and rigid mounds fill the area creating a very mountainous feel to the planet. It’s almost dead silent in the area with subtle breezes blowing small rocks through the air to break the complete emptiness. Every breath is filled with a crisp feeling with a metallic smell and taste in the air. Lingering dust in the air causes a gritty feeling all around them. The frigid temperatures cause the crew to shiver. 
    
    Preparing to explore the planet the researchers have to decide where to start gathering research. -> explore
    	
    = explore
    //CHOICE:
    * [Stay nearby the ship and only gather research in the immediately safe areas] -> nearby
    * [Venture down a path naturally carved by weathering until it ends] -> path
    //(Only if Willy Chosen) 
    * {Team ? (Willy)} [Climb a steep mound and see what lies at the peak]
    ~ both_routes = true
    -> mound
    
    = nearby
    //Choice 1:
    	Scared of the potential dangers of falling or getting trapped on this rugged terrain, the researchers choose to stay in the clearing where the ship landed and avoid any chance of injury. -> mound_interactions
    
    = nearby_interactions
    //(If Iris chosen)
    * {Team ? Iris} [Iris]
        Iris looks around the ship and finds small, weed-like plants completely missing any color. They resemble the transparent, white appearing fish found in caves and at the bottom of the ocean. Fascinated by their ability to survive with such little light, she collects as many of the various plants she can find.
    
        //(If Ridan not chosen and Iris chosen)
        {Team !? (Ridan)}  Iris trips on a rock and scrapes the top layer of skin off of her shin.

	        Ridan: Ooh that looks painful! Let me take a look at it.

	        Ridan grabs Iris’s leg and pulls it towards him a bit roughly. He takes out a spray bottle and some bandages from his satchel.

	        Ridan: This should help you heal quicker and avoid any risk of infection. Keep it there for a few hours and the skin should grow over it by the time we’re done on the surface here!

	        Ridan sprays the disinfectant skin regrowth serum on Iris’s leg and wraps it up in a bandage before leaving her and going back to doing more research. Amazingly, Iris feels little remaining pain and is able to get back up and continue collecting specimens. -> nearby_interactions
    
    //(If Lars chosen)
    * {Team ? (Lars)} [Lars]
    	Unable to find any signs of life, Lars feels like he’s out of place researching on this planet. He gives up on trying to find any animal specimen and begins to collect some plants for Iris instead. -> nearby_interactions
    
    //(If Lars and Iris chosen)
    * {Team ? (Lars, Iris)} [Lars, Iris]
    	Lars and Iris begin to walk with each other, Lars guiding the way and helping Iris to make sure she doesn’t fall again.

	    Iris: I’m really glad we’re getting to spend more time together. A planet like this is really cool to be able to do it on too!!

	    Lars: I’m happy to spend time with you no matter what planet we’re on!

	    The two of them laugh as the other researcher rolls their eyes in annoyance at the public flirting -> nearby_interactions
    
    //(If Iris not chosen)
    * {Team !? (Iris)} [CREW]
    	Seeing as how the majority of the planet is barren, the researchers collect a few plants scattered around the ship and take a few samples of the rock on the planet as well. Recording the temperature of the atmosphere, they finish up everything they feel they need to do. -> nearby_interactions
    
    *->
    The researchers finish up everything they need to do on Cyprus 45-B and find their way back onto the ship ready to head off of the planet. -> returning_to_ship
    
    = path
    //Choice 2:
    	Seeing a clear carved path in the ground ahead of them, the researchers head down away from the ship to a more rugged part of the planet. -> path_interactions
    
    = path_interactions
    //(If Iris chosen)
    * {Team ? Iris} [Iris]
        Iris looks around the bottom of the path under her feet and finds small, weed-like plants completely missing any color. They resemble the transparent, white appearing fish found in caves and at the bottom of the ocean. Fascinated by their ability to survive with such little light, she collects as many of the various plants she can find.
    
        //(If Ridan not chosen and Iris chosen)
        {Team !? (Ridan)}    
        
        //(If Iris and Ridan chosen)
        {Team ? (Ridan)} Iris trips on a rock and scrapes the top layer of skin off of her shin.

	Ridan: Ooh that looks painful! Let me take a look at it.

	Ridan grabs Iris’s leg and pulls it towards him a bit roughly. He takes out a spray bottle and some bandages from his satchel.

	Ridan: This should help you heal quicker and avoid any risk of infection. Keep it there for a few hours and the skin should grow over it by the time we’re done on the surface here!

	Ridan sprays the disinfectant skin regrowth serum on Iris’s leg and wraps it up in a bandage before leaving her and going back to doing more research. Amazingly, Iris feels little remaining pain and is able to get back up and continue collecting specimens. -> path_interactions
    
    //(If Lars chosen)
    * {Team ? (Lars)} [Lars]
        Unable to find any signs of life, Lars feels like he’s out of place researching on this planet. He gives up on trying to find any animal specimen and begins to collect some plants for Iris instead. -> path_interactions
    
    //(If Lars and Iris chosen)
    * {Team ? (Lars, Iris)}
        Lars and Iris begin to walk with each other, Lars guiding the way and helping Iris to make sure she doesn’t fall again.

	Iris: I’m really glad we’re getting to spend more time together. A planet like this is really cool to be able to do it on too!!

	Lars: I’m happy to spend time with you no matter what planet we’re on!

	The two of them laugh as the other researcher rolls their eyes in annoyance at the public flirting. -> path_interactions
    
    //(If Iris not chosen)
    * {Team !? (Iris)} [Crew]
    	Seeing as how the majority of the planet is barren, the researchers collect a few plants scattered around the ship and take a few samples of the rock on the planet as well. Recording the temperature of the atmosphere, they finish up everything they feel they need to do. -> path_interactions
    
    *->
    The researchers finish up everything they need to do on Cyprus 45-B and find their way back onto the ship ready to head off of the planet. -> returning_to_ship
    
    = mound
    //Choice 3:
    	Willy leads the crew members to a steep and ridgid cliff a few hundred feet away from the ship. Appearing difficult to climb and worried about the crew’s safety, Willy takes the rope out of his satchel.

	    Willy: I’m gonna go ahead and climb up to the top. Once I’m there, I’ll tie this rope and send it down for you two to climb up so it’s a bit easier for you both.

	    Willy began to climb up the steep cliff, showing off his impressive scaling abilities. Once at the top, Willy ties a figure eight follow loop around a jagged piece of rock, tugs at it to make sure it’s stable, then tosses the rope down to the researchers below. They grab a hold of the rope and begin to climb up to the top. 
        At the peak, the researchers gaze upon the vast landscape and are taken aback by the sheer openness of everything that lays out before them. Nothing but rocky cliffs and mountains cover the surface with a few small, flat craters similar to the one they had landed in. -> mound_interactions
    
    = mound_interactions
    //(If Iris chosen)
    * {Team ? (Iris)} [Iris]
        At the peak of this mountain, there are a significant amount of plants that she didn’t see in the crater. Even in a barren landscape like this one, Iris is amazed to see a vast difference in species that have been able to root themselves into the stone and find enough nutrients to keep themselves alive. She collects as many samples as she can hold in her satchel and still feels like she’s missing some.

        //(If Iris and Ridan chosen)
        {Team ? (Ridan)}	Iris trips on a rock and scrapes the top layer of skin off of her shin.

	Ridan: Ooh that looks painful! Let me take a look at it.

	Ridan grabs Iris’s leg and pulls it towards him a bit roughly. He takes out a spray bottle and some bandages from his satchel.

	Ridan: This should help you heal quicker and avoid any risk of infection. Keep it there for a few hours and the skin should grow over it by the time we’re done on the surface here!

	Willy: It’s a good thing I remembered to pack up some first aid supplies!

	Ridan sprays the disinfectant skin regrowth serum on Iris’s leg and wraps it up in a bandage before leaving her and going back to doing more research. Amazingly, Iris feels little remaining pain and is able to get back up and continue collecting specimens.

	Willy: If you need help getting down from up here, don’t hesitate to ask!

	Iris: Thanks Wil- I mean Sergeant!! I’ll definitely take you up on that offer! -> mound_interactions
    
    (If Lars chosen)
    * {Team ? (Lars)} [Lars]
    	Unable to find any signs of life, Lars feels like he’s out of place researching on this planet. He gives up on trying to find any animal specimen and begins to collect some plants for Iris instead. -> mound_interactions
    
    (If Lars and Iris chosen)
    * {Team ? (Lars, Iris)} [Lars & Iris]
    	Lars and Iris begin to walk with each other, Lars guiding the way and helping Iris to make sure she doesn’t fall again.

	Iris: I’m really glad we’re getting to spend more time together. A planet like this is really cool to be able to do it on too!!

	Lars: I’m happy to spend time with you no matter what planet we’re on!

	The two of them laugh as Willy rolls his eyes in annoyance at the public flirting.

	Willy: Alright love birds, let’s get a move on!! -> mound_interactions
    
    (If Iris not chosen)
    * {Team !? (Iris)} [Crew]
    	Seeing as how the majority of the planet is barren, the researchers collect a few plants scattered around the ship and take a few samples of the rock on the planet as well. Recording the temperature of the atmosphere, they finish up everything they feel they need to do. -> mound_interactions
    
    *->
    The researchers finish up everything they need to do on Cyprus 45-B climbing back down the mountain and returning to their ship in the crater. -> returning_to_ship
    
-> DONE