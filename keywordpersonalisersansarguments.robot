*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url1}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  
${browser}    gc
${username}    Admin 
${password}    admin123
*** Test Cases ***
Test login
    se connecter a l'appl
   
    
*** Keywords ***
se connecter a l'appl
 Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    Sleep    3
    Input Text    //input[@name='username']    ${username} 
    Input Password    //input[@name='password']    ${password} 
    Click Button    //button[@type='submit']    
    Sleep    4
    Close browser