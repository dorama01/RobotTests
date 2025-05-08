*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/variables_dev.robot

*** Keywords ***
Ouvrir Navigateur
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window

Fermer Navigateur
    Close Browser
