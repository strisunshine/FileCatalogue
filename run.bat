@echo off
echo.
echo ***************************** Demonstrating requirement #3 ********************************
echo.  
echo (1) CommandLine Arguments(/s is not present): . *.h *.cpp *.vcxproj *.log *.txt  
Debug\TestFileCatalogue.exe . *.h *.cpp *.vcxproj *.log *.txt
echo.
echo ***************************** Demonstrating requirement #3 ********************************
echo.  
echo (2) CommandLine Arguments(/s is not present, file pattern is *.*): .. *.*    
Debug\TestFileCatalogue.exe .. *.* 
echo.
echo ***************************** Demonstrating requirement #3 ********************************
echo.      
echo (3) CommandLine Arguments(/s is present): . *.h *.cpp *.vcxproj *.log *.txt /s                                                
Debug\TestFileCatalogue.exe . *.h *.cpp *.vcxproj *.log *.txt /s
echo.
echo ***************************** Demonstrating requirement #3 ********************************
echo.  
echo (4) CommandLine Arguments(/s is present, file pattern is *.*): . *.* /s
Debug\TestFileCatalogue.exe . *.* /s
echo.
echo ***************************** Demonstrating requirement #3 ********************************
echo.  
echo (5) CommandLine Arguments(/s is present, path changed): ./FileCatalogue *.h *.cpp /s 
Debug\TestFileCatalogue.exe ./FileCatalogue *.h *.cpp /s
echo.
echo.
echo ***************************** Demonstrating requirement #5 ********************************
echo.  
echo (1) CommandLine Arguments(/d is present): . *.h *.cpp *.vcxproj *.log *.txt *.exe /s /d
Debug\TestFileCatalogue.exe . *.h *.cpp *.vcxproj *.log *.txt *.exe /s /d
echo.
echo ***************************** Demonstrating requirement #5 ********************************
echo.  
echo (2) CommandLine Arguments(/d is present, pattern is *.*): . *.* /s /d
Debug\TestFileCatalogue.exe . *.* /s /d
echo.
echo.
echo ***************************** Demonstrating requirement #6 ********************************
echo.  
echo (1) CommandLine Arguments(/f is present, no space before search text): . *.h *.cpp /s /d /f"main"
Debug\TestFileCatalogue.exe . *.h *.cpp /s /d /f"main"
echo.
echo ***************************** Demonstrating requirement #6 ********************************
echo.  
echo (2) CommandLine Arguments(/f is present, space before search text, uppercase options): . *.h *.cpp /S /D /F "main"
Debug\TestFileCatalogue.exe . *.h *.cpp /S /D /F "main"
echo.
echo ***************************** Demonstrating requirement #6 ********************************
echo.  
echo (3) CommandLine Arguments(/f is present, lowercase text search): . *.* /s /f"read from"
Debug\TestFileCatalogue.exe . *.* /s /f"read from"
echo.
echo ***************************** Demonstrating requirement #6 ********************************
echo.  
echo (4) CommandLine Arguments(/f is present, uppercase text search): . *.* /s /f"READ FROM"
Debug\TestFileCatalogue.exe . *.* /s /f"READ FROM"
echo.
echo ***************************** Demonstrating requirement #6 ********************************
echo.  
echo (5) CommandLine Arguments(/f is present, search text that crosses new line): . *.* /s /f"argv[]) {"
Debug\TestFileCatalogue.exe . *.* /s /f"argv[]) {"
echo.
echo.
echo ***************************** Demonstrating requirement #7 ********************************
echo.  
echo (1) CommandLine Arguments(pattern is *.*): . *.*
Debug\TestFileCatalogue.exe . *.* 
echo.
echo ***************************** Demonstrating requirement #7 ********************************
echo.  
echo (2) CommandLine Arguments(path is given, no pattern is provided): .
Debug\TestFileCatalogue.exe .
echo.
echo ***************************** Demonstrating requirement #7 ********************************
echo.  
echo (3) CommandLine Arguments(no path and no pattern are provided): 
Debug\TestFileCatalogue.exe 
echo.