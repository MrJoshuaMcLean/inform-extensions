Liquids and Containers by Joshua McLean begins here.

Chapter 1 - Emptying

Emptying is an action applying to one thing. Understand "empty [something]" and "pour [something] out" and "dump [something]" and "dump out [something]" as emptying.
Check emptying something:
	if the noun is not a container and the noun is not a liquid container, say "You can't empty that." instead.
Carry out emptying something when the noun is not a liquid container:
	say "You empty [the noun] onto the floor, dumping [list of things in the noun].";
	repeat with item running through things in the noun:
		move item to the location.

Chapter 2 - Liquids

A liquid is a kind of thing. water is a liquid.

Chapter 3 - Liquid Containers

A liquid container is a kind of thing. Every liquid container has a liquid called the contained liquid. The contained liquid is usually water. A liquid container can be full or empty. A liquid container is usually empty.

After examining a liquid container:
	if the noun is empty:
		say "[The noun] is empty.";
	otherwise:
		say "Inside [the noun] is [the contained liquid of the noun].";
	continue the action.

Carry out emptying a liquid container:
	if the noun is empty:
		say "You turn [the noun] upside down but nothing comes out. It's already empty.";
	otherwise:
		say "You dump [the contained liquid of the noun] from [the noun] onto the ground, where it's quickly absorbed.";
		now the noun is empty.

Chapter 4 - Drinking

The block drinking rule is not listed in any rulebook.

To drink (he drinks, they drink, he drank, it is drunk, he is drinking) is a verb.

Check drinking something:
	if the noun is not a liquid container, say "You can't drink that." instead;
	if the noun is empty, say "[The noun] is empty. Nothing to drink in there." instead.
		
Carry out drinking something:
	now the noun is empty.
	
Report drinking something:
	say "[The actor] [drink] [the contained liquid of the noun] from [the noun]."

Chapter 5 - Combinations

Table of Liquid Combinations
liquid 1		liquid 2		result
water		water		water

To pour (he pours, they pour, he poured, it is poured, he is pouring) is a verb.

Pouring it into is an action applying to two visible things and requiring light. Understand "pour [something] into [something]" and "pour [something] in [something]" and "add [something] to [something]" and "combine [something] with [something]" as pouring it into.
Check pouring it into:
	if the noun is not a liquid container and the second noun is not a liquid container, say "That's not something you can pour." instead.
Carry out pouring it into:
	if the second noun is empty:
		now the contained liquid of the second noun is the contained liquid of the noun;
	otherwise if the contained liquid of the noun is not the contained liquid of the second noun:
		let found a match be false;
		let f be the contained liquid of the noun;
		let s be the contained liquid of the second noun;
		repeat with N running from 1 to the number of rows in the Table of Liquid Combinations:
			let tf be liquid 1 in row N of the Table of Liquid Combinations;
			let ts be liquid 2 in row N of the Table of Liquid Combinations;
			let tr be the result in row N of the Table of Liquid Combinations;
			if f is tf and s is ts:
				now the contained liquid of the second noun is tr;
				now found a match is true;
			otherwise if f is ts and s is tf:
				now the contained liquid of the second noun is tr;
				now found a match is true;
		if found a match is false:
			say "Best not do that.";
			stop the action;
	now the noun is empty;
	now the second noun is full;
	say "[The actor] [pour] [the contained liquid of the noun] from [the noun] into [the second noun] which now contains [the contained liquid of the second noun]."

Liquids and Containers ends here.


---- DOCUMENTATION ----

A liquid container contains a liquid with a string name. Liquids can be combined to match anything on the Table of Liquid Combinations. Note that combinations are two way, so you need only put one entry. That is, if you say A + B = C, then automatically B + A = C. You also need not add reflexive combinations; A + A = A always.

To add one row to the Table of Liquid Combinations:
	
	choose a blank row in the Table of Liquid Combinations;
	now liquid 1 entry is first liquid name;
	now liquid 2 entry is second liquid name;
	now result entry is resulting liquid name.
	
To extend the Table of Liquid Combinations:
	
	Table of Liquid Combinations (continued)
	liquid 1		liquid 2		result
	first liquid name	second liquid name	resulting liquid name
	
You can EMPTY any container (not just a liquid container) to dump its contents on the floor. Liquids evaporate, while for other containers, the contents simply appear in the room.
	
Example: * Liquids - Manipulating and combining liquids in containers

	*: "Liquids"
	
	Include Liquids and Containers by Joshua McLean.
	
	oil is a liquid. soda is a liquid. milk is a liquid. oiled water is a liquid.
	
	Table of Liquid Combinations (continued)
	liquid 1	liquid 2	result
	oil		water		oiled water
	
	The Kitchen is a room. A liquid container called the glass is here. A liquid container called the pot is here.
	
	A liquid container called the soda can is here. The contained liquid is soda. The can is full.
	
	A liquid container called the oil vial is here. The contained liquid is oil. The vial is full.
	
	A liquid container called the water bottle is here. The contained liquid is water. The bottle is full.
	
	A liquid container called the milk jug is here. The contained liquid is milk. The jug is full.

	Test me with "drink soda / dump milk / pour water in pot / pour oil in pot / x pot".