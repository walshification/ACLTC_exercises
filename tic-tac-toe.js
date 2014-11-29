var playerOne = "X"
var playerTwo = "O"
var boxesClicked =  [];
var turn = 1;
var firstSquare = 0;                        // For singleCheckLengths, line 38.
var rowLength = 3;
var numberOfRows = rowLength;                   // Game box must be square.
var numberOfBoxes = rowLength * numberOfRows;
var win = true;                                 // For checkWin(), line 33.
 
function ticTacToe(boxNumber, box) {
  
  if (boxUnclicked(boxNumber)) {
    if (turn % 2) {
    box.innerHTML = playerOne;
    boxesClicked[boxNumber] = playerOne;
    checkWin(playerOne);
    } else {
    box.innerHTML = playerTwo;
    boxesClicked[boxNumber] = playerTwo;
    checkWin(playerTwo);
    }
    turn++;
  }
}
 
function boxUnclicked(boxNumber) {
  return !boxesClicked[boxNumber];  // Checks boxesClicked array; function 
                                    //   returns false if it finds a value 
                                    //   (i.e. is clicked).
}
 
function checkWin(player) {
  // Listed in [row, column, forward slash diagonal, backslash diagonal] order.
  var startingBoxes = [0, 0, 0, (rowLength-1)];
  var endOfChecks = [numberOfBoxes, rowLength, 1, rowLength];
  var nextStartingBoxDistances = [rowLength, 1, 1, 1];
  var nextBoxes = [1, rowLength, (rowLength+1), (rowLength-1)];

  for (var i = 0; i < 4; i++) {
    // Iterating through the above win conditions.
    for (var j = startingBoxes[i]; j < endOfChecks[i]; j += nextStartingBoxDistances[i]) {
      win = true;
      // singleCheckLengths is defined here because of the row condition's 
      //   dynamic start box.
      var singleCheckLengths = [(j+rowLength), numberOfBoxes, 
                                numberOfBoxes, ((numberOfBoxes-rowLength)+1)];

      checkSquares(j, player, singleCheckLengths[i], nextBoxes[i]);
      if (win) {
        alert("Player " + player + " wins!");
      }
    }
  }
}

function checkSquares(startingBox, currentPlayer, lengthOfCheck, distanceToNextBox) {
  for (var i = startingBox; i < lengthOfCheck; i += distanceToNextBox) {
    if (boxesClicked[i] !== currentPlayer) {
      win = false;    // If the box being checked hasn't been clicked by the 
                      //   current player, the current player doesn't win.
    }
  }
}
