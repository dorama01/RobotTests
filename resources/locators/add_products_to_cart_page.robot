

*** Variables ***
${PRODUCT_LIST}        xpath=//div[contains(@class, 'l-productlist__content')]
${PRODUCT_CARD}                xpath=//article[contains(@class, 'c-productCard')]
${ADD_TO_CART_BUTTON}         xpath=.//input[@type='submit' and contains(@value, 'Ajouter au panier')]
${ALTCHA_CHECKBOX}    xpath=//input[@id='altcha_checkbox']

#what i want to do is : 
#1. open the product list page
#2. add the first 3 products to the cart
#3. go to the cart page
#4. verify that the cart contains 3 items
#5. verify that the cart total price is correct
