*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url1}     https://www.google.ca/?hl=fr  
${browser}    gc
*** Test Cases ***
testkeywordnavigateur
     Open Browser    ${url1}    ${browser} 
    Maximize Browser Window
*** Keywords ***