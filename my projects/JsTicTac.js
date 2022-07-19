var tiles = Array.from(document.querySelectorAll('.tile'));
console.log(tiles);
var playerDisplay = document.querySelectorAll('.display-player');
console.log(playerDisplay);
var resetButton = document.querySelectorAll('.reset');
var announcer = document.querySelectorAll('.announcer');

var board = ['', '', '', '', '', '', '', '', '', ];
var currentPlayer = 'X';
var isGameActive = true;
var roundWon = false;
var twoPlayers = false;
var vsComputer = false;

//var TIE = 'TIE';
/*
    Indexes within the board
    [0] [1] [2]
    [3] [4] [5]
    [6] [7] [8]

*/
var winningConditions = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],

];

var changePlayer = (index) => {

    if (isGameActive & twoPlayers & board[index] != currentPlayer) {


        playerDisplay[0].classList.remove(`player${currentPlayer}`);
        tiles[index].classList.remove(`player${currentPlayer}`);
        document.getElementById('disp').innerHTML = `Player <span class="display-player player${currentPlayer}"> ${currentPlayer} </span>'s turn`;
        currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
        tiles[index].innerHTML = currentPlayer;
        console.log(tiles);
        tiles[index].classList.add(`player${currentPlayer}`);
        console.log(currentPlayer);
        playerDisplay[0].classList.add(`player${currentPlayer}`);
        board[index] = currentPlayer;
        console.log(board);
        toValidateResults();


    }
    if (isGameActive & vsComputer & board[index] != 'X' & board[index] != 'O') {
        currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
        tiles[index].innerHTML = currentPlayer;
        console.log(currentPlayer);
        board[index] = currentPlayer;
        console.log(board);
        ComputerPlayer()
        toValidateResults();
    };

};
console.log(tiles);
console.log(winningConditions);


function toValidateResults() {
    roundWon = false;
    for (var i = 0; i < winningConditions.length; i++) {
        var winCondition = winningConditions[i];
        console.log(winCondition);
        var a = board[winCondition[0]]; // grazina board array reiksme ten kur indexas yra win condition array skaicius
        console.log(a);
        var b = board[winCondition[1]];
        console.log(b);
        var c = board[winCondition[2]];
        console.log(c);

        if (a === '' || b === '' || c === '') {
            continue;
        }
        if (a === b && b === c) { // sulygina ar board array reiksmiu indexai atitinka laimejimo salyga
            roundWon = true;
            isGameActive = false;
            if (roundWon & currentPlayer === 'X') {
                document.getElementById('ann').innerHTML = `Player <span class="playerX">X</span> Won`;
            } else {
                document.getElementById('ann').innerHTML = `Player <span class="playerO">O</span> Won`;

            }
            console.log(roundWon)
        } else if (!board.includes('')) {
            isGameActive = false;
            document.getElementById('ann').innerHTML = `<span class="playerX">TIE</span>`;
        }

    }

};

function TwoPlayersClicked() {
    twoPlayers = true;
    vsComputer = false;
}

function VsComputerClicked() {
    twoPlayers = false;
    vsComputer = true;

}

function ComputerPlayer() {
    currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
    var RandomNumber = Math.floor(Math.random() * 9)
    for (var j = 0; j < board.length; j++) {

        if (board[j] != 'X' & board[j] != 'O') {
            board[RandomNumber] = currentPlayer;
            tiles[RandomNumber].innerHTML = currentPlayer;
            console.log(board);
        }
    }


};

function resetClicked() {

    tiles.forEach(tile => {
        tile.innerHTML = '';
    });
    document.getElementById('ann').innerHTML = '';
    board = ['', '', '', '', '', '', '', '', '', ];
    isGameActive = true;
    //  roundWon = false;
};