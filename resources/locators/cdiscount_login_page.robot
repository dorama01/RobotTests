
*** Variables ***
${LOGIN_URL}              https://order.cdiscount.com/Account/LoginLight.html?referrer=
${LOGIN_BUTTON_AFTER_EMAIL}    xpath=//input[@data-seln='validateEmail']
${LOGIN_URL_PASSWORD}      https://order.cdiscount.com/Account/LoginLight.html
${EMAIL_FIELD}            xpath=//input[@id="ValidateEmailViewData_ValidateEmailFormData_Email"]
${PASSWORD_FIELD}         xpath=//input[@id="CustomerLogin_CustomerLoginFormData_Password"]
${LOGIN_BUTTON_AFTER_PASSWORD}           xpath=//input[@data-seln='signIn']
${ACCOUNT_PAGE_IDENTIFIER}  xpath=//h2[text()="Découvrez nos offres"]
${LOGIN_ERROR_MESSAGE}    xpath=//div[contains(@class,"c-alert__content")]
${COOKIE_ACCEPT_BUTTON}    xpath=//button[@id='footer_tc_privacy_button_2']
