



*** Variables ***
${GO_TO_ORDER_BUTTON}          xpath=//button[@data-e2e='go-to-order']

${CONTINUE_BUTTON}             xpath=//button[contains(@class, 'btn') and contains(., 'Continuer')]
${PAY_BUTTON}                  xpath=//button[contains(@class, 'btn') and contains(., 'Payer')]

${ADRESSE_STEP_TITLE}         adresse
${LIVRAISON_STEP_TITLE}        Livraison
${PAIEMENT_STEP_TITLE}         Paiement
${CONFIRMATION_STEP_TITLE}     Confirmation


${GENDER}   xpath=//input[@name='CustomerInformationsFormData.Gender' and @value='Mrs']
${NAME}                   xpath=//input[@data-tckid='name']
${FNAME}                xpath=//input[@data-tckid='fName']
${BIRTHDAY}        xpath=//input[@data-tckid='brtDate']
${PHONE}             xpath=//input[@name='CustomerInformationsFormData.Mobile']
${COUNTRY_FRANCE}           xpath=//div[contains(text(), 'France')]
${POSTAL_CODE}           xpath=//input[@data-autocomplete='PostalCode']
${CITY}                 xpath=//input[@data-autocomplete='City']
${ADRESS}                xpath=//input[@data-autocomplete='NumberAndStreet']
${CREATE_ACCOUNT_BTN}    xpath=//button[contains(@class, 'btn') and contains(text(), 'Créer mon compte')]
${DELEVERY_PAGE_IDENTIFIER}    xpath=//h1[@class="mb-3" and contains(text(), 'Jean, choisissez votre livraison')]
${DELEVERY_CONTINUE_BTN}    xpath=//button[@data-testid='deliveryChoiceValidationButton']
${TRY_CDISCOUNT_BENEFIT_BTN}   xpath=//button[@data-testid='pop-in-action-btn' and contains(text(), 'Essai gratuit pendant 6 jours')]
${PAIMENT_PAGE_IDENTIFIER}    xpath=//div[@class="panel-heading"]
${PAIMENT_BY_CARD_BUTTON}     //span[contains(@class, 'lbl_radio')]
${CHOOSE_PAIMENT_MODE_BTN}   xpath=//div[@id='validation-root']
${FINAL_PAIMENT_PAGE_IDENTIFIER}    xpath=//div[@class='claTitle']
${HANDLE_DELEVERY_OFFER_BTN}   button[data-testid="pop-in-action-btn"]
