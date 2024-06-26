import { Given, When, Then, And } from 'cypress-cucumber-preprocessor/steps';

Given('I open W3schools Page', () => {
  cy.visit('https://profile.w3schools.com/login');
});

When('I enter valid email {string} and password {string}', (email, password) => {
  cy.get('input[name="email"]').type(email);
  cy.get('input[name="password"]').type(password);
});

When('I dont enter email and password', () => {
  cy.get('input[name="email"]').should('have.value', '');
  cy.get('input[name="password"]').should('have.value', '');
});

When('I enter invalid email {string} and valid password {string}', (email, password) => {
  cy.get('input[name="email"]').type(email);
  cy.get('input[name="password"]').type(password);
});

When('I enter valid email {string} and invalid password {string}', (email, password) => {
  cy.get('input[name="email"]').type(email);
  cy.get('input[name="password"]').type(password);
});

When('I enter valid email {string} and blank password', (email) => {
  cy.get('input[name="email"]').type(email);
  cy.get('input[name="password"]').should('have.value', '');
});

When('I enter valid email {string} and password with 1 character {string}', (email, password) => {
  cy.get('input[name="email"]').type(email);
  cy.get('input[name="password"]').type(password);
});

When('I enter blank email and valid password {string}', (password) => {
  cy.get('input[name="email"]').should('have.value', '');
  cy.get('input[name="password"]').type(password);
});

And('I click on Login button to login', () => {
  cy.get('button[type="submit"]').click();
});

Then('I can see W3schools Dashboard', () => {
  cy.url({ timeout: 10000 }).should('include', 'pathfinder.w3schools.com');
});

Then('I can see the error notification {string}', (notificationMessage) => {
  cy.get('.LoginForm_error_text__4fzmN').should('be.visible').and('contain.text', notificationMessage);
});
