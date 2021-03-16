
*** Settings ***
Library     Selenium2Library  


*** Test Cases ***
BDF_CreationCarte_InfoTitulaire_PP_Creer_Confirmation_Screenshot
    ConnexionBDFDM
    Maximize Browser Window
    Click Element    id=STR_LIB_029
    Sleep    2    
    Input Text    id=CDC_LIB_023    CAVANA
    Input Text    id=CDC_LIB_024    BRUNO        
    Input Text    xpath=/html/body/div[1]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div[1]/div/div[3]/div/div/div[2]/input    07/03/2021   
    Sleep    2   
    Click Element    xpath=/html/body/div[1]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div/div/div[2]/div/div[1]/div/div/div[1]/div
    Sleep    2         
    Click Element    id=BTN_SEARCH    
    Sleep     5    
    Click Element    id=CDC_RG_081   
    Sleep    2  
   Click Element    xpath=/html/body/div[1]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div[1]/div[1]/div[2]/div/div/div/div/div[2]/div/div/div[2]/div  
    Sleep    3      
   Click Element    xpath=//*[@id=\"VAADIN_COMBOBOX_OPTIONLIST\"]/div/div/table/tbody/tr[2]/td      
   #Select From List By Index    id=CDC_LIB_076    2
    Sleep    3
    Input Text  id=CDC_LIB_081    0000000000
    Sleep    1    
    Input Text  id=CDC_LIB_082    0000000000
    Sleep    1    
  #  Execute Javascript  window.scrollTo(0, document.body.scrollHeight) Scroller jusqu'a la fin de la page
      Scroll Element Into View    xpath=/html/body/div[1]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div[1]/div[2]/div/div/div[1]/div
    Sleep    3
    Input Text    id=CDC_LIB_086    00 TEST     
    Sleep    1    
    Input Text    id=CDC_LIB_089    TEST
     Sleep    3
     Click Element    id=CDC_LIB_091  
     Sleep    2       
     Click Element   xpath=/html/body/div[1]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div[1]/div[2]/div/div/div[2]/div/div[2]/div/div/div/div[13]/div/div/div/div[2]/div  
    Sleep    3      
   Click Element    xpath=//*[@id=\"VAADIN_COMBOBOX_OPTIONLIST\"]/div/div/table/tbody/tr[2]/td  
    Sleep    5   
    Click Element    xpath=/html/body/div[1]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div[2]/div[1]
    Sleep    5   
    Capture Element Screenshot    xpath=/html/body/div[2]/div[3]/div/div/div[3]/div/div  D:/RobotFrameWorkProject/DossiersTest/Screenshot/CreationCarte_InfoTitulaire_PP_Creer_Confirmation_Screenshot.png   
    Sleep    3  
    Close Browser
    

*** Test Cases ***
BDF_GestionCartes_Actions_Refab_OK
    ConnexionBDFDM
    Click Element    id=ACC_LIB_014    
    Sleep    3 
    Input Text    id=GDC_LIB_003    test
    Sleep    2    
    Input Text    id=GDC_LIB_006    test 
    Sleep    2    
    Click Element    xpath=/html/body/div[1]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div/div[1]/div    
    Sleep    2    
    Click Element    id=BTN_SEARCH    
    Sleep    3    
    Click Element    xpath=/html/body/div[1]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div[3]/div/div[2]/div[3]/table/tbody/tr[1]/td[1]/span/label    
    Sleep    3
    Click Element    id=GDC_LIB_021    
    Sleep    2    
    Click Element    id=sideAction    
    Sleep    2    
    Click Element    id=GDC_LIB_356    
    Sleep    3    
    Click Element    xpath=/html/body/div[2]/div[3]/div/div/div[3]/div/div/div[4]/div    
    Sleep    2 
     Click Element    xpath=//*[@id=\"VAADIN_COMBOBOX_OPTIONLIST\"]/div/div/table/tbody/tr[1]/td  
     Sleep    2    
     Click Element    id=GDC_LIB_347    
     Sleep    3
     Element Text Should Be    xpath=/html/body/div[2]/div[3]/div/div/div[3]/div/div/div[2]    La carte 5117 68xx xxxx xx12 a été remplacée.
     Sleep    5    
     Click Element    id=GDC_LIB_351    
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