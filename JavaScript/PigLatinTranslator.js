/*************************************************
 * PigLatinTranslator.js
 * Simple Programs
 *
 * Copyright © 2018 Ethan Dye. All rights reserved.
 *************************************************/

console.log("Welcome to Pig Latin Translator!");

function pigTrans() {
	/* Translates words into Pig Latin */
	var pyg = "ay";
	var original = prompt("Enter a word:");
	if (original.length > 0 && isNaN(original)) {
		var word = original.toLowerCase();
		var first = word.charAt(0);
		var second = word.charAt(1).toUpperCase();
		var newWord = second + word.slice(2) + first + pyg;
		console.log(newWord);
	} else {
		console.log("Not a valid word");
	}
}

function contCheck() {
	/* Checks if JavaScript should run PigTrans again */
	var runAgain = prompt(
		"Please type 'continue' to translate another word or type 'exit' to close:"
	);
	runAgain.toLowerCase();

	if (runAgain === "continue") {
		pigTrans();
		contCheck();
	} else if (runAgain === "exit") {
		return;
	} else {
		console.log("Please choose to either continue or exit");
		contCheck();
	}
}

pigTrans();
contCheck();
