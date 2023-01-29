import BasePage from "./base_page"

/// <reference types="cypress" />


const ELEMENTS = {
    checkoutButton: () => cy.get("[data-test='checkout']"),
}

class CartPage extends BasePage {
    NAME: string = 'Cart Page'
    URL: string = 'https://www.saucedemo.com/cart.html'

    // Actions
    public clickOnCheckout = () => {
        ELEMENTS.checkoutButton().click({ force: true })
    }
}
export default new CartPage