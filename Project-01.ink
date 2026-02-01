/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/
VAR shard = 0
VAR key = 0
VAR time =-1 // 0 6:00am, 1 6:30am, 2 7:00am, 3 7:30am, 4 8:00am, 5 8:30am, 6 9:00am, 7 9:30am, 8 10:00am, 9 10:30am

You are a scientist in a shiny white lab coat. You and your peers are working on an official government task. Don't mess this up..
You are in the main check in area, where employees scrub in and get sanitized.
It is {advance_time()}
* [Check In] -> main_lab

== main_lab ==
This is the main lab where most of the other scientists are working. In the center of the lab you see a huge glowing rock with cracks in it that pour out light. All of the scientists around it have clipboards and sunglasses on.
Since you just got assigned to this job, you have free will to scope everything out first.
{shard_pickup: You have {shard} shard of rock}
{key_pickup: You have {key} key}
* {time == 8 } [Clock out] -> clock_out
* {time == 5 } [Do your work] -> work
* [Go up to the glowing rock] -> glowing_rock
+ [Go to the right lab area] -> right_lab
+ [Go to the left lab area] -> left_lab

== work ==
You decide it's time to get to work. You don't have to do much since you're new to the project because many things are confidential and you just don't have the credidentials to work on anything major. You're assigned the diagnostics of their heating and cooling systems around the rock.
You finish up your boring work for the next to hours until your shift is up at 10:00am and you get to go home to your comfy bed and terrible american reality TV..
-> END

== glowing_rock ==
You approach the rock and have to squint because of how bright it is. All of the other scientists seem to be busy with their tasks, paying no mind to how close you are.
As you study the rock, you notice a larger crack near the bottom, like something chipped off. You look at the ground and find a shard of the rock. Picking it up could cost you your job but it is a cool looking shard.
It is {advance_time()}
* {time == 8 } [Clock out] -> clock_out
* [Pick up the shard] -> shard_pickup
+ [Go Back] -> main_lab

== right_lab ==
In the right lab it's quieter. You hear the hum of machines and pressure valves releasing. There are large containment tubes with a gooey liquid inside. Floating in one of the semi-clear tubes was a creature.
It is {advance_time()}
* {time == 8 } [Clock out] -> clock_out
* [Go up to the tube] -> tube_creature
+ [Look around the lab] -> filing_cabinent
+ [Go back] -> main_lab

== tube_creature ==
You approach the containment tube and study the creature inside. It's curled up fetal position and looks like it's covered in a black polish. You lean closer and tap on the glass. A few bubbles that were building on the glass floated to the top by the vibration of your tap. The creature then opened a lizardous eye and you jump. Good thing you're behind the glass. The creature closes it's eye and went back to floating idly. Creepy..
It is {advance_time()}
* {time == 8 } [Clock out] -> clock_out
+ [Go back] -> right_lab

== filing_cabinent ==
You approach a filing cabinent at the back of the lab and mindlessly open drawers. It's a bunch of boring files containing shippment stats, supply inventory, and diagnostics. You try to open the top drawer but it's locked. {not key_pickup: You wonder what's inside but you don't have any keys for it.}
It is {advance_time()}
* {time == 8 } [Clock out] -> clock_out
* {key > 0} [Use the key] -> unlock_cabinent
+ [Go back] -> right_lab

== left_lab ==
In the left lab there are more materials and supplies lining the walls. There's a desk at the end to check materials in and out of the room for use.
It is {advance_time()}
* {time == 8 } [Clock out] -> clock_out
+ [Go up to the desk] -> desk
+ [Go back] -> main_lab

== desk ==
You approach the desk. It has coffee rings and dust collecting on a stack of folders. One thing you do notice is a small key sitting on the corner. You wonder if the person in here before you left it.
It is {advance_time()}
* {time == 8 } [Clock out] -> clock_out
* [Pick up the key] -> key_pickup
+ [Go back] -> left_lab

== unlock_cabinent ==
You unlock the cabinent to find a weird cube with purple pulsating light coming from what looks like a language. You pick up the cube to take a closer look. You can't decipher what is written around the cube but you understand that you may be holding an ancient artifact.
Flipping the cube around you find what looks like a missing piece in the shape of a fragment of rock.
It is {advance_time()}
* {time == 8 } [Clock out] -> clock_out
* {shard > 0} [Put the shard in the missing piece] -> activation
+ [Go back] -> right_lab

