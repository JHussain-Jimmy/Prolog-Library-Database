Code can be complined in prolog complier e.g: https://rextester.com/l/prolog_online_compiler

Following output can be generated for respective inputs as shown below:

# Output :

- When code was tested to find book title and in query Author's name was given :

authorOf(markTwain, X).
X = houndOfTheBaskervilles.


- To find whether some author is fiction writer or not?

fAuthors(markTwain).
true.

- To find whether some author writed non-fiction or not?

nfAuthors(williamFaulkner).
false.

- In order to find Publisher when author of some book is known.

pubAuthors(X, thomasSowell).
X = basicBooks .

- When some Book title is known and Author's name is queried. 

authorOf(X, theWealthOfNations).
X = adamSmith .

- To find publisher of some book

publisherOf(X, americanDictionary).
X = merriam .
