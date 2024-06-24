const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
      const cucumber = require('cypress-cucumber-preprocessor').default;
      on('file:preprocessor', cucumber());
    },
    specPattern: '**/*.{feature, feature.js}'
  },
  "compilerOptions":{
    "types": ["cypress", "node"]
  }
});
