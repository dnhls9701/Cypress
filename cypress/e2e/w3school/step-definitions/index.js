import { Given, When, Then, And } from 'cypress-cucumber-preprocessor/steps';

Given('I open W3schools Page', () => {
  cy.visit('https://profile.w3schools.com/login');
});

When('I enter valid email {string} and password {string}', (email, password) => {
  cy.get('input[name="email"]').type(email);
  cy.get('input[name="password"]').type(password);
});

And('I click on Login button to login', () =>{
  cy.get('button[type="submit"]').click();
});

Then('I can see W3schools Dashboard', () => {
  cy.url({ timeout: 10000 }).should('include', 'pathfinder.w3schools.com');
});


