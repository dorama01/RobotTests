*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../pageObjects/login_page.robot

Test Setup    Ouvrir Navigateur
Test Teardown    Fermer Navigateur

*** Test Cases ***
Connexion Avec Credentials Valides
    [Tags]    HappyPath
    Aller Jusqu'à Saisie Mot De Passe
    Saisir Mot De Passe Et Se Connecter
    Verifier Connexion Reussie
    
Connexion Avec Mot De Passe Incorrect
    [Tags]    Negative
    Aller Jusqu'à Saisie Mot De Passe
    Saisir Mot De Passe Incorrect
    Verifier Message Erreur Connexion

