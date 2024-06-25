import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('I open W3schools Page', () => {
  cy.visit('https://profile.w3schools.com/login');
});

When('I submit Login with valid email {string} and password {string}', (email, password) => {
  cy.get('input[name="email"]').type(email);
  cy.get('input[name="password"]').type(password);
  cy.get('button[type="submit"]').click();
});

Then('I can see W3schools Dashboard is {string}', (expectedPath) => {
    cy.url().should('include', expectedPath);
});

