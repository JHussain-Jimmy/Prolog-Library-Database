authorOf(markTwain, houndOfTheBaskervilles).
authorOf(williamFaulkner, sanctuary).
authorOf(adamSmith, theWealthOfNations).
authorOf(thomasSowell, basicEconomics).
authorOf(noahWebster, americanDictionary).
authorOf(peterMarkRoget, rogetsThesaurus).

fiction(houndOfTheBaskervilles).
fiction(sanctuary).

nonFiction(theWealthOfNations).
nonFiction(basicEconomics).

reference(americanDictionary).
reference(rogetsThesuarus).


publisherOf(georgeNewnes, houndOfTheBaskervilles).
publisherOf(vintage, sanctuary).
publisherOf(wStrahan, theWealthOfNations).
publisherOf(basicBooks, basicEconomics).
publisherOf(merriam, americanDictionary).
publisherOf(harperCollins, rogetsThesaurus).

fAuthors(Author):-
	fiction(Book),
	authorOf(Author, Book).

nfAuthors(Author):-
	nonFiction(Book),
           authorOf(Author,Book).

refAuthors(Author):-
	reference(Book),
	authorOf(Author, Book).


pubAuthors(Publisher, Author):-
	publisherOf(Publisher, Book),
	authorOf(Author, Book).
