---
layout: post
title: "React linting with ESLint, Jest and Grunt"
date: 2015-08-26 07:20
comments: true
published: true
author: Tim Hordern
categories:
- javascript
- react
description: "Use ESLint to lint React, Jest and Jasmine in Grunt"
keywords: "React, ESLint, Jest, Grunt, linter, linting, Javascript"
---

On one of the projects I'm working on right now, we're building a front-end with a heavy usage
of [React](http://facebook.github.io/react/) components. We're doing our testing with
[Jest](https://facebook.github.io/jest/), which is a wrapper on [Jasmine](http://jasmine.github.io/).

Now, as mindful programmers, we like to write nice clean code. A [linter](https://en.wikipedia.org/wiki/Lint_\(software\))
isn't the *complete* answer to writing clean code but it does help a lot. It can also help to trap
simple errors, particularly if you don't have deep experience in the framework `¯\_(ツ)_/¯`.

Sweet, let's add a linter then! With a bit of investigation, I've found that [ESLint](http://eslint.org)
has the right plugins for React and JSX as well as some other tools that we're using. I'm using
[Grunt](http://gruntjs.com/) for our build pipeline. There's a Grunt plugin for ESLint, so let's
add that to our `package.json` by using `npm install`:

{% codeblock Shell %}
$ npm install grunt-eslint --save-dev
{% endcodeblock %}

Then in our Gruntfile, we add the ESLint task:

{% codeblock lang:javascript Gruntfile.js %}
module.exports = function (grunt) {
  grunt.initConfig({
    eslint: {
      target: [
        'Gruntfile.js',
        'app/*.js',
        '__tests__/**/*.js'
      ]
    }
  });
  grunt.registerTask('lint', ['eslint']);
};
{% endcodeblock %}

Whilst there is a command-line option for ESLint to initialize some configuration (`--init`), I
like keeping specific configuration out in a separate file. ESLint will automatically search for
a configuration file if you don't specific options in your grunt configuration (you can optionally
specific a different filename for the config file but the default is `.eslintrc`). Let's add an
`.eslintrc` to our app. The `.eslintrc` file can be YAML or JSON but I found the YAML version more
readable.

{% codeblock lang:yaml .eslintrc %}
---
  extends: "eslint:recommended"
  env:
    browser: true
    node: true
{% endcodeblock %}

The extends call implements the [recommended rules](http://eslint.org/docs/rules/) and gets us up
and linting.

Great! Now we can run `grunt lint` and we'll get the STDOUT output of our linting. If you're
writing React code though, you'll see a whole bunch of errors about React and the HTML inside the
JSX blocks (or files if you've separated your JSX out).

We'll need to add the React plugin to ESLint (it's plugins all the way down):

{% codeblock Shell %}
$ npm install eslint-plugin-jasmine --save-dev
{% endcodeblock %}

Now for our `.eslintrc` we can add the [react-specific rules](https://github.com/yannickcr/eslint-plugin-react#configuration),
as well as let ESLint to expect that it's operating in a React-Jest-Jasmine environment. We also set
some ECMA features because we're using JSX.

{% codeblock lang:yaml .eslintrc %}
---
  extends: "eslint:recommended"
  rules:
    react/display-name: 1
    react/jsx-boolean-value: 1
    react/jsx-curly-spacing: 1
    react/jsx-max-props-per-line: 1
    react/jsx-no-duplicate-props: 1
    react/jsx-no-undef: 1
    react/jsx-quotes: 1
    react/jsx-sort-prop-types: 1
    react/jsx-sort-props: 1
    react/jsx-uses-react: 1
    react/jsx-uses-vars: 1
    react/no-danger: 1
    react/no-did-mount-set-state: 1
    react/no-did-update-set-state: 1
    react/no-multi-comp: 1
    react/no-unknown-property: 1
    react/prop-types: 1
    react/react-in-jsx-scope: 1
    react/require-extension: 1
    react/self-closing-comp: 1
    react/sort-comp: 1
    react/wrap-multilines: 1
  env:
    browser: true
    node: true
    jasmine: true
    jest: true
  ecmaFeatures:
    jsx: true
  plugins:
    - "react"
{% endcodeblock %}

Now, you might still have some errors thrown when you `grunt lint` if you're using
[Browserify](http://browserify.org/) or one of the other require helpers like [Webpack](http://webpack.github.io/)
or [requirejs](http://requirejs.org/). We can get around this by letting ESLint know that
some things are global. We're also using [React-Router](https://github.com/rackt/react-router), so
we should let ESLint know about that as well.

{% codeblock lang:yaml .eslintrc %}
---
  extends: "eslint:recommended"
  rules:
    react/display-name: 1
    react/jsx-boolean-value: 1
    react/jsx-curly-spacing: 1
    react/jsx-max-props-per-line: 1
    react/jsx-no-duplicate-props: 1
    react/jsx-no-undef: 1
    react/jsx-quotes: 1
    react/jsx-sort-prop-types: 1
    react/jsx-sort-props: 1
    react/jsx-uses-react: 1
    react/jsx-uses-vars: 1
    react/no-danger: 1
    react/no-did-mount-set-state: 1
    react/no-did-update-set-state: 1
    react/no-multi-comp: 1
    react/no-unknown-property: 1
    react/prop-types: 1
    react/react-in-jsx-scope: 1
    react/require-extension: 1
    react/self-closing-comp: 1
    react/sort-comp: 1
    react/wrap-multilines: 1
  env:
    browser: true
    node: true
    jasmine: true
    jest: true
  ecmaFeatures:
    jsx: true
  globals:
    React: true
    TestUtils: true
    routerHelper: true
  plugins:
    - "react"
{% endcodeblock %}

I'm also using the [BDD](https://github.com/Nate-Wilkins/eslint-plugin-bdd) and
[Jasmine](https://github.com/tlvince/eslint-plugin-jasmine) plugins for ESLint to improve some
of the wording and operation of our test suite. There's no shortage of [ESLint plugins](https://www.npmjs.com/browse/keyword/eslint-plugin)
for you to add, which is the beauty of the plugin architecture of ESLint.

If you're having trouble resolving your linting errors, a great resource is [JSLint Error Explanations](https://jslinterrors.com/).
Despite the name, JSLint Error Explanations actually [explains ESLint errors](https://jslinterrors.com/?linter=eslint)
as well with live examples that you can play around with to see how to fix the error.

Happy linting!