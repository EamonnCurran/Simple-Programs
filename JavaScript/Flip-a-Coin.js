/*************************************************
 * Flip-a-Coin.js
 * Simple Programs
 *
 * Copyright © 2018 Ethan Dye. All rights reserved.
 *************************************************/

console.log("Welcome to Flip a Coin!");
var flips = prompt("How many coins do you want flipped?");
var tailsStreak = 0;
var tailsStreakMax = 0;
var headsStreak = 0;
var headsStreakMax = 0;

function updateTailsStreak() {
	/* Updates tails streak */
	if (tailsStreak >= tailsStreakMax) {
		tailsStreakMax = tailsStreak;
	}
}

function updateHeadsStreak() {
	/* Updates heads streak */
	if (headsStreak >= headsStreakMax) {
		headsStreakMax = headsStreak;
	}
}

function flipACoin(flips) {
	/* Flips a coin */
	var heads = 0;
	var tails = 0;

	for (var i = 0; i < flips; i++) {
		var result = randomNumber(0, 1);

		if (result === 1) {
			heads++;
			headsStreak++;
			console.log("Heads");
			updateTailsStreak();
			tailsStreak = 0;
		} else {
			tails++;
			tailsStreak++;
			console.log("Tails");
			updateHeadsStreak();
			headsStreak = 0;
		}
	}
	updateHeadsStreak();
	updateTailsStreak();
	console.log("Flipped " + heads + " heads and " + tails + " tails!");
	console.log("The longest streak of heads in a row was: " + headsStreakMax);
	console.log("The longest streak of tails in a row was: " + tailsStreakMax);
}

flipACoin(flips);
