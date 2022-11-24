Library    SeleniumLibrary
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url1}     https://login.salesforce.com/   
${browser}    gc
${username}    text
${password}    12345
*** Test Cases ***
testInputBox
    Open Browser    ${url1}    ${browser} 
    Maximize Browser Window
    Element Should Be Visible    //input[@id='username'] 
    Element Should Be Enabled    //input[@id='username'] 
    Input Text    //input[@id='username']    ${username} 
    Element Should Be Visible    //input[@id='password'] 
    Element Should Be Enabled    //input[@id='password']  
    Input Password    //input[@id='password']    ${password} 
    Sleep    4
    Clear Element Text    //input[@id='username'] 
    Sleep    3
    Close browser


*** Keywords ***

