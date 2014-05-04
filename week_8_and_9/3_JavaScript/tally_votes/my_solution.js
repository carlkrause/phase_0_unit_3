// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge with Carl Krause, Peter Debelak.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property 
of the respective office in voteCount.  After Alex's votes have been tallied, 
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the 
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//Set each candidate equal to zero; iterate through the votes object
//In each object, check to see if object exists and if not, add to voteCount object; if value is equal to "Bob", add 1 to that object in vote count object
//Set each value in officers to candidate who has received the most votes


// __________________________________________
// Initial Solution
/*
var voteCounter = function() {
  for (var person in votes) {
    for (var office in votes[person]) {
      if (votes[person][office] in voteCount[office]) {
        voteCount[office][votes[person][office]] += 1;
      }
      else {
        voteCount[office][votes[person][office]] = 1;
      }
    }
  }
};

var winner = function(){
  for (var office in officers){
    for (var person in voteCount[office]){
      if (officers[office] === undefined) {
        officers[office] = person;
      }
      else if (voteCount[office][person] > voteCount[office][officers[office]]){
        officers[office] = person;            
      }
      else {
      
      }
    }
  }
};


voteCounter();
winner();
*/
// __________________________________________
// Refactored Solution
var voteCounter = function() {
  for (var person in votes) {
    for (var office in votes[person]) {
      if (votes[person][office] in voteCount[office]) {
        voteCount[office][votes[person][office]] += 1;
      }
      else {
        voteCount[office][votes[person][office]] = 1;
      }
    }
  }
};

var winner = function(){
  for (var office in officers){
    for (var person in voteCount[office]){
      if (officers[office] === undefined) {
        officers[office] = person;
      }
      else if (voteCount[office][person] > voteCount[office][officers[office]]){
        officers[office] = person;            
      }
      else {
      
      }
    }
  }
  // in case of two-way ties...
  for (var office in officers){
      for (var person in voteCount[office]){
          if (voteCount[office][person] === voteCount[office][officers[office]] && person != officers[office]){
        officers[office] = [person, officers[office]];    
      }
  }
};

// __________________________________________
// Reflection

//I paired on this with Peter and it went well. Peter really knows his stuff and brought a lot of enthusiasm, which got me more excited about JavaScript.
//I'm still kind of confused about accessing and iterating objects in JavaScript--I know what I'll be practicing and researching in the last week of Phase 0.
//In the pairing session I felt a little behind and I think writing more pseudocode would have helped. I've really come to rely much more on pseudocode and I appreciate its value.




// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)