/*
PigLatinTranslator.c
Simple Programs
*/
#include <stdio.h>
#include <stdlib.h>

int main() {
  char word[20] = {0};
  int i;

  printf("Welcome to Pig Latin Translator!\nEnter a single word: ");
  scanf("%s",&word); //reads input from user

  for(i=1;i<20;i++){ //loop to print the string but leaves the first letter out
    printf("%c",word[i]);
  }

  printf("%cay\n",word[0]); //prints the first letter and adds "ay" to the end

  return 0;
}
