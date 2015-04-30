////////////////////////////////////////////////////////////////////////////////
// TestFileCatalogue.cpp - Test operations on File Catalogue related classes  //
// ver 1.0                                                                    //
//                                                                            //
// Application: CSE687 2015 Project 1 - File Catalogue                        //  
// Platform:    Win7, Visual Studio 2013                                      //
// Author:      Wenting Wang, wwang34@syr.edu                                 //                                            
////////////////////////////////////////////////////////////////////////////////

#include <iostream>
#include <string>
#include "..\FileCatalogue\FileCatalogue.h"
#include "..\Parser\Parser.h"
#include "..\DisplayHelper\DisplayHelper.h"
//#include "..\FileCatalogue\FileSystem.h"

using namespace FileCatalogueNS;
using namespace ParserNS;
using namespace DisplayHelperNS;
using namespace std;
int main(int argc, char* argv[])
{
	FileCatalogue FC;
	Parser P; 
	DisplayHelper DH;
	DH.title("Read From Command Line", '=', true);
	DH.title("The command line you read is:", '-');
	string s;
	for (int i = 1; i<argc; i++){
		s += argv[i];
		s += ' ';
	}
	DH.displayInfo(s);
	P.readCommandline(argc, argv);
	P.doProcessing(FC);
	P.readFromConsoleandProecess(FC);
}