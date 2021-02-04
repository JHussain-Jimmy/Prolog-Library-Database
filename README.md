# Prolog-Library-Database
Project is basically a library database that gives information about the authors and books they have written. This database was designed so that if user knows one piece of  information about author's name, book or publisher, he can find any other information easily based on knowing that single fact solely.

# Motivation :
In real-life whenever user tries to use library or desires to find some book he barely know every single piece of information about the book. That is why search-engines are so helpful, which basically work on same principle of exploring all relevant information and then relating them together to produce well-rounded searches. 
Often times user only knows the name of author or just the title of the book or sometimes only the category or genre and he is interested in finding all the relevant books. This Prolog Project is truly motivated by real-time library search which enables user to search easily in the library without knowing each and every detail.

# Implementation :
Throughout the code, naming conventions apply universally. Of course all variables have the first letter capitalized. All one-word phrases are lower case and multiple word phrases start with lower case letter and have upper case letters at the beginning of the next word (markTwain for example).

# Facts :
Prolog Code consists of bunch of facts regarding author name and book title; which can be fed into the database by the librarian at the time of arranging books in shelves.
These facts are implemented in format : "authorOf(authors name, book name)." 

Since key feature of the code is being able to search based on genre; fiction, non-fiction and reference books. For this purpose there is another field for holding fiction, non-fiction and reference books under format : 
"fiction(book name)." 
"nonFiction(book name)."
"reference(book name)."
These are just the facts which tell the database which books are fiction, non-fiction or reference books which will be later related to author's name based on previously stated facts (author's name and their book title).

In order to make it successful library database, Publisher names are also included under format : "publisherOf(Book Publisher, Book name)." These are facts which can be known and fed into code easily at time of organizing a library.
Thus Author's name, Book title, Book category and Publisher can be now easily related to each other using some rules and predicates.

# Predicates :
These are the conditons in the code which check whether author writes fiction, non-fiction or reference books their respective format is :
"fAuthors(Author's name)."
"nfAuthors(Author's name)."
"refAuthors(Author's name)."
fAuthors, nfAuthors and refAuthors respond by true or false which thus tell the user whether that particular Author writes in that specific category or not (fiction, non-fiction or reference)

When any field (for example fAuthors) is queried by the user along with Author's name, code first finds all the books that relate to that category (like fiction in our example) using command "fiction(Book)." . Once system knows all the books related to that category (fiction) it further matches every Book name with the Author's name given in query using command "authorOf(Author's name, Book name).". If among list of books of that particular category, any book matches with the Auhor's name, it gives true that yes! this genre book is written by this specified Author.

Last section of the code deals with syncing Publisher's name and Author's name. It tells the Publisher's name if Author's name is known or Author's name if Publisher's known.
Format is : "pubAuthors(Publisher name, Author's name)".
It is also very important feature of library database to search using publishers because often times user only know information about Publisher so it make it user-friendly searching where user doesn't need to know much even single piece of information would suffice and Algorithm will do the rest.

Important point to notice here is that when user only knows one field either Publisher or Author and uses the field "pubAuthors" other parament (first letter must be capital) becomes the variable and code displays output using that variable.
