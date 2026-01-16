"Murder Mystery" by Luka Hrupec

Release along with an interpreter.
Release along with a website.

Sound of DoorSound is the file "door.ogg".
Sound of BasementDoorSound is the file "door_basement.ogg".
Sound of ThunderSound is the file "thunder.ogg".
Sound of FuseSound is the file "fusebox.ogg".
Sound of KitchenSound is the file "kitchen.ogg".

Figure of Hallway is the file "hallway.png".
Figure of Kitchen is the file "kitchen.png".
Figure of Basement is the file "basement.png".
Figure of Safe is the file "safe.png".

When play begins:
	play the sound of ThunderSound;
	display the figure of Hallway;
	now hallway-shown is true;
	say "A violent storm rages outside. POLICE REPORT (confidential): Mr. Blackwood, a wealthy businessman, has been murdered. The crime took place inside his house. Several people were present at the time of the incident. Your task is to uncover the truth.";

The hallway-shown is a truth state that varies.
The hallway-shown is false.

[ NOTES – ISTINE ]

The body-noted is a truth state that varies.
The body-noted is false.

The power-noted is a truth state that varies.
The power-noted is false.

The knives-noted is a truth state that varies.
The knives-noted is false.

The safe-noted is a truth state that varies.
The safe-noted is false.

The letter-noted is a truth state that varies.
The letter-noted is false.

The blood-noted is a truth state that varies.
The blood-noted is false.

The maid-suspicious is a truth state that varies.
The maid-suspicious is false.

The wife-suspicious is a truth state that varies.
The wife-suspicious is false.

The son-angry is a truth state that varies.
The son-angry is false.

The cook-afraid is a truth state that varies.
The cook-afraid is false.

The key-noted is a truth state that varies.
The key-noted is false.

The pills-noted is a truth state that varies.
The pills-noted is false.


[ SOBE I LAYOUT ]

The Entrance Hall is a room.
"You are standing in the entrance hall of the house. Doors lead to rooms on both sides of the corridor, and a staircase at the far end leads down to the basement."

The Bathroom is a room.
"The bathroom is small and tidy. A bathtub stands against the wall, next to a toilet and a towel rack. Everything appears normal at first glance. A maid stands near the bathtub, as if she was interrupted while cleaning."

The Kitchen is a room.
"The kitchen looks disturbed. Edward Blackwood lies motionless on the floor, a knife stuck in his back. A cook is also present in the room, visibly shaken by the scene. You notice a refrigerator, an oven, a kitchen table, spice cabinets and a knife rack on the wall."

The Bedroom is a room.
"The bedroom is neat and carefully arranged. A bed stands in the center, with a nightstand beside it and a large wardrobe against the wall. The son of Mr. Blackwood stands in the room, looking tense and restless."

The Living Room is a room.
"The living room is spacious and tastefully furnished. A sofa and a coffee table sit in the center of the room. Mr. Blackwood's wife is here, pacing nervously across the room. A large cabinet stands against one wall."

The Basement is a room.
"The basement is cold and dim. Cardboard boxes are stacked against the walls, and pipes run along the ceiling. A fuse box is mounted on the wall."

The Bathroom is west of the Entrance Hall.
The Bedroom is east of the Entrance Hall.
The Kitchen is north of the Entrance Hall.
The Living Room is south of the Entrance Hall.
The Basement is down from the Entrance Hall.

[ IZLAZAK ]

Instead of exiting when the location is the Entrance Hall:
	end the story finally saying "You decide to leave the house. The case will remain unsolved."

Instead of exiting:
	say "Now is not the time to leave. You should return to the entrance hall first."
	
[ STVARI U SOBAMA ]

After going to a room (called the destination) when the destination is not the Basement:
	play the sound of DoorSound;
	say "You have entered the [printed name of the destination].";
	rule succeeds.

The toilet is scenery in the Bathroom.
The description is "A clean white toilet. Nothing unusual about it."

