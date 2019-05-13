#!/bin/bash

# Add HTML
printf '%s'  '
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>HackerYou App</title>
    <link rel="stylesheet" href="./styles/styles.css" />
  </head>
  <body>
    <!-- You can Delete From This -->
    <div class="App">
      <header class="App-header">
        <svg
          class="App-logo"
          alt="logo"
          viewBox="0 0 93.21 93"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path d="m0 93h93v-93h-93z" fill="#d11f26" />
          <g fill="#fff">
            <path d="m40 65h29v-5h-29z" />
            <path
              d="m24.76 26 17.24 16.98-17.3 17.02-3.7-3.58 13.64-13.39-13.64-13.34z"
            />
          </g>
        </svg>

        <p>Edit <code>index.html</code> and save to reload.</p>
        <a
          class="App-link"
          href="https://www.github.com"
          target="_blank"
          rel="noopener noreferrer<"
        >
          Learn More
        </a>
      </header>
    </div>
    <!-- To this -->
  </body>
</html>


' > index.html

mkdir assets
cd assets 
mkdir images
cd ..

mkdir styles 
cd styles

printf '%s' "@import 'abstracts/variables';
@import 'abstracts/functions';
@import 'abstracts/mixins';

@import 'base/normalize';
@import 'base/reset';
@import 'base/typography';

@import 'layout/nav';
@import 'layout/header';
@import 'layout/footer';
@import 'layout/sidebar';
@import 'layout/forms';

@import 'components/buttons';
@import 'components/carousel';

@import 'pages/home';
@import 'pages/about';
@import 'pages/contact'; 
@import 'hackerYou/deleteMe';

" > styles.scss



mkdir abstracts 
cd abstracts
touch _variables.scss 
touch _functions.scss
touch _mixins.scss
cd ..

mkdir base
cd base 
printf '%s' "article,aside,details,figcaption,figure,footer,header,hgroup,nav,section,summary{display:block;}audio,canvas,video{display:inline-block;}audio:not([controls]){display:none;height:0;}[hidden]{display:none;}html{font-family:sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;}a:focus{outline:thin dotted;}a:active,a:hover{outline:0;}h1{font-size:2em;}abbr[title]{border-bottom:1px dotted;}b,strong{font-weight:700;}dfn{font-style:italic;}mark{background:#ff0;color:#000;}code,kbd,pre,samp{font-family:monospace, serif;font-size:1em;}pre{white-space:pre-wrap;word-wrap:break-word;}q{quotes:201C 201D 2018 2019;}small{font-size:80%;}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline;}sup{top:-.5em;}sub{bottom:-.25em;}img{border:0;}svg:not(:root){overflow:hidden;}fieldset{border:1px solid silver;margin:0 2px;padding:.35em .625em .75em;}button,input,select,textarea{font-family:inherit;font-size:100%;margin:0;}button,input{line-height:normal;}button,html input[type=button],/* 1 */input[type=reset],input[type=submit]{-webkit-appearance:button;cursor:pointer;}button[disabled],input[disabled]{cursor:default;}input[type=checkbox],input[type=radio]{box-sizing:border-box;padding:0;}input[type=search]{-webkit-appearance:textfield;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;}input[type=search]::-webkit-search-cancel-button,input[type=search]::-webkit-search-decoration{-webkit-appearance:none;}textarea{overflow:auto;vertical-align:top;}table{border-collapse:collapse;border-spacing:0;}body,figure{margin:0;}legend,button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0;}

.clearfix:after {visibility: hidden; display: block; font-size: 0; content: ''; clear: both; height: 0; }

* { -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; }

.visuallyHidden:not(:focus):not(:active) { position: absolute; width: 1px; height: 1px; margin: -1px;border: 0;padding: 0;white-space: nowrap;clip-path: inset(100%);clip: rect(00 0 0);overflow: hidden;}

" > _normalize.scss
touch _reset.scss
touch _typography.scss
cd ..

mkdir layout
cd layout
touch _nav.scss
touch _header.scss
touch _footer.scss
touch _sidebar.scss
touch _forms.scss
cd ..

mkdir components
cd components
touch _carousel.scss
touch _buttons.scss
cd ..

mkdir pages
cd pages
touch _home.scss
touch _about.scss
touch _contact.scss
cd .. 

mkdir hackerYou
cd hackerYou
printf '%s' 'body {
    margin: 0;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Roboto", "Oxygen",
    "Ubuntu", "Cantarell", "Fira Sans", "Droid Sans", "Helvetica Neue",
    sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

code {
  font-family: source-code-pro, Menlo, Monaco, Consolas, "Courier New",
    monospace;
}
.App {
  text-align: center;
}

.App-logo {
  animation: App-logo-spin infinite 20s linear;
  height: 20vh;
  pointer-events: none;
}

.App-header {
  background-color: #282c34;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: calc(10px + 2vmin);
  color: white;
}

.App-link {
  color: #61dafb;
}

@keyframes App-logo-spin {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}
' > _deleteMe.scss


cd ..
cd ..


mkdir js
cd js
touch scripts.js
cd ..
code .

export PATH=~/bin:$PATH


