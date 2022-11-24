*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url1}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  
${navigator}    gc
${username}    Admin 
${password}    admin123
*** Test Cases ***
Test login
    se connecter a l'appl    ${url1}    ${navigator}         
   
*** Keywords ***
se connecter a l'appl
    [Documentation]    ce keyword permet d'ouvrir l'appl 
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
    Input Text    //input[@name='username']    ${username} 
    Input Password    //input[@name='password']    ${password} 
    Click Button    //button[@type='submit']    
    Sleep    4
    ${titrepage}    Get Title
    Log To Console    ${titrepage}
    Close browser