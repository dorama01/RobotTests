*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../resources/locators/search_page.robot
Resource   ../resources/variables/variables_dev.robot

*** Keywords ***
Enter Search Term And Submit
    [Arguments]    ${SEARCH_TERM}
    Wait Until Element Is Visible    ${SEARCH_INPUT}    timeout=10s
    Input Text    ${SEARCH_INPUT}    ${SEARCH_TERM}
    Press Keys    ${SEARCH_INPUT}    RETURN
    Handle Captcha If Present

Get Product Titles
    Wait Until Element Is Visible    ${PRODUCT_TITLES}    timeout=10s
    ${products}=    Get WebElements    ${PRODUCT_TITLES}
    RETURN    ${products}

Verify First Results Contain Search Term
    [Arguments]    ${search_term}    ${number_of_results}=10
    ${titles}=    Get Product Titles
    FOR    ${index}    IN RANGE    ${number_of_results}
        ${text}=    Get Text    ${titles}[${index}]
        Should Contain    ${text.lower()}    ${search_term.lower()}
    END
