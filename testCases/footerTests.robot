*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../resources/variables/variables_dev.robot
Resource   ../resources/locators/footer_page.robot
Resource   ../pageObjects/footer_page.robot


Test Setup    Open Browser To Home Page
Test Teardown    Close the Browser

*** Test Cases ***
TC_Footer_Legal_Link_NOTICE
    Scroll Element Into View    ${FOOTER_PRINCIPAL_DIV}
    Scroll Element Into View    ${FOOTER_LEGAL_NOTICE}
    Wait Until Page Contains Element    ${FOOTER_LEGAL_NOTICE}    timeout=15s
    Sleep    2s
    Click And Verify Footer Link    ${FOOTER_LEGAL_NOTICE}   ${LEGAL_NOTICE_URL} 

TC_Footer_Legal_Link_TERMS
    Scroll Element Into View    ${FOOTER_PRINCIPAL_DIV}
    Scroll Element Into View    ${FOOTER_TERMS}
    Wait Until Page Contains Element    ${FOOTER_TERMS}    timeout=15s
    Sleep   5s
    Click And Verify Footer Link    ${FOOTER_TERMS}    ${TERMS_URL}

    