== clock_out ==
You took your time today looking around the lab and now it's time for you to go home. Maybe tomorrow you'll be more productive.
{shard_pickup: You were also fired a day later because you were caught sneaking picking up the shard..}
-> END

== activation ==
As soon as you feel the click of the piece fitting perfectly in place, the cube begins to shake. It's ominous glow starts to brighten until the whole room is filled with it's purple light.
Then, the ground starts to rumble. You instantly regret your actions but it's too late. You hear people freaking out in the main lab so you investigate. the rumbling grows stronger and as you enter the main lab you notice the big glowing rock shaking. It's glow pulsated and matched the rhythm of the cube's light.
All of the sudden the quake subdued and everything went still. You could hear the other scientists hold their breath and some of them ran away in panic.
The light then filled the room with an explosion. The rock blew up into a million pieces and what unveiled is something straight out of a nightmare.
The rock was an egg, and the egg had just hatched. A giant creature emerged from the broken rock and roared a glass shattering shriek. It's slimy black body was coated in spikes and tentacles, truly an alien from another dimension.
The horror and panic starts to sink in and everyone goes crazy. They stampeded the exit, no longer caring about the saftey protocals for exiting but fearing for their life.
You watch the chaos you created.
* [Run to the exit] -> exit
* [Hide] -> hide
* [Fight] -> fight
* [Accept your fate] -> fate

== exit ==
You join the pile of scientists who mercilously topple over others in order to escape. You realize your fatal mistake, it's taking way too long for everyone to get out and you won't make it in time. And as your realization set in, you turn around to see the monster charging at you. It comes crashing in on everyone and kills multiple people by it's impact. It begins to bite and shread every person in it's way. And before you know it, it had pierced you with it's razor sharp teeth and chomped you to death.
-> END

== hide ==
You act fast and run into the right lab where the containment tubes are. You slide behind one of the tubes and close your eyes shut to pray that you survive. You hear the blood curdling screams of your coworkers and ask for their forgiveness and you hear bones cracking and the monster's shrieks.
After a few minutes of terror, you uncover your eyes. You notice another person peeking their head over the desk. Their trembles and shaky breaths are too loud. You can't see behind you but you know that the person was found because of the panicked yell they let out. They emerged from behind the desk and attempted to run but the monster jumped at them with full speed, killing them instantly.
It sat there to tear and eat at him. It hasn't noticed you yet, but you hold your breath and cover your mouth to not let any cries escape. Tears roll down your face in fear.
After the monster is finished with the corpse in it's tentacles, it turns around and starts walking slowly. As if it was sniffing for more humans to eat, you notice a clicking noise coming from it's mouth.. which means you're screwed.
The monster used it's ecolocation to find you. It stared at you for a moment and that second before it lunged at you your soul had already left your body in terror.
-> END

== fight ==
You decide to take action and run to the nearest fire extinguisher. You yank it off the wall and yell with fury. You throw the fire extinguisher at the monster and miss. It makes a little dink sound as it hits the ground, not even hitting the monster.
"Oh shit."
The monster lunges with it's mouth wide open and makes a quick snack out of you.
-> END

== fate ==
You freeze and watch chaos unveil. The monster's ramgage in inpenetrable. You caused this, it's your fault. Why were you so nosey? Why couldn't you have just done your job? Curiosity took the best of you, and that curiosity just killed a room full of people and probably more.
Pandora's box is open, and it can't be put back.
As you contimplate your wrong doing, the monster finished off the last person, leaving you left to witness all of it.
You stand there and accept what you have released into the world and embrace death when the monster lunges at you, killing you instantly.
-> END

== shard_pickup ==
~ shard = shard + 1
You've obtained a shard!
+ [Go back] -> main_lab

== key_pickup ==
~ key = key + 1
You've obtained a key!
+ [Go back] -> left_lab

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 8:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "6:00am"
        
        - time == 1:
            ~ return "6:30am"
        
        - time == 2:
            ~ return "7:00am"
            
        - time == 3:
            ~ return "7:30am"
            
        - time == 4:
            ~ return "8:00am"
            
        - time == 5:
            ~ return "8:30am"
            
        - time == 6:
            ~ return "9:00am"
        
        - time == 7:
            ~ return "9:30am"
            
        - time == 8:
            ~ return "10:00am"
            
        - time == 9:
            ~ return "10:30am"
            
        
    }

    
        
    ~ return time