The towel-rack-bathroom is scenery in the Bathroom.
The printed name of the towel-rack-bathroom is "towel rack".
Understand "towel rack" or "rack" as the towel-rack-bathroom.
The description of the towel-rack-bathroom is "A metal rack holding neatly folded towels."

The bathtub is scenery in the Bathroom.
The description is "A standard bathtub."

The blood stain is in the Bathroom.
The blood stain is undescribed.
The description of the blood stain is "A small dried blood stain near the edge of the bathtub, probobly left by a killer."

The bathroom cabinet is a container in the Bathroom.
It is openable and closed.
The description is "A small wall-mounted cabinet."

The nerve pills are in the bathroom cabinet.
The description is "Prescription nerve pills. The label clearly shows the name of Mr. Blackwood's wife."
After examining the nerve pills:
	now the pills-noted is true.


After examining the bathtub:
	now the blood stain is described;
	now the blood-noted is true;
	say "Upon closer inspection, you notice a small dried blood stain near the bathtub."

The body-discovered is a truth state that varies.
The body-discovered is false.

After looking in the Kitchen when the body-discovered is false:
	display the figure of Kitchen;
	play the sound of KitchenSound;
	now the body-discovered is true;
	now the body-noted is true;

The fridge is scenery in the Kitchen.
The description is "A large refrigerator. Nothing unusual."

The oven is scenery in the Kitchen.
The description is "A modern oven. It is turned off."

The kitchen table is scenery in the Kitchen.
The description is "A heavy wooden kitchen table."

The spice cabinet is scenery in the Kitchen.
The description is "Cabinets filled with various spices."

The body of Mr Blackwood is scenery in the Kitchen.
The description is "Mr. Blackwood lies motionless on the floor. There is a knife stuck in his back."

The knife is part of the body of Mr Blackwood.
The description is "A kitchen knife covered in dried blood. It looks like it came from the cook's knife rack."

Instead of taking the knife:
	say "We should not disturb the body any further."

Understand "knife rack" or "rack" as the rack.

The rack is scenery in the Kitchen.
The description is "A wooden rack used to store kitchen knives."

After examining the rack:
	now the knives-noted is true;
	say "You notice that two knives are missing from the rack.";
	
The basement-shown is a truth state that varies.
The basement-shown is false.

Instead of going to the Basement:
	move the player to the Basement, without printing a room description;
	if basement-shown is false:
		display the figure of Basement;
		play the sound of BasementDoorSound;
		now basement-shown is true;
	say "You have entered the Basement."


The storage boxes are scenery in the Basement.
The description is "Old cardboard boxes filled with Christmas decorations."

The water pipes are scenery in the Basement.
The description is "Old metal pipes carrying water through the house."

The fuse box is a device in the Basement.
The fuse box is switched on.
The description is "A metal fuse box controlling the electricity in the house."

The electricity is a truth state that varies.
The electricity is true.

After switching off the fuse box:
	play the sound of FuseSound;
	now the electricity is false;
	now the power-noted is true;
	say "You switch off the fuse box. The lights in the house go out."

After switching on the fuse box:
	play the sound of FuseSound;
	now the electricity is true;
	say "You switch the fuse box back on. The lights in the house return."

Instead of going up from the Basement when the electricity is false:
	say "It's too dark to see the stairs. You might fall if you try to go up."
	
The sofa is scenery in the Living Room.
The description is "A comfortable-looking sofa."

The coffee table is scenery in the Living Room.
The description is "A low table with a few magazines on it."

The living room cabinet is a container in the Living Room.
It is openable and closed.
The description is "A large wooden cabinet."

Instead of searching the living room cabinet:
	say "You search the cabinet but find nothing of interest."

The bed is scenery in the Bedroom.
The description is "A large, neatly made bed. It looks untouched."

The nightstand is a container in the Bedroom.
It is openable and closed.
The description is "A small wooden nightstand."

