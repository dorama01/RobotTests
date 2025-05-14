*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource   ../resources/locators/search_page.robot
Resource   ../resources/variables/variables_dev.robot

*** Keywords ***
Click Sort Ascending
    Wait Until Element Is Visible    ${PRICE_ASC_BUTTON}    timeout=10s
    Click Element    ${PRICE_ASC_BUTTON}
    Wait Until Element Is Visible    ${PRICE_SPAN}    timeout=10s
    Sleep    2s

Click Sort Descending
    Click Element    ${PRICE_DESC_BUTTON}
    Wait Until Element Is Visible    ${PRICE_SPAN}    timeout=10s
    Sleep    2s

Get All Product Prices
    ${elements}=    Get WebElements    ${PRICE_SPAN}
    ${prices}=    Create List
    FOR    ${element}    IN    @{elements}
        ${price_text}=    Get Element Attribute    ${element}    content
        ${price_text}=    Evaluate    "${price_text}".replace(",", ".")
        ${price}=    Convert To Number    ${price_text}
        Append To List    ${prices}    ${price}
    END
    RETURN    ${prices}

