*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../pageObjects/page_accessibilite.robot
Resource   ../resources/locators/search_page.robot
Resource   ../resources/variables/variables_dev.robot

Test Setup    Open Browser To Home Page
Test Teardown    Close the Browser
*** Test Cases ***
Test Keyboard Navigation
    Navigate With Keyboard    ${SEARCH_INPUT} 
    FOR    ${i}    IN RANGE    9
        Press Key    xpath=//body    \\09
        Sleep    0.5
    END
    
Test Alt Attributes On Images
    Check All Images Have Alt Attribute
