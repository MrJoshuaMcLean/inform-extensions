People by Joshua McLean begins here.

"People handling, including anonymous characters and introductions, zero-bulk worn items, sleeping/waking, seeing a character's inventory, and improvements built over Eric Eve's Conversation Framework."

Include General by Joshua McLean.

Include Conversation Framework by Eric Eve. [18,872]
Include Bulk Limiter by Eric Eve. [2,272]

Section - Giving, Taking, and Knowing

The block giving rule is not listed in the check giving it to rulebook.

Instead of requesting a person (called the holder) for something (called the target):
	say "[Holder] doesn't seem interested in giving you [the target]."
	
Knowing relates one person to various things. The verb to know means the knowing relation.

Section - Unknown People and Introductions

Understand "person" as a visible person. Understand "man" as a visible man. Understand "woman" as a visible woman.

A person can be introduced. A person is usually not introduced. 
An animal has some text called the animal type. The animal type is usually "animal".
To introduce (target - person): 
	now the target is introduced;
	if the target is a man:
		now the printed name of the target is "man called [real name of the target]";
	otherwise if the target is a woman:
		now the printed name of the target is "woman called [real name of the target]";
	otherwise if the target is an animal:
		now the printed name of the target is "[animal type of the target] called [real name of the target]".

When play begins: introduce the player.

A person has text called the real name. The real name is usually "Anonymous".

Section - Worn Objects Have Zero Bulk

To decide what number is the free capacity of (targetperson - a person): 
	let sum be the total bulk of the things carried by targetperson which are not worn; 
	now sum is the bulk capacity of the targetperson minus sum;  
	decide on the sum.

Section - Sleep

A person can be awake or asleep. A person is usually awake.

The block waking up rule is not listed in any rulebook.
Check waking up:
	if the player is awake, say "Unfortunately, this is no dream." instead.
Carry out waking:
	now the player is awake.
Report waking:
	say "With a stretch and a yawn you enter the waking world."

The block waking rule is not listed in the check waking rulebook.
Check waking:
	if the noun is awake, say "[The noun] is already awake." instead.
Carry out waking:
	now the noun is awake.
Report waking:
	say "[The noun] awakens."

Section - Show Person's Inventory

After examining a person (called the target) (this is the show carried and worn items rule):
	let the carry description be "";
	let the wear description be "";
	if the noun wears something:
		now the wear description is "[wear] [a list of things worn by the noun]";
	if the noun carries something:
		now the carry description is "[regarding the target][They] [carry] [a list of things carried by the noun]";
		if the noun wears something:
			say "[regarding the target][the carry description], and [they] [the wear description].";
		otherwise:
			say "[regarding the target][the carry description].";
	otherwise if the noun wears something:
		say "[regarding the target][They] [the wear description].";
	continue the action.

Section - Conversation
	
Understand "hello [someone]" and "hi [someone]" and "hey [someone]"as saying hello to.

Understand "goodbye [someone]" and "bye [someone]" as saying goodbye to.

Responding is an action applying to one topic. Understand "respond [text]" as responding. Report responding: say "Try the format [b]ANSWER (response) TO (person)[/b] or [b](person), (response)[/b] instead."

Section - Subjects

Their name is a subject.

After quizzing someone about their name:
	if the noun is an animal:
		say "[regarding the noun]You ask [the animal type] but get no response.";
	otherwise:
		say "'My name is [real name],' [they] [say]. 'Nice to meet you.'";
		introduce the noun.

People ends here.

---- DOCUMENTATION ----

Various miscellany for handling people: showing inventory, handling conversation, and life simulation (life, death, sleep, etc.).

Section - Introductions

People are initially unintroduced and will go by whatever descriptor you use for their character. For unintroduced characters, you must include a 'real name' with their proper name and use an 'understand' statement so the player can use the real name after learning it. You usually want an indefinite article (a/an) for the character's internal name to get the correct articles (indefinite in listings, definite when referring to that specific person).

A typical unintroduced character creation goes as follows. To make the name known, use the 'introduce' verb:

	A man called a brown-eyed man is here. Understand "Joshua" as the man. The real name is "Joshua".
	
	After giving the chocolate to a brown-eyed man:
		say "'Oh, chocolate!' he says. 'I love it. Thanks. I'm Joshua, by the way.'";
		introduce a brown-eyed man.
		
After this point, the 'brown-eyed man' will be called Joshua. Note that the player may refer to the character by name at any point even if they are not introduced.

Section - Animals

Animals are given an 'animal type' to be used in the necessary context.

	Rufus is an animal. The animal type is 'dog'.
	
	After petting an animal:
		say "You pet [the animal type of the noun]."

Example: * Introductions - Get names from several people, and a dog!

	*: "Introductions"
	
	Include People by Joshua McLean.
	
	The check for missing descriptions when play begins rule is not listed in any rulebook.
	
	The Party Room is a room. 
	A man called a balding man is here. Understand "John" as the balding man. The real name is "John".
	A woman called a dark-haired woman is here. Understand "Susan" as the dark-haired woman. The real name is "Susan". Susan carries a thing called garlic.
	A man called a bearded man is here. Understand "Pete" as a bearded man. The real name is "Pete". He wears a cowboy hat and cowboy boots. He carries a revolver.
	A woman called a pale woman is here. Understand "Darla" as the pale woman. The real name is "Darla".
	An animal called a brown dog is here. Understand "Rufus" as a brown dog. The real name is "Rufus". The animal type is "dog".

	Instead of quizzing someone about a brown dog:
		say "[regarding the noun]'I think it belongs to Darla,' [they] [say]."
	Instead of quizzing a pale woman about a brown dog:
		say "'Oh, Rufus! He's mine.' She smiles at the mutt.";
		introduce a brown dog.
	
	Test me with "ask bearded man about name / look / ask dark-haired woman about name / look / ask balding man about name / look / ask pale woman about name / look / hi dog / look / ask John about dog / ask Darla about dog / look".