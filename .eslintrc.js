module.exports = {
  env: {
    browser: true,
    es6: true,
    node: true,
    jest: true,
  },
  extends: [
    'eslint:recommended',
    'plugin:react/recommended',
    'plugin:import/errors',
    'plugin:import/warnings',
  ],
  parserOptions: {
    ecmaVersion: 2017,
    ecmaFeatures: {
      experimentalObjectRestSpread: true,
      jsx: true,
    },
    sourceType: 'module',
  },
  plugins: ['react'],
  rules: {
    indent: ['error', 2, { SwitchCase: 1 }],
    'linebreak-style': ['error', 'unix'],
    quotes: ['error', 'single'],
    semi: ['error', 'always'],
    'no-unused-vars': ['error', { ignoreRestSiblings: true }],
    'import/no-named-as-default': ['error'],
    'import/first': ['error'],
    'import/order': ['error', { 'newlines-between': 'always' }],
    'import/newline-after-import': ['error'],
    'import/prefer-default-export': ['error'],
		'import/no-unresolved': ['off'],
  },
};
