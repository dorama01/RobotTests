*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../resources/variables/variables_dev.robot
Resource   ../resources/locators/footer_page.robot
Resource   ../pageObjects/footer_page.robot


Test Setup    Open Browser To Home Page
Test Teardown    Close the Browser

*** Test Cases ***
TC_Footer_Legal_Link
    Wait Until Page Contains Element    ${FOOTER_LEGAL_NOTICE}    timeout=10s
    Sleep   5s
    Click And Verify Footer Link    ${FOOTER_LEGAL_NOTICE}   ${LEGAL_NOTICE_URL} 
    Click And Verify Footer Link    ${FOOTER_TERMS}    ${TERMS_URL}
    



