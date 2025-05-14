

*** Variables ***
${PRODUCT_LIST}        xpath=//div[contains(@class, 'l-productlist__content')]
${PRODUCT_CARD}                xpath=//article[contains(@class, 'c-productCard')]
${ADD_TO_CART_BUTTON}         xpath=.//input[@type='submit' and contains(@value, 'Ajouter au panier')]
${ALTCHA_CHECKBOX}    xpath=//input[@id='altcha_checkbox']
${RECOMMENDATION_PAGE_IDENTIFIER}    xpath=//div[@class="h2" and normalize-space(text())="Recommandé avec votre produit"]
${SEARCH_RESULTS_IDENTIFIER}   xpath=//h1[span[normalize-space(text())="PC gamer"]]
${AJOUTER_BUTTON_SUFFIX}    //input[@type="button" and @aria-label="Ajouter"]
#what i want to do is : 
#1. open the product list page
#2. add the first 3 products to the cart
#3. go to the cart page
#4. verify that the cart contains 3 items
#5. verify that the cart total price is correct
