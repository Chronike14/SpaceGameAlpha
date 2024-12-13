
== X_23

    = expedition
    +[Valley]
    
    +[Dune]
    
    +[Animal Tracks]
    
    +[Plateau]
    
    -> DONE
    
    = interactions_valley
    
    * [Lars]
    
        {Team !? (Ridan)}
        
        {Team ? (Ridan)}

    * [Iris]
    
    * [Crew]
    
    *->
    Head back to ship
    
    = interactions_dune
    
    * [Lars]
    
        {Team !? (Ridan)}
        
        {Team ? (Ridan)}

    * [Iris]
    
    * [Crew]
    
    *->
    Head back to ship
    
    = interactions_tracks
    
    * [Lars]
    
        {Team !? (Ridan)}
        
        {Team ? (Ridan)}

    * [Iris]
    
    * [Crew]
    
    *->
    Head back to ship
    
    = interactions_plateau
    
    * [Lars]
    
        {Team !? (Ridan)}
        
        {Team ? (Ridan)}

    * [Iris]
    
    * [Crew]
    
    *->
    Head back to ship
    
== team_choice
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
        - LIST_COUNT(Team) < 3: -> team_choice
        - else: -> team_with
        }
    = shared_smile
        Lars and Iris glance at each other sharing a warm smile.
        {
        - LIST_COUNT(Team) < 3: -> team_choice
        - else: -> team_with
        }
    
    = team_with
    	Giorgio: Alright crew! Those of you chosen finish getting ready to head out. The rest of you stay on the ship and keep doing the work expected of you. This is not a vacation!

	The chosen crew of {Team} finish packing up their supplies. Giorgio enters in the code to open the cargo bay door and the crew steps out onto X-23. -> X_23
    
== X_chosen_first
    Rebecca starts up the ship’s PA system and broadcasts a message to the entire crew.

	C: Alright everyone! We’re headed off to the first planet for our expedition! I’ve decided to start us with X-23. It’s a barren planet covered in deserts filled with plateaus and dunes. I figured the emptiness would make it a good starting point!
	
	* [...] -> lars_lab
    =lars_lab
	In the animal lab, Lars begins preparing crates by raising the temperatures in their climate controlled environment to prepare for any animals he might find that are accustomed to the high temperatures of this planet. 
    
    * [...] -> willy_walks
    =willy_walks
	Willy walks around the cargo bay with a satchel in hand, browsing their supplies and packing rations of food, water, knives, rope, and other survival gear he thinks will be necessary for those going out on the expedition.
    
    * [...] -> giorgio_notes
    =giorgio_notes
    Hearing Rebecca come onto the PA system again, Giorgio looks over his notes of the different crew members preparing to choose the team that will explore the surface.
    
	C: Brace yourselves everyone! This ride’s about to get a lot rougher!
    
    * [...] -> enter_coordinates
    =enter_coordinates
	Rebecca types the coordinates of X-23 into her Interplanetary Navigation System, or INS, and charts the course through the stars. Starting to push the ship into max hyperdrive, Rebecca prepares for a lightspeed launch across the cosmos. 
    
    * [...] -> ridan_wakes
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