The book is in the nightstand.
The description is "A book titled 'Top 10 Conspiracy Theories of the Last 50 Years'. Many pages are bookmarked."

The wardrobe is a container in the Bedroom.
It is openable and closed.

The false bottom is a thing.
The false bottom is part of the wardrobe.
The false bottom is undescribed.
The description of the false bottom is
"A suspicious removable panel at the bottom of the wardrobe."
Understand "panel" or "bottom" or "false panel" as the false bottom.

Instead of examining the wardrobe:
	if the wardrobe is open:
		say "A large open wardrobe filled with expensive clothes.";
		if the false bottom is not described:
			now the false bottom is described;
			say "As you examine the wardrobe more carefully, you notice a suspicious false bottom.";
	else:
		say "A large closed wardrobe.";

After examining the false bottom:
	if the safe-shown is false:
		display the figure of Safe;
		now the safe-shown is true;
		now the safe is described;
		now the safe is openable;
		now the safe-noted is true;
		say "Behind the false bottom, you discover a small locked safe.";

The safe is a container.
The safe is part of the false bottom.
The safe is lockable.
The safe is locked.
The safe is openable.
The safe is undescribed.

The description of the safe is
"A small metal safe hidden behind the false bottom."
Understand "safe" or "metal safe" as the safe.

Instead of opening the safe when the safe is locked:
	say "The safe is locked. You need a key to open it."

The safe-shown is a truth state that varies.
The safe-shown is false.

Understand "key" or "brass key" as the brass key.
Understand "safe" or "metal safe" as the safe.

The brass key is a thing.
The description of the brass key is "A small brass key. It looks like it could open a safe."
The matching key of the safe is the brass key.

Instead of unlocking the safe with the brass key:
	now the safe is unlocked;
	say "You unlock the safe with the key. It opens with a quiet click."


The bundle of cash is a thing.
The bundle of cash is in the safe.
The description is "A thick bundle of banknotes. Someone was clearly preparing for something."

The conspiracy books are a thing.
The conspiracy books are in the safe.
The description is "Several books about secret societies, surveillance, and hidden plots. They seem heavily used."

The love letter is a thing.
The love letter is in the safe.
The description is "A folded handwritten letter. The handwriting is careful and emotional."

The letter-read is a truth state that varies.
The letter-read is false.
Understand "read [something]" as examining.

Instead of examining the love letter:
	now the letter-read is true;
	now the letter-noted is true;
	say "The letter speaks of secret meeting and forbidden affection. The writer dreams of escaping together, leaving all of this behind forever. The letter is not signed, but clearly written by a lover."


[ NPC-ovi ]
A person can be present or absent.
A person is usually present.

The Maid is a woman.
The Cook is a man.
The Wife is a woman.
The Son is a man.

The Maid is in the Bathroom.
The Cook is in the Kitchen.
The Wife is in the Living Room.
The Son is in the Bedroom.

The knife-examined is a truth state that varies.
The knife-examined is false.
After examining the knife:
	now the knife-examined is true;


Talking to is an action applying to one visible thing.

Understand "talk to [someone]" or "talk [someone]" or "speak to [someone]" as talking to.

Instead of talking to the Maid:
	say "'Oh! I didn't hear you come in,' the maid says nervously. 'I was just cleaning the bathroom. I try to stay out of everyone's way.'";

Instead of talking to the Cook:
	say "The cook wipes his hands on his apron. 'I've worked here for years,' he says. 'I would never hurt Mr. Blackwood. This whole thing is a nightmare.'";

Instead of talking to the Wife:
	say "Mr. Blackwood's wife looks at you with tired eyes. 'My husband had many enemies,' she says quietly. 'People always assume the worst of those closest to the victim.'";

Instead of talking to the Son:
	say "The son lowers his voice. 'You can't trust appearances,' he says. 'My father believed someone was plotting against him. I think he was right.'";

[ DIJALOZI ]

