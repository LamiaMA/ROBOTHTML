*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    
${url2}    https://login.salesforce.com/   
${browser}    gc

*** Test Cases ***
TestFermetureNavigateur
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    Sleep    2
    Open Browser    ${url2}    ${browser}
    Maximize Browser Window
    Sleep    2
    #Close Browser
    Close All Browsers

*** Keywords ***