DEEP SPACE, 4587
Aboard the S.S. Star Jumper
-> prologue

=== prologue ===
(Captain Rebecca is going to go around checking the ship before take off. In doing this she is also going to have an opportunity to talk with each member of the crew and learn more about them.)

(The player can choose to first go down either the dorm hallway, the common room hallway, or the lab hallway.)

(In the dorm hallway they can go into Rebecca’s room. Iris Peacetree is in her room decorating and Lars is also in his room decorating. Dr. Ridan’s room door is open so the player can choose to have Rebecca explore the room with the “justification” of checking the ship, or they could choose to respect his privacy and not go into his room.)

(In the common room hallway Willy Richardson is in the cargo bay taking inventory.)

(Down the labs hallway Dr. Ridan Tyndale is in the doctor's office checking supplies and taking inventory, and Dr. Giorgio is in the main Research lab taking inventory and checking equipment.) 

C: (Checking a clipboard along with her cockpit display, talking to herself) Ok… Everyone seems to be on the ship with all their stuff... Right! Time to do a walkthrough and make sure this puppy is all ready to fly.
    -> manage
/*
=== ship ===

+ Dorm Hallway
    ++ Cpnt. Rebecca's Room
    -> rebecca_room
    ++ Willy Richardson's Room
    -> willy_room
    ++ Iris Peacetree's Room
    -> iris_room
    ++ Dr.Giorgio's Room
    -> giorgio_room
    ++ Lars Clarckson
    -> lars_room
    ++ Ridan Tyndale's Room
    -> ridan_room

+ Commons Hallway
    ++ Common Room
    -> common_room
    ++ Bathrooms
    -> bathroom
    ++ Kitchen
    -> kitchen
    ++ Cargo Bay
    -> cargo_bay
    
+ Lab Hallway
    ++ Doctors Office
    -> doctor_office
    ++ Research Lab
    -> research_lab
    ++ Botany Lab
    -> botony_lab
    ++ Zoology Lab
    -> zoology_lab 
*/

=== manage ===

+ [Observe]
//dialogue about the characters and how they percieve to be
    ** Capt. Rebecca
    //description
    -> manage
    ** Giorgio
    //description
    -> manage
    ** Willy
    //description
    -> manage
    -- "What a weird bunch" Rebecca thought.
    -> manage
    
+ [Interact]
//who do you want to talk too
    ++ [Capt. Rebecca]
    //dialogue goes here
    -> manage
    ++ [Dr. Giorgio]
    //dialogue goes here
    -> manage
    ++ [Willy]
    //dialogue goes here
    -> manage
    ++ [Iris]
    //dialogue goes here
    -> manage
    ++ [Lars]
    //dialogue goes here
    -> manage
    ++ [Ridan]
    //dialogue goes here
    -> manage

-> DONE

=== decision ===
+ Upgrade

-> decision
+ Manage

-> decision

+ Open Mission Brief
There are three planets I’ve tasked your crew with researching:
    
    Regis B: A large blue planet about three times the size of Earth, mostly covered in water with archipelagos dotting the cerulean oceans with little green specks.
    Cyprus 45-B: A planet slightly smaller than Earth. Located near a red dwarf star, the planet’s temperature readings are extremely cold and the geography appears very homogenous and rocky.
    X-23: A planet about 1.5 times the size of Earth. X-23 is located in the system of a blue star causing the planet to have very high temperatures and a very dry climate. The surface is made up almost entirely of dry plateaus and sandy dunes with a desert like appearance.
    "W. Daniels"
    -> decision

+ Pick-a-Planet Module
    ** Regis-B
    -> decision
    ** Cyprus 45-B
    -> decision
    ** X-23
    -> decision
    
-> DONE
