*** Settings ***
Documentation    cette suite de test sert a prendre des captures d'ecran
...    suite du Documentation
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
TestScreenShot

    Open Browser    https://login.salesforce.com/    gc
    Maximize Browser Window
    Input Text    xpath://input[@id='username']    text
    Input Password    xpath://input[@id="password"]    12345
    Click Button    xpath://input[@id='Login'] 
    Sleep    3
    Capture Page Screenshot    ./Screenshot/pic.png
    Capture Element Screenshot    xpath://div[@id='error']    ./Screenshot/errorpic.png
    
    Close Browser


*** Keywords ***