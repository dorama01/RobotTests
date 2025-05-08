*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators/login_page.robot
Resource   ../resources/variables/variables_dev.robot

*** Keywords ***
Accepter Les Cookies Si Présent
    Wait Until Element Is Visible    ${ACCEPTER_COOKIES_BUTTON}    timeout=15s
    Click Button    ${ACCEPTER_COOKIES_BUTTON}

Cliquer Sur Connectez Vous
    Wait Until Element Is Visible    ${CONNECTEZ_VOUS_LINK}    timeout=10s
    Click Element    ${CONNECTEZ_VOUS_LINK}

Attendre Redirection Page Login
    Wait Until Location Contains    /Account/LoginLight.html    timeout=10s

Saisir Email Et Continuer 
    Wait Until Element Is Visible    ${EMAIL_INPUT}    timeout=10s
    Input Text    ${EMAIL_INPUT}    ${EMAIL}
    Click Element    ${VALIDATE_EMAIL_BUTTON}
    Wait Until Element Is Visible    ${PASSWORD_INPUT}    timeout=10s

Aller Jusqu'à Saisie Mot De Passe
    Accepter Les Cookies Si Présent
    Cliquer Sur Connectez Vous
    Attendre Redirection Page Login
    Saisir Email Et Continuer

Saisir Mot De Passe Et Se Connecter
    Wait Until Element Is Visible    ${PASSWORD_INPUT}    timeout=10s
    Input Text    ${PASSWORD_INPUT}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}

Saisir Mot De Passe Incorrect
    Input Text    ${PASSWORD_INPUT}    ${MAUVAIS_PASSWORD}
    Click Element    ${LOGIN_BUTTON}

Verifier Connexion Reussie
    Wait Until Location Is    ${ACCOUNT_HOME_URL}    timeout=10s
    Location Should Be  ${ACCOUNT_HOME_URL}

Verifier Message Erreur Connexion
    Wait Until Element Is Visible    ${ERROR_MESSAGE}    timeout=10s
    Element Text Should Be    ${ERROR_MESSAGE}    Le mot de passe ne correspond pas à l'adresse email que vous avez indiquée. Veuillez en saisir un nouveau.
