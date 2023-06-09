module.exports = {
    env: {
        browser: true,
        es2021: true,
        node: true,
    },
    extends: ['plugin:react/recommended', 'airbnb', 'plugin:diff/diff'],
    overrides: [],
    parserOptions: {
        ecmaVersion: 'latest',
        sourceType: 'module',
    },
    plugins: ['react'],
    ignorePatterns: ['**/config/index.js', 'webpack.config.js'],
    settings: {
        'import/resolver': {
            alias: {
                map: [
                    ['actions', './src/frontend/actions'],
                    ['components', './src/frontend/components'],
                    ['config', './src/frontend/config'],
                    ['css', './src/frontend/css'],
                    ['form', './src/frontend/form'],
                    ['Helpers', './src/frontend/Helpers'],
                    ['img', './src/frontend/img'],
                    ['middleware', './src/frontend/middleware'],
                    ['modals', './src/frontend/modals'],
                    ['models', './src/frontend/models'],
                    ['reducers', './src/frontend/reducers'],
                    ['templates', './src/frontend/templates'],
                    ['storybook', './src/frontend/storybook'],
                    ['modules', './src/frontend/modules'],
                    ['backend', './src/backend'],
                    ['frontend', './src/frontend'],
                ],
                extensions: ['.ts', '.js', '.jsx', '.json'],
            },
        },
    },
    rules: {
        // Indent with 4 spaces
        indent: ['error', 4],
        // Indent JSX with 4 spaces
        'react/jsx-indent': ['error', 4],
        // Indent props with 4 spaces
        'react/jsx-indent-props': ['error', 4],

        // enable for of cycle
        "no-restricted-syntax": ["error", "ForInStatement", "LabeledStatement", "WithStatement"],

        "no-continue": "off",

        "quote-props": "off",

        "react/jsx-filename-extension": 'off',
        'react/destructuring-assignment': 'off',
        'react/prop-types': 'off',
        'jsx-a11y/no-static-element-interactions': 'off',
        'jsx-a11y/click-events-have-key-events': 'off',
    },
};