Instead of asking the Maid about something:
	now the Maid is questioned;
	if the topic understood includes "blackwood" or the topic understood includes "edward":
		now the maid-suspicious is true;
		say "She hesitates and avoids your gaze. 'Mr. Blackwood was... unusual,' she says softly. 'Very cautious. Always watching, always suspecting something.' She pauses. 'He trusted very few people.'";
	else if the topic understood includes "power" or the topic understood includes "electricity" or the topic understood includes "light" or the topic understood includes "blackout":
		say "'I was in the bathroom when the lights went out,' the maid says quietly. 'Everything went dark all of a sudden. I didn't move.'";
	else if the topic understood includes "strange" or the topic understood includes "odd" or the topic understood includes "unusual" or the topic understood includes "lately" or the topic understood includes "recent":
		say "She fidgets with her hands. 'The atmosphere in the house had changed,' she says. 'There was tension. People were careful about what they said.'";
	else if the topic understood includes "wife" or the topic understood includes "mrs":
		say "The maid lowers her voice. 'She was very emotional. Watching everyone. I tried to stay invisible.'";
	else if the topic understood includes "son":
		say "'The son asked many questions,' she says. 'About his father. About money.'";
	else if the topic understood includes "cook":
		say "She shrugs slightly. 'The cook keeps to himself. He focuses on his work. I don't pay much attention to him.'";
	else:
		say "She shakes her head gently. 'I'm sorry, I don't know anything about that.'";


Instead of asking the Cook about something:
	now the Cook is questioned;
	if (the topic understood includes "knife" or the topic understood includes "knives") and the knife-examined is true:
		now the cook-afraid is true;
		say "The cook glances at the body. 'Yes,' he says quietly. 'That knife is one of mine. It went missing during the renovation. I mentioned it back then, but nothing came of it.'";
	else if the topic understood includes "knife" or the topic understood includes "knives":
		say "Two knives went missing some time ago,' the cook admits. 'I noticed it during the renovation. Anyone could have taken them.'";
	else if the topic understood includes "power" or the topic understood includes "electricity" or the topic understood includes "lights" or the topic understood includes "blackout":
		say "'When the lights went out, I was in the kitchen,' he says. 'I heard the son tell his mother he was going to check the fuse box in the basement. Then I heard footsteps moving down the hallway.'";
	else if the topic understood includes "maid" or the topic understood includes "cleaner":
		say "The cook frowns. 'She was around more than usual lately,' he says. 'Quiet, always working. I didn't think much of it at the time.'";
	else if the topic understood includes "wife" or the topic understood includes "mrs":
		say "'Mrs. Blackwood was under a lot of stress,' he says carefully. 'They argued often. But that's not my business.'";
	else if the topic understood includes "son":
		say "'The boy was always suspicious of something,' the cook says. 'Always asking questions. That night, he seemed especially restless.'";
	else:
		say "The cook shrugs. 'I don't really know anything about that.'";


Instead of asking the Wife about something:
	now the Wife is questioned;
	now the wife-suspicious is true;
	if the topic understood includes "blackwood" or the topic understood includes "husband":
		say "She sighs deeply. 'He became more distant over time,' she says. 'Secretive. Always locking things away. Always suspecting someone.'";
	else if (the topic understood includes "safe" or the topic understood includes "money") and the safe-shown is true:
		say "'I knew there was a safe,' she admits quietly. 'But he never told me where it was, or what was inside.'";
	else if the topic understood includes "son":
		say "Her expression hardens. 'He was always questioning his father. Convinced there was something being hidden from him. It worried me.'";
	else if the topic understood includes "maid" or the topic understood includes "cleaner":
		say "She pauses. 'She was quiet. Always around, yet easy to overlook,' she says slowly. 'Edward trusted her. More than he trusted most people.'";
	else if the topic understood includes "cook":
		say "'The cook?' she shrugs. 'He does his job. Keeps his distance. I never had reason to suspect him.'";
	else if the topic understood includes "power" or the topic understood includes "electricity" or the topic understood includes "lights" or the topic understood includes "blackout":
		say "'When the lights went out, everything turned chaotic,' she says. 'Our son said he would check the fuse box. I stayed where I was.'";
	else:
		say "She shakes her head. 'I don't know anything about that.'";
	

