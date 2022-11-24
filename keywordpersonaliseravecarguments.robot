*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url1}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  
${navigator}    gc
${username}    Admin 
${password}    admin123
${userxpath}    //input[@name='username'] 
${passxpath}    //input[@name='password'] 
*** Test Cases ***
Test login
    se connecter a l'appl    ${url1}    ${navigator}    
    remplir le formulaire de login       ${username}    ${password}    ${userxpath}    ${passxpath}     
      
*** Keywords ***
se connecter a l'appl
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    #Open Browser    ${url1}    ${navigator}
    Maximize Browser Window
    Sleep    3

remplir le formulaire de login
    [Arguments]    ${User}    ${Pass}    ${userlocator}    ${passlocator}    
    Input Text    ${userlocator}    ${User}    
    Input Password    ${passlocator}    ${Pass}      

