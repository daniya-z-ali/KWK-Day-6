import UIKit
//var authorArray : [String] = []   //created an empty array called "authorArray"

var answer = [            //This is the dictionary called "answer -> with the keys as the author and values are the quote
    "Shakespeare" : "To be or not to be",
    "Martin Luther King" : "I have a dream",
    "Abraham Lincoln" : "Four score and 7 years ago"
]
//for (thisAuthor, thisQuote) in quoteDict{   //This fills up the authorArray with the list of the three authors
  //  authorArray.append(thisAuthor)
//}
//now we access this person's value using his name as a key from dict
//var currentQuote = quoteDict[authorArray[0...2]]! // values for what it wants to print like an index
//print("\(currentQuote) is one of the quotes of the author \(authorArray[0...2])") //this is the print statement
//print(authorArray[0]) //Gives us the author in the array
//print(directDict["Abraham Lincoln"] //this would print out the key underneath (remember that is randomized)
//print(authorArray[0])
for (speaker, quote) in answer {print("\(speaker) said \(quote)!")}