Instead of asking the Son about something:
	now the Son is questioned;
	if the topic understood includes "blackwood" or the topic understood includes "father":
		say "'He was paranoid,' the son says firmly. 'Always watching people. Always locking things away, hiding something. He was convinced someone would do something to him.'";
	else if (the topic understood includes "safe" or the topic understood includes "money") and the safe-shown is true:
		now the son-angry is true;
		say "His eyes narrow. 'I knew he was hiding something,' he says. 'Money. Documents. Something important. He never trusted anyone enough to say what it really was, not even his son.'";
	else if the topic understood includes "power" or the topic understood includes "electricity" or the topic understood includes "lights" or the topic understood includes "blackout":
		say "'When the lights went out, I went straight to the basement,' he says. 'Someone had to restore the power. I didn't see anyone on the way.'";
	else if the topic understood includes "maid" or the topic understood includes "cleaner":
		say "He shrugs dismissively. 'She's just the maid. Quiet. Invisible. I never paid much attention to her.'";
	else if the topic understood includes "mother" or the topic understood includes "wife":
		say "'My mother worried too much,' he says. 'She thought everything was about emotions. This was about secrets.'";
	else if the topic understood includes "cook":
		say "'The cook had access to knives,' he says. 'People overlook the obvious because he's been here for years.'";
	else:
		say "He shakes his head impatiently. 'That doesn't matter.'";

		
[ PRETRAZIVANJE ]
Instead of searching someone:
	if the noun is the Maid:
		say "As you move closer to search her, her expression changes instantly. Panic flashes in her eyes.";
		say "Before you can react, she pulls out a hidden knife and lunges at you.";
		end the story finally saying "Your investigation ends here, along with your life.";
	else if the noun is the Wife:
		if the brass key is carried by the player:
			say "You search her, but find nothing else of interest.";
		else:
			now the player carries the brass key;
			now the key-noted is true;
			say "You carefully search her and find a small key hidden in her pocket.";
	else if the noun is the Cook:
		say "You search the cook, but find nothing relevant to the case.";
	else if the noun is the Son:
		say "You search the son, but find nothing except nervous tension.";
	else:
		say "You find nothing of interest.";

[OPTUZIVANJE]

A person can be accused or unaccused.
A person is usually unaccused.
A person can be questioned or unquestioned.
A person is usually unquestioned.

After asking someone about something:
	now the noun is questioned.
	
Accusing is an action applying to one visible thing.
Understand "accuse [someone]" as accusing.

The game-locked is a truth state that varies.
The game-locked is false.

Check accusing someone when the noun is unquestioned:
	say "You cannot accuse [the noun] without questioning them first." instead.
	
Carry out accusing someone:
	now the noun is accused;

Report accusing the Maid:
	if the letter-read is true:
		say "The maid breaks down completely. Tears run down her face as officers take her away.";
		say "'I loved him,' she sobs. 'We planned everything. To leave this place. To start over together.'";
		say "She shakes her head in despair.";
		say "'But he changed his mind. He was afraid. Afraid of losing control. Afraid of what people would say.'";
		say "'I didn't plan to kill him. It was rage, love, pain… all at once. I just snapped.'";
	else:
		say "The maid stiffens. 'You're wrong,' she says coldly. 'I have nothing more to say.'";

Report accusing the Wife:
	say "'This is a mistake,' she says sharply. 'You are chasing shadows.'";

Report accusing the Son:
	say "The son clenches his fists. 'You have no proof,' he says. 'You're making a terrible mistake.'";

Report accusing the Cook:
	say "The cook shakes his head slowly. 'I've served this family for years. I would never do this.'";

