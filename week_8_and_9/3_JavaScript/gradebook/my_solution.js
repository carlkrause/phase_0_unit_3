/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge by myself.

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

*/
// __________________________________________
// Write your code below.

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

function average(scores) {
  var sum = 0;
  var length = scores.length;
  for (var i = 0; i < length; i++) {
      sum += scores[i];
    }
    return sum / length;
}

var gradebook = {
  addScore: function(name, score) {
    for (var i = 0; i < scores.length; i++) {
      if(name === students[i]) {
        return scores[i].push(score);
      }
    }
  },
  getAverage: function(name) {
    for(var i=0; i<scores.length; i++){
      if(name === students[i]) {
        return average(scores[i]);
      }
    }
  },
  Joseph:{
    testScores: scores[0]
  },
  Susan:{
    testScores: scores[1]
  },
  William:{
    testScores: scores[2]
  },
  Elizabeth:{
    testScores: scores[3]
  }
};

// __________________________________________
// Refactored Solution

//While I know the original solution is quite verbose and can definitely be refactored to be more DRY, I was happy to get all the tests to pass so I'm OK with the current solution for the moment.

// __________________________________________
// Reflect

//Even though I did some study of JavaScript this week before diving into the challenges, I still struggled for awhile before I was able to get the code to pass the tests.
//I tried to get too fancy and didn't stick to the simple directives laid out in the readme. I kept trying to research more complicated ways of solving the problem which
//distracted me. I think this was a good exercise in KISS. If I'd just gone with the simple for loops from the start I would have been able to move on or at very least have
//workeable code to refactor from.
//Generally this was a good re-introduction to solving challenges in JavaScript.

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
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)