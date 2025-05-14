*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators/accessibilite_page.robot
Resource   ../resources/variables/variables_dev.robot

*** Keywords ***

Navigate With Keyboard
    [Arguments]    ${locator}
    Click Element    ${locator}
    Press Key    ${locator}    \\09
    Sleep    0.5

Check All Images Have Alt Attribute
    ${images}=    Get WebElements    ${ALL_IMAGES_XPATH}
    FOR    ${img}    IN    @{images}
        ${alt}=    Get Element Attribute    ${img}    alt
        Should Not Be Empty    ${alt}
    END