Instead of talking to someone when the noun is accused:
	say "[The noun] refuses to speak to you.";
Instead of asking someone about something when the noun is accused:
	say "[The noun] ignores your questions.";

[UHICIVANJE]

Arresting is an action applying to one visible thing.
Understand "arrest [someone]" as arresting.

Check arresting someone when the noun is unaccused:
	say "You cannot arrest [the noun] without formally accusing them first." instead.

Carry out arresting the Maid:
	if the letter-read is true:
		end the story finally saying
		"CASE CLOSED

Against all odds, you uncovered the truth.

The murderer is arrested.

Justice, though imperfect, has been served.";
		now the game-locked is true.

Carry out arresting the Maid when the letter-read is false:
	say "As you move to arrest her, panic flashes in the maid's eyes.";
	say "A hidden knife appears in a blur of motion.";
	end the story finally saying
	"CASE FAILED

You underestimated her.

The investigation ends in blood.";
	now the game-locked is true.

Carry out arresting someone:
	say "You order the arrest of [the noun].";
	end the story finally saying
	"WRONG ACCUSATION

Weeks later, new evidence proves that you arrested the wrong person.

The real killer walks free.

You are removed from the case and relieved of your duties as an inspector.";
	now the game-locked is true.

Instead of doing something when the game-locked is true:
	say "The case has reached its conclusion.";


[NOTES]
Reading notes is an action applying to nothing.
Understand "notes" or "journal" or "case notes" as reading notes.

Carry out reading notes:
	say "[bold type]CASE NOTES:[roman type][line break]";
	if body-noted is true, say "- Victim found in the kitchen, stabbed with a kitchen knife.[line break]";
	if knives-noted is true, say "- Two knives are missing from the kitchen rack.[line break]";
	if power-noted is true, say "- A power outage occurred. Someone used the darkness.[line break]";
	if safe-noted is true, say "- A hidden safe was discovered in the bedroom wardrobe.[line break]";
	if letter-noted is true, say "- A love letter suggests a secret relationship and plans to escape.[line break]";
	if blood-noted is true, say "- Blood was found in the bathroom, away from the crime scene.[line break]";
	if maid-suspicious is true, say "- The maid seems to be hiding something.[line break]";
	if wife-suspicious is true, say "- The wife appears nervous.[line break]";
	if key-noted is true, say "- A small key was found on the wife.[line break]";
	if son-angry is true, say "- The son appears angry and emotionally unstable.[line break]";
	if cook-afraid is true, say "- The cook just seems genuinely frightened.[line break]";
	if pills-noted is true, say "- Prescription nerve pills belonging to Mrs. Blackwood were found in the bathroom cabinet.[line break]";
	if body-noted is false and blood-noted is false and knives-noted is false and power-noted is false and safe-noted is false and letter-noted is false and maid-suspicious is false and wife-suspicious is false and son-angry is false and cook-afraid is false and key-noted is false and pills-noted is false:
		say "You have not gathered any solid notes yet.";

[TURN-BASED PORUKE]
Every turn when turn count is 15:
	say "Thunder rumbles loudly outside. The storm shows no sign of stopping.".

Every turn when turn count is 30:
	say "Rain lashes against the windows. The house feels increasingly isolated.".

Every turn when turn count is 45:
	say "The storm intensifies. Tension rises. You feel the pressure to act.".

Every turn when turn count is 60:
	say "A sudden crack of thunder makes everyone flinch. Nervous glances are exchanged.".

Every turn when turn count is 75:
	say "Time is slipping away. The truth feels close, yet dangerously fragile.".

Every turn when turn count is 90:
	say "The storm outside mirrors the atmosphere inside. Everyone seems on edge.".

Every turn when turn count is 105:
	say "The storm begins to subside, but the tension remains. This investigation cannot wait any longer.".

Every turn when the turn count is greater than 105 and the remainder after dividing the turn count by 10 is 0:
	say "Morning is almost here. Hurry up.".
