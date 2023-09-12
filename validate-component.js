const Ajv = require('ajv');
const fs = require('fs');

// Load the JSON schema
const schema = JSON.parse(fs.readFileSync('backstage-component-schema.json'));

// Load your component file
const componentData = JSON.parse(fs.readFileSync('catalog-info.yaml'));

// Create an instance of Ajv
const ajv = new Ajv();

// Validate the component file against the schema
const validate = ajv.compile(schema);
const valid = validate(componentData);

if (!valid) {
  console.error('Component configuration is invalid:', validate.errors);
} else {
  console.log('Component configuration is valid.');
}
