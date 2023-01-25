//************************************************************************************
//************************************************************************************
// **
// PROCESOR LPC2129/01) **
// funkcjonalnosci: **
// - kopiowanie lancucha znakowego **
// - porównywanie lancucha znakowego **
// - dodawanie lancucha znakowego do lancucha znakowego **
// -zamiana znaku **
// **
//************************************************************************************
#include "string_copy.h"

void CopyString(char pcSource[], char pcDestination[]){
	
	unsigned char ucCharacterCounter;
	
		for(ucCharacterCounter= 0; pcSource[ucCharacterCounter]!= NULL0 ; ++ucCharacterCounter){
			pcDestination[ucCharacterCounter] = pcSource[ucCharacterCounter];
		}
		pcDestination[ucCharacterCounter] = NULL0;
	}
	
enum CompResult {DIFFERENT, EQUAL};

enum CompResult eCompareString(char pcStr1[], char pcStr2[]){
	
	unsigned char ucCharacterCounter;
	
	for(ucCharacterCounter = 0; pcStr1[ucCharacterCounter]!=NULL0; ++ucCharacterCounter){
		if( pcStr1[ucCharacterCounter] != pcStr2[ucCharacterCounter] ){
			return DIFFERENT;
			}
		}
		if( pcStr1[ucCharacterCounter] != pcStr2[ucCharacterCounter] ){
			return DIFFERENT;
		}
		return EQUAL;
	}


void AppendString (char pcSourceStr[],char pcDestinationStr[]){

	unsigned char ucCharacterCounter;
	
	for(ucCharacterCounter = 0; pcDestinationStr[ucCharacterCounter] != NULL0; ++ucCharacterCounter){};

		CopyString(pcSourceStr, pcDestinationStr + ucCharacterCounter);
}
void ReplaceCharactersInString(char pcString[],char cOldChar,char cNewChar){

	unsigned char ucCharacterCounter;

	for(ucCharacterCounter = 0; pcString[ucCharacterCounter] != NULL0; ++ucCharacterCounter){
		if(pcString[ucCharacterCounter] == cOldChar){
			pcString[ucCharacterCounter] = cNewChar;
		}
	}
}
