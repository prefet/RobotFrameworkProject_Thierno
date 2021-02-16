
*** Settings ***
Library     SeleniumLibrary    

*** Test Cases ***
MyFirstTest
    Log To Console    je suis Diallo    
 FistSeleniumTest
   ConnexionBDFDM
   Click Element    id=ACC_LIB_014
   Sleep    2    
   Input Text    id=GDC_LIB_003    test
   Sleep  2
   Input Text    id=GDC_LIB_006    test  
   Sleep  2
   Click Element     id=BTN_SEARCH
   Sleep    3    
   Click Element    xpath=//*[@id="TwstMain"]/div[3]/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div[3]/div/div[2]/div[3]/table/tbody/tr[1]/td[1]/span/label
   Sleep  5
   Click Element    id=GDC_LIB_021
   Sleep  5                 
    Close All Browsers
    
*** Test Cases ***
SeliniumScreenshot
    ConnexionBDFDM
    Maximize Browser Window 
    Sleep     3    
    Capture Element Screenshot    xpath=/html/body/div[1]/div/div[2]/div/div[1]/div/div[3]  D:/RobotFrameWorkProject/DossiersTest/captureElement.png
      Sleep    3    
      Click Element    id=ACC_LIB_014
   Sleep    2    
   Input Text    id=GDC_LIB_003    test
   Sleep  2
   Input Text    id=GDC_LIB_006    test  
   Sleep  2
   Click Element     id=BTN_SEARCH
   Sleep    5    
   Capture Page Screenshot    D:/RobotFrameWorkProject/DossiersTest/capturePage.png
   Close All Browsers
    
*** Keywords ***
ConnexionBDFDM
    Open Browser    https://wmutpf1r1.dc1lan.local:10712/twst-ihm/BDFDM/FRA   chrome
    Set Browser Implicit Wait    5
    Input Text    id=LOG_LIB_003    nr_bdf_adm@yopmail.com  
     Sleep    2    
     Input Password    id=LOG_LIB_004    D72UMyJ#e*
     Sleep    2    
     Click Element   id=LOG_LIB_005
     Sleep    5        