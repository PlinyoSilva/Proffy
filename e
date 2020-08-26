[33mcommit a9d04984f009832943cbe19b79648d662a9a1c4c[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: Plinyo Silva <gerdesonp@hotmail.com>
Date:   Thu Aug 20 20:09:52 2020 -0300

    pagina 1 concluida

[1mdiff --git a/README.md b/README.md[m
[1mdeleted file mode 100644[m
[1mindex 64e343e..0000000[m
[1m--- a/README.md[m
[1m+++ /dev/null[m
[36m@@ -1,44 +0,0 @@[m
[31m-This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).[m
[31m-[m
[31m-## Available Scripts[m
[31m-[m
[31m-In the project directory, you can run:[m
[31m-[m
[31m-### `yarn start`[m
[31m-[m
[31m-Runs the app in the development mode.<br />[m
[31m-Open [http://localhost:3000](http://localhost:3000) to view it in the browser.[m
[31m-[m
[31m-The page will reload if you make edits.<br />[m
[31m-You will also see any lint errors in the console.[m
[31m-[m
[31m-### `yarn test`[m
[31m-[m
[31m-Launches the test runner in the interactive watch mode.<br />[m
[31m-See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.[m
[31m-[m
[31m-### `yarn build`[m
[31m-[m
[31m-Builds the app for production to the `build` folder.<br />[m
[31m-It correctly bundles React in production mode and optimizes the build for the best performance.[m
[31m-[m
[31m-The build is minified and the filenames include the hashes.<br />[m
[31m-Your app is ready to be deployed![m
[31m-[m
[31m-See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.[m
[31m-[m
[31m-### `yarn eject`[m
[31m-[m
[31m-**Note: this is a one-way operation. Once you `eject`, you can’t go back!**[m
[31m-[m
[31m-If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.[m
[31m-[m
[31m-Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.[m
[31m-[m
[31m-You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.[m
[31m-[m
[31m-## Learn More[m
[31m-[m
[31m-You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).[m
[31m-[m
[31m-To learn React, check out the [React documentation](https://reactjs.org/).[m
[1mdiff --git a/package.json b/package.json[m
[1mindex 1a37203..13757b7 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -12,6 +12,7 @@[m
     "@types/react-dom": "^16.9.0",[m
     "react": "^16.13.1",[m
     "react-dom": "^16.13.1",[m
[32m+[m[32m    "react-router-dom": "^5.2.0",[m
     "react-scripts": "3.4.1",[m
     "typescript": "~3.7.2"[m
   },[m
[36m@@ -35,5 +36,8 @@[m
       "last 1 firefox version",[m
       "last 1 safari version"[m
     ][m
[32m+[m[32m  },[m
[32m+[m[32m  "devDependencies": {[m
[32m+[m[32m    "@types/react-router-dom": "^5.1.5"[m
   }[m
 }[m
[1mdiff --git a/public/favicon.ico b/public/favicon.ico[m
[1mdeleted file mode 100644[m
[1mindex bcd5dfd..0000000[m
Binary files a/public/favicon.ico and /dev/null differ
[1mdiff --git a/public/index.html b/public/index.html[m
[1mindex aa069f2..45a8c39 100644[m
[1m--- a/public/index.html[m
[1m+++ b/public/index.html[m
[36m@@ -2,42 +2,14 @@[m
 <html lang="en">[m
   <head>[m
     <meta charset="utf-8" />[m
[31m-    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />[m
[31m-    <meta name="viewport" content="width=device-width, initial-scale=1" />[m
[32m+[m[32m   <meta name="viewport" content="width=device-width, initial-scale=1" />[m
     <meta name="theme-color" content="#000000" />[m
[31m-    <meta[m
[31m-      name="description"[m
[31m-      content="Web site created using create-react-app"[m
[31m-    />[m
[31m-    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />[m
[31m-    <!--[m
[31m-      manifest.json provides metadata used when your web app is installed on a[m
[31m-      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/[m
[31m-    -->[m
[31m-    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />[m
[31m-    <!--[m
[31m-      Notice the use of %PUBLIC_URL% in the tags above.[m
[31m-      It will be replaced with the URL of the `public` folder during the build.[m
[31m-      Only files inside the `public` folder can be referenced from the HTML.[m
[31m-[m
[31m-      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will[m
[31m-      work correctly both with client-side routing and a non-root public URL.[m
[31m-      Learn how to configure a non-root public URL by running `npm run build`.[m
[31m-    -->[m
[31m-    <title>React App</title>[m
[32m+[m[32m    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&family=Poppins&display=swap" rel="stylesheet">[m
[32m+[m[32m    <title>Proffy </title>[m
   </head>[m
   <body>[m
     <noscript>You need to enable JavaScript to run this app.</noscript>[m
     <div id="root"></div>[m
[31m-    <!--[m
[31m-      This HTML file is a template.[m
[31m-      If you open it directly in the browser, you will see an empty page.[m
[31m-[m
[31m-      You can add webfonts, meta tags, or analytics to this file.[m
[31m-      The build step will place the bundled scripts into the <body> tag.[m
[31m-[m
[31m-      To begin the development, run `npm start` or `yarn start`.[m
[31m-      To create a production bundle, use `npm run build` or `yarn build`.[m
[31m-    -->[m
[32m+[m[41m    [m
   </body>[m
 </html>[m
[1mdiff --git a/public/logo192.png b/public/logo192.png[m
[1mdeleted file mode 100644[m
[1mindex fc44b0a..0000000[m
Binary files a/public/logo192.png and /dev/null differ
[1mdiff --git a/public/logo512.png b/public/logo512.png[m
[1mdeleted file mode 100644[m
[1mindex a4e47a6..0000000[m
Binary files a/public/logo512.png and /dev/null differ
[1mdiff --git a/public/manifest.json b/public/manifest.json[m
[1mdeleted file mode 100644[m
[1mindex 080d6c7..0000000[m
[1m--- a/public/manifest.json[m
[1m+++ /dev/null[m
[36m@@ -1,25 +0,0 @@[m
[31m-{[m
[31m-  "short_name": "React App",[m
[31m-  "name": "Create React App Sample",[m
[31m-  "icons": [[m
[31m-    {[m
[31m-      "src": "favicon.ico",[m
[31m-      "sizes": "64x64 32x32 24x24 16x16",[m
[31m-      "type": "image/x-icon"[m
[31m-    },[m
[31m-    {[m
[31m-      "src": "logo192.png",[m
[31m-      "type": "image/png",[m
[31m-      "sizes": "192x192"[m
[31m-    },[m
[31m-    {[m
[31m-      "src": "logo512.png",[m
[31m-      "type": "image/png",[m
[31m-      "sizes": "512x512"[m
[31m-    }[m
[31m-  ],[m
[31m-  "start_url": ".",[m
[31m-  "display": "standalone",[m
[31m-  "theme_color": "#000000",[m
[31m-  "background_color": "#ffffff"[m
[31m-}[m
[1mdiff --git a/public/robots.txt b/public/robots.txt[m
[1mdeleted file mode 100644[m
[1mindex e9e57dc..0000000[m
[1m--- a/public/robots.txt[m
[1m+++ /dev/null[m
[36m@@ -1,3 +0,0 @@[m
[31m-# https://www.robotstxt.org/robotstxt.html[m
[31m-User-agent: *[m
[31m-Disallow:[m
[1mdiff --git a/src/App.css b/src/App.css[m
[1mdeleted file mode 100644[m
[1mindex 74b5e05..0000000[m
[1m--- a/src/App.css[m
[1m+++ /dev/null[m
[36m@@ -1,38 +0,0 @@[m
[31m-.App {[m
[31m-  text-align: center;[m
[31m-}[m
[31m-[m
[31m-.App-logo {[m
[31m-  height: 40vmin;[m
[31m-  pointer-events: none;[m
[31m-}[m
[31m-[m
[31m-@media (prefers-reduced-motion: no-preference) {[m
[31m-  .App-logo {[m
[31m-    animation: App-logo-spin infinite 20s linear;[m
[31m-  }[m
[31m-}[m
[31m-[m
[31m-.App-header {[m
[31m-  background-color: #282c34;[m
[31m-  min-height: 100vh;[m
[31m-  display: flex;[m
[31m-  flex-direction: column;[m
[31m-  align-items: center;[m
[31m-  justify-content: center;[m
[31m-  font-size: calc(10px + 2vmin);[m
[31m-  color: white;[m
[31m-}[m
[31m-[m
[31m-.App-link {[m
[31m-  color: #61dafb;[m
[31m-}[m
[31m-[m
[31m-@keyframes App-logo-spin {[m
[31m-  from {[m
[31m-    transform: rotate(0deg);[m
[31m-  }[m
[31m-  to {[m
[31m-    transform: rotate(360deg);[m
[31m-  }[m
[31m-}[m
[1mdiff --git a/src/App.test.tsx b/src/App.test.tsx[m
[1mdeleted file mode 100644[m
[1mindex 4db7ebc..0000000[m
[1m--- a/src/App.test.tsx[m
[1m+++ /dev/null[m
[36m@@ -1,9 +0,0 @@[m
[31m-import React from 'react';[m
[31m-import { render } from '@testing-library/react';[m
[31m-import App from './App';[m
[31m-[m
[31m-test('renders learn react link', () => {[m
[31m-  const { getByText } = render(<App />);[m
[31m-  const linkElement = getByText(/learn react/i);[m
[31m-  expect(linkElement).toBeInTheDocument();[m
[31m-});[m
[1mdiff --git a/src/App.tsx b/src/App.tsx[m
[1mindex a53698a..419d324 100644[m
[1m--- a/src/App.tsx[m
[1m+++ b/src/App.tsx[m
[36m@@ -1,25 +1,11 @@[m
 import React from 'react';[m
[31m-import logo from './logo.svg';[m
[31m-import './App.css';[m
[32m+[m[32mimport './assets/styles/global.css';[m
[32m+[m[32mimport Routes from './routes';[m
[32m+[m
 [m
 function App() {[m
   return ([m
[31m-    <div className="App">[m
[31m-      <header className="App-header">[m
[31m-        <img src={logo} className="App-logo" alt="logo" />[m
[31m-        <p>[m
[31m-          Edit <code>src/App.tsx</code> and save to reload.[m
[31m-        </p>[m
[31m-        <a[m
[31m-          className="App-link"[m
[31m-          href="https://reactjs.org"[m
[31m-          target="_blank"[m
[31m-          rel="noopener noreferrer"[m
[31m-        >[m
[31m-          Learn React[m
[31m-        </a>[m
[31m-      </header>[m
[31m-    </div>[m
[32m+[m[32m    <Routes />[m
   );[m
 }[m
 [m
[1mdiff --git a/src/assets/images/icons/back.svg b/src/assets/images/icons/back.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..908fe15[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/back.svg[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m<svg width="49" height="32" viewBox="0 0 49 32" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<g clip-path="url(#clip0)">[m
[32m+[m[32m<path d="M2 16H48" stroke="#BDA5F6" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M6.00098 21.001L0.999976 16L6.00098 10.999" stroke="#BDA5F6" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m</g>[m
[32m+[m[32m<defs>[m
[32m+[m[32m<clipPath id="clip0">[m
[32m+[m[32m<rect width="32" height="49" fill="white" transform="translate(49) rotate(90)"/>[m
[32m+[m[32m</clipPath>[m
[32m+[m[32m</defs>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/give-classes.svg b/src/assets/images/icons/give-classes.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..c53754a[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/give-classes.svg[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<g clip-path="url(#clip0)">[m
[32m+[m[32m<path d="M19.4444 25.04V32.52M19.4444 25.04H13.8889M19.4444 25.04H25M13.8889 25.04L7.22222 34M13.8889 25.04H9C6.79086 25.04 5 23.2491 5 21.04V10C5 7.79087 6.79086 6 9 6H31C33.2091 6 35 7.79086 35 10V21.04C35 23.2491 33.2091 25.04 31 25.04H25M25 25.04L32.7778 34" stroke="white" stroke-width="3" stroke-linecap="round"/>[m
[32m+[m[32m</g>[m
[32m+[m[32m<defs>[m
[32m+[m[32m<clipPath id="clip0">[m
[32m+[m[32m<rect width="40" height="40" rx="8" fill="white"/>[m
[32m+[m[32m</clipPath>[m
[32m+[m[32m</defs>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/purple-heart.svg b/src/assets/images/icons/purple-heart.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..52526e7[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/purple-heart.svg[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m<svg width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M14 3.69254C14 1.65319 12.2708 0 10.1382 0C8.84344 0 7.70098 0.611057 7 1.54504C6.29902 0.611057 5.15656 0 3.86223 0C1.72916 0 0 1.65281 0 3.69254C0 3.98141 0.0383562 4.26131 0.10411 4.5311C0.640313 7.71661 4.34481 11.0772 7 12C9.6548 11.0772 13.3597 7.71661 13.8951 4.53148C13.9616 4.26169 14 3.98179 14 3.69254V3.69254Z" fill="#9871F5"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/rocket.svg b/src/assets/images/icons/rocket.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..0304af1[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/rocket.svg[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M0.0246582 15.5429L7.33351 9.14285L21.9512 10.0571L22.8648 24.6857L16.4696 32C16.4696 32 16.4705 26.5152 10.9879 21.0286C5.50538 15.5419 0.0246582 15.5429 0.0246582 15.5429Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M1.78224e-05 32C1.78224e-05 32 -0.032872 24.7049 2.72713 21.9429C5.48714 19.1808 12.8152 19.371 12.8152 19.371C12.8152 19.371 12.8143 26.5143 10.0734 29.2571C7.33262 32 1.78224e-05 32 1.78224e-05 32Z" fill="#FFAC33"/>[m
[32m+[m[32m<path d="M7.33265 28.3428C9.35093 28.3428 10.9871 26.7055 10.9871 24.6857C10.9871 22.6659 9.35093 21.0286 7.33265 21.0286C5.31436 21.0286 3.67822 22.6659 3.67822 24.6857C3.67822 26.7055 5.31436 28.3428 7.33265 28.3428Z" fill="#FFCC4D"/>[m
[32m+[m[32m<path d="M32.0001 0C32.0001 0 22.8641 0 11.9008 9.14285C6.41916 13.7143 6.41916 21.9429 8.24638 23.7714C10.0736 25.6 18.296 25.6 22.8641 20.1143C32.0001 9.14285 32.0001 0 32.0001 0Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M23.7776 4.57143C22.2948 4.57143 21.0249 5.4592 20.4512 6.72914C20.9098 6.5216 21.415 6.4 21.9504 6.4C23.9686 6.4 25.6048 8.03748 25.6048 10.0571C25.6048 10.5929 25.4833 11.0985 25.2768 11.5566C26.5458 10.9833 27.432 9.71245 27.432 8.22857C27.432 6.20891 25.7958 4.57143 23.7776 4.57143Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M6.42017 25.6C6.42017 25.6 6.42017 21.9428 7.33377 21.0285C8.24738 20.1142 19.2116 10.9723 20.1243 11.8857C21.037 12.799 11.9009 23.7714 10.9873 24.6857C10.0737 25.6 6.42017 25.6 6.42017 25.6Z" fill="#6842C2"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/smile.svg b/src/assets/images/icons/smile.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..9b8f7f5[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/smile.svg[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M16 32C24.8366 32 32 24.8366 32 16C32 7.16344 24.8366 0 16 0C7.16344 0 0 7.16344 0 16C0 24.8366 7.16344 32 16 32Z" fill="#FFCC4D"/>[m
[32m+[m[32m<path d="M15.9999 18.6667C12.7795 18.6667 10.6426 18.2916 7.99995 17.7778C7.39639 17.6613 6.22217 17.7778 6.22217 19.5556C6.22217 23.1111 10.3066 27.5556 15.9999 27.5556C21.6924 27.5556 25.7777 23.1111 25.7777 19.5556C25.7777 17.7778 24.6035 17.6604 23.9999 17.7778C21.3573 18.2916 19.2204 18.6667 15.9999 18.6667Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M8 19.5556C8 19.5556 10.6667 20.4444 16 20.4444C21.3333 20.4444 24 19.5556 24 19.5556C24 19.5556 22.2222 24.1111 16 24.1111C9.77778 24.1111 8 19.5556 8 19.5556Z" fill="white"/>[m
[32m+[m[32m<path d="M23.699 11.4658C23.699 12.9893 22.8652 14.2249 21.8359 14.2249C20.8075 14.2249 19.9728 12.9893 19.9728 11.4658C19.9728 9.94224 20.8066 8.70668 21.8359 8.70668C22.8652 8.70668 23.699 9.94224 23.699 11.4658ZM8.43945 11.4658C8.43945 12.9893 9.27323 14.2249 10.3026 14.2249C11.331 14.2249 12.1657 12.9893 12.1657 11.4658C12.1657 9.94224 11.3319 8.70668 10.3026 8.70668C9.27323 8.70668 8.43945 9.94224 8.43945 11.4658Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M30.9734 7.55733C30.8214 7.40977 29.8472 7.80088 28.8614 7.29866C26.8277 6.26221 21.6881 5.26221 18.3423 7.63288C17.9841 7.88621 16.4872 7.92888 16.0686 7.9111C15.6499 7.92977 14.153 7.8871 13.7948 7.63288C10.4499 5.26221 5.31033 6.26221 3.27656 7.29866C2.29078 7.80088 1.31656 7.40977 1.16456 7.55733C0.945 7.76977 0.945 8.62044 1.16544 8.83377C1.38411 9.04621 2.47833 9.29155 2.69611 9.92888C2.91567 10.5671 2.91744 14.336 4.66322 15.6391C6.29789 16.8587 10.1112 17.2258 12.5281 15.8507C14.6366 14.6515 14.5628 12.1271 14.9494 10.6231C15.0872 10.0871 15.4757 9.81688 16.0694 9.81688C16.6632 9.81688 17.0517 10.0871 17.1894 10.6231C17.5761 12.1262 17.5014 14.6515 19.6108 15.8507C22.0277 17.2249 25.841 16.8578 27.4748 15.6391C29.2214 14.3369 29.2232 10.5671 29.4419 9.92888C29.6597 9.29155 30.7539 9.04532 30.9726 8.83377C31.193 8.62044 31.1939 7.76977 30.9734 7.55733ZM13.0232 10.8018C12.9548 11.784 12.7797 13.6702 11.6037 14.3395C10.8828 14.7502 9.94322 15 8.96011 15H8.95922C7.87033 15 6.361 14.6915 5.77078 14.2515C5.033 13.7013 4.75211 11.4364 4.64633 10.5893C4.57878 10.0498 4.39744 8.73155 4.99122 8.52888C5.93344 8.20799 7.24811 7.95732 8.593 7.95732C9.209 7.95732 11.2783 7.99555 12.2863 8.61599C13.1797 9.16444 13.0614 10.2613 13.0232 10.8018ZM27.4926 10.5769C27.3868 11.4249 27.1059 13.7013 26.3681 14.2515C25.7779 14.6915 24.2686 15 23.1797 15H23.1788C22.1948 15 21.2561 14.7502 20.5343 14.3395C19.3583 13.6711 19.1832 11.7964 19.1148 10.8142C19.0774 10.2738 18.9583 9.16888 19.8517 8.62044C20.8606 7.99999 22.929 7.95732 23.545 7.95732C24.8899 7.95732 26.2037 8.20355 27.1468 8.52444C27.7406 8.7271 27.5601 10.0373 27.4926 10.5769Z" fill="#6842C2"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/study.svg b/src/assets/images/icons/study.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..2a459bb[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/study.svg[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M5 6H14C15.5913 6 17.1174 6.65555 18.2426 7.82245C19.3679 8.98934 20 10.572 20 12.2222V34C20 32.7623 19.5259 31.5753 18.682 30.7002C17.8381 29.825 16.6935 29.3333 15.5 29.3333H5V6Z" stroke="white" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M35 6H26C24.4087 6 22.8826 6.65555 21.7574 7.82245C20.6321 8.98934 20 10.572 20 12.2222V34C20 32.7623 20.4741 31.5753 21.318 30.7002C22.1619 29.825 23.3065 29.3333 24.5 29.3333H35V6Z" stroke="white" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/success-check-icon.svg b/src/assets/images/icons/success-check-icon.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..eeb8239[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/success-check-icon.svg[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m<svg width="120" height="120" viewBox="0 0 120 120" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M80 105H40C26.195 105 15 93.805 15 80V40C15 26.195 26.195 15 40 15H80C93.805 15 105 26.195 105 40V80C105 93.805 93.805 105 80 105Z" stroke="#04D361" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M71.3344 55L57.1694 69.165L48.6694 60.665" stroke="#04D361" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/warning.svg b/src/assets/images/icons/warning.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..240d146[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/warning.svg[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M16 15.9999V9.99988" stroke="#8257E5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M16 21.3333L16 21.3333" stroke="#8257E5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M4 19.1745V12.8252C4 10.6892 5.136 8.71453 6.98133 7.63986L12.9813 4.14786C14.8467 3.06253 17.152 3.06253 19.0173 4.14786L25.0173 7.63986C26.864 8.71453 28 10.6892 28 12.8252V19.1745C28 21.3105 26.864 23.2852 25.0187 24.3599L19.0187 27.8519C17.1533 28.9372 14.848 28.9372 12.9827 27.8519L6.98267 24.3599C5.136 23.2852 4 21.3105 4 19.1745V19.1745Z" stroke="#8257E5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/whatsapp.svg b/src/assets/images/icons/whatsapp.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..e56ee7e[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/whatsapp.svg[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M10.0025 0H9.9975C4.48375 0 0 4.485 0 10C0 12.1875 0.705 14.215 1.90375 15.8612L0.6575 19.5763L4.50125 18.3475C6.0825 19.395 7.96875 20 10.0025 20C15.5162 20 20 15.5138 20 10C20 4.48625 15.5162 0 10.0025 0Z" fill="#4CAF50"/>[m
[32m+[m[32m<path d="M15.8212 14.1212C15.5799 14.8025 14.6224 15.3675 13.8587 15.5325C13.3362 15.6437 12.6537 15.7325 10.3562 14.78C7.41744 13.5625 5.52494 10.5762 5.37744 10.3825C5.23619 10.1887 4.18994 8.80123 4.18994 7.36623C4.18994 5.93123 4.91869 5.23248 5.21244 4.93248C5.45369 4.68623 5.85244 4.57373 6.23494 4.57373C6.35869 4.57373 6.46994 4.57998 6.56994 4.58498C6.86369 4.59748 7.01119 4.61498 7.20494 5.07873C7.44619 5.65998 8.03369 7.09498 8.10369 7.24248C8.17494 7.38998 8.24619 7.58998 8.14619 7.78373C8.05244 7.98373 7.96994 8.07248 7.82244 8.24248C7.67494 8.41248 7.53494 8.54248 7.38744 8.72498C7.25244 8.88373 7.09994 9.05373 7.26994 9.34748C7.43994 9.63498 8.02744 10.5937 8.89244 11.3637C10.0087 12.3575 10.9137 12.675 11.2374 12.81C11.4787 12.91 11.7662 12.8862 11.9424 12.6987C12.1662 12.4575 12.4424 12.0575 12.7237 11.6637C12.9237 11.3812 13.1762 11.3462 13.4412 11.4462C13.7112 11.54 15.1399 12.2462 15.4337 12.3925C15.7274 12.54 15.9212 12.61 15.9924 12.7337C16.0624 12.8575 16.0624 13.4387 15.8212 14.1212Z" fill="#FAFAFA"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/landing.svg b/src/assets/images/landing.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..15fbdad[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/landing.svg[m
[36m@@ -0,0 +1,265 @@[m
[32m+[m[32m<svg width="599" height="352" viewBox="0 0 599 352" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M305.753 349.21C306.966 342.846 310.732 337.011 316.02 333.286" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M305.589 351C305.817 345.686 307.868 332.893 312.719 324.885" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M305.662 350.343C306.501 340.865 306.428 330.391 304.95 320.986" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M316.793 330.811L316.793 330.811C316.746 330.894 316.699 330.977 316.652 331.061C315.993 332.226 315.334 333.389 314.522 334.489C314.735 334.418 314.96 334.332 315.194 334.238C315.312 334.191 315.434 334.141 315.558 334.091C315.815 333.986 316.08 333.878 316.331 333.784C316.704 333.645 317.091 333.52 317.452 333.467L317.452 333.467C319.126 333.221 320.835 333.288 322.477 333.502L322.477 333.502C323.758 333.669 325.036 333.923 326.293 334.173C326.701 334.254 327.108 334.335 327.511 334.412C329.171 334.729 330.804 334.992 332.45 335.014L332.45 335.014C333.384 335.027 334.376 334.905 335.214 334.583C336.049 334.261 336.693 333.756 337.019 333.019L337.02 333.018C337.559 331.812 337.004 330.222 335.88 329.287L335.879 329.286C334.766 328.353 333.24 327.982 331.665 327.83L331.665 327.83C331.092 327.774 330.519 327.745 329.932 327.715C329.715 327.704 329.497 327.693 329.276 327.681C328.466 327.635 327.636 327.57 326.814 327.413L326.813 327.412C326.322 327.317 325.837 327.191 325.366 327.065C325.291 327.045 325.217 327.025 325.144 327.005C324.747 326.898 324.361 326.794 323.975 326.706C323.062 326.497 322.206 326.391 321.368 326.554L316.793 330.811ZM316.793 330.811L316.794 330.809M316.793 330.811L316.794 330.809M316.794 330.809C317.915 328.811 319.359 326.945 321.368 326.554L316.794 330.809Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M312.107 326.007C312.732 325.484 313.324 324.836 313.937 324.143C314.017 324.053 314.096 323.963 314.176 323.872C314.913 323.036 315.687 322.157 316.547 321.472C318.904 319.588 321.759 318.133 324.835 317.895L312.107 326.007ZM312.107 326.007C312.138 325.827 312.185 325.618 312.249 325.381C312.468 324.575 312.856 323.547 313.3 322.485C313.973 320.877 314.75 319.246 315.223 318.253C315.375 317.934 315.496 317.681 315.572 317.515C317.131 314.13 319.537 310.952 322.939 309.999L322.939 309.999C324.383 309.595 325.886 309.611 327.457 309.751C327.993 309.799 328.546 309.862 329.107 309.926C330.153 310.047 331.228 310.17 332.273 310.2L332.275 310.2C332.778 310.212 333.29 310.204 333.79 310.196C334.034 310.192 334.275 310.188 334.51 310.187C335.242 310.182 335.95 310.2 336.645 310.304C338.032 310.513 339.352 311.134 340 312.229L340.001 312.23C340.501 313.07 340.528 314.097 340.185 315.086C339.841 316.077 339.138 316.983 338.257 317.541C336.447 318.688 334.122 318.77 331.841 318.517C331.18 318.444 330.544 318.35 329.899 318.254C329.409 318.182 328.913 318.109 328.397 318.043C327.234 317.895 326.044 317.799 324.836 317.894L312.107 326.007ZM312.085 326.594C312.085 326.594 312.085 326.593 312.085 326.592L312.085 326.594Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M307.229 311.871L307.229 311.872C307.522 313.665 307.224 315.507 306.662 317.283C306.622 317.41 306.574 317.57 306.518 317.753C306.35 318.313 306.114 319.093 305.824 319.831C305.632 320.319 305.427 320.759 305.218 321.081C305.114 321.242 305.018 321.358 304.935 321.434C304.85 321.511 304.802 321.525 304.793 321.527L304.792 321.527C304.688 321.547 304.477 321.517 304.14 321.349C303.821 321.19 303.464 320.945 303.102 320.659C302.38 320.089 301.702 319.404 301.373 319.061C300.368 318.002 299.568 316.755 299.074 315.392L299.073 315.39C298.495 313.816 298.295 312.134 298.095 310.381C298.091 310.343 298.087 310.304 298.082 310.266C297.889 308.569 297.689 306.807 297.106 305.134L297.106 305.134C296.443 303.239 295.314 301.545 294.232 299.922C293.948 299.496 293.667 299.075 293.399 298.656C292.084 296.604 290.971 294.409 290.988 292.108C291.005 289.802 292.47 287.482 294.57 287.109L294.571 287.109C295.956 286.86 297.429 287.442 298.648 288.367L298.649 288.367C300.372 289.668 301.63 291.57 302.168 293.67C302.491 294.941 302.554 296.264 302.616 297.647L302.618 297.703C302.679 299.05 302.741 300.455 303.079 301.821C303.498 303.534 304.329 305.106 305.126 306.612C305.186 306.727 305.247 306.841 305.307 306.955C306.168 308.589 306.952 310.159 307.229 311.871Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M305.57 349.448C304.95 341.075 302.798 331.615 298.121 324.648" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M296.993 318.35L296.993 318.352C297.663 320.22 298.076 322.177 298.421 324.149L298.422 324.151C298.44 324.255 298.472 324.388 298.503 324.52C298.515 324.571 298.526 324.621 298.537 324.669C298.581 324.859 298.62 325.052 298.642 325.236C298.663 325.424 298.662 325.573 298.64 325.681C298.62 325.784 298.589 325.81 298.58 325.816L298.58 325.816C298.576 325.82 298.539 325.846 298.411 325.827C298.282 325.808 298.116 325.749 297.925 325.65C297.546 325.456 297.175 325.165 296.987 324.998C296.651 324.69 296.353 324.333 296.054 323.946C295.949 323.809 295.839 323.663 295.728 323.514C295.535 323.258 295.336 322.991 295.135 322.744L295.135 322.743C292.423 319.409 288.14 317.806 284.003 317.213C281.933 316.916 279.851 316.838 277.785 316.805C277.239 316.797 276.695 316.791 276.153 316.785C274.634 316.769 273.128 316.754 271.622 316.67L271.619 316.67C270.682 316.624 269.838 316.522 269.213 316.078C268.397 315.494 268.057 314.299 268.307 313.209C268.556 312.131 269.299 311.177 270.215 310.39L270.215 310.39C272.238 308.651 274.925 307.774 277.636 307.597C280.348 307.419 283.087 307.907 285.762 308.631L285.762 308.631C288.34 309.328 290.853 310.264 292.829 311.927C294.782 313.578 296.118 315.883 296.993 318.35Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M305.397 350.343C305.033 343.038 301.75 335.915 296.443 330.893" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M293.663 327.061C291.828 326.085 289.75 325.449 287.7 324.874L293.663 327.061ZM293.663 327.061C293.802 327.135 293.927 327.202 294.052 327.277L294.051 327.277L294.063 327.284C294.861 327.735 295.393 328.52 295.979 329.414C296.046 329.517 296.15 329.726 296.29 330.028C296.333 330.119 296.378 330.218 296.425 330.32C296.524 330.536 296.631 330.77 296.74 330.996C296.773 331.065 296.807 331.135 296.841 331.204C294.373 330.528 291.657 330.553 289.281 330.576L289.253 330.576C289.253 330.576 289.253 330.576 289.253 330.576M293.663 327.061L289.253 330.576M289.253 330.576C286.003 330.604 282.752 331.208 279.713 332.381L279.711 332.382C279.308 332.539 278.915 332.702 278.527 332.863C277.049 333.477 275.655 334.055 274.149 334.138C273.65 334.162 273.118 334.09 272.689 333.909C272.265 333.729 271.983 333.462 271.872 333.11C271.696 332.534 272 331.853 272.515 331.166L272.515 331.166M289.253 330.576L272.515 331.166M272.515 331.166L272.516 331.164M272.515 331.166L272.516 331.164M272.516 331.164C273.534 329.793 274.848 328.669 276.205 327.512M272.516 331.164L276.205 327.512M276.205 327.512C277.974 326.008 279.727 324.562 281.83 324.153L276.205 327.512ZM297.511 331.408C297.296 331.019 297.077 330.542 296.882 330.117C296.688 329.696 296.518 329.325 296.397 329.14C295.823 328.264 295.23 327.369 294.309 326.848C294.172 326.766 294.036 326.693 293.899 326.62L297.511 331.408ZM281.83 324.153C283.719 323.786 285.692 324.311 287.7 324.874L281.83 324.153Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M527.582 320.671L527.582 320.672C526.511 321.733 525.19 322.346 523.884 322.858C523.565 322.984 523.248 323.103 522.935 323.22C521.942 323.593 520.987 323.952 520.1 324.458C517.596 325.89 515.788 328.472 514.701 331.246C514.688 331.279 514.675 331.312 514.662 331.345C514.255 332.391 513.668 333.894 513.343 335.367C513.176 336.127 513.083 336.857 513.113 337.497C513.143 338.139 513.294 338.649 513.574 339.014L513.576 339.016C514.21 339.851 515.327 340.025 516.712 339.797C518.075 339.571 519.507 338.983 520.543 338.547L520.544 338.547C520.923 338.388 521.307 338.221 521.696 338.051C523.704 337.177 525.835 336.249 528.055 336.153C530.458 336.047 532.706 336.914 534.765 337.741L534.821 337.763C536.891 338.594 538.907 339.403 541.046 339.412C543.19 339.421 545.479 338.399 546.453 336.506C546.862 335.705 547.028 334.806 547.208 333.832C547.241 333.655 547.274 333.476 547.309 333.294C547.53 332.152 547.83 330.932 548.706 329.962L548.707 329.962C549.605 328.968 550.785 328.568 551.978 328.401C552.836 328.281 553.754 328.277 554.608 328.273C554.92 328.272 555.223 328.27 555.512 328.263L555.513 328.263C557.912 328.21 560.378 327.563 562.233 326.006L562.234 326.005C564.098 324.45 565.189 321.872 564.599 319.728L564.598 319.728C564.11 317.953 562.627 316.687 561.055 315.419L561.055 315.418C558.888 313.665 556.62 311.992 554.009 312.168C553.079 312.235 552.162 312.534 551.175 312.856L551.102 312.88C550.11 313.204 549.044 313.545 547.937 313.585C546.54 313.634 545.277 313.207 544.116 312.615C543.236 312.165 542.383 311.603 541.572 311.068C541.326 310.906 541.084 310.746 540.846 310.592C538.757 309.246 536.312 308.266 534.204 309.28L527.582 320.671ZM527.582 320.671C529.089 319.17 529.766 317.087 530.381 315.192M527.582 320.671L530.381 315.192M530.381 315.192C530.468 314.925 530.553 314.661 530.64 314.404M530.381 315.192L530.64 314.404M530.64 314.404C531.36 312.259 532.383 310.159 534.203 309.28L530.64 314.404Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M513.615 339.072C525.752 328.635 539.913 321.723 555.196 318.[33mcommit a9d04984f009832943cbe19b79648d662a9a1c4c[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: Plinyo Silva <gerdesonp@hotmail.com>
Date:   Thu Aug 20 20:09:52 2020 -0300

    pagina 1 concluida

[1mdiff --git a/README.md b/README.md[m
[1mdeleted file mode 100644[m
[1mindex 64e343e..0000000[m
[1m--- a/README.md[m
[1m+++ /dev/null[m
[36m@@ -1,44 +0,0 @@[m
[31m-This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).[m
[31m-[m
[31m-## Available Scripts[m
[31m-[m
[31m-In the project directory, you can run:[m
[31m-[m
[31m-### `yarn start`[m
[31m-[m
[31m-Runs the app in the development mode.<br />[m
[31m-Open [http://localhost:3000](http://localhost:3000) to view it in the browser.[m
[31m-[m
[31m-The page will reload if you make edits.<br />[m
[31m-You will also see any lint errors in the console.[m
[31m-[m
[31m-### `yarn test`[m
[31m-[m
[31m-Launches the test runner in the interactive watch mode.<br />[m
[31m-See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.[m
[31m-[m
[31m-### `yarn build`[m
[31m-[m
[31m-Builds the app for production to the `build` folder.<br />[m
[31m-It correctly bundles React in production mode and optimizes the build for the best performance.[m
[31m-[m
[31m-The build is minified and the filenames include the hashes.<br />[m
[31m-Your app is ready to be deployed![m
[31m-[m
[31m-See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.[m
[31m-[m
[31m-### `yarn eject`[m
[31m-[m
[31m-**Note: this is a one-way operation. Once you `eject`, you can’t go back!**[m
[31m-[m
[31m-If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.[m
[31m-[m
[31m-Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.[m
[31m-[m
[31m-You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.[m
[31m-[m
[31m-## Learn More[m
[31m-[m
[31m-You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).[m
[31m-[m
[31m-To learn React, check out the [React documentation](https://reactjs.org/).[m
[1mdiff --git a/package.json b/package.json[m
[1mindex 1a37203..13757b7 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -12,6 +12,7 @@[m
     "@types/react-dom": "^16.9.0",[m
     "react": "^16.13.1",[m
     "react-dom": "^16.13.1",[m
[32m+[m[32m    "react-router-dom": "^5.2.0",[m
     "react-scripts": "3.4.1",[m
     "typescript": "~3.7.2"[m
   },[m
[36m@@ -35,5 +36,8 @@[m
       "last 1 firefox version",[m
       "last 1 safari version"[m
     ][m
[32m+[m[32m  },[m
[32m+[m[32m  "devDependencies": {[m
[32m+[m[32m    "@types/react-router-dom": "^5.1.5"[m
   }[m
 }[m
[1mdiff --git a/public/favicon.ico b/public/favicon.ico[m
[1mdeleted file mode 100644[m
[1mindex bcd5dfd..0000000[m
Binary files a/public/favicon.ico and /dev/null differ
[1mdiff --git a/public/index.html b/public/index.html[m
[1mindex aa069f2..45a8c39 100644[m
[1m--- a/public/index.html[m
[1m+++ b/public/index.html[m
[36m@@ -2,42 +2,14 @@[m
 <html lang="en">[m
   <head>[m
     <meta charset="utf-8" />[m
[31m-    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />[m
[31m-    <meta name="viewport" content="width=device-width, initial-scale=1" />[m
[32m+[m[32m   <meta name="viewport" content="width=device-width, initial-scale=1" />[m
     <meta name="theme-color" content="#000000" />[m
[31m-    <meta[m
[31m-      name="description"[m
[31m-      content="Web site created using create-react-app"[m
[31m-    />[m
[31m-    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />[m
[31m-    <!--[m
[31m-      manifest.json provides metadata used when your web app is installed on a[m
[31m-      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/[m
[31m-    -->[m
[31m-    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />[m
[31m-    <!--[m
[31m-      Notice the use of %PUBLIC_URL% in the tags above.[m
[31m-      It will be replaced with the URL of the `public` folder during the build.[m
[31m-      Only files inside the `public` folder can be referenced from the HTML.[m
[31m-[m
[31m-      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will[m
[31m-      work correctly both with client-side routing and a non-root public URL.[m
[31m-      Learn how to configure a non-root public URL by running `npm run build`.[m
[31m-    -->[m
[31m-    <title>React App</title>[m
[32m+[m[32m    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&family=Poppins&display=swap" rel="stylesheet">[m
[32m+[m[32m    <title>Proffy </title>[m
   </head>[m
   <body>[m
     <noscript>You need to enable JavaScript to run this app.</noscript>[m
     <div id="root"></div>[m
[31m-    <!--[m
[31m-      This HTML file is a template.[m
[31m-      If you open it directly in the browser, you will see an empty page.[m
[31m-[m
[31m-      You can add webfonts, meta tags, or analytics to this file.[m
[31m-      The build step will place the bundled scripts into the <body> tag.[m
[31m-[m
[31m-      To begin the development, run `npm start` or `yarn start`.[m
[31m-      To create a production bundle, use `npm run build` or `yarn build`.[m
[31m-    -->[m
[32m+[m[41m    [m
   </body>[m
 </html>[m
[1mdiff --git a/public/logo192.png b/public/logo192.png[m
[1mdeleted file mode 100644[m
[1mindex fc44b0a..0000000[m
Binary files a/public/logo192.png and /dev/null differ
[1mdiff --git a/public/logo512.png b/public/logo512.png[m
[1mdeleted file mode 100644[m
[1mindex a4e47a6..0000000[m
Binary files a/public/logo512.png and /dev/null differ
[1mdiff --git a/public/manifest.json b/public/manifest.json[m
[1mdeleted file mode 100644[m
[1mindex 080d6c7..0000000[m
[1m--- a/public/manifest.json[m
[1m+++ /dev/null[m
[36m@@ -1,25 +0,0 @@[m
[31m-{[m
[31m-  "short_name": "React App",[m
[31m-  "name": "Create React App Sample",[m
[31m-  "icons": [[m
[31m-    {[m
[31m-      "src": "favicon.ico",[m
[31m-      "sizes": "64x64 32x32 24x24 16x16",[m
[31m-      "type": "image/x-icon"[m
[31m-    },[m
[31m-    {[m
[31m-      "src": "logo192.png",[m
[31m-      "type": "image/png",[m
[31m-      "sizes": "192x192"[m
[31m-    },[m
[31m-    {[m
[31m-      "src": "logo512.png",[m
[31m-      "type": "image/png",[m
[31m-      "sizes": "512x512"[m
[31m-    }[m
[31m-  ],[m
[31m-  "start_url": ".",[m
[31m-  "display": "standalone",[m
[31m-  "theme_color": "#000000",[m
[31m-  "background_color": "#ffffff"[m
[31m-}[m
[1mdiff --git a/public/robots.txt b/public/robots.txt[m
[1mdeleted file mode 100644[m
[1mindex e9e57dc..0000000[m
[1m--- a/public/robots.txt[m
[1m+++ /dev/null[m
[36m@@ -1,3 +0,0 @@[m
[31m-# https://www.robotstxt.org/robotstxt.html[m
[31m-User-agent: *[m
[31m-Disallow:[m
[1mdiff --git a/src/App.css b/src/App.css[m
[1mdeleted file mode 100644[m
[1mindex 74b5e05..0000000[m
[1m--- a/src/App.css[m
[1m+++ /dev/null[m
[36m@@ -1,38 +0,0 @@[m
[31m-.App {[m
[31m-  text-align: center;[m
[31m-}[m
[31m-[m
[31m-.App-logo {[m
[31m-  height: 40vmin;[m
[31m-  pointer-events: none;[m
[31m-}[m
[31m-[m
[31m-@media (prefers-reduced-motion: no-preference) {[m
[31m-  .App-logo {[m
[31m-    animation: App-logo-spin infinite 20s linear;[m
[31m-  }[m
[31m-}[m
[31m-[m
[31m-.App-header {[m
[31m-  background-color: #282c34;[m
[31m-  min-height: 100vh;[m
[31m-  display: flex;[m
[31m-  flex-direction: column;[m
[31m-  align-items: center;[m
[31m-  justify-content: center;[m
[31m-  font-size: calc(10px + 2vmin);[m
[31m-  color: white;[m
[31m-}[m
[31m-[m
[31m-.App-link {[m
[31m-  color: #61dafb;[m
[31m-}[m
[31m-[m
[31m-@keyframes App-logo-spin {[m
[31m-  from {[m
[31m-    transform: rotate(0deg);[m
[31m-  }[m
[31m-  to {[m
[31m-    transform: rotate(360deg);[m
[31m-  }[m
[31m-}[m
[1mdiff --git a/src/App.test.tsx b/src/App.test.tsx[m
[1mdeleted file mode 100644[m
[1mindex 4db7ebc..0000000[m
[1m--- a/src/App.test.tsx[m
[1m+++ /dev/null[m
[36m@@ -1,9 +0,0 @@[m
[31m-import React from 'react';[m
[31m-import { render } from '@testing-library/react';[m
[31m-import App from './App';[m
[31m-[m
[31m-test('renders learn react link', () => {[m
[31m-  const { getByText } = render(<App />);[m
[31m-  const linkElement = getByText(/learn react/i);[m
[31m-  expect(linkElement).toBeInTheDocument();[m
[31m-});[m
[1mdiff --git a/src/App.tsx b/src/App.tsx[m
[1mindex a53698a..419d324 100644[m
[1m--- a/src/App.tsx[m
[1m+++ b/src/App.tsx[m
[36m@@ -1,25 +1,11 @@[m
 import React from 'react';[m
[31m-import logo from './logo.svg';[m
[31m-import './App.css';[m
[32m+[m[32mimport './assets/styles/global.css';[m
[32m+[m[32mimport Routes from './routes';[m
[32m+[m
 [m
 function App() {[m
   return ([m
[31m-    <div className="App">[m
[31m-      <header className="App-header">[m
[31m-        <img src={logo} className="App-logo" alt="logo" />[m
[31m-        <p>[m
[31m-          Edit <code>src/App.tsx</code> and save to reload.[m
[31m-        </p>[m
[31m-        <a[m
[31m-          className="App-link"[m
[31m-          href="https://reactjs.org"[m
[31m-          target="_blank"[m
[31m-          rel="noopener noreferrer"[m
[31m-        >[m
[31m-          Learn React[m
[31m-        </a>[m
[31m-      </header>[m
[31m-    </div>[m
[32m+[m[32m    <Routes />[m
   );[m
 }[m
 [m
[1mdiff --git a/src/assets/images/icons/back.svg b/src/assets/images/icons/back.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..908fe15[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/back.svg[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m<svg width="49" height="32" viewBox="0 0 49 32" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<g clip-path="url(#clip0)">[m
[32m+[m[32m<path d="M2 16H48" stroke="#BDA5F6" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M6.00098 21.001L0.999976 16L6.00098 10.999" stroke="#BDA5F6" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m</g>[m
[32m+[m[32m<defs>[m
[32m+[m[32m<clipPath id="clip0">[m
[32m+[m[32m<rect width="32" height="49" fill="white" transform="translate(49) rotate(90)"/>[m
[32m+[m[32m</clipPath>[m
[32m+[m[32m</defs>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/give-classes.svg b/src/assets/images/icons/give-classes.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..c53754a[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/give-classes.svg[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<g clip-path="url(#clip0)">[m
[32m+[m[32m<path d="M19.4444 25.04V32.52M19.4444 25.04H13.8889M19.4444 25.04H25M13.8889 25.04L7.22222 34M13.8889 25.04H9C6.79086 25.04 5 23.2491 5 21.04V10C5 7.79087 6.79086 6 9 6H31C33.2091 6 35 7.79086 35 10V21.04C35 23.2491 33.2091 25.04 31 25.04H25M25 25.04L32.7778 34" stroke="white" stroke-width="3" stroke-linecap="round"/>[m
[32m+[m[32m</g>[m
[32m+[m[32m<defs>[m
[32m+[m[32m<clipPath id="clip0">[m
[32m+[m[32m<rect width="40" height="40" rx="8" fill="white"/>[m
[32m+[m[32m</clipPath>[m
[32m+[m[32m</defs>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/purple-heart.svg b/src/assets/images/icons/purple-heart.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..52526e7[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/purple-heart.svg[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m<svg width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M14 3.69254C14 1.65319 12.2708 0 10.1382 0C8.84344 0 7.70098 0.611057 7 1.54504C6.29902 0.611057 5.15656 0 3.86223 0C1.72916 0 0 1.65281 0 3.69254C0 3.98141 0.0383562 4.26131 0.10411 4.5311C0.640313 7.71661 4.34481 11.0772 7 12C9.6548 11.0772 13.3597 7.71661 13.8951 4.53148C13.9616 4.26169 14 3.98179 14 3.69254V3.69254Z" fill="#9871F5"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/rocket.svg b/src/assets/images/icons/rocket.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..0304af1[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/rocket.svg[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M0.0246582 15.5429L7.33351 9.14285L21.9512 10.0571L22.8648 24.6857L16.4696 32C16.4696 32 16.4705 26.5152 10.9879 21.0286C5.50538 15.5419 0.0246582 15.5429 0.0246582 15.5429Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M1.78224e-05 32C1.78224e-05 32 -0.032872 24.7049 2.72713 21.9429C5.48714 19.1808 12.8152 19.371 12.8152 19.371C12.8152 19.371 12.8143 26.5143 10.0734 29.2571C7.33262 32 1.78224e-05 32 1.78224e-05 32Z" fill="#FFAC33"/>[m
[32m+[m[32m<path d="M7.33265 28.3428C9.35093 28.3428 10.9871 26.7055 10.9871 24.6857C10.9871 22.6659 9.35093 21.0286 7.33265 21.0286C5.31436 21.0286 3.67822 22.6659 3.67822 24.6857C3.67822 26.7055 5.31436 28.3428 7.33265 28.3428Z" fill="#FFCC4D"/>[m
[32m+[m[32m<path d="M32.0001 0C32.0001 0 22.8641 0 11.9008 9.14285C6.41916 13.7143 6.41916 21.9429 8.24638 23.7714C10.0736 25.6 18.296 25.6 22.8641 20.1143C32.0001 9.14285 32.0001 0 32.0001 0Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M23.7776 4.57143C22.2948 4.57143 21.0249 5.4592 20.4512 6.72914C20.9098 6.5216 21.415 6.4 21.9504 6.4C23.9686 6.4 25.6048 8.03748 25.6048 10.0571C25.6048 10.5929 25.4833 11.0985 25.2768 11.5566C26.5458 10.9833 27.432 9.71245 27.432 8.22857C27.432 6.20891 25.7958 4.57143 23.7776 4.57143Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M6.42017 25.6C6.42017 25.6 6.42017 21.9428 7.33377 21.0285C8.24738 20.1142 19.2116 10.9723 20.1243 11.8857C21.037 12.799 11.9009 23.7714 10.9873 24.6857C10.0737 25.6 6.42017 25.6 6.42017 25.6Z" fill="#6842C2"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/smile.svg b/src/assets/images/icons/smile.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..9b8f7f5[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/smile.svg[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M16 32C24.8366 32 32 24.8366 32 16C32 7.16344 24.8366 0 16 0C7.16344 0 0 7.16344 0 16C0 24.8366 7.16344 32 16 32Z" fill="#FFCC4D"/>[m
[32m+[m[32m<path d="M15.9999 18.6667C12.7795 18.6667 10.6426 18.2916 7.99995 17.7778C7.39639 17.6613 6.22217 17.7778 6.22217 19.5556C6.22217 23.1111 10.3066 27.5556 15.9999 27.5556C21.6924 27.5556 25.7777 23.1111 25.7777 19.5556C25.7777 17.7778 24.6035 17.6604 23.9999 17.7778C21.3573 18.2916 19.2204 18.6667 15.9999 18.6667Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M8 19.5556C8 19.5556 10.6667 20.4444 16 20.4444C21.3333 20.4444 24 19.5556 24 19.5556C24 19.5556 22.2222 24.1111 16 24.1111C9.77778 24.1111 8 19.5556 8 19.5556Z" fill="white"/>[m
[32m+[m[32m<path d="M23.699 11.4658C23.699 12.9893 22.8652 14.2249 21.8359 14.2249C20.8075 14.2249 19.9728 12.9893 19.9728 11.4658C19.9728 9.94224 20.8066 8.70668 21.8359 8.70668C22.8652 8.70668 23.699 9.94224 23.699 11.4658ZM8.43945 11.4658C8.43945 12.9893 9.27323 14.2249 10.3026 14.2249C11.331 14.2249 12.1657 12.9893 12.1657 11.4658C12.1657 9.94224 11.3319 8.70668 10.3026 8.70668C9.27323 8.70668 8.43945 9.94224 8.43945 11.4658Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M30.9734 7.55733C30.8214 7.40977 29.8472 7.80088 28.8614 7.29866C26.8277 6.26221 21.6881 5.26221 18.3423 7.63288C17.9841 7.88621 16.4872 7.92888 16.0686 7.9111C15.6499 7.92977 14.153 7.8871 13.7948 7.63288C10.4499 5.26221 5.31033 6.26221 3.27656 7.29866C2.29078 7.80088 1.31656 7.40977 1.16456 7.55733C0.945 7.76977 0.945 8.62044 1.16544 8.83377C1.38411 9.04621 2.47833 9.29155 2.69611 9.92888C2.91567 10.5671 2.91744 14.336 4.66322 15.6391C6.29789 16.8587 10.1112 17.2258 12.5281 15.8507C14.6366 14.6515 14.5628 12.1271 14.9494 10.6231C15.0872 10.0871 15.4757 9.81688 16.0694 9.81688C16.6632 9.81688 17.0517 10.0871 17.1894 10.6231C17.5761 12.1262 17.5014 14.6515 19.6108 15.8507C22.0277 17.2249 25.841 16.8578 27.4748 15.6391C29.2214 14.3369 29.2232 10.5671 29.4419 9.92888C29.6597 9.29155 30.7539 9.04532 30.9726 8.83377C31.193 8.62044 31.1939 7.76977 30.9734 7.55733ZM13.0232 10.8018C12.9548 11.784 12.7797 13.6702 11.6037 14.3395C10.8828 14.7502 9.94322 15 8.96011 15H8.95922C7.87033 15 6.361 14.6915 5.77078 14.2515C5.033 13.7013 4.75211 11.4364 4.64633 10.5893C4.57878 10.0498 4.39744 8.73155 4.99122 8.52888C5.93344 8.20799 7.24811 7.95732 8.593 7.95732C9.209 7.95732 11.2783 7.99555 12.2863 8.61599C13.1797 9.16444 13.0614 10.2613 13.0232 10.8018ZM27.4926 10.5769C27.3868 11.4249 27.1059 13.7013 26.3681 14.2515C25.7779 14.6915 24.2686 15 23.1797 15H23.1788C22.1948 15 21.2561 14.7502 20.5343 14.3395C19.3583 13.6711 19.1832 11.7964 19.1148 10.8142C19.0774 10.2738 18.9583 9.16888 19.8517 8.62044C20.8606 7.99999 22.929 7.95732 23.545 7.95732C24.8899 7.95732 26.2037 8.20355 27.1468 8.52444C27.7406 8.7271 27.5601 10.0373 27.4926 10.5769Z" fill="#6842C2"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/study.svg b/src/assets/images/icons/study.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..2a459bb[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/study.svg[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M5 6H14C15.5913 6 17.1174 6.65555 18.2426 7.82245C19.3679 8.98934 20 10.572 20 12.2222V34C20 32.7623 19.5259 31.5753 18.682 30.7002C17.8381 29.825 16.6935 29.3333 15.5 29.3333H5V6Z" stroke="white" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M35 6H26C24.4087 6 22.8826 6.65555 21.7574 7.82245C20.6321 8.98934 20 10.572 20 12.2222V34C20 32.7623 20.4741 31.5753 21.318 30.7002C22.1619 29.825 23.3065 29.3333 24.5 29.3333H35V6Z" stroke="white" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/success-check-icon.svg b/src/assets/images/icons/success-check-icon.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..eeb8239[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/success-check-icon.svg[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m<svg width="120" height="120" viewBox="0 0 120 120" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M80 105H40C26.195 105 15 93.805 15 80V40C15 26.195 26.195 15 40 15H80C93.805 15 105 26.195 105 40V80C105 93.805 93.805 105 80 105Z" stroke="#04D361" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M71.3344 55L57.1694 69.165L48.6694 60.665" stroke="#04D361" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/warning.svg b/src/assets/images/icons/warning.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..240d146[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/warning.svg[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M16 15.9999V9.99988" stroke="#8257E5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M16 21.3333L16 21.3333" stroke="#8257E5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M4 19.1745V12.8252C4 10.6892 5.136 8.71453 6.98133 7.63986L12.9813 4.14786C14.8467 3.06253 17.152 3.06253 19.0173 4.14786L25.0173 7.63986C26.864 8.71453 28 10.6892 28 12.8252V19.1745C28 21.3105 26.864 23.2852 25.0187 24.3599L19.0187 27.8519C17.1533 28.9372 14.848 28.9372 12.9827 27.8519L6.98267 24.3599C5.136 23.2852 4 21.3105 4 19.1745V19.1745Z" stroke="#8257E5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/icons/whatsapp.svg b/src/assets/images/icons/whatsapp.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..e56ee7e[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/icons/whatsapp.svg[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M10.0025 0H9.9975C4.48375 0 0 4.485 0 10C0 12.1875 0.705 14.215 1.90375 15.8612L0.6575 19.5763L4.50125 18.3475C6.0825 19.395 7.96875 20 10.0025 20C15.5162 20 20 15.5138 20 10C20 4.48625 15.5162 0 10.0025 0Z" fill="#4CAF50"/>[m
[32m+[m[32m<path d="M15.8212 14.1212C15.5799 14.8025 14.6224 15.3675 13.8587 15.5325C13.3362 15.6437 12.6537 15.7325 10.3562 14.78C7.41744 13.5625 5.52494 10.5762 5.37744 10.3825C5.23619 10.1887 4.18994 8.80123 4.18994 7.36623C4.18994 5.93123 4.91869 5.23248 5.21244 4.93248C5.45369 4.68623 5.85244 4.57373 6.23494 4.57373C6.35869 4.57373 6.46994 4.57998 6.56994 4.58498C6.86369 4.59748 7.01119 4.61498 7.20494 5.07873C7.44619 5.65998 8.03369 7.09498 8.10369 7.24248C8.17494 7.38998 8.24619 7.58998 8.14619 7.78373C8.05244 7.98373 7.96994 8.07248 7.82244 8.24248C7.67494 8.41248 7.53494 8.54248 7.38744 8.72498C7.25244 8.88373 7.09994 9.05373 7.26994 9.34748C7.43994 9.63498 8.02744 10.5937 8.89244 11.3637C10.0087 12.3575 10.9137 12.675 11.2374 12.81C11.4787 12.91 11.7662 12.8862 11.9424 12.6987C12.1662 12.4575 12.4424 12.0575 12.7237 11.6637C12.9237 11.3812 13.1762 11.3462 13.4412 11.4462C13.7112 11.54 15.1399 12.2462 15.4337 12.3925C15.7274 12.54 15.9212 12.61 15.9924 12.7337C16.0624 12.8575 16.0624 13.4387 15.8212 14.1212Z" fill="#FAFAFA"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/landing.svg b/src/assets/images/landing.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..15fbdad[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/landing.svg[m
[36m@@ -0,0 +1,265 @@[m
[32m+[m[32m<svg width="599" height="352" viewBox="0 0 599 352" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M305.753 349.21C306.966 342.846 310.732 337.011 316.02 333.286" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M305.589 351C305.817 345.686 307.868 332.893 312.719 324.885" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M305.662 350.343C306.501 340.865 306.428 330.391 304.95 320.986" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M316.793 330.811L316.793 330.811C316.746 330.894 316.699 330.977 316.652 331.061C315.993 332.226 315.334 333.389 314.522 334.489C314.735 334.418 314.96 334.332 315.194 334.238C315.312 334.191 315.434 334.141 315.558 334.091C315.815 333.986 316.08 333.878 316.331 333.784C316.704 333.645 317.091 333.52 317.452 333.467L317.452 333.467C319.126 333.221 320.835 333.288 322.477 333.502L322.477 333.502C323.758 333.669 325.036 333.923 326.293 334.173C326.701 334.254 327.108 334.335 327.511 334.412C329.171 334.729 330.804 334.992 332.45 335.014L332.45 335.014C333.384 335.027 334.376 334.905 335.214 334.583C336.049 334.261 336.693 333.756 337.019 333.019L337.02 333.018C337.559 331.812 337.004 330.222 335.88 329.287L335.879 329.286C334.766 328.353 333.24 327.982 331.665 327.83L331.665 327.83C331.092 327.774 330.519 327.745 329.932 327.715C329.715 327.704 329.497 327.693 329.276 327.681C328.466 327.635 327.636 327.57 326.814 327.413L326.813 327.412C326.322 327.317 325.837 327.191 325.366 327.065C325.291 327.045 325.217 327.025 325.144 327.005C324.747 326.898 324.361 326.794 323.975 326.706C323.062 326.497 322.206 326.391 321.368 326.554L316.793 330.811ZM316.793 330.811L316.794 330.809M316.793 330.811L316.794 330.809M316.794 330.809C317.915 328.811 319.359 326.945 321.368 326.554L316.794 330.809Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M312.107 326.007C312.732 325.484 313.324 324.836 313.937 324.143C314.017 324.053 314.096 323.963 314.176 323.872C314.913 323.036 315.687 322.157 316.547 321.472C318.904 319.588 321.759 318.133 324.835 317.895L312.107 326.007ZM312.107 326.007C312.138 325.827 312.185 325.618 312.249 325.381C312.468 324.575 312.856 323.547 313.3 322.485C313.973 320.877 314.75 319.246 315.223 318.253C315.375 317.934 315.496 317.681 315.572 317.515C317.131 314.13 319.537 310.952 322.939 309.999L322.939 309.999C324.383 309.595 325.886 309.611 327.457 309.751C327.993 309.799 328.546 309.862 329.107 309.926C330.153 310.047 331.228 310.17 332.273 310.2L332.275 310.2C332.778 310.212 333.29 310.204 333.79 310.196C334.034 310.192 334.275 310.188 334.51 310.187C335.242 310.182 335.95 310.2 336.645 310.304C338.032 310.513 339.352 311.134 340 312.229L340.001 312.23C340.501 313.07 340.528 314.097 340.185 315.086C339.841 316.077 339.138 316.983 338.257 317.541C336.447 318.688 334.122 318.77 331.841 318.517C331.18 318.444 330.544 318.35 329.899 318.254C329.409 318.182 328.913 318.109 328.397 318.043C327.234 317.895 326.044 317.799 324.836 317.894L312.107 326.007ZM312.085 326.594C312.085 326.594 312.085 326.593 312.085 326.592L312.085 326.594Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M307.229 311.871L307.229 311.872C307.522 313.665 307.224 315.507 306.662 317.283C306.622 317.41 306.574 317.57 306.518 317.753C306.35 318.313 306.114 319.093 305.824 319.831C305.632 320.319 305.427 320.759 305.218 321.081C305.114 321.242 305.018 321.358 304.935 321.434C304.85 321.511 304.802 321.525 304.793 321.527L304.792 321.527C304.688 321.547 304.477 321.517 304.14 321.349C303.821 321.19 303.464 320.945 303.102 320.659C302.38 320.089 301.702 319.404 301.373 319.061C300.368 318.002 299.568 316.755 299.074 315.392L299.073 315.39C298.495 313.816 298.295 312.134 298.095 310.381C298.091 310.343 298.087 310.304 298.082 310.266C297.889 308.569 297.689 306.807 297.106 305.134L297.106 305.134C296.443 303.239 295.314 301.545 294.232 299.922C293.948 299.496 293.667 299.075 293.399 298.656C292.084 296.604 290.971 294.409 290.988 292.108C291.005 289.802 292.47 287.482 294.57 287.109L294.571 287.109C295.956 286.86 297.429 287.442 298.648 288.367L298.649 288.367C300.372 289.668 301.63 291.57 302.168 293.67C302.491 294.941 302.554 296.264 302.616 297.647L302.618 297.703C302.679 299.05 302.741 300.455 303.079 301.821C303.498 303.534 304.329 305.106 305.126 306.612C305.186 306.727 305.247 306.841 305.307 306.955C306.168 308.589 306.952 310.159 307.229 311.871Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M305.57 349.448C304.95 341.075 302.798 331.615 298.121 324.648" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M296.993 318.35L296.993 318.352C297.663 320.22 298.076 322.177 298.421 324.149L298.422 324.151C298.44 324.255 298.472 324.388 298.503 324.52C298.515 324.571 298.526 324.621 298.537 324.669C298.581 324.859 298.62 325.052 298.642 325.236C298.663 325.424 298.662 325.573 298.64 325.681C298.62 325.784 298.589 325.81 298.58 325.816L298.58 325.816C298.576 325.82 298.539 325.846 298.411 325.827C298.282 325.808 298.116 325.749 297.925 325.65C297.546 325.456 297.175 325.165 296.987 324.998C296.651 324.69 296.353 324.333 296.054 323.946C295.949 323.809 295.839 323.663 295.728 323.514C295.535 323.258 295.336 322.991 295.135 322.744L295.135 322.743C292.423 319.409 288.14 317.806 284.003 317.213C281.933 316.916 279.851 316.838 277.785 316.805C277.239 316.797 276.695 316.791 276.153 316.785C274.634 316.769 273.128 316.754 271.622 316.67L271.619 316.67C270.682 316.624 269.838 316.522 269.213 316.078C268.397 315.494 268.057 314.299 268.307 313.209C268.556 312.131 269.299 311.177 270.215 310.39L270.215 310.39C272.238 308.651 274.925 307.774 277.636 307.597C280.348 307.419 283.087 307.907 285.762 308.631L285.762 308.631C288.34 309.328 290.853 310.264 292.829 311.927C294.782 313.578 296.118 315.883 296.993 318.35Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M305.397 350.343C305.033 343.038 301.75 335.915 296.443 330.893" stroke="#04D361" stroke-width="0.779" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M293.663 327.061C291.828 326.085 289.75 325.449 287.7 324.874L293.663 327.061ZM293.663 327.061C293.802 327.135 293.927 327.202 294.052 327.277L294.051 327.277L294.063 327.284C294.861 327.735 295.393 328.52 295.979 329.414C296.046 329.517 296.15 329.726 296.29 330.028C296.333 330.119 296.378 330.218 296.425 330.32C296.524 330.536 296.631 330.77 296.74 330.996C296.773 331.065 296.807 331.135 296.841 331.204C294.373 330.528 291.657 330.553 289.281 330.576L289.253 330.576C289.253 330.576 289.253 330.576 289.253 330.576M293.663 327.061L289.253 330.576M289.253 330.576C286.003 330.604 282.752 331.208 279.713 332.381L279.711 332.382C279.308 332.539 278.915 332.702 278.527 332.863C277.049 333.477 275.655 334.055 274.149 334.138C273.65 334.162 273.118 334.09 272.689 333.909C272.265 333.729 271.983 333.462 271.872 333.11C271.696 332.534 272 331.853 272.515 331.166L272.515 331.166M289.253 330.576L272.515 331.166M272.515 331.166L272.516 331.164M272.515 331.166L272.516 331.164M272.516 331.164C273.534 329.793 274.848 328.669 276.205 327.512M272.516 331.164L276.205 327.512M276.205 327.512C277.974 326.008 279.727 324.562 281.83 324.153L276.205 327.512ZM297.511 331.408C297.296 331.019 297.077 330.542 296.882 330.117C296.688 329.696 296.518 329.325 296.397 329.14C295.823 328.264 295.23 327.369 294.309 326.848C294.172 326.766 294.036 326.693 293.899 326.62L297.511 331.408ZM281.83 324.153C283.719 323.786 285.692 324.311 287.7 324.874L281.83 324.153Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M527.582 320.671L527.582 320.672C526.511 321.733 525.19 322.346 523.884 322.858C523.565 322.984 523.248 323.103 522.935 323.22C521.942 323.593 520.987 323.952 520.1 324.458C517.596 325.89 515.788 328.472 514.701 331.246C514.688 331.279 514.675 331.312 514.662 331.345C514.255 332.391 513.668 333.894 513.343 335.367C513.176 336.127 513.083 336.857 513.113 337.497C513.143 338.139 513.294 338.649 513.574 339.014L513.576 339.016C514.21 339.851 515.327 340.025 516.712 339.797C518.075 339.571 519.507 338.983 520.543 338.547L520.544 338.547C520.923 338.388 521.307 338.221 521.696 338.051C523.704 337.177 525.835 336.249 528.055 336.153C530.458 336.047 532.706 336.914 534.765 337.741L534.821 337.763C536.891 338.594 538.907 339.403 541.046 339.412C543.19 339.421 545.479 338.399 546.453 336.506C546.862 335.705 547.028 334.806 547.208 333.832C547.241 333.655 547.274 333.476 547.309 333.294C547.53 332.152 547.83 330.932 548.706 329.962L548.707 329.962C549.605 328.968 550.785 328.568 551.978 328.401C552.836 328.281 553.754 328.277 554.608 328.273C554.92 328.272 555.223 328.27 555.512 328.263L555.513 328.263C557.912 328.21 560.378 327.563 562.233 326.006L562.234 326.005C564.098 324.45 565.189 321.872 564.599 319.728L564.598 319.728C564.11 317.953 562.627 316.687 561.055 315.419L561.055 315.418C558.888 313.665 556.62 311.992 554.009 312.168C553.079 312.235 552.162 312.534 551.175 312.856L551.102 312.88C550.11 313.204 549.044 313.545 547.937 313.585C546.54 313.634 545.277 313.207 544.116 312.615C543.236 312.165 542.383 311.603 541.572 311.068C541.326 310.906 541.084 310.746 540.846 310.592C538.757 309.246 536.312 308.266 534.204 309.28L527.582 320.671ZM527.582 320.671C529.089 319.17 529.766 317.087 530.381 315.192M527.582 320.671L530.381 315.192M530.381 315.192C530.468 314.925 530.553 314.661 530.64 314.404M530.381 315.192L530.64 314.404M530.64 314.404C531.36 312.259 532.383 310.159 534.203 309.28L530.64 314.404Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M513.615 339.072C525.752 328.635 539.913 321.723 555.196 318.783" stroke="white" stroke-width="0.7047" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M525.615 323.02C525.898 319.577 525.251 315.989 526.381 312.729C528.396 306.921 535.381 303.89 537.132 298C539.229 290.96 532.828 283.774 533.941 276.515C534.406 273.456 536.166 270.762 537.26 267.868C538.354 264.973 538.637 261.348 536.512 259.093C534.287 256.737 530.248 257.011 527.603 258.892C524.959 260.773 523.436 263.823 522.196 266.827C520.965 269.831 519.88 272.972 517.792 275.465C513.989 280.003 507.15 281.994 505.071 287.536C502.956 293.179 506.959 299.151 507.67 305.132C508.208 309.661 506.831 314.172 505.6 318.573C504.378 322.974 503.293 327.631 504.415 332.05C505.91 337.94 511.208 341.693 516.287 337.912C521.311 334.196 525.096 329.493 525.615 323.02Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M513.068 339.355C511.053 318.335 515.667 295.535 526.445 277.382" stroke="white" stroke-width="1.1364" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M499.646 331.429C497.43 328.297 496.162 324.38 493.153 321.997C489.706 319.257 484.928 319.23 480.551 318.874C476.165 318.518 471.223 317.276 469.19 313.368C468.077 311.222 468.077 308.675 467.302 306.392C466.445 303.881 464.694 301.799 463.463 299.452C462.241 297.106 461.594 294.12 463.016 291.883C464.457 289.618 467.612 288.951 470.193 289.682C472.773 290.412 474.889 292.23 476.822 294.092C478.755 295.955 480.643 297.946 483.023 299.169C486.971 301.187 491.658 300.813 496.089 300.621C500.521 300.438 505.354 300.621 508.783 303.452C511.6 305.78 512.886 309.442 514.035 312.921C515.694 317.897 517.39 322.855 519.004 327.85C519.998 330.918 521.895 335.62 518.704 338.031C513.077 342.277 502.892 336.004 499.646 331.429Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M516.925 338.214C509.886 321.851 494.986 307.917 477.15 301.772" stroke="white" stroke-width="0.8174" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M111.359 337.462C113.374 334.458 114.541 330.605 117.249 328.404C120.359 325.893 124.635 326.222 128.574 326.176C132.505 326.14 136.945 325.254 138.805 321.455C139.827 319.374 139.836 316.799 140.556 314.543C141.34 312.069 142.927 310.096 144.049 307.814C145.161 305.531 145.763 302.563 144.514 300.198C143.237 297.806 140.419 296.902 138.103 297.45C135.787 297.998 133.872 299.678 132.131 301.413C130.389 303.148 128.684 305.02 126.532 306.079C122.976 307.832 118.781 307.101 114.805 306.581C110.83 306.07 106.498 305.905 103.407 308.508C100.863 310.653 99.6868 314.26 98.6199 317.684C97.0971 322.588 95.5378 327.473 94.0515 332.395C93.1396 335.426 91.398 340.028 94.243 342.703C99.2308 347.433 108.413 341.845 111.359 337.462Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M95.8204 343.05C102.258 327.035 115.717 314.059 131.748 309.156" stroke="white" stroke-width="0.7781" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M86.9937 329.053C86.7749 325.884 87.2855 322.588 86.3828 319.584C84.7688 314.242 79.17 311.457 77.7657 306.042C76.0879 299.568 81.2125 292.957 80.328 286.274C79.9542 283.461 78.5408 280.987 77.6654 278.32C76.79 275.654 76.5621 272.321 78.2672 270.249C80.0545 268.075 83.2825 268.331 85.4071 270.066C87.5226 271.801 88.7445 274.604 89.7384 277.362C90.7232 280.119 91.5986 283.014 93.2673 285.306C96.3129 289.479 101.793 291.305 103.453 296.409C105.149 301.605 101.939 307.092 101.374 312.598C100.945 316.771 102.048 320.917 103.033 324.962C104.018 329.007 104.884 333.289 103.982 337.362C102.787 342.777 98.5378 346.228 94.4709 342.758C90.4496 339.334 87.4132 335.006 86.9937 329.053Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M97.0423 344.073C98.6563 324.743 94.9542 303.769 86.328 287.068" stroke="white" stroke-width="0.9754" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M35.2001 313.594C34.4615 316.762 35.9934 320.588 38.4098 322.962C40.8263 325.345 43.963 326.45 46.9448 326.715L54.7503 329.29L55.1443 328.982C55.1442 328.982 55.1441 328.982 55.144 328.982C54.0833 327.624 52.6907 326.998 51.2498 326.679C50.2109 326.449 49.1019 326.371 48.0674 326.299C47.6964 326.273 47.3351 326.248 46.99 326.217L46.989 326.217C44.0938 325.96 41.076 324.889 38.7609 322.606L38.7602 322.605C36.4324 320.318 34.9983 316.662 35.687 313.707M35.2001 313.594L35.6869 313.708C35.6869 313.708 35.6869 313.708 35.687 313.707M35.2001 313.594L35.687 313.707C35.687 313.707 35.687 313.707 35.687 313.707M35.2001 313.594C35.811 310.991 37.7351 309.275 39.5679 307.713C42.112 305.54 44.9843 303.266 48.4038 303.75C49.608 303.919 50.7886 304.423 51.9675 304.927C53.2166 305.46 54.4638 305.993 55.7351 306.124M35.687 313.707C36.2557 311.286 38.0473 309.666 39.8921 308.094L39.8926 308.093C42.4677 305.894 45.1705 303.798 48.3337 304.245L48.3345 304.246C49.4717 304.405 50.5983 304.886 51.8004 305.399L51.8766 305.432C53.0787 305.945 54.3604 306.485 55.6836 306.622M55.6836 306.622L55.7351 306.124M55.6836 306.622C57.3557 306.795 58.8621 306.318 60.2444 305.609C61.292 305.072 62.3029 304.382 63.2673 303.723C63.5615 303.523 63.8514 303.325 64.1367 303.135L64.1377 303.134C66.6181 301.475 69.5593 300.325 72.1756 301.879M55.6836 306.622C55.6836 306.622 55.6836 306.622 55.6837 306.622L55.7351 306.124M55.7351 306.124C58.4512 306.406 60.7495 304.837 62.9669 303.323C63.2657 303.119 63.5631 302.916 63.8598 302.719C66.3583 301.048 69.5406 299.733 72.4312 301.449M72.1756 301.879C72.1754 301.879 72.1751 301.879 72.1749 301.879L72.4312 301.449M72.1756 301.879C73.3056 302.554 74.207 303.636 74.9435 304.94C75.6795 306.243 76.2346 307.738 76.686 309.203L76.6864 309.204C76.7997 309.568 76.9115 309.939 77.0244 310.313C77.8118 312.923 78.6555 315.719 80.47 317.811M72.1756 301.879C72.1757 301.879 72.1758 301.879 72.1759 301.879L72.4312 301.449M72.4312 301.449C74.8932 302.919 76.2519 306.097 77.1638 309.056L80.47 317.811M80.47 317.811C81.7582 319.303 83.3399 320.222 84.927 321.015C85.3151 321.209 85.7009 321.394 86.0832 321.578C87.2876 322.156 88.4563 322.718 89.5443 323.473L89.5449 323.474C92.646 325.62 94.9129 329.293 96.2977 333.165C96.3159 333.216 96.3345 333.268 96.3534 333.321C96.8658 334.759 97.6075 336.839 98.036 338.867C98.258 339.918 98.3914 340.934 98.3705 341.825C98.3496 342.722 98.1733 343.441 97.8256 343.944L97.8244 343.946C97.0647 345.054 95.7107 345.2 94.0268 344.783C92.3665 344.372 90.6132 343.462 89.3529 342.792L89.3526 342.791C88.9004 342.551 88.4421 342.301 87.9795 342.048C86.9796 341.501 85.9599 340.943 84.9404 340.461C83.4397 339.75 81.885 339.175 80.2748 338.992L80.2747 338.992C77.391 338.666 74.7013 339.658 72.2398 340.622L72.1666 340.65C69.6995 341.617 67.292 342.56 64.7029 342.396C62.11 342.232 59.2544 340.675 57.9852 337.937L80.47 317.811ZM80.47 317.811L80.8477 317.483L80.4692 317.81C80.4695 317.811 80.4697 317.811 80.47 317.811ZM89.1182 343.233C88.6538 342.987 88.1889 342.732 87.723 342.478C85.2712 341.136 82.7931 339.781 80.2185 339.489C77.4738 339.179 74.8932 340.119 72.4221 341.087L72.3033 341.134C69.8697 342.087 67.3721 343.066 64.6713 342.895C61.9266 342.722 58.8902 341.078 57.5315 338.147L89.1182 343.233ZM89.1182 343.233C91.6258 344.566 96.3401 346.995 98.2368 344.228L89.1182 343.233Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M97.6989 343.854C82.8265 328.824 65.5833 318.397 47.0908 313.247" stroke="white" stroke-width="0.8986" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M523.847 71.5967C523.847 74.4912 521.504 76.8379 518.613 76.8379C515.723 76.8379 513.379 74.4912 513.379 71.5967C513.379 68.7021 515.723 66.3554 518.613 66.3554C521.495 66.3554 523.847 68.7021 523.847 71.5967Z" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M522.397 75.2126L526.09 78.9192" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M319.068 1L324.575 6.51422" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M324.575 1L319.068 6.51422" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M397.995 318.459L403.501 323.974" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M403.501 318.459L397.995 323.974" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M48.5352 245.386V253.184" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M52.4387 249.284H44.6423" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M31.5993 185.515C31.5993 188.126 29.4838 190.254 26.8668 190.254C24.2588 190.254 22.1342 188.135 22.1342 185.515C22.1342 182.903 24.2497 180.776 26.8668 180.776C29.4838 180.785 31.5993 182.903 31.5993 185.515Z" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M228.027 300.134C228.027 302.746 225.911 304.873 223.294 304.873C220.687 304.873 218.562 302.755 218.562 300.134C218.562 297.523 220.677 295.395 223.294 295.395C225.911 295.404 228.027 297.523 228.027 300.134Z" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M540.339 214.786C540.339 217.398 538.224 219.525 535.607 219.525C532.999 219.525 530.874 217.407 530.874 214.786C530.874 212.175 532.99 210.047 535.607 210.047C538.224 210.056 540.339 212.175 540.339 214.786Z" stroke="#04D361" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M2.928 102.464C2.928 103.137 2.38383 103.68 1.714 103.68C1.04417 103.68 0.5 103.137 0.5 102.464C0.5 101.792 1.04417 101.248 1.714 101.248C2.38383 101.248 2.928 101.792 2.928 102.464Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M14.9008 102.464C14.9008 103.137 14.3566 103.68 13.6868 103.68C13.0169 103.68 12.4728 103.137 12.4728 102.464C12.4728 101.792 13.017 101.248 13.6868 101.248C14.3566 101.248 14.9008 101.792 14.9008 102.464Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M26.8644 102.464C26.8644 103.137 26.3202 103.68 25.6504 103.68C24.9806 103.68 24.4364 103.137 24.4364 102.464C24.4364 101.792 24.9806 101.248 25.6504 101.248C26.3202 101.248 26.8644 101.792 26.8644 102.464Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M38.8371 102.464C38.8371 103.137 38.2929 103.68 37.6231 103.68C36.9532 103.68 36.4091 103.137 36.4091 102.464C36.4091 101.792 36.9532 101.248 37.6231 101.248C38.2929 101.248 38.8371 101.792 38.8371 102.464Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M50.8006 102.464C50.8006 103.137 50.2564 103.68 49.5866 103.68C48.9168 103.68 48.3726 103.137 48.3726 102.464C48.3726 101.792 48.9168 101.248 49.5866 101.248C50.2564 101.248 50.8006 101.792 50.8006 102.464Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M62.7732 102.464C62.7732 103.137 62.229 103.68 61.5592 103.68C60.8894 103.68 60.3452 103.137 60.3452 102.464C60.3452 101.792 60.8894 101.248 61.5592 101.248C62.229 101.248 62.7732 101.792 62.7732 102.464Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M2.928 114.444C2.928 115.117 2.38383 115.66 1.714 115.66C1.04417 115.66 0.5 115.117 0.5 114.444C0.5 113.772 1.04417 113.228 1.714 113.228C2.38383 113.228 2.928 113.772 2.928 114.444Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M14.9008 114.444C14.9008 115.117 14.3566 115.66 13.6868 115.66C13.0169 115.66 12.4728 115.117 12.4728 114.444C12.4728 113.772 13.0169 113.228 13.6868 113.228C14.3566 113.228 14.9008 113.772 14.9008 114.444Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M26.8644 114.444C26.8644 115.117 26.3202 115.66 25.6504 115.66C24.9806 115.66 24.4364 115.117 24.4364 114.444C24.4364 113.772 24.9806 113.228 25.6504 113.228C26.3202 113.228 26.8644 113.772 26.8644 114.444Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M38.8371 114.444C38.8371 115.117 38.2929 115.66 37.6231 115.66C36.9532 115.66 36.4091 115.117 36.4091 114.444C36.4091 113.772 36.9532 113.228 37.6231 113.228C38.2929 113.228 38.8371 113.772 38.8371 114.444Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M50.8006 114.444C50.8006 115.117 50.2564 115.66 49.5866 115.66C48.9168 115.66 48.3726 115.117 48.3726 114.444C48.3726 113.772 48.9168 113.228 49.5866 113.228C50.2564 113.228 50.8006 113.772 50.8006 114.444Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M62.7732 114.444C62.7732 115.117 62.229 115.66 61.5592 115.66C60.8894 115.66 60.3452 115.117 60.3452 114.444C60.3452 113.772 60.8894 113.228 61.5592 113.228C62.229 113.228 62.7732 113.772 62.7732 114.444Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M2.928 126.433C2.928 127.106 2.38383 127.65 1.714 127.65C1.04417 127.65 0.5 127.106 0.5 126.433C0.5 125.761 1.04417 125.217 1.714 125.217C2.38383 125.217 2.928 125.761 2.928 126.433Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M14.9008 126.433C14.9008 127.106 14.3566 127.65 13.6868 127.65C13.0169 127.65 12.4728 127.106 12.4728 126.433C12.4728 125.761 13.017 125.217 13.6868 125.217C14.3566 125.217 14.9008 125.761 14.9008 126.433Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M26.8644 126.433C26.8644 127.106 26.3202 127.65 25.6504 127.65C24.9806 127.65 24.4364 127.106 24.4364 126.433C24.4364 125.761 24.9806 125.217 25.6504 125.217C26.3202 125.217 26.8644 125.761 26.8644 126.433Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M38.8371 126.433C38.8371 127.106 38.2929 127.65 37.6231 127.65C36.9532 127.65 36.4091 127.106 36.4091 126.433C36.4091 125.761 36.9532 125.217 37.6231 125.217C38.2929 125.217 38.8371 125.761 38.8371 126.433Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M50.8006 126.433C50.8006 127.106 50.2564 127.65 49.5866 127.65C48.9168 127.65 48.3726 127.106 48.3726 126.433C48.3726 125.761 48.9168 125.217 49.5866 125.217C50.2564 125.217 50.8006 125.761 50.8006 126.433Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M62.7732 126.433C62.7732 127.106 62.229 127.65 61.5592 127.65C60.8894 127.65 60.3452 127.106 60.3452 126.433C60.3452 125.761 60.8894 125.217 61.5592 125.217C62.229 125.217 62.7732 125.761 62.7732 126.433Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M2.928 138.413C2.928 139.086 2.38383 139.63 1.714 139.63C1.04417 139.63 0.5 139.086 0.5 138.413C0.5 137.741 1.04417 137.197 1.714 137.197C2.38383 137.197 2.928 137.741 2.928 138.413Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M14.9008 138.413C14.9008 139.086 14.3566 139.63 13.6868 139.63C13.017 139.63 12.4728 139.086 12.4728 138.413C12.4728 137.741 13.017 137.197 13.6868 137.197C14.3566 137.197 14.9008 137.741 14.9008 138.413Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M26.8644 138.413C26.8644 139.086 26.3202 139.63 25.6504 139.63C24.9806 139.63 24.4364 139.086 24.4364 138.413C24.4364 137.741 24.9806 137.197 25.6504 137.197C26.3202 137.197 26.8644 137.741 26.8644 138.413Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M38.8371 138.413C38.8371 139.086 38.2929 139.63 37.6231 139.63C36.9532 139.63 36.4091 139.086 36.4091 138.413C36.4091 137.741 36.9532 137.197 37.6231 137.197C38.2929 137.197 38.8371 137.741 38.8371 138.413Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M50.8006 138.413C50.8006 139.086 50.2564 139.63 49.5866 139.63C48.9168 139.63 48.3726 139.086 48.3726 138.413C48.3726 137.741 48.9168 137.197 49.5866 137.197C50.2564 137.197 50.8006 137.741 50.8006 138.413Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M62.7732 138.413C62.7732 139.086 62.229 139.63 61.5592 139.63C60.8894 139.63 60.3452 139.086 60.3452 138.413C60.3452 137.741 60.8894 137.197 61.5592 137.197C62.229 137.197 62.7732 137.741 62.7732 138.413Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M187.624 328.189C187.624 328.862 187.08 329.406 186.41 329.406C185.74 329.406 185.196 328.862 185.196 328.189C185.196 327.517 185.74 326.973 186.41 326.973C187.08 326.973 187.624 327.517 187.624 328.189Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M199.596 328.189C199.596 328.862 199.052 329.406 198.382 329.406C197.713 329.406 197.168 328.862 197.168 328.189C197.168 327.517 197.713 326.973 198.382 326.973C199.052 326.973 199.596 327.517 199.596 328.189Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M211.56 328.189C211.56 328.862 211.016 329.406 210.346 329.406C209.676 329.406 209.132 328.862 209.132 328.189C209.132 327.517 209.676 326.973 210.346 326.973C211.016 326.973 211.56 327.517 211.56 328.189Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M223.533 328.189C223.533 328.862 222.988 329.406 222.319 329.406C221.649 329.406 221.105 328.862 221.105 328.189C221.105 327.517 221.649 326.973 222.319 326.973C222.988 326.973 223.533 327.517 223.533 328.189Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M235.496 328.189C235.496 328.862 234.952 329.406 234.282 329.406C233.612 329.406 233.068 328.862 233.068 328.189C233.068 327.517 233.612 326.973 234.282 326.973C234.952 326.973 235.496 327.517 235.496 328.189Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M187.624 340.178C187.624 340.851 187.08 341.395 186.41 341.395C185.74 341.395 185.196 340.851 185.196 340.178C185.196 339.506 185.74 338.962 186.41 338.962C187.08 338.962 187.624 339.506 187.624 340.178Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M199.596 340.178C199.596 340.851 199.052 341.395 198.382 341.395C197.713 341.395 197.168 340.851 197.168 340.178C197.168 339.506 197.713 338.962 198.382 338.962C199.052 338.962 199.596 339.506 199.596 340.178Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M211.56 340.178C211.56 340.851 211.016 341.395 210.346 341.395C209.676 341.395 209.132 340.851 209.132 340.178C209.132 339.506 209.676 338.962 210.346 338.962C211.016 338.962 211.56 339.506 211.56 340.178Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M223.533 340.178C223.533 340.851 222.988 341.395 222.319 341.395C221.649 341.395 221.105 340.851 221.105 340.178C221.105 339.506 221.649 338.962 222.319 338.962C222.988 338.962 223.533 339.506 223.533 340.178Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M235.496 340.178C235.496 340.851 234.952 341.395 234.282 341.395C233.612 341.395 233.068 340.851 233.068 340.178C233.068 339.506 233.612 338.962 234.282 338.962C234.952 338.962 235.496 339.506 235.496 340.178Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M490.93 28.3976C490.93 29.0701 490.386 29.614 489.716 29.614C489.046 29.614 488.502 29.0701 488.502 28.3976C488.502 27.7252 489.046 27.1813 489.716 27.1813C490.386 27.1813 490.93 27.7252 490.93 28.3976Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M502.894 28.3976C502.894 29.0701 502.35 29.614 501.68 29.614C501.01 29.614 500.466 29.0701 500.466 28.3976C500.466 27.7252 501.01 27.1813 501.68 27.1813C502.35 27.1813 502.894 27.7252 502.894 28.3976Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M514.866 28.3976C514.866 29.0701 514.322 29.614 513.652 29.614C512.983 29.614 512.438 29.0701 512.438 28.3976C512.438 27.7252 512.983 27.1813 513.652 27.1813C514.322 27.1813 514.866 27.7252 514.866 28.3976Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M490.93 40.3867C490.93 41.0592 490.386 41.6031 489.716 41.6031C489.046 41.6031 488.502 41.0591 488.502 40.3867C488.502 39.7143 489.046 39.1704 489.716 39.1704C490.386 39.1704 490.93 39.7143 490.93 40.3867Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M502.894 40.3868C502.894 41.0592 502.35 41.6031 501.68 41.6031C501.01 41.6031 500.466 41.0592 500.466 40.3868C500.466 39.7143 501.01 39.1704 501.68 39.1704C502.35 39.1704 502.894 39.7143 502.894 40.3868Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M514.866 40.3868C514.866 41.0592 514.322 41.6031 513.652 41.6031C512.983 41.6031 512.438 41.0592 512.438 40.3868C512.438 39.7143 512.983 39.1704 513.652 39.1704C514.322 39.1704 514.866 39.7143 514.866 40.3868Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M177.582 5.71634C177.582 6.38877 177.038 6.93268 176.368 6.93268C175.698 6.93268 175.154 6.38875 175.154 5.71634C175.154 5.04394 175.698 4.5 176.368 4.5C177.038 4.5 177.582 5.04392 177.582 5.71634Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M189.546 5.71634C189.546 6.38875 189.002 6.93268 188.332 6.93268C187.662 6.93268 187.118 6.38875 187.118 5.71634C187.118 5.04393 187.662 4.5 188.332 4.5C189.002 4.5 189.546 5.04393 189.546 5.71634Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M201.518 5.71634C201.518 6.38878 200.974 6.93268 200.304 6.93268C199.635 6.93268 199.09 6.38875 199.09 5.71634C199.09 5.04393 199.635 4.5 200.304 4.5C200.974 4.5 201.518 5.04391 201.518 5.71634Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M177.582 17.7054C177.582 18.3778 177.038 18.9218 176.368 18.9218C175.698 18.9218 175.154 18.3778 175.154 17.7054C175.154 17.033 175.698 16.4891 176.368 16.4891C177.038 16.4891 177.582 17.033 177.582 17.7054Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M189.546 17.7054C189.546 18.3779 189.001 18.9218 188.332 18.9218C187.662 18.9218 187.118 18.3779 187.118 17.7054C187.118 17.033 187.662 16.4891 188.332 16.4891C189.002 16.4891 189.546 17.033 189.546 17.7054Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M201.518 17.7054C201.518 18.3779 200.974 18.9218 200.304 18.9218C199.635 18.9218 199.09 18.3779 199.09 17.7054C199.09 17.033 199.635 16.4891 200.304 16.4891C200.974 16.4891 201.518 17.033 201.518 17.7054Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M598.5 190.4C598.5 191.072 597.956 191.616 597.286 191.616C596.616 191.616 596.072 191.072 596.072 190.4C596.072 189.728 596.616 189.184 597.286 189.184C597.956 189.184 598.5 189.728 598.5 190.4Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M598.5 202.389C598.5 203.061 597.956 203.605 597.286 203.605C596.616 203.605 596.072 203.061 596.072 202.389C596.072 201.717 596.616 201.173 597.286 201.173C597.956 201.173 598.5 201.717 598.5 202.389Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M598.5 214.369C598.5 215.041 597.956 215.585 597.286 215.585C596.616 215.585 596.072 215.041 596.072 214.369C596.072 213.697 596.616 213.153 597.286 213.153C597.956 213.153 598.5 213.697 598.5 214.369Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M598.5 226.358C598.5 227.031 597.956 227.574 597.286 227.574C596.616 227.574 596.072 227.031 596.072 226.358C596.072 225.686 596.616 225.142 597.286 225.142C597.956 225.142 598.5 225.686 598.5 226.358Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M598.5 238.338C598.5 239.011 597.956 239.554 597.286 239.554C596.616 239.554 596.072 239.011 596.072 238.338C596.072 237.666 596.616 237.122 597.286 237.122C597.956 237.122 598.5 237.666 598.5 238.338Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M598.5 250.327C598.5 251 597.956 251.544 597.286 251.544C596.616 251.544 596.072 251 596.072 250.327C596.072 249.655 596.616 249.111 597.286 249.111C597.956 249.111 598.5 249.655 598.5 250.327Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M598.5 262.307C598.5 262.98 597.956 263.523 597.286 263.523C596.616 263.523 596.072 262.98 596.072 262.307C596.072 261.635 596.616 261.091 597.286 261.091C597.956 261.091 598.5 261.635 598.5 262.307Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M586.527 190.4C586.527 191.072 585.983 191.616 585.313 191.616C584.643 191.616 584.099 191.072 584.099 190.4C584.099 189.728 584.643 189.184 585.313 189.184C585.983 189.184 586.527 189.728 586.527 190.4Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M586.527 202.389C586.527 203.061 585.983 203.605 585.313 203.605C584.643 203.605 584.099 203.061 584.099 202.389C584.099 201.717 584.643 201.173 585.313 201.173C585.983 201.173 586.527 201.717 586.527 202.389Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M586.527 214.369C586.527 215.041 585.983 215.585 585.313 215.585C584.643 215.585 584.099 215.041 584.099 214.369C584.099 213.697 584.643 213.153 585.313 213.153C585.983 213.153 586.527 213.697 586.527 214.369Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M586.527 226.358C586.527 227.031 585.983 227.574 585.313 227.574C584.643 227.574 584.099 227.031 584.099 226.358C584.099 225.686 584.643 225.142 585.313 225.142C585.983 225.142 586.527 225.686 586.527 226.358Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M586.527 238.338C586.527 239.011 585.983 239.554 585.313 239.554C584.643 239.554 584.099 239.011 584.099 238.338C584.099 237.666 584.643 237.122 585.313 237.122C585.983 237.122 586.527 237.666 586.527 238.338Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M586.527 250.327C586.527 251 585.983 251.544 585.313 251.544C584.643 251.544 584.099 251 584.099 250.327C584.099 249.655 584.643 249.111 585.313 249.111C585.983 249.111 586.527 249.655 586.527 250.327Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M586.527 262.307C586.527 262.98 585.983 263.523 585.313 263.523C584.643 263.523 584.099 262.98 584.099 262.307C584.099 261.635 584.643 261.091 585.313 261.091C585.983 261.091 586.527 261.635 586.527 262.307Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M574.564 190.4C574.564 191.072 574.02 191.616 573.35 191.616C572.68 191.616 572.136 191.072 572.136 190.4C572.136 189.728 572.68 189.184 573.35 189.184C574.02 189.184 574.564 189.728 574.564 190.4Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M574.564 202.389C574.564 203.061 574.02 203.605 573.35 203.605C572.68 203.605 572.136 203.061 572.136 202.389C572.136 201.717 572.68 201.173 573.35 201.173C574.02 201.173 574.564 201.717 574.564 202.389Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M574.564 214.369C574.564 215.041 574.02 215.585 573.35 215.585C572.68 215.585 572.136 215.041 572.136 214.369C572.136 213.697 572.68 213.153 573.35 213.153C574.02 213.153 574.564 213.697 574.564 214.369Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M574.564 226.358C574.564 227.031 574.02 227.574 573.35 227.574C572.68 227.574 572.136 227.031 572.136 226.358C572.136 225.686 572.68 225.142 573.35 225.142C574.02 225.142 574.564 225.686 574.564 226.358Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M574.564 238.338C574.564 239.011 574.02 239.554 573.35 239.554C572.68 239.554 572.136 239.011 572.136 238.338C572.136 237.666 572.68 237.122 573.35 237.122C574.02 237.122 574.564 237.666 574.564 238.338Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M574.564 250.327C574.564 251 574.02 251.544 573.35 251.544C572.68 251.544 572.136 251 572.136 250.327C572.136 249.655 572.68 249.111 573.35 249.111C574.02 249.111 574.564 249.655 574.564 250.327Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M574.564 262.307C574.564 262.98 574.02 263.523 573.35 263.523C572.68 263.523 572.136 262.98 572.136 262.307C572.136 261.635 572.68 261.091 573.35 261.091C574.02 261.091 574.564 261.635 574.564 262.307Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M562.591 190.4C562.591 191.072 562.047 191.616 561.377 191.616C560.707 191.616 560.163 191.072 560.163 190.4C560.163 189.728 560.707 189.184 561.377 189.184C562.047 189.184 562.591 189.728 562.591 190.4Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M562.591 202.389C562.591 203.061 562.047 203.605 561.377 203.605C560.707 203.605 560.163 203.061 560.163 202.389C560.163 201.717 560.707 201.173 561.377 201.173C562.047 201.173 562.591 201.717 562.591 202.389Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M562.591 214.369C562.591 215.041 562.047 215.585 561.377 215.585C560.707 215.585 560.163 215.041 560.163 214.369C560.163 213.697 560.707 213.153 561.377 213.153C562.047 213.153 562.591 213.697 562.591 214.369Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M562.591 226.358C562.591 227.031 562.047 227.574 561.377 227.574C560.707 227.574 560.163 227.031 560.163 226.358C560.163 225.686 560.707 225.142 561.377 225.142C562.047 225.142 562.591 225.686 562.591 226.358Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M562.591 238.338C562.591 239.011 562.047 239.554 561.377 239.554C560.707 239.554 560.163 239.011 560.163 238.338C560.163 237.666 560.707 237.122 561.377 237.122C562.047 237.122 562.591 237.666 562.591 238.338Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M562.591 250.327C562.591 251 562.047 251.544 561.377 251.544C560.707 251.544 560.163 251 560.163 250.327C560.163 249.655 560.707 249.111 561.377 249.111C562.047 249.111 562.591 249.655 562.591 250.327Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M562.591 262.307C562.591 262.98 562.047 263.523 561.377 263.523C560.707 263.523 560.163 262.98 560.163 262.307C560.163 261.635 560.707 261.091 561.377 261.091C562.047 261.091 562.591 261.635 562.591 262.307Z" fill="#9871F5" stroke="#9871F5"/>[m
[32m+[m[32m<path d="M459.05 261.842H148.287C142.676 261.842 138.118 257.248 138.118 251.574V60.0307C138.118 54.3567 142.676 49.7621 148.287 49.7621H459.059C464.669 49.7621 469.228 54.3567 469.228 60.0307V251.573C469.219 257.248 464.66 261.842 459.05 261.842Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M458.6 253.268H148.733C143.927 253.268 140.025 249.36 140.025 244.548V60.0729C140.025 55.2609 143.927 51.3528 148.733 51.3528H458.6C463.406 51.3528 467.309 55.2609 467.309 60.0729V244.548C467.309 249.369 463.406 253.268 458.6 253.268Z" fill="white"/>[m
[32m+[m[32m<path d="M356.692 68.6108V198.765C356.692 202.691 353.518 205.869 349.597 205.869H153.894C152.135 205.869 150.521 205.23 149.28 204.162C147.767 202.856 146.8 200.929 146.8 198.765V68.6108C146.8 64.6845 149.983 61.5069 153.894 61.5069H349.597C351.357 61.5069 352.98 62.146 354.211 63.2144C355.734 64.5201 356.692 66.4468 356.692 68.6108Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M453.5 117.142H372.491C368.57 117.142 365.396 113.965 365.396 110.038V68.6108C365.396 64.6845 368.57 61.5069 372.491 61.5069H453.5C457.421 61.5069 460.594 64.6845 460.594 68.6108V110.038C460.594 113.965 457.412 117.142 453.5 117.142Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M453.5 182.636H372.491C368.57 182.636 365.396 179.458 365.396 175.532V134.104C365.396 130.178 368.57 127 372.491 127H453.5C457.421 127 460.594 130.178 460.594 134.104V175.532C460.594 179.458 457.412 182.636 453.5 182.636Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M453.5 244.691H372.491C368.57 244.691 365.396 241.513 365.396 237.587V200.104C365.396 196.178 368.57 193 372.491 193H453.5C457.421 193 460.594 196.178 460.594 200.104V237.587C460.594 241.513 457.412 244.691 453.5 244.691Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M253.825 219.84H149.381C147.958 219.84 146.809 218.689 146.809 217.265C146.809 215.84 147.958 214.69 149.381 214.69H253.825C255.247 214.69 256.396 215.84 256.396 217.265C256.396 218.68 255.247 219.84 253.825 219.84Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M259.853 244H149.485C147.981 244 146.767 242.884 146.767 241.502V231.499C146.767 230.116 147.981 229 149.485 229H259.853C261.357 229 262.571 230.116 262.571 231.499V241.502C262.571 242.884 261.357 244 259.853 244Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M331.15 219.84H354.12C355.543 219.84 356.692 218.689 356.692 217.265C356.692 215.84 355.543 214.69 354.12 214.69H331.15C329.728 214.69 328.579 215.84 328.579 217.265C328.579 218.68 329.728 219.84 331.15 219.84Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M292.187 219.84H315.156C316.579 219.84 317.728 218.689 317.728 217.265C317.728 215.84 316.579 214.69 315.156 214.69H292.187C290.764 214.69 289.615 215.84 289.615 217.265C289.606 218.68 290.764 219.84 292.187 219.84Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M308.564 244.11H354.12C355.543 244.11 356.692 242.959 356.692 241.535V231.226C356.692 229.801 355.543 228.651 354.12 228.651H308.564C307.141 228.651 305.992 229.801 305.992 231.226V241.535C305.992 242.959 307.141 244.11 308.564 244.11Z" fill="#E6E6F0"/>[m
[32m+[m[32m<g opacity="0.24">[m
[32m+[m[32m<path d="M412.702 104.14C420.634 104.14 427.064 97.7011 427.064 89.7584C427.064 81.8158 420.634 75.377 412.702 75.377C404.77 75.377 398.34 81.8158 398.34 89.7584C398.34 97.7011 404.77 104.14 412.702 104.14Z" fill="#E6E6F0" stroke="#6842C2" stroke-width="2" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M418.587 88.3404L410.389 83.6013C409.487 83.0809 408.365 83.7292 408.365 84.7701V94.2482C408.365 95.2891 409.487 95.9374 410.389 95.4169L418.587 90.6779C419.49 90.1574 419.49 88.8608 418.587 88.3404Z" fill="#E6E6F0" stroke="#6842C2" stroke-width="2" stroke-miterlimit="10"/>[m
[32m+[m[32m</g>[m
[32m+[m[32m<g opacity="0.24">[m
[32m+[m[32m<path d="M412.702 168.763C420.634 168.763 427.064 162.324 427.064 154.381C427.064 146.439 420.634 140 412.702 140C404.77 140 398.34 146.439 398.34 154.381C398.34 162.324 404.77 168.763 412.702 168.763Z" fill="#E6E6F0" stroke="#6842C2" stroke-width="2" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M418.587 152.963L410.389 148.224C409.487 147.704 408.365 148.352 408.365 149.393V158.871C408.365 159.912 409.487 160.56 410.389 160.04L418.587 155.301C419.49 154.78 419.49 153.484 418.587 152.963Z" fill="#E6E6F0" stroke="#6842C2" stroke-width="2" stroke-miterlimit="10"/>[m
[32m+[m[32m</g>[m
[32m+[m[32m<g opacity="0.24">[m
[32m+[m[32m<path d="M412.702 232.763C420.634 232.763 427.064 226.324 427.064 218.381C427.064 210.439 420.634 204 412.702 204C404.77 204 398.34 210.439 398.34 218.381C398.34 226.324 404.77 232.763 412.702 232.763Z" fill="#E6E6F0" stroke="#6842C2" stroke-width="2" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M418.587 216.963L410.389 212.224C409.487 211.704 408.365 212.352 408.365 213.393V222.871C408.365 223.912 409.487 224.56 410.389 224.04L418.587 219.301C419.49 218.78 419.49 217.484 418.587 216.963Z" fill="#E6E6F0" stroke="#6842C2" stroke-width="2" stroke-miterlimit="10"/>[m
[32m+[m[32m</g>[m
[32m+[m[32m<path d="M354.211 63.2144L149.28 204.161C147.767 202.856 146.8 200.929 146.8 198.765V68.6108C146.8 64.6845 149.983 61.5069 153.894 61.5069H349.597C351.357 61.5069 352.98 62.146 354.211 63.2144Z" fill="#F2F2FA"/>[m
[32m+[m[32m<mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="147" y="32" width="210" height="175">[m
[32m+[m[32m<path d="M356.947 40.8188V197.587C356.947 202.316 353.78 206.144 349.866 206.144H154.512C152.755 206.144 151.144 205.374 149.906 204.087C148.395 202.514 147.43 200.194 147.43 197.587V40.8188C147.43 36.0896 150.607 32.2622 154.512 32.2622H349.866C351.623 32.2622 353.243 33.0321 354.472 34.3189C355.992 35.8916 356.947 38.2123 356.947 40.8188Z" fill="#A3D1DE"/>[m
[32m+[m[32m</mask>[m
[32m+[m[32m<g mask="url(#mask0)">[m
[32m+[m[32m<path d="M340.442 142.967C340.442 142.967 352.141 133.718 352.451 131.07C353.035 126.084 354.822 122.176 365.527 118.871C365.527 118.871 366.357 120.459 364.871 122.185C363.248 124.057 361.962 124.714 361.962 124.714C361.962 124.714 364.798 125.801 369.02 122.496C373.242 119.199 375.02 116.332 376.798 117.035C376.798 117.035 378.895 115.136 379.889 115.437C379.889 115.437 380.619 115.656 380.482 116.442C382.132 116.186 381.795 120.952 378.859 124.824C374.637 130.394 369.366 135.188 365.053 136.767C361.816 137.955 348.439 151.587 348.439 151.587L340.442 142.967Z" fill="#FFCAD0"/>[m
[32m+[m[32m<path d="M304.314 190.157C299.208 191.883 270.877 148.254 270.877 148.254C259.925 135.635 269.755 94.0706 279.667 108.644C279.667 108.644 305.445 155.34 308.226 159.102C311.682 163.777 323.181 183.774 304.314 190.157Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M272.39 233.465H197.691C197.691 233.465 191.955 230.936 196.943 219.906C198.812 215.788 198.001 205.177 197.691 190.613C197.062 161.814 188.527 114.013 199.059 108.534C205.369 105.238 218.773 100.901 228.502 97.933C229.086 97.7687 229.651 97.5952 230.208 97.4308C235.888 95.7324 239.946 94.6093 239.946 94.6093C239.946 94.6093 244.651 95.2942 254.208 98.1248C254.727 98.28 255.265 98.4444 255.822 98.6087C258.311 99.3666 261.083 100.252 264.165 101.302C280.87 106.991 278.992 104.964 281.208 125.856C282.977 142.538 272.39 233.465 272.39 233.465Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M255.822 98.5996C255.603 102.142 254.016 105.274 251.6 107.566C249.147 109.913 245.819 111.337 242.189 111.337C234.703 111.337 228.648 105.338 228.493 97.933C229.077 97.7687 229.642 97.5952 230.199 97.4308C235.879 95.7324 239.937 94.6093 239.937 94.6093C239.937 94.6093 244.642 95.2942 254.199 98.1248C254.718 98.2709 255.265 98.4352 255.822 98.5996Z" fill="#F2F2FA"/>[m
[32m+[m[32m<path d="M254.18 68.6954L253.004 91.45L252.667 97.9422C252.53 100.7 251.317 103.156 249.439 104.927C247.579 106.699 245.062 107.776 242.308 107.776C236.481 107.776 231.785 102.964 231.94 97.1386L232.232 85.5513L232.724 66.303L254.18 68.6954Z" fill="#FBD5D9"/>[m
[32m+[m[32m<path d="M254.18 73.2426L253.004 94.6732C242.937 95.075 235.597 90.9843 232.232 85.5239L232.724 70.8685L254.18 73.2426Z" fill="#FFA4AD"/>[m
[32m+[m[32m<path d="M226.04 46.4156C226.04 46.4156 216.393 45.2103 217.496 57.318C218.354 66.7048 231.092 79.2326 231.092 79.2326C231.092 79.2326 239.135 50.9446 226.04 46.4156Z" fill="#8F4A3F"/>[m
[32m+[m[32m<path d="M265.442 55.1357C264.785 56.6332 263.773 57.939 262.943 59.3451C262.123 60.7513 261.466 62.3584 261.649 63.9837C261.484 61.3449 259.743 59.126 258.238 56.9619C256.734 54.7888 255.366 52.159 256.086 49.6206C256.77 47.1826 261.174 43.3384 263.855 44.9181C266.837 46.6712 266.609 52.4786 265.442 55.1357Z" fill="#0E1235"/>[m
[32m+[m[32m<path d="M262.168 55.6197C262.168 55.6197 262.916 63.0341 261.877 71.2429C260.673 80.7301 261.101 91.87 247.141 92.6188C232.241 93.4132 227.308 76.7124 227.308 76.7124C227.308 76.7124 219.393 75.2332 218.855 69.8824C218.317 64.5225 223.843 64.2211 225.648 65.7278C225.648 65.7278 227.691 45.7581 246.12 45.7581C262.378 45.7399 262.168 55.6197 262.168 55.6197Z" fill="#FBD5D9"/>[m
[32m+[m[32m<path d="M244.66 70.8592C244.66 71.6717 244.004 72.3382 243.183 72.3382C242.363 72.3382 241.706 71.6808 241.706 70.8592C241.706 70.0467 242.363 69.3802 243.183 69.3802C244.004 69.3802 244.66 70.0467 244.66 70.8592Z" fill="#9A5449"/>[m
[32m+[m[32m<path d="M258.01 70.8592C258.01 71.6717 257.353 72.3382 256.533 72.3382C255.712 72.3382 255.056 71.6808 255.056 70.8592C255.056 70.0467 255.712 69.3802 256.533 69.3802C257.353 69.3802 258.01 70.0467 258.01 70.8592Z" fill="#9A5449"/>[m
[32m+[m[32m<path d="M237.813 65.7187C237.813 65.7187 240.001 62.1119 244.661 63.4085" stroke="#561E15" stroke-width="1.0274" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M252.694 63.3537C252.694 63.3537 256.059 60.2765 259.369 63.6459" stroke="#561E15" stroke-width="1.0274" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M249.74 67.0153C249.74 67.0153 251.335 71.0968 252.694 73.6353C254.053 76.1737 250.041 77.306 250.041 77.306" stroke="#D66D78" stroke-width="0.7706" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M244.396 81.8715C244.396 81.8715 247.688 85.0674 251.919 83.1133" stroke="#D66D78" stroke-width="0.7706" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M225.383 71.5984C225.383 71.5984 225.338 67.0063 221.91 68.257" stroke="#D66D78" stroke-width="0.7706" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M229.907 50.2506C229.907 50.2506 238.287 58.7973 233.7 62.0662C228.594 65.7095 227.8 70.8594 227.8 70.8594C227.8 70.8594 227.91 69.0424 225.639 65.7186C223.369 62.3858 218.417 50.5702 229.907 50.2506Z" fill="#8F4A3F"/>[m
[32m+[m[32m<path d="M304.314 190.157C310.406 194.129 356.701 144.611 356.701 144.611L348.485 133.846C348.485 133.846 313.287 155.961 308.226 159.102C300.931 163.622 283.825 176.807 304.314 190.157Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M279.694 161.367C279.694 161.367 281.764 138.731 281.409 131.544C281.409 131.544 284.354 150.546 284.427 168.105L279.694 161.367Z" fill="#03A14A"/>[m
[32m+[m[32m<path d="M201.466 153.651C201.466 153.651 212.308 107.165 200.709 107.712C200.709 107.712 196.925 108.169 189.521 119.674C184.341 127.719 178.67 141.662 168.329 164.343C163.442 175.063 157.332 189.572 168.676 190.349C174.812 190.769 181.25 187.408 185.043 180.35C191.992 167.42 201.466 153.651 201.466 153.651Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M211.168 211.514L270.174 197.589C270.165 197.589 251.609 211.514 211.168 211.514Z" fill="#03A14A"/>[m
[32m+[m[32m<path d="M195.32 162.992C195.32 162.992 204.84 146.109 209.901 137.872L198.019 202.456C198.019 202.456 196.861 176.077 195.32 162.992Z" fill="#03A14A"/>[m
[32m+[m[32m<path d="M233.262 184.989L197.974 201.488L199.788 184.523L233.262 184.989Z" fill="#03A14A"/>[m
[32m+[m[32m<path d="M239.043 182.166L239.043 182.166L244.87 150.308L244.87 150.306C245.173 148.628 246.634 147.412 248.345 147.412H260.728C262.932 147.412 264.602 149.412 264.202 151.588L264.202 151.589L258.376 183.446C258.064 185.127 256.601 186.342 254.901 186.342H242.518C240.313 186.342 238.643 184.343 239.043 182.166Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M256.433 188.193H244.049C241.533 188.193 239.627 185.911 240.083 183.427L245.91 151.569C246.256 149.651 247.925 148.263 249.876 148.263H262.259C264.776 148.263 266.682 150.546 266.226 153.03L260.399 184.888C260.053 186.805 258.384 188.193 256.433 188.193Z" fill="white"/>[m
[32m+[m[32m<path d="M247.231 159.553L247.232 159.548L248.654 151.768L248.654 151.768L248.655 151.765C248.676 151.643 248.784 151.548 248.919 151.548H251.135C251.307 151.548 251.432 151.703 251.401 151.867L251.4 151.872L249.977 159.651L249.977 159.651L249.977 159.655C249.956 159.777 249.848 159.871 249.712 159.871H247.497C247.325 159.871 247.199 159.717 247.231 159.553Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M221.627 170.963C221.627 170.963 227.664 170.762 232.287 169.347C234.275 168.735 238.214 168.023 239.518 166.133C240.831 164.225 240.712 160.106 242.025 159.933C243.038 159.796 245.062 163.019 244.542 165.192C244.031 167.32 243.785 168.498 243.01 169.448C242.755 169.767 251.263 170.37 256.652 169.183C260.345 168.37 259.25 172.032 256.743 173.182C256.743 173.182 257.636 175.419 255.019 176.177C255.019 176.177 255.047 179.163 252.548 179.3C252.266 179.994 251.782 181.473 249.621 182.003C246.475 182.779 241.724 183.071 236.937 182.642C234.503 182.423 223.268 184.395 223.268 184.395L221.627 170.963Z" fill="#FFCAD0"/>[m
[32m+[m[32m<path d="M168.311 190.522C176.928 192.029 228.293 186.221 228.293 186.221L227.016 168.224C227.016 168.224 185.162 170.178 179.581 169.676C161.125 168.041 157.587 188.65 168.311 190.522Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M231.94 36.6812C232.825 35.7955 233.81 34.855 235.05 34.7181C236.29 34.5811 237.703 35.7407 237.293 36.9278C241.515 35.0924 245.928 33.7228 250.442 32.8462C251.573 32.6271 252.794 32.4444 253.843 32.9466C254.883 33.4488 255.53 34.9007 254.819 35.8047C257.007 36.6265 259.433 36.0877 261.758 35.8138C264.083 35.5399 266.737 35.6586 268.314 37.3843C269.782 38.9823 269.81 41.3929 269.764 43.5661C269.691 46.5428 269.618 49.5378 268.943 52.4415C267.94 56.7331 265.606 60.696 262.332 63.6453C263.308 60.3033 261.566 56.5961 258.822 54.4503C256.086 52.2954 252.557 51.4462 249.101 51.0535C244.962 50.5787 240.749 50.6883 236.627 51.364C233.518 51.8753 229.077 54.0942 225.986 52.688C219.138 49.5834 229.296 39.3293 231.94 36.6812Z" fill="#8F4A3F"/>[m
[32m+[m[32m</g>[m
[32m+[m[32m<path d="M337.798 75.1578H294.922C291.64 75.1578 288.977 72.4915 288.977 69.2044V51.1979C288.977 47.9107 291.64 45.2444 294.922 45.2444H337.798C341.081 45.2444 343.743 47.9107 343.743 51.1979V69.2044C343.743 72.4915 341.081 75.1578 337.798 75.1578Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M298.15 73.222V81.4217L306.922 72.6376L298.15 73.222Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M301.57 63.6253C303.458 63.6253 304.989 62.0922 304.989 60.2011C304.989 58.31 303.458 56.777 301.57 56.777C299.681 56.777 298.15 58.31 298.15 60.2011C298.15 62.0922 299.681 63.6253 301.57 63.6253Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M316.36 63.6253C318.248 63.6253 319.779 62.0922 319.779 60.2011C319.779 58.31 318.248 56.777 316.36 56.777C314.471 56.777 312.94 58.31 312.94 60.2011C312.94 62.0922 314.471 63.6253 316.36 63.6253Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M331.15 63.6253C333.039 63.6253 334.57 62.0922 334.57 60.2011C334.57 58.31 333.039 56.777 331.15 56.777C329.262 56.777 327.731 58.31 327.731 60.2011C327.731 62.0922 329.262 63.6253 331.15 63.6253Z" fill="#E6E6F0"/>[m
[32m+[m[32m<path d="M455.737 318.882L453.795 342.54H463.871L469.105 318.882H455.737Z" fill="#FEC9CF"/>[m
[32m+[m[32m<path d="M464.965 337.591C464.965 337.591 469.342 344.668 466.06 345.928C462.777 347.188 441.166 347.298 435.832 346.503C430.497 345.7 447.731 338.386 451.671 337.235C455.619 336.085 456.886 342.084 464.965 337.591Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M508.716 318.882L510.649 342.54H500.573L495.348 318.882H508.716Z" fill="#FEC9CF"/>[m
[32m+[m[32m<path d="M499.479 337.591C499.479 337.591 495.102 344.668 498.385 345.928C501.668 347.188 523.279 347.298 528.613 346.503C533.947 345.7 516.713 338.386 512.774 337.235C508.835 336.085 507.558 342.084 499.479 337.591Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M453.713 189.522L449.145 331.373H470.418L475.005 236.894L493.233 334.085L516.403 330.223C516.403 330.223 495.485 224.202 491.929 189.531H453.713V189.522Z" fill="#D8D8E3"/>[m
[32m+[m[32m<path d="M474.027 243.401L473.304 228.101L474.502 236.901L474.027 243.401Z" fill="#194248" stroke="#C9C9D4"/>[m
[32m+[m[32m<path d="M485.09 189.522L509.71 331.017" stroke="#C9C9D4" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M479.966 84.9623C484.507 84.9714 489.33 87.3546 490.862 91.6371C492.048 94.9334 491.154 98.8232 492.814 101.91C494.035 104.192 496.479 105.662 497.583 108C499.862 112.858 495.421 118.628 496.835 123.797C498.139 128.581 504.057 131.321 504.549 136.261C504.868 139.411 502.653 142.433 499.798 143.803C496.953 145.182 493.616 145.172 490.497 144.652C482.847 143.365 475.643 139.164 467.893 139.566C464.701 139.73 461.364 140.662 458.409 139.429C456.303 138.552 454.78 136.699 453.44 134.854C451.899 132.736 450.421 130.325 450.567 127.714C450.777 123.879 454.251 121.194 456.33 117.971C458.455 114.675 459.348 110.557 458.756 106.676C455.938 88.2312 466.297 88.7973 467.619 88.7699C468.832 88.7425 472.862 86.268 474.458 85.8023C476.263 85.2819 478.105 84.9623 479.966 84.9623Z" fill="#D38D00"/>[m
[32m+[m[32m<path d="M431.3 162.348C426.914 158.85 409.078 147.035 408.904 145.382C408.576 142.278 407.491 139.821 400.844 137.703C400.844 137.703 400.315 138.689 401.236 139.776C402.23 140.954 403.032 141.364 403.032 141.364C403.032 141.364 401.263 142.022 398.655 139.94C396.047 137.858 394.962 136.059 393.85 136.488C393.85 136.488 392.555 135.292 391.935 135.475C391.935 135.475 391.479 135.603 391.561 136.096C390.53 135.922 390.713 138.89 392.509 141.328C395.099 144.825 399.667 147.491 402.348 148.505C404.354 149.263 417.512 168.748 426.33 170.858C428.865 171.442 433.342 163.973 431.3 162.348Z" fill="#FCDDC6"/>[m
[32m+[m[32m<path d="M445.096 145.063C445.096 145.063 425.382 158.833 423.476 162.257C421.57 165.681 422.993 174.821 431.774 168.95C440.555 163.078 454.415 152.423 454.415 152.423L445.096 145.063Z" fill="#FCDDC6"/>[m
[32m+[m[32m<path d="M455.227 132.526C455.227 132.526 449.81 133.896 446.199 138.196C443.172 141.803 438.294 147.61 438.294 147.61L453.248 159.243C453.257 159.234 456.905 138.087 455.227 132.526Z" fill="#47248F"/>[m
[32m+[m[32m<path d="M491.929 189.522H453.704C453.704 189.522 453.859 182.957 451.734 172.757C449.601 162.567 450.667 157.235 452.792 151.911C454.926 146.588 451.123 134.279 455.227 132.526C456.895 131.814 459.795 130.663 462.64 129.558C463.36 129.284 464.072 129.001 464.756 128.737C468.057 127.458 470.838 126.399 470.838 126.399H477.722C477.722 126.399 482.464 127.97 487.333 129.914C487.972 130.17 488.619 130.435 489.257 130.7C489.257 130.709 489.257 130.709 489.257 130.709C491.71 131.741 494.054 132.827 495.649 133.823C500.82 137.018 491.929 189.522 491.929 189.522Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M468.521 109.461L469.251 123.632L469.461 127.677C469.552 129.394 470.3 130.928 471.467 132.033C472.625 133.138 474.193 133.804 475.908 133.804C479.537 133.804 482.455 130.809 482.364 127.184L482.181 119.971L481.871 107.982L468.521 109.461Z" fill="#FFDFC8"/>[m
[32m+[m[32m<path d="M468.521 109.461L469.251 122.811C475.515 123.066 480.093 120.509 482.19 117.113L481.88 107.982L468.521 109.461Z" fill="#DA9F74"/>[m
[32m+[m[32m<path d="M463.543 98.4854C463.543 98.4854 463.078 103.106 463.725 108.21C464.473 114.118 465.129 120.884 472.908 121.523C482.172 122.281 485.263 111.616 485.263 111.616C485.263 111.616 489.567 110.611 490.096 107.671C490.625 104.722 487.415 103.836 486.294 104.768C486.294 104.768 485.017 92.331 473.546 92.331C463.406 92.331 463.543 98.4854 463.543 98.4854Z" fill="#FFDFC8"/>[m
[32m+[m[32m<path d="M489.257 130.7C489.257 130.709 489.257 130.709 489.257 130.7C481.415 140.269 472.169 139.822 472.169 139.822C464.874 138.224 462.64 129.558 462.64 129.558C463.361 129.284 464.072 129.001 464.756 128.737C468.057 127.458 470.838 126.399 470.838 126.399H477.722C477.722 126.399 482.464 127.97 487.333 129.914C487.972 130.17 488.619 130.435 489.257 130.7Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M487.333 129.914C479.336 138.616 472.406 137.703 472.406 137.703C464.956 134.845 464.755 128.737 464.755 128.737C468.056 127.458 470.838 126.399 470.838 126.399H477.722C477.722 126.399 482.464 127.97 487.333 129.914Z" fill="#FCDDC6"/>[m
[32m+[m[32m<path d="M467.537 89.6465C467.537 89.6465 468.604 98.6406 462.832 101.608C462.832 101.608 459.941 90.7148 467.537 89.6465Z" fill="#D38D00"/>[m
[32m+[m[32m<path d="M465.786 90.5048C465.786 90.5048 467.838 98.3392 472.926 98.7958C478.014 99.2523 477.111 103.38 481.616 103.854C484.297 104.137 485.491 106.932 485.491 106.932C485.491 106.932 485.883 104.156 488.309 103.17C490.753 102.183 482.573 81.4468 465.786 90.5048Z" fill="#D38D00"/>[m
[32m+[m[32m<path d="M474.421 109.36C474.421 109.853 474.813 110.246 475.306 110.246C475.798 110.246 476.19 109.853 476.19 109.36C476.19 108.867 475.798 108.475 475.306 108.475C474.822 108.475 474.421 108.876 474.421 109.36Z" fill="#60423D"/>[m
[32m+[m[32m<path d="M466.416 109.36C466.416 109.853 466.808 110.245 467.3 110.245C467.793 110.245 468.185 109.853 468.185 109.36C468.185 108.867 467.784 108.474 467.3 108.474C466.808 108.474 466.416 108.876 466.416 109.36Z" fill="#60423D"/>[m
[32m+[m[32m<path d="M478.533 106.274C478.533 106.274 477.22 104.11 474.421 104.886" stroke="#561E15" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M469.606 104.859C469.606 104.859 467.582 103.015 465.604 105.032" stroke="#561E15" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M471.375 107.059C471.375 107.059 470.418 109.506 469.606 111.031C468.795 112.556 471.202 113.232 471.202 113.232" stroke="#DA9F74" stroke-width="0.75" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M476.682 114.967C476.682 114.967 475.123 117.24 472.406 116.592" stroke="#DA9F74" stroke-width="0.75" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M486.266 108.739C486.266 108.739 486.294 105.982 488.345 106.74" stroke="#DA9F74" stroke-width="0.75" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M454.488 180.409H419.473C418.78 180.409 418.215 179.843 418.215 179.149C418.215 178.455 418.78 177.889 419.473 177.889H454.488C455.181 177.889 455.747 178.455 455.747 179.149C455.738 179.852 455.181 180.409 454.488 180.409Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M415.535 150.622L415.535 150.622L415.535 150.62C415.323 149.777 415.968 148.951 416.837 148.951H448.378C448.998 148.951 449.534 149.371 449.68 149.966L449.68 149.968L456.475 177.398H422.171L415.535 150.622Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M454.689 177.898H419.354L412.625 150.742C412.333 149.583 413.218 148.451 414.412 148.451H445.953C446.801 148.451 447.54 149.026 447.74 149.848L454.689 177.898Z" fill="white"/>[m
[32m+[m[32m<path d="M481.588 180.409H455.09C454.442 180.409 453.914 179.88 453.914 179.231V179.076C453.914 178.428 454.442 177.898 455.09 177.898H481.588C482.236 177.898 482.765 178.428 482.765 179.076V179.231C482.774 179.889 482.245 180.409 481.588 180.409Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M434.48 161.632L434.48 161.633C435.072 163.168 434.519 164.577 433.571 164.95C432.628 165.312 431.274 164.639 430.681 163.1C430.088 161.561 430.645 160.147 431.589 159.783C432.533 159.419 433.888 160.086 434.48 161.632Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M493.862 177.898L491.564 148.076L495.978 160.631L493.862 177.898Z" fill="#47248F"/>[m
[32m+[m[32m<path d="M494.163 151.108C494.163 151.108 499.616 180.455 500.965 185.258C501.841 188.362 508.206 190.481 510.203 186.372C510.64 185.468 510.54 183.961 510.494 182.427C510.184 172.94 503.555 148.797 503.555 148.797L494.163 151.108Z" fill="#FCDDC6"/>[m
[32m+[m[32m<path d="M495.658 133.823C495.658 133.823 498.914 135.494 501.649 140.214C504.385 144.935 508.16 153.263 507.923 155.281C506.5 159.161 495.266 163.179 495.266 163.179C495.266 163.179 487.762 138.479 495.658 133.823Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M501.959 179.587C501.959 179.587 484.643 179.204 481.36 177.25C476.911 174.593 475.88 175.743 473.3 175.104C469.16 174.072 469.616 174.912 469.616 174.912C469.616 174.912 469.807 177.314 473.008 177.615C474.622 177.77 477.038 178.455 476.528 178.848C476.528 178.848 463.689 180.19 461.108 180.418C458.528 180.647 459.786 182.637 461.756 183.094C461.756 183.094 462.932 184.582 464.838 184.126C464.838 184.126 464.418 184.966 469.36 184.966C474.303 184.966 479.263 182.336 481.771 183.477C484.278 184.619 497.82 189.869 506.409 188.655C510.513 188.07 510.54 186.098 510.54 184.016C510.54 180.409 507.877 179.953 501.959 179.587Z" fill="#FCDDC6"/>[m
[32m+[m[32m<path d="M142.705 318.882L136.988 342.54H126.912L129.338 318.882H142.705Z" fill="#BC8567"/>[m
[32m+[m[32m<path d="M125.818 337.591C125.818 337.591 121.441 344.668 124.724 345.928C128.007 347.188 149.618 347.298 154.952 346.503C160.286 345.7 143.052 338.386 139.113 337.235C135.174 336.085 133.897 342.084 125.818 337.591Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M110.973 318.882L107.517 342.54H97.4406L97.6047 318.882H110.973Z" fill="#BC8567"/>[m
[32m+[m[32m<path d="M96.347 337.591C96.347 337.591 91.9701 344.668 95.2528 345.928C98.5354 347.188 120.146 347.298 125.481 346.503C130.815 345.7 113.581 338.386 109.642 337.235C105.703 336.085 104.426 342.084 96.347 337.591Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M94.04 204.461L94.7877 330.707H110.782L122.08 237.953L134.955 275.591L125.317 330.716H142.715C142.715 330.716 158.007 283.079 157.387 273.729C156.767 264.369 139.113 200.616 139.113 200.616L94.04 204.461Z" fill="#D8D8E3"/>[m
[32m+[m[32m<path d="M124.944 244.816L122.579 237.894L123.681 226.693L124.944 244.816Z" fill="#C9C9D4" stroke="#C9C9D4"/>[m
[32m+[m[32m<path d="M103.068 202.936L102.146 330.716" stroke="#C9C9D4" stroke-miterlimit="10"/>[m
[32m+[m[32m<path d="M152.043 146.643C152.043 146.643 162.374 166.21 162.602 172.219C162.83 178.227 156.219 176.885 152.8 171.47C149.381 166.046 143.909 150.669 143.909 150.669L152.043 146.643Z" fill="#BC8567"/>[m
[32m+[m[32m<path d="M153.976 148.277C153.976 148.277 151.013 153.555 143.909 156.778C142.441 157.445 141.201 155.682 140.28 153.591C139.213 151.153 138.593 148.277 138.593 148.277C138.593 148.277 130.45 123.048 137.627 123.952C137.627 123.952 143.736 124.381 148.222 133.238C149.399 135.548 151.232 140.205 152.764 144.625C153.201 145.885 153.612 147.117 153.976 148.277Z" fill="#47248F"/>[m
[32m+[m[32m<path d="M153.976 148.277C153.976 148.277 151.013 153.555 143.909 156.778C142.441 157.445 141.201 155.682 140.28 153.591C143.061 152.34 148.323 149.528 152.764 144.625C153.201 145.885 153.612 147.117 153.976 148.277Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M139.478 201.995C134.964 207.127 105.247 206.369 94.0308 204.46C92.0612 204.123 90.1189 203.365 93.2283 196.498C94.3955 193.932 93.894 187.331 93.6934 178.254C93.3013 160.312 87.9852 130.545 94.5414 127.129C98.4715 125.075 106.815 122.372 112.879 120.528C113.244 120.427 113.599 120.318 113.946 120.208C117.484 119.149 120.01 118.446 120.01 118.446C120.01 118.446 122.937 118.875 128.891 120.637C129.21 120.729 129.557 120.838 129.903 120.939C131.453 121.413 133.177 121.961 135.101 122.619C138.83 123.888 141.566 124.664 142.232 125.906C144.01 129.166 143.326 134.946 143.435 143.273C143.581 153.728 143.472 197.466 139.478 201.995Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M92.2983 157.938L98.7086 142.287L94.0399 182.546L92.2983 157.938Z" fill="#47248F"/>[m
[32m+[m[32m<path d="M129.903 120.948C129.766 123.158 128.773 125.102 127.277 126.527C125.745 127.988 123.675 128.874 121.423 128.874C116.763 128.874 112.988 125.139 112.897 120.519C113.262 120.418 113.617 120.309 113.964 120.199C117.502 119.14 120.028 118.437 120.028 118.437C120.028 118.437 122.955 118.866 128.909 120.628C129.219 120.747 129.557 120.847 129.903 120.948Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M133.789 86.5C133.789 86.5 130.413 83.2687 125.304 82.5C117.83 81.3755 107.991 83.8103 106.031 95.2347C104.481 101.818 112.496 112.638 115.523 112.008C115.523 112.008 142.774 94.7347 133.789 86.5Z" fill="#43302D"/>[m
[32m+[m[32m<path d="M128.882 102.33L128.153 116.501L127.943 120.546C127.861 122.263 127.104 123.797 125.937 124.902C124.779 126.006 123.21 126.673 121.496 126.673C117.867 126.673 114.949 123.678 115.04 120.053L115.222 112.839L115.532 100.85L128.882 102.33Z" fill="#BC8567"/>[m
[32m+[m[32m<path d="M128.882 105.151L128.153 118.501C121.888 118.756 117.311 116.2 115.213 112.803L115.523 103.672L128.882 105.151Z" fill="#765441"/>[m
[32m+[m[32m<path d="M133.852 94.1755C133.852 94.1755 134.317 98.7958 133.669 103.9C132.922 109.808 133.186 116.747 124.487 117.213C115.204 117.706 112.131 107.306 112.131 107.306C112.131 107.306 107.198 106.384 106.861 103.051C106.523 99.7181 109.97 99.5263 111.092 100.458C111.092 100.458 112.368 88.0212 123.839 88.0212C133.988 88.0303 133.852 94.1755 133.852 94.1755Z" fill="#BC8567"/>[m
[32m+[m[32m<path d="M123.237 103.106C123.237 103.617 122.827 104.028 122.317 104.028C121.806 104.028 121.396 103.617 121.396 103.106C121.396 102.594 121.806 102.183 122.317 102.183C122.818 102.183 123.237 102.594 123.237 103.106Z" fill="#60423D"/>[m
[32m+[m[32m<path d="M132.11 102.631C132.11 103.142 131.699 103.553 131.189 103.553C130.678 103.553 130.268 103.142 130.268 102.631C130.268 102.119 130.678 101.709 131.189 101.709C131.699 101.709 132.11 102.119 132.11 102.631Z" fill="#60423D"/>[m
[32m+[m[32m<path d="M118.687 100.467C118.687 100.467 120.046 98.2206 122.954 99.0332" stroke="#43302D" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M127.952 98.9966C127.952 98.9966 130.049 97.0794 132.109 99.1791" stroke="#43302D" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M126.119 101.279C126.119 101.279 127.113 103.818 127.961 105.407C128.809 106.986 126.301 107.689 126.301 107.689" stroke="#765441" stroke-width="0.75" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M122.782 110.529C122.782 110.529 124.833 112.519 127.468 111.305" stroke="#765441" stroke-width="0.75" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M110.945 104.127C110.945 104.127 110.918 101.27 108.785 102.046" stroke="#765441" stroke-width="0.75" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M113.763 90.8335C113.763 90.8335 118.979 96.1569 116.125 98.1932C112.952 100.458 112.45 103.672 112.45 103.672C112.45 103.672 112.514 102.54 111.101 100.467C109.687 98.394 106.605 91.0344 113.763 90.8335Z" fill="#43302D"/>[m
[32m+[m[32m<path d="M85.2041 147.693C85.2041 147.693 74.8727 167.261 74.6448 173.269C74.4168 179.277 81.0278 177.935 84.4472 172.52C87.8667 167.096 93.3379 151.719 93.3379 151.719L85.2041 147.693Z" fill="#BC8567"/>[m
[32m+[m[32m<path d="M158.873 165.598C158.873 165.598 143.472 154.185 142.596 153.536C141.11 152.422 138.94 150.806 138.156 150.258C136.915 149.391 129.666 148.131 128.654 148.295C127.651 148.459 124.87 148.934 124.058 149.235C123.247 149.537 124.268 150.578 125.07 151.071C125.873 151.564 129.429 153.408 132.447 153.965C134.125 154.276 135.566 155.125 136.742 155.974C137.681 156.65 153.931 173.241 154.542 173.643L158.873 165.598Z" fill="#BC8567"/>[m
[32m+[m[32m<path d="M139.806 151.592C139.806 151.592 134.007 146.159 133.14 146.241C132.283 146.323 132.894 147.547 135.174 149.4C135.949 150.03 136.779 151.025 137.472 151.354C138.83 151.993 139.806 151.592 139.806 151.592Z" fill="#BC8567"/>[m
[32m+[m[32m<path d="M135.133 171.165L135.135 171.165C135.648 171.107 136.072 170.736 136.204 170.23L136.204 170.23L141.255 150.781C141.477 149.926 140.765 149.107 139.884 149.212C139.883 149.212 139.883 149.212 139.883 149.212L118.738 151.741L118.735 151.741L118.735 151.741C118.223 151.8 117.798 152.171 117.667 152.676L117.667 152.676L112.615 172.125C112.394 172.981 113.105 173.799 113.987 173.695L135.133 171.165ZM135.133 171.165L113.987 173.695L135.133 171.165Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M136.132 172.31L114.986 174.839C113.755 174.985 112.761 173.844 113.071 172.648L118.123 153.199C118.305 152.496 118.898 151.975 119.618 151.893L140.764 149.364C141.995 149.217 142.989 150.359 142.679 151.555L137.627 171.004C137.445 171.698 136.852 172.219 136.132 172.31Z" fill="white"/>[m
[32m+[m[32m<path d="M119.863 157.108L119.863 157.108L119.862 157.113C119.861 157.117 119.857 157.126 119.845 157.137C119.833 157.147 119.818 157.155 119.8 157.159L118.794 157.276L118.794 157.276C118.773 157.278 118.754 157.272 118.739 157.254C118.723 157.236 118.719 157.217 118.724 157.196L118.724 157.196L119.718 153.379L119.718 153.379L119.721 153.37C119.725 153.351 119.742 153.333 119.768 153.33L120.787 153.211L120.787 153.211C120.808 153.209 120.827 153.216 120.842 153.234C120.858 153.252 120.862 153.271 120.857 153.291L120.857 153.292L119.863 157.108Z" fill="#04D361" stroke="#04D361"/>[m
[32m+[m[32m<path d="M78.593 167.48C85.049 167.735 105.228 167.315 107.9 166.402C109.049 166.01 111.876 165.416 112.596 164.293C113.326 163.152 113.946 161.417 114.703 161.289C115.286 161.188 115.149 163.069 114.976 163.754C114.648 164.987 114.429 165.626 113.991 166.192C113.845 166.384 118.815 167.096 121.934 166.302C124.076 165.754 123.675 167.471 122.235 168.192C122.235 168.192 122.809 169.689 121.295 170.183C121.295 170.183 121.56 171.844 120.101 171.972C119.946 172.383 119.49 173.123 118.231 173.479C116.408 173.99 113.244 173.981 110.836 174.081C109.414 174.136 81.9213 178.437 77.0611 177.213C75.0368 176.702 76.4957 167.398 78.593 167.48Z" fill="#BC8567"/>[m
[32m+[m[32m<path d="M97.122 150.322C97.122 150.322 96.6478 152.121 95.9457 153.975C95.1615 156.02 94.0946 158.12 93.046 157.929C93.046 157.929 78.7845 153.418 79.2587 151.957C79.6143 150.87 80.2253 149.455 80.9821 147.884C83.3438 142.972 87.0915 136.562 88.6052 134.078C93.7663 125.595 95.8819 126.673 95.8819 126.673C103.113 126.326 97.122 150.322 97.122 150.322Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M95.9457 153.975C95.1615 156.02 94.0946 158.12 93.046 157.929C93.046 157.929 78.7845 153.418 79.2587 151.957C79.6143 150.87 80.2253 149.455 80.9821 147.884C83.6083 149.126 90.6934 152.386 95.9457 153.975Z" fill="#04D361"/>[m
[32m+[m[32m<path d="M100.469 193.96C100.469 193.96 124.177 190.152 136.943 182.546C136.943 182.546 122.663 196.854 100.469 193.96Z" fill="#47248F"/>[m
[32m+[m[32m<path d="M396.148 284.439H334.497C331.46 284.439 329.008 281.974 329.008 278.943V249.111C329.008 246.071 331.47 243.615 334.497 243.615H396.148C399.184 243.615 401.637 246.08 401.637 249.111V278.933C401.646 281.974 399.184 284.439 396.148 284.439Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M335.545 273.893C341.29 273.893 341.29 267.045 347.035 267.045C352.779 267.045 352.779 257.914 358.524 257.914C364.269 257.914 364.269 261.411 370.013 261.411C375.758 261.411 375.758 252.965 381.503 252.965C387.247 252.965 387.247 266.214 392.992 266.214" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M337.223 273.893C337.223 272.971 336.475 272.222 335.554 272.222C334.633 272.222 333.886 272.971 333.886 273.893C333.886 274.815 334.633 275.563 335.554 275.563C336.475 275.563 337.223 274.815 337.223 273.893Z" fill="white"/>[m
[32m+[m[32m<path d="M394.67 266.223C394.67 265.301 393.922 264.552 393.001 264.552C392.08 264.552 391.333 265.301 391.333 266.223C391.333 267.145 392.08 267.893 393.001 267.893C393.922 267.893 394.67 267.145 394.67 266.223Z" fill="white"/>[m
[32m+[m[32m<path d="M39.6203 69.0468H101.198C105.32 69.0468 108.666 65.6957 108.666 61.5685V42.7493C108.666 38.6221 105.32 35.271 101.198 35.271H39.6203C35.4987 35.271 32.1522 38.6221 32.1522 42.7493V61.5685C32.1522 65.7048 35.4987 69.0468 39.6203 69.0468Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M99.4928 67.111V75.3107L90.7116 66.5266L99.4928 67.111Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M39.2281 43.562H56.2981" stroke="white" stroke-width="2.2165" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M62.3802 43.562H101.59" stroke="white" stroke-width="2.2165" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M39.2281 52.1635H71.052" stroke="white" stroke-width="2.2165" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M75.9214 52.1635H85.3409" stroke="white" stroke-width="2.2165" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M90.3925 52.1635H101.59" stroke="white" stroke-width="2.2165" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M39.2281 60.7558H46.4318" stroke="white" stroke-width="2.2165" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M50.8452 60.7558H76.8331" stroke="white" stroke-width="2.2165" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M422.892 38.5514H407.09C404.153 38.5514 401.773 36.1682 401.773 33.228V17.4038C401.773 14.4636 404.153 12.0804 407.09 12.0804H422.892C425.828 12.0804 428.208 14.4636 428.208 17.4038V33.228C428.208 36.1682 425.828 38.5514 422.892 38.5514Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M423.986 23.95L423.594 22.2151C423.521 21.8773 423.174 21.6673 422.837 21.7403L421.815 21.9777C421.551 22.0417 421.287 21.9138 421.141 21.6855C420.739 21.0555 420.247 20.4894 419.682 20.0146C419.454 19.8228 419.381 19.5123 419.508 19.2475L420.019 18.1975C420.174 17.887 420.037 17.5035 419.727 17.3574L418.122 16.5813C417.812 16.426 417.429 16.563 417.283 16.8735L416.736 18.0149C416.618 18.2705 416.335 18.3984 416.062 18.3618C415.724 18.3162 415.369 18.2888 415.022 18.2888C414.666 18.2888 414.32 18.3162 413.983 18.3618C413.7 18.3984 413.426 18.2705 413.308 18.0149L412.761 16.8735C412.606 16.563 412.232 16.426 411.922 16.5813L410.317 17.3574C410.007 17.5126 409.87 17.887 410.025 18.1975L410.536 19.2475C410.663 19.5123 410.581 19.8228 410.363 20.0146C409.797 20.4985 409.296 21.0555 408.904 21.6855C408.758 21.9138 408.493 22.0417 408.229 21.9777L407.207 21.7403C406.87 21.6673 406.533 21.8773 406.451 22.2151L406.059 23.95C405.986 24.2879 406.195 24.6257 406.533 24.7079L407.828 25.0001C407.818 25.1827 407.8 25.3562 407.8 25.5388C407.8 26.4063 407.955 27.2464 408.238 28.0134C408.329 28.269 408.265 28.5612 408.046 28.7347L407.545 29.1365C407.271 29.3556 407.226 29.7483 407.445 30.0222L408.502 31.4193C408.721 31.6932 409.113 31.7388 409.387 31.5197L409.733 31.2366C409.97 31.054 410.299 31.0631 410.527 31.2458C411.256 31.8119 412.086 32.2502 412.998 32.515C413.271 32.5972 413.472 32.8346 413.472 33.1268V33.492C413.472 33.839 413.755 34.122 414.101 34.122H415.879C416.226 34.122 416.508 33.839 416.508 33.492V33.1268C416.508 32.8346 416.709 32.5972 416.983 32.515C417.894 32.2502 418.724 31.821 419.454 31.2458C419.691 31.0631 420.019 31.0449 420.247 31.2366L420.594 31.5197C420.867 31.7388 421.259 31.6932 421.478 31.4193L422.591 30.0313C422.809 29.7574 422.764 29.3648 422.49 29.1456L421.989 28.7439C421.77 28.5704 421.706 28.2782 421.797 28.0225C422.08 27.2464 422.235 26.4154 422.235 25.548C422.235 25.3654 422.217 25.1919 422.208 25.0093L423.502 24.7171C423.849 24.6257 424.059 24.2879 423.986 23.95ZM414.995 30.0496C412.505 30.0496 410.49 28.0316 410.49 25.5388C410.49 23.0461 412.505 21.0281 414.995 21.0281C417.484 21.0281 419.499 23.0461 419.499 25.5388C419.499 28.0316 417.484 30.0496 414.995 30.0496Z" fill="white"/>[m
[32m+[m[32m<path d="M563.142 143.35C564.761 133.369 557.993 123.966 548.026 122.348C538.059 120.73 528.666 127.509 527.047 137.489C525.428 147.469 532.196 156.872 542.163 158.491C552.13 160.109 561.523 153.33 563.142 143.35Z" fill="#6842C2"/>[m
[32m+[m[32m<path d="M555.102 142.823C556.407 137.292 552.987 131.751 547.463 130.446C541.94 129.141 536.404 132.567 535.098 138.097C533.793 143.628 537.212 149.17 542.736 150.475C548.26 151.78 553.796 148.354 555.102 142.823Z" fill="#6842C2" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M545.081 133.695V140.424L541.534 143.976" fill="#6842C2"/>[m
[32m+[m[32m<path d="M545.081 133.695V140.424L541.534 143.976" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M545.081 130.134V131.12" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M545.081 149.738V150.715" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M555.358 140.424H554.373" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M535.79 140.424H534.804" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/logo.svg b/src/assets/images/logo.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..8142afe[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/logo.svg[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<svg width="434" height="127" viewBox="0 0 434 127" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M72.7588 5.37207H20.8034C6.9776 5.37207 0 12.0833 0 25.3766V96.5222C0 98.2647 0.935927 99.3376 2.95235 99.3376H18.6577C20.5371 99.3376 21.747 98.2647 21.747 96.5222V93.821C21.747 87.2314 24.5243 83.6399 31.4258 82.9475H72.7588C87.9239 82.9475 94.7721 76.3731 94.7721 62.0071V26.3125C94.7721 11.9464 87.9239 5.37207 72.7588 5.37207ZM73.0479 55.9654C73.0479 63.7572 71.2826 65.3627 62.0147 65.3627H40.0014C30.741 65.3627 24.8287 68.452 21.7394 74.4937V30.6117C21.7394 24.57 23.2155 22.9568 30.5964 22.9568H62.0147C71.2826 22.9568 73.0479 24.57 73.0479 32.3542V55.9654Z" fill="white"/>[m
[32m+[m[32m<path d="M144.574 44.7038C132.628 44.7038 127.522 50.7455 127.522 60.9494V96.7885C127.522 98.4017 126.715 99.3376 124.836 99.3376H110.607C108.727 99.3376 107.791 98.4017 107.791 96.7885V31.2813C107.791 29.6681 108.727 28.7246 110.607 28.7246H122.553C124.303 28.7246 125.239 29.6681 125.239 31.2813V41.8504C127.522 33.1303 134.104 28.6942 145.784 28.6942H150.616C152.358 28.6942 153.294 29.6377 153.294 31.2508V42.1548C153.294 43.8973 152.358 44.7038 150.616 44.7038H144.574Z" fill="white"/>[m
[32m+[m[32m<path d="M237.193 80.1397C237.193 93.4329 231.288 99.3376 217.196 99.3376H182.293C168.33 99.3376 162.288 93.4329 162.288 80.1397V47.9377C162.288 34.6521 168.33 28.7398 182.293 28.7398H217.196C231.288 28.7398 237.193 34.6521 237.193 47.9377V80.1397ZM217.462 53.0283C217.462 46.043 216.123 44.7038 207.799 44.7038H191.819C183.366 44.7038 182.019 46.043 182.019 53.0283V75.0416C182.019 82.0192 183.366 83.366 191.819 83.366H207.799C216.123 83.366 217.462 82.0192 217.462 75.0416V53.0283Z" fill="white"/>[m
[32m+[m[32m<path d="M257.06 44.7038H250.341C248.591 44.7038 247.655 43.8973 247.655 42.1548V31.2813C247.655 29.6681 248.591 28.7246 250.341 28.7246H257.053V20.0045C257.06 6.71128 264.038 0 277.864 0H294.376C296.255 0 297.062 0.943536 297.062 2.54907V13.4226C297.062 15.1727 296.255 15.9716 294.376 15.9716H285.655C278.267 15.9716 276.791 17.5848 276.791 23.6264V28.7246H294.376C296.255 28.7246 297.062 29.6681 297.062 31.2813V42.1548C297.062 43.8973 296.255 44.7038 294.376 44.7038H276.791V96.7885C276.791 98.4017 275.855 99.3376 273.975 99.3376H259.746C257.867 99.3376 257.06 98.4017 257.06 96.7885V44.7038Z" fill="white"/>[m
[32m+[m[32m<path d="M311.831 44.7038H305.127C303.385 44.7038 302.449 43.8973 302.449 42.1548V31.2813C302.449 29.6681 303.385 28.7246 305.127 28.7246H311.846V20.0045C311.831 6.71128 318.824 0 332.634 0H349.146C351.026 0 351.832 0.943536 351.832 2.54907V13.4226C351.832 15.1727 351.026 15.9716 349.146 15.9716H340.419C333.038 15.9716 331.562 17.5848 331.562 23.6264V28.7246H349.146C351.026 28.7246 351.832 29.6681 351.832 31.2813V42.1548C351.832 43.8973 351.026 44.7038 349.146 44.7038H331.562V96.7885C331.562 98.4017 330.618 99.3376 328.739 99.3376H314.509C312.63 99.3376 311.831 98.4017 311.831 96.7885V44.7038Z" fill="white"/>[m
[32m+[m[32m<path d="M411.831 126.723H382.566C369.417 126.723 363.779 121.625 363.779 109.001V107.662C363.74 107.302 363.782 106.937 363.904 106.596C364.025 106.254 364.221 105.944 364.479 105.689C364.736 105.434 365.047 105.24 365.39 105.122C365.733 105.004 366.097 104.964 366.457 105.006H380.154C382.033 105.006 382.969 105.95 382.969 107.692V108.362C382.969 111.048 384.453 112.121 387.405 112.121H404.32C412.371 112.121 414.387 110.112 414.387 103.264V82.0876C411.298 88.1293 405.393 91.2186 396.125 91.2186H382.429C368.466 91.2186 362.287 85.3139 362.287 72.0207V31.2813C362.269 30.9295 362.327 30.5779 362.458 30.2507C362.588 29.9234 362.788 29.6283 363.043 29.3854C363.298 29.1426 363.602 28.9578 363.936 28.8437C364.269 28.7296 364.623 28.689 364.973 28.7246H379.34C381.082 28.7246 382.026 29.6681 382.026 31.2813V66.9606C382.026 73.9382 383.502 75.285 391.826 75.285H402.03C410.887 75.285 414.38 71.6555 414.38 64.2746V31.2813C414.38 29.6681 415.316 28.7246 417.066 28.7246H431.439C431.783 28.6914 432.13 28.7348 432.455 28.8517C432.78 28.9685 433.075 29.1559 433.318 29.4004C433.562 29.6449 433.749 29.9404 433.864 30.2656C433.98 30.5908 434.023 30.9377 433.989 31.2813V105.379C433.981 119.464 426.463 126.723 411.831 126.723Z" fill="white"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/images/success-background.svg b/src/assets/images/success-background.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..6b3a334[m
[1m--- /dev/null[m
[1m+++ b/src/assets/images/success-background.svg[m
[36m@@ -0,0 +1,77 @@[m
[32m+[m[32m<svg width="1120" height="565" viewBox="0 0 1120 565" fill="none" xmlns="http://www.w3.org/2000/svg">[m
[32m+[m[32m<path d="M1020.77 183.235C1020.77 188.877 1016.21 193.452 1010.57 193.452C1004.94 193.452 1000.37 188.877 1000.37 183.235C1000.37 177.592 1004.94 173.018 1010.57 173.018C1016.19 173.018 1020.77 177.592 1020.77 183.235Z" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M1017.95 190.283L1025.15 197.509" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M276.847 153.154L287.582 163.903" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M287.582 153.154L276.847 163.903" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M892.155 406.633L902.89 417.382" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M902.89 406.633L892.155 417.382" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M305.657 501.133V516.333" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M313.266 508.732H298.068" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M100.699 250.247C100.699 255.337 96.5748 259.485 91.4733 259.485C86.3896 259.485 82.248 255.355 82.248 250.247C82.248 245.156 86.3719 241.009 91.4733 241.009C96.5748 241.027 100.699 245.156 100.699 250.247Z" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M643.628 11.0563C643.628 16.1469 639.504 20.2941 634.403 20.2941C629.319 20.2941 625.177 16.1647 625.177 11.0563C625.177 5.96566 629.301 1.81839 634.403 1.81839C639.504 1.83619 643.628 5.96566 643.628 11.0563Z" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M778.971 553.585C778.971 558.676 774.847 562.823 769.746 562.823C764.662 562.823 760.521 558.693 760.521 553.585C760.521 548.494 764.644 544.347 769.746 544.347C774.847 544.365 778.971 548.494 778.971 553.585Z" stroke="#04D361" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>[m
[32m+[m[32m<path d="M4.14583 377.691C5.99109 377.691 7.48697 376.194 7.48697 374.346C7.48697 372.498 5.99109 371 4.14583 371C2.30057 371 0.804688 372.498 0.804688 374.346C0.804688 376.194 2.30057 377.691 4.14583 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M27.484 377.691C29.3292 377.691 30.8251 376.194 30.8251 374.346C30.8251 372.498 29.3292 371 27.484 371C25.6387 371 24.1428 372.498 24.1428 374.346C24.1428 376.194 25.6387 377.691 27.484 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M50.805 377.691C52.6503 377.691 54.1461 376.194 54.1461 374.346C54.1461 372.498 52.6503 371 50.805 371C48.9597 371 47.4639 372.498 47.4639 374.346C47.4639 376.194 48.9597 377.691 50.805 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M74.1441 377.691C75.9894 377.691 77.4853 376.194 77.4853 374.346C77.4853 372.498 75.9894 371 74.1441 371C72.2989 371 70.803 372.498 70.803 374.346C70.803 376.194 72.2989 377.691 74.1441 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M97.4649 377.691C99.3102 377.691 100.806 376.194 100.806 374.346C100.806 372.498 99.3102 371 97.4649 371C95.6197 371 94.1238 372.498 94.1238 374.346C94.1238 376.194 95.6197 377.691 97.4649 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M120.803 377.691C122.649 377.691 124.144 376.194 124.144 374.346C124.144 372.498 122.649 371 120.803 371C118.958 371 117.462 372.498 117.462 374.346C117.462 376.194 118.958 377.691 120.803 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M4.14534 401.044C5.9906 401.044 7.48648 399.546 7.48648 397.699C7.48648 395.851 5.9906 394.353 4.14534 394.353C2.30008 394.353 0.804199 395.851 0.804199 397.699C0.804199 399.546 2.30008 401.044 4.14534 401.044Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M27.484 401.044C29.3292 401.044 30.8251 399.546 30.8251 397.699C30.8251 395.851 29.3292 394.353 27.484 394.353C25.6387 394.353 24.1428 395.851 24.1428 397.699C24.1428 399.546 25.6387 401.044 27.484 401.044Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M50.8055 401.044C52.6508 401.044 54.1466 399.546 54.1466 397.699C54.1466 395.851 52.6508 394.353 50.8055 394.353C48.9602 394.353 47.4644 395.851 47.4644 397.699C47.4644 399.546 48.9602 401.044 50.8055 401.044Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M74.1441 401.044C75.9894 401.044 77.4853 399.546 77.4853 397.699C77.4853 395.851 75.9894 394.353 74.1441 394.353C72.2989 394.353 70.803 395.851 70.803 397.699C70.803 399.546 72.2989 401.044 74.1441 401.044Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M97.4649 401.044C99.3102 401.044 100.806 399.546 100.806 397.699C100.806 395.851 99.3102 394.353 97.4649 394.353C95.6197 394.353 94.1238 395.851 94.1238 397.699C94.1238 399.546 95.6197 401.044 97.4649 401.044Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M120.803 401.044C122.649 401.044 124.144 399.546 124.144 397.699C124.144 395.851 122.649 394.353 120.803 394.353C118.958 394.353 117.462 395.851 117.462 397.699C117.462 399.546 118.958 401.044 120.803 401.044Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M4.14534 424.415C5.9906 424.415 7.48648 422.917 7.48648 421.069C7.48648 419.221 5.9906 417.724 4.14534 417.724C2.30008 417.724 0.804199 419.221 0.804199 421.069C0.804199 422.917 2.30008 424.415 4.14534 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M27.484 424.415C29.3292 424.415 30.8251 422.917 30.8251 421.069C30.8251 419.221 29.3292 417.724 27.484 417.724C25.6387 417.724 24.1428 419.221 24.1428 421.069C24.1428 422.917 25.6387 424.415 27.484 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M50.8055 424.415C52.6508 424.415 54.1466 422.917 54.1466 421.069C54.1466 419.221 52.6508 417.724 50.8055 417.724C48.9602 417.724 47.4644 419.221 47.4644 421.069C47.4644 422.917 48.9602 424.415 50.8055 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M74.1441 424.415C75.9894 424.415 77.4853 422.917 77.4853 421.069C77.4853 419.221 75.9894 417.724 74.1441 417.724C72.2989 417.724 70.803 419.221 70.803 421.069C70.803 422.917 72.2989 424.415 74.1441 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M97.4649 424.415C99.3102 424.415 100.806 422.917 100.806 421.069C100.806 419.221 99.3102 417.724 97.4649 417.724C95.6197 417.724 94.1238 419.221 94.1238 421.069C94.1238 422.917 95.6197 424.415 97.4649 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M120.803 424.415C122.649 424.415 124.144 422.917 124.144 421.069C124.144 419.221 122.649 417.724 120.803 417.724C118.958 417.724 117.462 419.221 117.462 421.069C117.462 422.917 118.958 424.415 120.803 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M4.14534 447.768C5.9906 447.768 7.48648 446.27 7.48648 444.422C7.48648 442.574 5.9906 441.076 4.14534 441.076C2.30008 441.076 0.804199 442.574 0.804199 444.422C0.804199 446.27 2.30008 447.768 4.14534 447.768Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M27.484 447.768C29.3292 447.768 30.8251 446.27 30.8251 444.422C30.8251 442.574 29.3292 441.076 27.484 441.076C25.6387 441.076 24.1428 442.574 24.1428 444.422C24.1428 446.27 25.6387 447.768 27.484 447.768Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M50.8055 447.768C52.6508 447.768 54.1466 446.27 54.1466 444.422C54.1466 442.574 52.6508 441.076 50.8055 441.076C48.9602 441.076 47.4644 442.574 47.4644 444.422C47.4644 446.27 48.9602 447.768 50.8055 447.768Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M74.1441 447.768C75.9894 447.768 77.4853 446.27 77.4853 444.422C77.4853 442.574 75.9894 441.076 74.1441 441.076C72.2989 441.076 70.803 442.574 70.803 444.422C70.803 446.27 72.2989 447.768 74.1441 447.768Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M97.4649 447.768C99.3102 447.768 100.806 446.27 100.806 444.422C100.806 442.574 99.3102 441.076 97.4649 441.076C95.6197 441.076 94.1238 442.574 94.1238 444.422C94.1238 446.27 95.6197 447.768 97.4649 447.768Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M120.803 447.768C122.649 447.768 124.144 446.27 124.144 444.422C124.144 442.574 122.649 441.076 120.803 441.076C118.958 441.076 117.462 442.574 117.462 444.422C117.462 446.27 118.958 447.768 120.803 447.768Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M773.976 144.618C775.822 144.618 777.318 143.12 777.318 141.272C777.318 139.424 775.822 137.926 773.976 137.926C772.131 137.926 770.635 139.424 770.635 141.272C770.635 143.12 772.131 144.618 773.976 144.618Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M797.297 144.618C799.142 144.618 800.638 143.12 800.638 141.272C800.638 139.424 799.142 137.926 797.297 137.926C795.452 137.926 793.956 139.424 793.956 141.272C793.956 143.12 795.452 144.618 797.297 144.618Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M820.636 144.618C822.481 144.618 823.977 143.12 823.977 141.272C823.977 139.424 822.481 137.926 820.636 137.926C818.79 137.926 817.294 139.424 817.294 141.272C817.294 143.12 818.79 144.618 820.636 144.618Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M773.976 167.988C775.821 167.988 777.317 166.49 777.317 164.642C777.317 162.795 775.821 161.297 773.976 161.297C772.131 161.297 770.635 162.795 770.635 164.642C770.635 166.49 772.131 167.988 773.976 167.988Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M797.297 167.988C799.142 167.988 800.638 166.49 800.638 164.643C800.638 162.795 799.142 161.297 797.297 161.297C795.452 161.297 793.956 162.795 793.956 164.643C793.956 166.49 795.452 167.988 797.297 167.988Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M820.636 167.988C822.481 167.988 823.977 166.49 823.977 164.643C823.977 162.795 822.481 161.297 820.636 161.297C818.79 161.297 817.294 162.795 817.294 164.643C817.294 166.49 818.79 167.988 820.636 167.988Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M261.705 22.4333C263.55 22.4333 265.046 20.9353 265.046 19.0876C265.046 17.2398 263.55 15.7419 261.705 15.7419C259.859 15.7419 258.364 17.2398 258.364 19.0876C258.364 20.9353 259.859 22.4333 261.705 22.4333Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M285.025 22.4333C286.87 22.4333 288.366 20.9353 288.366 19.0875C288.366 17.2398 286.87 15.7418 285.025 15.7418C283.18 15.7418 281.684 17.2398 281.684 19.0875C281.684 20.9353 283.18 22.4333 285.025 22.4333Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M308.363 22.4333C310.209 22.4333 311.704 20.9353 311.704 19.0875C311.704 17.2398 310.209 15.7418 308.363 15.7418C306.518 15.7418 305.022 17.2398 305.022 19.0875C305.022 20.9353 306.518 22.4333 308.363 22.4333Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M261.704 45.8039C263.55 45.8039 265.045 44.306 265.045 42.4582C265.045 40.6104 263.55 39.1125 261.704 39.1125C259.859 39.1125 258.363 40.6104 258.363 42.4582C258.363 44.306 259.859 45.8039 261.704 45.8039Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M285.025 45.8039C286.87 45.8039 288.366 44.306 288.366 42.4582C288.366 40.6104 286.87 39.1125 285.025 39.1125C283.18 39.1125 281.684 40.6104 281.684 42.4582C281.684 44.306 283.18 45.8039 285.025 45.8039Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M308.365 45.8039C310.21 45.8039 311.706 44.306 311.706 42.4582C311.706 40.6104 310.21 39.1125 308.365 39.1125C306.519 39.1125 305.023 40.6104 305.023 42.4582C305.023 44.306 306.519 45.8039 308.365 45.8039Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1116.66 377.691C1118.5 377.691 1120 376.194 1120 374.346C1120 372.498 1118.5 371 1116.66 371C1114.81 371 1113.32 372.498 1113.32 374.346C1113.32 376.194 1114.81 377.691 1116.66 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1116.66 401.062C1118.5 401.062 1120 399.564 1120 397.716C1120 395.869 1118.5 394.371 1116.66 394.371C1114.81 394.371 1113.32 395.869 1113.32 397.716C1113.32 399.564 1114.81 401.062 1116.66 401.062Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1116.66 424.415C1118.5 424.415 1120 422.917 1120 421.069C1120 419.221 1118.5 417.723 1116.66 417.723C1114.81 417.723 1113.32 419.221 1113.32 421.069C1113.32 422.917 1114.81 424.415 1116.66 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1116.66 447.786C1118.5 447.786 1120 446.288 1120 444.44C1120 442.592 1118.5 441.094 1116.66 441.094C1114.81 441.094 1113.32 442.592 1113.32 444.44C1113.32 446.288 1114.81 447.786 1116.66 447.786Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1116.66 471.138C1118.5 471.138 1120 469.64 1120 467.793C1120 465.945 1118.5 464.447 1116.66 464.447C1114.81 464.447 1113.32 465.945 1113.32 467.793C1113.32 469.64 1114.81 471.138 1116.66 471.138Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1116.66 494.509C1118.5 494.509 1120 493.011 1120 491.163C1120 489.315 1118.5 487.817 1116.66 487.817C1114.81 487.817 1113.32 489.315 1113.32 491.163C1113.32 493.011 1114.81 494.509 1116.66 494.509Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1116.66 517.862C1118.5 517.862 1120 516.364 1120 514.516C1120 512.668 1118.5 511.17 1116.66 511.17C1114.81 511.17 1113.32 512.668 1113.32 514.516C1113.32 516.364 1114.81 517.862 1116.66 517.862Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1093.32 377.691C1095.17 377.691 1096.66 376.194 1096.66 374.346C1096.66 372.498 1095.17 371 1093.32 371C1091.48 371 1089.98 372.498 1089.98 374.346C1089.98 376.194 1091.48 377.691 1093.32 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1093.32 401.062C1095.17 401.062 1096.66 399.564 1096.66 397.716C1096.66 395.869 1095.17 394.371 1093.32 394.371C1091.48 394.371 1089.98 395.869 1089.98 397.716C1089.98 399.564 1091.48 401.062 1093.32 401.062Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1093.32 424.415C1095.17 424.415 1096.66 422.917 1096.66 421.069C1096.66 419.221 1095.17 417.723 1093.32 417.723C1091.48 417.723 1089.98 419.221 1089.98 421.069C1089.98 422.917 1091.48 424.415 1093.32 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1093.32 447.786C1095.17 447.786 1096.66 446.288 1096.66 444.44C1096.66 442.592 1095.17 441.094 1093.32 441.094C1091.48 441.094 1089.98 442.592 1089.98 444.44C1089.98 446.288 1091.48 447.786 1093.32 447.786Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1093.32 471.138C1095.17 471.138 1096.66 469.64 1096.66 467.793C1096.66 465.945 1095.17 464.447 1093.32 464.447C1091.48 464.447 1089.98 465.945 1089.98 467.793C1089.98 469.64 1091.48 471.138 1093.32 471.138Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1093.32 494.509C1095.17 494.509 1096.66 493.011 1096.66 491.163C1096.66 489.315 1095.17 487.817 1093.32 487.817C1091.48 487.817 1089.98 489.315 1089.98 491.163C1089.98 493.011 1091.48 494.509 1093.32 494.509Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1093.32 517.862C1095.17 517.862 1096.66 516.364 1096.66 514.516C1096.66 512.668 1095.17 511.17 1093.32 511.17C1091.48 511.17 1089.98 512.668 1089.98 514.516C1089.98 516.364 1091.48 517.862 1093.32 517.862Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1070 377.691C1071.84 377.691 1073.34 376.194 1073.34 374.346C1073.34 372.498 1071.84 371 1070 371C1068.15 371 1066.66 372.498 1066.66 374.346C1066.66 376.194 1068.15 377.691 1070 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1070 401.062C1071.84 401.062 1073.34 399.564 1073.34 397.716C1073.34 395.869 1071.84 394.371 1070 394.371C1068.15 394.371 1066.66 395.869 1066.66 397.716C1066.66 399.564 1068.15 401.062 1070 401.062Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1070 424.415C1071.84 424.415 1073.34 422.917 1073.34 421.069C1073.34 419.221 1071.84 417.723 1070 417.723C1068.15 417.723 1066.66 419.221 1066.66 421.069C1066.66 422.917 1068.15 424.415 1070 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1070 447.786C1071.84 447.786 1073.34 446.288 1073.34 444.44C1073.34 442.592 1071.84 441.094 1070 441.094C1068.15 441.094 1066.66 442.592 1066.66 444.44C1066.66 446.288 1068.15 447.786 1070 447.786Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1070 471.138C1071.84 471.138 1073.34 469.64 1073.34 467.793C1073.34 465.945 1071.84 464.447 1070 464.447C1068.15 464.447 1066.66 465.945 1066.66 467.793C1066.66 469.64 1068.15 471.138 1070 471.138Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1070 494.509C1071.84 494.509 1073.34 493.011 1073.34 491.163C1073.34 489.315 1071.84 487.817 1070 487.817C1068.15 487.817 1066.66 489.315 1066.66 491.163C1066.66 493.011 1068.15 494.509 1070 494.509Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1070 517.862C1071.84 517.862 1073.34 516.364 1073.34 514.516C1073.34 512.668 1071.84 511.17 1070 511.17C1068.15 511.17 1066.66 512.668 1066.66 514.516C1066.66 516.364 1068.15 517.862 1070 517.862Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1046.66 377.691C1048.51 377.691 1050 376.194 1050 374.346C1050 372.498 1048.51 371 1046.66 371C1044.82 371 1043.32 372.498 1043.32 374.346C1043.32 376.194 1044.82 377.691 1046.66 377.691Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1046.66 401.062C1048.51 401.062 1050 399.564 1050 397.716C1050 395.869 1048.51 394.371 1046.66 394.371C1044.81 394.371 1043.32 395.869 1043.32 397.716C1043.32 399.564 1044.81 401.062 1046.66 401.062Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1046.66 424.415C1048.51 424.415 1050 422.917 1050 421.069C1050 419.221 1048.51 417.724 1046.66 417.724C1044.81 417.724 1043.32 419.221 1043.32 421.069C1043.32 422.917 1044.81 424.415 1046.66 424.415Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1046.66 447.786C1048.51 447.786 1050 446.288 1050 444.44C1050 442.592 1048.51 441.094 1046.66 441.094C1044.81 441.094 1043.32 442.592 1043.32 444.44C1043.32 446.288 1044.81 447.786 1046.66 447.786Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1046.66 471.138C1048.51 471.138 1050 469.64 1050 467.793C1050 465.945 1048.51 464.447 1046.66 464.447C1044.81 464.447 1043.32 465.945 1043.32 467.793C1043.32 469.64 1044.81 471.138 1046.66 471.138Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1046.66 494.509C1048.51 494.509 1050 493.011 1050 491.163C1050 489.315 1048.51 487.817 1046.66 487.817C1044.81 487.817 1043.32 489.315 1043.32 491.163C1043.32 493.011 1044.81 494.509 1046.66 494.509Z" fill="#9871F5"/>[m
[32m+[m[32m<path d="M1046.66 517.862C1048.51 517.862 1050 516.364 1050 514.516C1050 512.668 1048.51 511.17 1046.66 511.17C1044.81 511.17 1043.32 512.668 1043.32 514.516C1043.32 516.364 1044.81 517.862 1046.66 517.862Z" fill="#9871F5"/>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/assets/styles/global.css b/src/assets/styles/global.css[m
[1mnew file mode 100644[m
[1mindex 0000000..e7bd1d5[m
[1m--- /dev/null[m
[1m+++ b/src/assets/styles/global.css[m
[36m@@ -0,0 +1,59 @@[m
[32m+[m[32m:root{[m
[32m+[m[32mfont-size: 60%;[m
[32m+[m
[32m+[m[32m--color-background: #F0F0F7;[m
[32m+[m[32m--color-primary-lighter: #9871F5;[m
[32m+[m[32m--color-primary-light: #916BEA;[m
[32m+[m[32m--color-primary: #8257E5;[m
[32m+[m[32m--color-primary-dark: #774DD6;[m
[32m+[m[32m--color-primary-darker: #6842C2;[m
[32m+[m[32m--color-secundary: #04D361;[m
[32m+[m[32m--color-secundary-dark: #04BF58;[m
[32m+[m[32m--color-title-in-primary: #FFFFFF;[m
[32m+[m[32m--color-text-in-primary: #D4C2FF;[m
[32m+[m[32m--color-text-title: #32264D;[m
[32m+[m[32m--color-text-complement: #9C98A6;[m
[32m+[m[32m--color-text-base: #6A6180;[m
[32m+[m[32m--color-line-in-white: #E6E6F0;[m
[32m+[m[32m--color-input-background: #F8F8FC;[m
[32m+[m[32m--color-button-text: #FFFFFF;[m
[32m+[m[32m--color-box-base: #FFFFFF;[m
[32m+[m[32m--color-box-footer: #FAFAFC;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m*{margin: 0;[m
[32m+[m[32mpadding: 0;[m
[32m+[m[32mbox-sizing: border-box;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mhtml, body, #root{[m
[32m+[m[32m    height: 100vh;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mbody{[m
[32m+[m[32m    background: var(--color-background);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m#root{[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    align-items: center;[m
[32m+[m[32m    justify-content: center;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mbody,[m
[32m+[m[32minput,[m
[32m+[m[32mbutton,[m
[32m+[m[32mtextarea{[m
[32m+[m[32m    font: 500 1.6rem Poppins;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.container{[m
[32m+[m[32m    width: 90vw;[m
[32m+[m[32m    max-width: 600px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m@media (min-width: 600px){[m
[32m+[m[32m    :root {[m
[32m+[m[32m        font-size: 62,5%;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/src/index.css b/src/index.css[m
[1mdeleted file mode 100644[m
[1mindex ec2585e..0000000[m
[1m--- a/src/index.css[m
[1m+++ /dev/null[m
[36m@@ -1,13 +0,0 @@[m
[31m-body {[m
[31m-  margin: 0;[m
[31m-  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',[m
[31m-    'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',[m
[31m-    sans-serif;[m
[31m-  -webkit-font-smoothing: antialiased;[m
[31m-  -moz-osx-font-smoothing: grayscale;[m
[31m-}[m
[31m-[m
[31m-code {[m
[31m-  font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New',[m
[31m-    monospace;[m
[31m-}[m
[1mdiff --git a/src/index.tsx b/src/index.tsx[m
[1mindex f5185c1..c1f31c5 100644[m
[1m--- a/src/index.tsx[m
[1m+++ b/src/index.tsx[m
[36m@@ -1,8 +1,6 @@[m
 import React from 'react';[m
 import ReactDOM from 'react-dom';[m
[31m-import './index.css';[m
 import App from './App';[m
[31m-import * as serviceWorker from './serviceWorker';[m
 [m
 ReactDOM.render([m
   <React.StrictMode>[m
[36m@@ -10,8 +8,3 @@[m [mReactDOM.render([m
   </React.StrictMode>,[m
   document.getElementById('root')[m
 );[m
[31m-[m
[31m-// If you want your app to work offline and load faster, you can change[m
[31m-// unregister() to register() below. Note this comes with some pitfalls.[m
[31m-// Learn more about service workers: https://bit.ly/CRA-PWA[m
[31m-serviceWorker.unregister();[m
[1mdiff --git a/src/logo.svg b/src/logo.svg[m
[1mdeleted file mode 100644[m
[1mindex 6b60c10..0000000[m
[1m--- a/src/logo.svg[m
[1m+++ /dev/null[m
[36m@@ -1,7 +0,0 @@[m
[31m-<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 841.9 595.3">[m
[31m-    <g fill="#61DAFB">[m
[31m-        <path d="M666.3 296.5c0-32.5-40.7-63.3-103.1-82.4 14.4-63.6 8-114.2-20.2-130.4-6.5-3.8-14.1-5.6-22.4-5.6v22.3c4.6 0 8.3.9 11.4 2.6 13.6 7.8 19.5 37.5 14.9 75.7-1.1 9.4-2.9 19.3-5.1 29.4-19.6-4.8-41-8.5-63.5-10.9-13.5-18.5-27.5-35.3-41.6-50 32.6-30.3 63.2-46.9 84-46.9V78c-27.5 0-63.5 19.6-99.9 53.6-36.4-33.8-72.4-53.2-99.9-53.2v22.3c20.7 0 51.4 16.5 84 46.6-14 14.7-28 31.4-41.3 49.9-22.6 2.4-44 6.1-63.6 11-2.3-10-4-19.7-5.2-29-4.7-38.2 1.1-67.9 14.6-75.8 3-1.8 6.9-2.6 11.5-2.6V78.5c-8.4 0-16 1.8-22.6 5.6-28.1 16.2-34.4 66.7-19.9 130.1-62.2 19.2-102.7 49.9-102.7 82.3 0 32.5 40.7 63.3 103.1 82.4-14.4 63.6-8 114.2 20.2 130.4 6.5 3.8 14.1 5.6 22.5 5.6 27.5 0 63.5-19.6 99.9-53.6 36.4 33.8 72.4 53.2 99.9 53.2 8.4 0 16-1.8 22.6-5.6 28.1-16.2 34.4-66.7 19.9-130.1 62-19.1 102.5-49.9 102.5-82.3zm-130.2-66.7c-3.7 12.9-8.3 26.2-13.5 39.5-4.1-8-8.4-16-13.1-24-4.6-8-9.5-15.8-14.4-23.4 14.2 2.1 27.9 4.7 41 7.9zm-45.8 106.5c-7.8 13.5-15.8 26.3-24.1 38.2-14.9 1.3-30 2-45.2 2-15.1 0-30.2-.7-45-1.9-8.3-11.9-16.4-24.6-24.2-38-7.6-13.1-14.5-26.4-20.8-39.8 6.2-13.4 13.2-26.8 20.7-39.9 7.8-13.5 15.8-26.3 24.1-38.2 14.9-1.3 30-2 45.2-2 15.1 0 30.2.7 45 1.9 8.3 11.9 16.4 24.6 24.2 38 7.6 13.1 14.5 26.4 20.8 39.8-6.3 13.4-13.2 26.8-20.7 39.9zm32.3-13c5.4 13.4 10 26.8 13.8 39.8-13.1 3.2-26.9 5.9-41.2 8 4.9-7.7 9.8-15.6 14.4-23.7 4.6-8 8.9-16.1 13-24.1zM421.2 430c-9.3-9.6-18.6-20.3-27.8-32 9 .4 18.2.7 27.5.7 9.4 0 18.7-.2 27.8-.7-9 11.7-18.3 22.4-27.5 32zm-74.4-58.9c-14.2-2.1-27.9-4.7-41-7.9 3.7-12.9 8.3-26.2 13.5-39.5 4.1 8 8.4 16 13.1 24 4.7 8 9.5 15.8 14.4 23.4zM420.7 163c9.3 9.6 18.6 20.3 27.8 32-9-.4-18.2-.7-27.5-.7-9.4 0-18.7.2-27.8.7 9-11.7 18.3-22.4 27.5-32zm-74 58.9c-4.9 7.7-9.8 15.6-14.4 23.7-4.6 8-8.9 16-13 24-5.4-13.4-10-26.8-13.8-39.8 13.1-3.1 26.9-5.8 41.2-7.9zm-90.5 125.2c-35.4-15.1-58.3-34.9-58.3-50.6 0-15.7 22.9-35.6 58.3-50.6 8.6-3.7 18-7 27.7-10.1 5.7 19.6 13.2 40 22.5 60.9-9.2 20.8-16.6 41.1-22.2 60.6-9.9-3.1-19.3-6.5-28-10.2zM310 490c-13.6-7.8-19.5-37.5-14.9-75.7 1.1-9.4 2.9-19.3 5.1-29.4 19.6 4.8 41 8.5 63.5 10.9 13.5 18.5 27.5 35.3 41.6 50-32.6 30.3-63.2 46.9-84 46.9-4.5-.1-8.3-1-11.3-2.7zm237.2-76.2c4.7 38.2-1.1 67.9-14.6 75.8-3 1.8-6.9 2.6-11.5 2.6-20.7 0-51.4-16.5-84-46.6 14-14.7 28-31.4 41.3-49.9 22.6-2.4 44-6.1 63.6-11 2.3 10.1 4.1 19.8 5.2 29.1zm38.5-66.7c-8.6 3.7-18 7-27.7 10.1-5.7-19.6-13.2-40-22.5-60.9 9.2-20.8 16.6-41.1 22.2-60.6 9.9 3.1 19.3 6.5 28.1 10.2 35.4 15.1 58.3 34.9 58.3 50.6-.1 15.7-23 35.6-58.4 50.6zM320.8 78.4z"/>[m
[31m-        <circle cx="420.9" cy="296.5" r="45.7"/>[m
[31m-        <path d="M520.5 78.1z"/>[m
[31m-    </g>[m
[31m-</svg>[m
[1mdiff --git a/src/pages/Landing/Styles.css b/src/pages/Landing/Styles.css[m
[1mnew file mode 100644[m
[1mindex 0000000..89bc28a[m
[1m--- /dev/null[m
[1m+++ b/src/pages/Landing/Styles.css[m
[36m@@ -0,0 +1,133 @@[m
[32m+[m[32m#page-landing{[m
[32m+[m[32m    width: 100vw;[m
[32m+[m[32m    height: 100vh;[m
[32m+[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    justify-content: center;[m
[32m+[m[32m    align-items: center;[m
[32m+[m
[32m+[m[32m    color: var(--color-text-in-primary);[m
[32m+[m[32m    background: var(--color-primary);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.logo-container img{[m
[32m+[m[32m    height: 9rem;[m
[32m+[m[32m    text-align: left;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.hero-image{[m
[32m+[m[32m    width: 100%;[m
[32m+[m[32m}[m
[32m+[m[32m.logo-container {[m
[32m+[m[32m    text-align: center;[m
[32m+[m[32m    margin-bottom: 3.2rem;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.logo-container h2{[m
[32m+[m[32m    font-weight: 500;[m
[32m+[m[32m    font-size: 2.4rem;[m
[32m+[m[32m    line-height: 4.6rem;[m
[32m+[m[32m    margin-top: 0.8rem;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.buttons-container{[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    justify-content: center;[m
[32m+[m[32m    margin: 3.2rem 0;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.buttons-container a {[m
[32m+[m[32m    width: 30rem;[m
[32m+[m[32m    height: 10.4rem;[m
[32m+[m[32m    border-radius: 0.8rem;[m
[32m+[m[41m    [m
[32m+[m[32m    font: 700 2.0rem Archivo;[m
[32m+[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    align-items: center;[m
[32m+[m[32m    justify-content: center;[m
[32m+[m[32m    text-decoration: none;[m
[32m+[m[32m    color: var(--color-button-text);[m
[32m+[m
[32m+[m[32m    transition: background-color 0.3s;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.buttons-container a:first-child{[m
[32m+[m[32m    margin-right: 1.6rem;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.buttons-container a img{[m
[32m+[m[32m    width: 4rem;[m
[32m+[m[32m    margin-right: 2rem;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.buttons-container a.study{[m
[32m+[m[32m    background: var(--color-primary-lighter);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.buttons-container a.give-classes{[m
[32m+[m[32m    background: var(--color-secundary);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.buttons-container a.study:hover{[m
[32m+[m[32m    background: var(--color-primary-light);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.buttons-container a.give-classes:hover{[m
[32m+[m[32m    background: var(--color-secundary-dark);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.total-connections{[m
[32m+[m[32m    font-size: 1.4rem;[m
[32m+[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    align-items: center;[m
[32m+[m[32m    justify-content: center;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.total-connections img{[m
[32m+[m[32m    margin-left: 0.8rem;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m@media (min-width: 1100px){[m
[32m+[m[32m    #page-landing-content{[m
[32m+[m[32m        max-width: 1100px;[m
[32m+[m
[32m+[m[32m        display: grid;[m
[32m+[m[32m        grid-template-rows: 350px 1fr;[m
[32m+[m[32m        grid-template-columns: 2fr 1fr 1fr;[m
[32m+[m[32m        grid-template-areas:[m[41m [m
[32m+[m[32m        "logo hero hero"[m
[32m+[m[32m        "buttons buttons total"[m
[32m+[m[32m        ;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .logo-container{[m
[32m+[m[32m        grid-area: logo;[m
[32m+[m[32m        align-self: center;[m
[32m+[m[32m        margin: 0;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .logo-container{[m
[32m+[m[32m        text-align: initial;[m
[32m+[m[32m        font-size: 3.6rem;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .hero-image{[m
[32m+[m[32m        grid-area: hero;[m
[32m+[m[32m        justify-self: end;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .buttons-container{[m
[32m+[m[32m        grid-area: buttons;[m
[32m+[m[32m        justify-content: flex-start;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .buttons-container a{[m
[32m+[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .total-connections{[m
[32m+[m[32m        grid-area: total;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/src/pages/Landing/index.tsx b/src/pages/Landing/index.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..2b754fa[m
[1m--- /dev/null[m
[1m+++ b/src/pages/Landing/index.tsx[m
[36m@@ -0,0 +1,51 @@[m
[32m+[m[32mimport React from 'react';[m
[32m+[m
[32m+[m[32mimport logoImg from '../../assets/images/logo.svg';[m
[32m+[m[32mimport landingimg from '../../assets/images/landing.svg';[m
[32m+[m
[32m+[m[32mimport studyIcon from '../../assets/images/icons/study.svg';[m
[32m+[m[32mimport giveClassesIcon from '../../assets/images/icons/give-classes.svg';[m
[32m+[m[32mimport purpleHeartIcon from '../../assets/images/icons/purple-heart.svg';[m
[32m+[m
[32m+[m[32mimport './Styles.css'[m
[32m+[m
[32m+[m[32mimport {Link} from 'react-router-dom';[m
[32m+[m
[32m+[m
[32m+[m[32mfunction Landing() {[m
[32m+[m[32m    return([m
[32m+[m[32m        <div id="page-landing">[m
[32m+[m[32m            <div id="page-landing-content" className="container">[m
[32m+[m[32m                <div className="logo-container">[m
[32m+[m[32m                    <img src={logoImg} alt="Proffy"/>[m
[32m+[m[32m                    <h2>Sua plataforma de estudos online.</h2>[m
[32m+[m[32m                </div>[m
[32m+[m[41m                [m
[32m+[m[32m                <img[m[41m [m
[32m+[m[32m                    src={landingimg}[m[41m [m
[32m+[m[32m                    alt="Plataforma de estudos"[m[41m [m
[32m+[m[32m                    className="hero-image"[m
[32m+[m[32m                />[m
[32m+[m
[32m+[m[32m                <div className="buttons-container">[m
[32m+[m[32m                    <Link to="give-classe" className="study">[m
[32m+[m[32m                        <img src={studyIcon} alt="Estudar"/>[m
[32m+[m[32m                        Estudar[m
[32m+[m[32m                    </Link>[m
[32m+[m
[32m+[m[32m                    <Link to="study" className="give-classes">[m
[32m+[m[32m                        <img src={giveClassesIcon} alt="Dar aulas"/>[m
[32m+[m[32m                        Dar aulas[m
[32m+[m[32m                    </Link>[m
[32m+[m[32m                </div>[m[41m  [m
[32m+[m
[32m+[m[32m                <span className="total-connections">[m
[32m+[m[32m                    Total de 200 conexões já realizadas[m[41m [m
[32m+[m[32m                    <img src={purpleHeartIcon} alt="Coração roxo"/>[m
[32m+[m[32m                </span>[m[41m                [m
[32m+[m[32m            </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default Landing;[m
\ No newline at end of file[m
[1mdiff --git a/src/pages/TeacherForm/index.tsx b/src/pages/TeacherForm/index.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..c315f77[m
[1m--- /dev/null[m
[1m+++ b/src/pages/TeacherForm/index.tsx[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32mimport React from 'react';[m
[32m+[m
[32m+[m[32mfunction TeacherForm(){[m
[32m+[m[32m    return([m
[32m+[m[32m        <h1>Teachers Form</h1>[m
[32m+[m[32m    )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default TeacherForm;[m
\ No newline at end of file[m
[1mdiff --git a/src/pages/TeeacherList/index.tsx b/src/pages/TeeacherList/index.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..3a3de14[m
[1m--- /dev/null[m
[1m+++ b/src/pages/TeeacherList/index.tsx[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport {Link} from 'react-router-dom';[m
[32m+[m
[32m+[m[32mimport backIcon from '../../assets/images/icons/back.svg';[m
[32m+[m[32mimport logoImg from '../../assets/images/logo.svg';[m
[32m+[m
[32m+[m[32mfunction TeacherList(){[m
[32m+[m[32m    return([m
[32m+[m[32m        <div id='page-teacher-list' className='container'>[m
[32m+[m[32m            <header className='page-header'>[m
[32m+[m[32m                <div className='top-bar-container'>[m
[32m+[m[32m                    <Link to='/'>[m
[32m+[m[32m                        <img src={backIcon} alt="Voltar"/>[m
[32m+[m[32m                    </Link>[m
[32m+[m[32m                    <img src={logoImg} alt="Proffy"/>[m
[32m+[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m            </header>[m
[32m+[m
[32m+[m[32m        </div>[m
[32m+[m[32m    )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default TeacherList;[m
\ No newline at end of file[m
[1mdiff --git a/src/routes.tsx b/src/routes.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..59a7556[m
[1m--- /dev/null[m
[1m+++ b/src/routes.tsx[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport {BrowserRouter, Route} from 'react-router-dom';[m
[32m+[m[32mimport Landing from './pages/Landing';[m
[32m+[m[32mimport TeacherList from './pages/TeeacherList';[m
[32m+[m[32mimport TeacherForm from './pages/TeacherForm';[m
[32m+[m
[32m+[m
[32m+[m[32mfunction Routes(){[m
[32m+[m[32m    return ([m
[32m+[m[32m        <BrowserRouter>[m
[32m+[m[32m        <Route path='/' exact component={Landing}/>[m
[32m+[m[32m        <Route path='/study' component={TeacherList}/>[m
[32m+[m[32m        <Route path='/give-classe' component={TeacherForm}/>[m
[32m+[m[32m        </BrowserRouter>[m
[32m+[m[32m    );[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default Routes;[m
\ No newline at end of file[m
[1mdiff --git a/src/serviceWorker.ts b/src/serviceWorker.ts[m
[1mdeleted file mode 100644[m
[1mindex b09523f..0000000[m
[1m--- a/src/serviceWorker.ts[m
[1m+++ /dev/null[m
[36m@@ -1,149 +0,0 @@[m
[31m-// This optional code is used to register a service worker.[m
[31m-// register() is not called by default.[m
[31m-[m
[31m-// This lets the app load faster on subsequent visits in production, and gives[m
[31m-// it offline capabilities. However, it also means that developers (and users)[m
[31m-// will only see deployed updates on subsequent visits to a page, after all the[m
[31m-// existing tabs open on the page have been closed, since previously cached[m
[31m-// resources are updated in the background.[m
[31m-[m
[31m-// To learn more about the benefits of this model and instructions on how to[m
[31m-// opt-in, read https://bit.ly/CRA-PWA[m
[31m-[m
[31m-const isLocalhost = Boolean([m
[31m-  window.location.hostname === 'localhost' ||[m
[31m-    // [::1] is the IPv6 localhost address.[m
[31m-    window.location.hostname === '[::1]' ||[m
[31m-    // 127.0.0.0/8 are considered localhost for IPv4.[m
[31m-    window.location.hostname.match([m
[31m-      /^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/[m
[31m-    )[m
[31m-);[m
[31m-[m
[31m-type Config = {[m
[31m-  onSuccess?: (registration: ServiceWorkerRegistration) => void;[m
[31m-  onUpdate?: (registration: ServiceWorkerRegistration) => void;[m
[31m-};[m
[31m-[m
[31m-export function register(config?: Config) {[m
[31m-  if (process.env.NODE_ENV === 'production' && 'serviceWorker' in navigator) {[m
[31m-    // The URL constructor is available in all browsers that support SW.[m
[31m-    const publicUrl = new URL([m
[31m-      process.env.PUBLIC_URL,[m
[31m-      window.location.href[m
[31m-    );[m
[31m-    if (publicUrl.origin !== window.location.origin) {[m
[31m-      // Our service worker won't work if PUBLIC_URL is on a different origin[m
[31m-      // from what our page is served on. This might happen if a CDN is used to[m
[31m-      // serve assets; see https://github.com/facebook/create-react-app/issues/2374[m
[31m-      return;[m
[31m-    }[m
[31m-[m
[31m-    window.addEventListener('load', () => {[m
[31m-      const swUrl = `${process.env.PUBLIC_URL}/service-worker.js`;[m
[31m-[m
[31m-      if (isLocalhost) {[m
[31m-        // This is running on localhost. Let's check if a service worker still exists or not.[m
[31m-        checkValidServiceWorker(swUrl, config);[m
[31m-[m
[31m-        // Add some additional logging to localhost, pointing developers to the[m
[31m-        // service worker/PWA documentation.[m
[31m-        navigator.serviceWorker.ready.then(() => {[m
[31m-          console.log([m
[31m-            'This web app is being served cache-first by a service ' +[m
[31m-              'worker. To learn more, visit https://bit.ly/CRA-PWA'[m
[31m-          );[m
[31m-        });[m
[31m-      } else {[m
[31m-        // Is not localhost. Just register service worker[m
[31m-        registerValidSW(swUrl, config);[m
[31m-      }[m
[31m-    });[m
[31m-  }[m
[31m-}[m
[31m-[m
[31m-function registerValidSW(swUrl: string, config?: Config) {[m
[31m-  navigator.serviceWorker[m
[31m-    .register(swUrl)[m
[31m-    .then(registration => {[m
[31m-      registration.onupdatefound = () => {[m
[31m-        const installingWorker = registration.installing;[m
[31m-        if (installingWorker == null) {[m
[31m-          return;[m
[31m-        }[m
[31m-        installingWorker.onstatechange = () => {[m
[31m-          if (installingWorker.state === 'installed') {[m
[31m-            if (navigator.serviceWorker.controller) {[m
[31m-              // At this point, the updated precached content has been fetched,[m
[31m-              // but the previous service worker will still serve the older[m
[31m-              // content until all client tabs are closed.[m
[31m-              console.log([m
[31m-                'New content is available and will be used when all ' +[m
[31m-                  'tabs for this page are closed. See https://bit.ly/CRA-PWA.'[m
[31m-              );[m
[31m-[m
[31m-              // Execute callback[m
[31m-              if (config && config.onUpdate) {[m
[31m-                config.onUpdate(registration);[m
[31m-              }[m
[31m-            } else {[m
[31m-              // At this point, everything has been precached.[m
[31m-              // It's the perfect time to display a[m
[31m-              // "Content is cached for offline use." message.[m
[31m-              console.log('Content is cached for offline use.');[m
[31m-[m
[31m-              // Execute callback[m
[31m-              if (config && config.onSuccess) {[m
[31m-                config.onSuccess(registration);[m
[31m-              }[m
[31m-            }[m
[31m-          }[m
[31m-        };[m
[31m-      };[m
[31m-    })[m
[31m-    .catch(error => {[m
[31m-      console.error('Error during service worker registration:', error);[m
[31m-    });[m
[31m-}[m
[31m-[m
[31m-function checkValidServiceWorker(swUrl: string, config?: Config) {[m
[31m-  // Check if the service worker can be found. If it can't reload the page.[m
[31m-  fetch(swUrl, {[m
[31m-    headers: { 'Service-Worker': 'script' }[m
[31m-  })[m
[31m-    .then(response => {[m
[31m-      // Ensure service worker exists, and that we really are getting a JS file.[m
[31m-      const contentType = response.headers.get('content-type');[m
[31m-      if ([m
[31m-        response.status === 404 ||[m
[31m-        (contentType != null && contentType.indexOf('javascript') === -1)[m
[31m-      ) {[m
[31m-        // No service worker found. Probably a different app. Reload the page.[m
[31m-        navigator.serviceWorker.ready.then(registration => {[m
[31m-          registration.unregister().then(() => {[m
[31m-            window.location.reload();[m
[31m-          });[m
[31m-        });[m
[31m-      } else {[m
[31m-        // Service worker found. Proceed as normal.[m
[31m-        registerValidSW(swUrl, config);[m
[31m-      }[m
[31m-    })[m
[31m-    .catch(() => {[m
[31m-      console.log([m
[31m-        'No internet connection found. App is running in offline mode.'[m
[31m-      );[m
[31m-    });[m
[31m-}[m
[31m-[m
[31m-export function unregister() {[m
[31m-  if ('serviceWorker' in navigator) {[m
[31m-    navigator.serviceWorker.ready[m
[31m-      .then(registration => {[m
[31m-        registration.unregister();[m
[31m-      })[m
[31m-      .catch(error => {[m
[31m-        console.error(error.message);[m
[31m-      });[m
[31m-  }[m
[31m-}[m
[1mdiff --git a/src/setupTests.ts b/src/setupTests.ts[m
[1mdeleted file mode 100644[m
[1mindex 74b1a27..0000000[m
[1m--- a/src/setupTests.ts[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-// jest-dom adds custom jest matchers for asserting on DOM nodes.[m
[31m-// allows you to do things like:[m
[31m-// expect(element).toHaveTextContent(/react/i)[m
[31m-// learn more: https://github.com/testing-library/jest-dom[m
[31m-import '@testing-library/jest-dom/extend-expect';[m
[1mdiff --git a/yarn.lock b/yarn.lock[m
[1mindex 12a29b4..40a36fa 100644[m
[1m--- a/yarn.lock[m
[1m+++ b/yarn.lock[m
[36m@@ -1004,6 +1004,13 @@[m
   dependencies:[m
     regenerator-runtime "^0.13.4"[m
 [m
[32m+[m[32m"@babel/runtime@^7.1.2", "@babel/runtime@^7.5.5":[m
[32m+[m[32m  version "7.11.2"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/@babel/runtime/-/runtime-7.11.2.tgz#f549c13c754cc40b87644b9fa9f09a6a95fe0736"[m
[32m+[m[32m  integrity sha512-TeWkU52so0mPtDcaCTxNBI/IHiz0pZgr8VEFqXFtZWpYD08ZB6FaSwVAS8MKRQAP3bYKiVjwysOJgMFY28o6Tw==[m
[32m+[m[32m  dependencies:[m
[32m+[m[32m    regenerator-runtime "^0.13.4"[m
[32m+[m
 "@babel/runtime@^7.10.2", "@babel/runtime@^7.10.3", "@babel/runtime@^7.5.1":[m
   version "7.11.0"[m
   resolved "https://registry.yarnpkg.com/@babel/runtime/-/runtime-7.11.0.tgz#f10245877042a815e07f7e693faff0ae9d3a2aac"[m
[36m@@ -1521,6 +1528,11 @@[m
     "@types/minimatch" "*"[m
     "@types/node" "*"[m
 [m
[32m+[m[32m"@types/history@*":[m
[32m+[m[32m  version "4.7.7"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/@types/history/-/history-4.7.7.tgz#613957d900fab9ff84c8dfb24fa3eef0c2a40896"[m
[32m+[m[32m  integrity sha512-2xtoL22/3Mv6a70i4+4RB7VgbDDORoWwjcqeNysojZA0R7NK17RbY5Gof/2QiFfJgX+KkWghbwJ+d/2SB8Ndzg==[m
[32m+[m
 "@types/istanbul-lib-coverage@*", "@types/istanbul-lib-coverage@^2.0.0":[m
   version "2.0.1"[m
   resolved "https://registry.yarnpkg.com/@types/istanbul-lib-coverage/-/istanbul-lib-coverage-2.0.1.tgz#42995b446db9a48a11a07ec083499a860e9138ff"[m
[36m@@ -1590,6 +1602,23 @@[m
   dependencies:[m
     "@types/react" "*"[m
 [m
[32m+[m[32m"@types/react-router-dom@^5.1.5":[m
[32m+[m[32m  version "5.1.5"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/@types/react-router-dom/-/react-router-dom-5.1.5.tgz#7c334a2ea785dbad2b2dcdd83d2cf3d9973da090"[m
[32m+[m[32m  integrity sha512-ArBM4B1g3BWLGbaGvwBGO75GNFbLDUthrDojV2vHLih/Tq8M+tgvY1DSwkuNrPSwdp/GUL93WSEpTZs8nVyJLw==[m
[32m+[m[32m  dependencies:[m
[32m+[m[32m    "@types/history" "*"[m
[32m+[m[32m    "@types/react" "*"[m
[32m+[m[32m    "@types/react-router" "*"[m
[32m+[m
[32m+[m[32m"@types/react-router@*":[m
[32m+[m[32m  version "5.1.8"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/@types/react-router/-/react-router-5.1.8.tgz#4614e5ba7559657438e17766bb95ef6ed6acc3fa"[m
[32m+[m[32m  integrity sha512-HzOyJb+wFmyEhyfp4D4NYrumi+LQgQL/68HvJO+q6XtuHSDvw6Aqov7sCAhjbNq3bUPgPqbdvjXC5HeB2oEAPg==[m
[32m+[m[32m  dependencies:[m
[32m+[m[32m    "@types/history" "*"[m
[32m+[m[32m    "@types/react" "*"[m
[32m+[m
 "@types/react@*", "@types/react@^16.9.0":[m
   version "16.9.44"[m
   resolved "https://registry.yarnpkg.com/@types/react/-/react-16.9.44.tgz#da84b179c031aef67dc92c33bd3401f1da2fa3bc"[m
[36m@@ -4998,6 +5027,18 @@[m [mhex-color-regex@^1.1.0:[m
   resolved "https://registry.yarnpkg.com/hex-color-regex/-/hex-color-regex-1.1.0.tgz#4c06fccb4602fe2602b3c93df82d7e7dbf1a8a8e"[m
   integrity sha512-l9sfDFsuqtOqKDsQdqrMRk0U85RZc0RtOR9yPI7mRVOa4FsR/BVnZ0shmQRM96Ji99kYZP/7hn1cedc1+ApsTQ==[m
 [m
[32m+[m[32mhistory@^4.9.0:[m
[32m+[m[32m  version "4.10.1"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/history/-/history-4.10.1.tgz#33371a65e3a83b267434e2b3f3b1b4c58aad4cf3"[m
[32m+[m[32m  integrity sha512-36nwAD620w12kuzPAsyINPWJqlNbij+hpK1k9XRloDtym8mxzGYl2c17LnV6IAGB2Dmg4tEa7G7DlawS0+qjew==[m
[32m+[m[32m  dependencies:[m
[32m+[m[32m    "@babel/runtime" "^7.1.2"[m
[32m+[m[32m    loose-envify "^1.2.0"[m
[32m+[m[32m    resolve-pathname "^3.0.0"[m
[32m+[m[32m    tiny-invariant "^1.0.2"[m
[32m+[m[32m    tiny-warning "^1.0.0"[m
[32m+[m[32m    value-equal "^1.0.1"[m
[32m+[m
 hmac-drbg@^1.0.0:[m
   version "1.0.1"[m
   resolved "https://registry.yarnpkg.com/hmac-drbg/-/hmac-drbg-1.0.1.tgz#d2745701025a6c775a6c545793ed502fc0c649a1"[m
[36m@@ -5007,6 +5048,13 @@[m [mhmac-drbg@^1.0.0:[m
     minimalistic-assert "^1.0.0"[m
     minimalistic-crypto-utils "^1.0.1"[m
 [m
[32m+[m[32mhoist-non-react-statics@^3.1.0:[m
[32m+[m[32m  version "3.3.2"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/hoist-non-react-statics/-/hoist-non-react-statics-3.3.2.tgz#ece0acaf71d62c2969c2ec59feff42a4b1a85b45"[m
[32m+[m[32m  integrity sha512-/gGivxi8JPKWNm/W0jSmzcMPpfpPLc3dY/6GxhX2hQ9iGj3aDfklV4ET7NjKpSinLpJ5vafa9iiGIEZg10SfBw==[m
[32m+[m[32m  dependencies:[m
[32m+[m[32m    react-is "^16.7.0"[m
[32m+[m
 hosted-git-info@^2.1.4:[m
   version "2.8.8"[m
   resolved "https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-2.8.8.tgz#7539bd4bc1e0e0a895815a2e0262420b12858488"[m
[36m@@ -5686,6 +5734,11 @@[m [mis-wsl@^2.1.1:[m
   resolved "https://registry.yarnpkg.com/is-wsl/-/is-wsl-2.1.1.tgz#4a1c152d429df3d441669498e2486d3596ebaf1d"[m
   integrity sha512-umZHcSrwlDHo2TGMXv0DZ8dIUGunZ2Iv68YZnrmCiBPkZ4aaOhtv7pXJKeki9k3qJ3RJr0cDyitcl5wEH3AYog==[m
 [m
[32m+[m[32misarray@0.0.1:[m
[32m+[m[32m  version "0.0.1"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/isarray/-/isarray-0.0.1.tgz#8a18acfca9a8f4177e09abfc6038939b05d1eedf"[m
[32m+[m[32m  integrity sha1-ihis/Kmo9Bd+Cav8YDiTmwXR7t8=[m
[32m+[m
 isarray@1.0.0, isarray@^1.0.0, isarray@~1.0.0:[m
   version "1.0.0"[m
   resolved "https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz#bb935d48582cba168c06834957a54a3e07124f11"[m
[36m@@ -6543,7 +6596,7 @@[m [mloglevel@^1.6.6:[m
   resolved "https://registry.yarnpkg.com/loglevel/-/loglevel-1.6.7.tgz#b3e034233188c68b889f5b862415306f565e2c56"[m
   integrity sha512-cY2eLFrQSAfVPhCgH1s7JI73tMbg9YC3v3+ZHVW67sBS7UxWzNEk/ZBbSfLykBWHp33dqqtOv82gjhKEi81T/A==[m
 [m
[31m-loose-envify@^1.0.0, loose-envify@^1.1.0, loose-envify@^1.4.0:[m
[32m+[m[32mloose-envify@^1.0.0, loose-envify@^1.1.0, loose-envify@^1.2.0, loose-envify@^1.3.1, loose-envify@^1.4.0:[m
   version "1.4.0"[m
   resolved "https://registry.yarnpkg.com/loose-envify/-/loose-envify-1.4.0.tgz#71ee51fa7be4caec1a63839f7e682d8132d30caf"[m
   integrity sha512-lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==[m
[36m@@ -6747,6 +6800,14 @@[m [mmin-indent@^1.0.0:[m
   resolved "https://registry.yarnpkg.com/min-indent/-/min-indent-1.0.1.tgz#a63f681673b30571fbe8bc25686ae746eefa9869"[m
   integrity sha512-I9jwMn07Sy/IwOj3zVkVik2JTvgpaykDZEigL6Rx6N9LbMywwUSMtxET+7lVoDLLd3O3IXwJwvuuns8UB/HeAg==[m
 [m
[32m+[m[32mmini-create-react-context@^0.4.0:[m
[32m+[m[32m  version "0.4.0"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/mini-create-react-context/-/mini-create-react-context-0.4.0.tgz#df60501c83151db69e28eac0ef08b4002efab040"[m
[32m+[m[32m  integrity sha512-b0TytUgFSbgFJGzJqXPKCFCBWigAjpjo+Fl7Vf7ZbKRDptszpppKxXH6DRXEABZ/gcEQczeb0iZ7JvL8e8jjCA==[m
[32m+[m[32m  dependencies:[m
[32m+[m[32m    "@babel/runtime" "^7.5.5"[m
[32m+[m[32m    tiny-warning "^1.0.3"[m
[32m+[m
 mini-css-extract-plugin@0.9.0:[m
   version "0.9.0"[m
   resolved "https://registry.yarnpkg.com/mini-css-extract-plugin/-/mini-css-extract-plugin-0.9.0.tgz#47f2cf07aa165ab35733b1fc97d4c46c0564339e"[m
[36m@@ -7531,6 +7592,13 @@[m [mpath-to-regexp@0.1.7:[m
   resolved "https://registry.yarnpkg.com/path-to-regexp/-/path-to-regexp-0.1.7.tgz#df604178005f522f15eb4490e7247a1bfaa67f8c"[m
   integrity sha1-32BBeABfUi8V60SQ5yR6G/qmf4w=[m
 [m
[32m+[m[32mpath-to-regexp@^1.7.0:[m
[32m+[m[32m  version "1.8.0"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/path-to-regexp/-/path-to-regexp-1.8.0.tgz#887b3ba9d84393e87a0a0b9f4cb756198b53548a"[m
[32m+[m[32m  integrity sha512-n43JRhlUKUAlibEJhPeir1ncUID16QnEjNpwzNdO3Lm4ywrBpBZ5oLD0I6br9evr1Y9JTqwRtAh7JLoOzAQdVA==[m
[32m+[m[32m  dependencies:[m
[32m+[m[32m    isarray "0.0.1"[m
[32m+[m
 path-type@^2.0.0:[m
   version "2.0.0"[m
   resolved "https://registry.yarnpkg.com/path-type/-/path-type-2.0.0.tgz#f012ccb8415b7096fc2daa1054c3d72389594c73"[m
[36m@@ -8621,11 +8689,40 @@[m [mreact-error-overlay@^6.0.7:[m
   resolved "https://registry.yarnpkg.com/react-error-overlay/-/react-error-overlay-6.0.7.tgz#1dcfb459ab671d53f660a991513cb2f0a0553108"[m
   integrity sha512-TAv1KJFh3RhqxNvhzxj6LeT5NWklP6rDr2a0jaTfsZ5wSZWHOGeqQyejUp3xxLfPt2UpyJEcVQB/zyPcmonNFA==[m
 [m
[31m-react-is@^16.12.0, react-is@^16.8.1, react-is@^16.8.4:[m
[32m+[m[32mreact-is@^16.12.0, react-is@^16.6.0, react-is@^16.7.0, react-is@^16.8.1, react-is@^16.8.4:[m
   version "16.13.1"[m
   resolved "https://registry.yarnpkg.com/react-is/-/react-is-16.13.1.tgz#789729a4dc36de2999dc156dd6c1d9c18cea56a4"[m
   integrity sha512-24e6ynE2H+OKt4kqsOvNd8kBpV65zoxbA4BVsEOB3ARVWQki/DHzaUoC5KuON/BiccDaCCTZBuOcfZs70kR8bQ==[m
 [m
[32m+[m[32mreact-router-dom@^5.2.0:[m
[32m+[m[32m  version "5.2.0"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/react-router-dom/-/react-router-dom-5.2.0.tgz#9e65a4d0c45e13289e66c7b17c7e175d0ea15662"[m
[32m+[m[32m  integrity sha512-gxAmfylo2QUjcwxI63RhQ5G85Qqt4voZpUXSEqCwykV0baaOTQDR1f0PmY8AELqIyVc0NEZUj0Gov5lNGcXgsA==[m
[32m+[m[32m  dependencies:[m
[32m+[m[32m    "@babel/runtime" "^7.1.2"[m
[32m+[m[32m    history "^4.9.0"[m
[32m+[m[32m    loose-envify "^1.3.1"[m
[32m+[m[32m    prop-types "^15.6.2"[m
[32m+[m[32m    react-router "5.2.0"[m
[32m+[m[32m    tiny-invariant "^1.0.2"[m
[32m+[m[32m    tiny-warning "^1.0.0"[m
[32m+[m
[32m+[m[32mreact-router@5.2.0:[m
[32m+[m[32m  version "5.2.0"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/react-router/-/react-router-5.2.0.tgz#424e75641ca8747fbf76e5ecca69781aa37ea293"[m
[32m+[m[32m  integrity sha512-smz1DUuFHRKdcJC0jobGo8cVbhO3x50tCL4icacOlcwDOEQPq4TMqwx3sY1TP+DvtTgz4nm3thuo7A+BK2U0Dw==[m
[32m+[m[32m  dependencies:[m
[32m+[m[32m    "@babel/runtime" "^7.1.2"[m
[32m+[m[32m    history "^4.9.0"[m
[32m+[m[32m    hoist-non-react-statics "^3.1.0"[m
[32m+[m[32m    loose-envify "^1.3.1"[m
[32m+[m[32m    mini-create-react-context "^0.4.0"[m
[32m+[m[32m    path-to-regexp "^1.7.0"[m
[32m+[m[32m    prop-types "^15.6.2"[m
[32m+[m[32m    react-is "^16.6.0"[m
[32m+[m[32m    tiny-invariant "^1.0.2"[m
[32m+[m[32m    tiny-warning "^1.0.0"[m
[32m+[m
 react-scripts@3.4.1:[m
   version "3.4.1"[m
   resolved "https://registry.yarnpkg.com/react-scripts/-/react-scripts-3.4.1.tgz#f551298b5c71985cc491b9acf3c8e8c0ae3ada0a"[m
[36m@@ -8984,6 +9081,11 @@[m [mresolve-from@^4.0.0:[m
   resolved "https://registry.yarnpkg.com/resolve-from/-/resolve-from-4.0.0.tgz#4abcd852ad32dd7baabfe9b40e00a36db5f392e6"[m
   integrity sha512-pb/MYmXstAkysRFx8piNI1tGFNQIFA3vkE3Gq4EuA1dF6gHp/+vgZqsCGJapvy8N3Q+4o7FwvquPJcnZ7RYy4g==[m
 [m
[32m+[m[32mresolve-pathname@^3.0.0:[m
[32m+[m[32m  version "3.0.0"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/resolve-pathname/-/resolve-pathname-3.0.0.tgz#99d02224d3cf263689becbb393bc560313025dcd"[m
[32m+[m[32m  integrity sha512-C7rARubxI8bXFNB/hqcp/4iUeIXJhJZvFPFPiSPRnhU5UPxzMFIl+2E6yY6c4k9giDJAhtV+enfA+G89N6Csng==[m
[32m+[m
 resolve-url-loader@3.1.1:[m
   version "3.1.1"[m
   resolved "https://registry.yarnpkg.com/resolve-url-loader/-/resolve-url-loader-3.1.1.tgz#28931895fa1eab9be0647d3b2958c100ae3c0bf0"[m
[36m@@ -10003,6 +10105,16 @@[m [mtimsort@^0.3.0:[m
   resolved "https://registry.yarnpkg.com/timsort/-/timsort-0.3.0.tgz#405411a8e7e6339fe64db9a234de11dc31e02bd4"[m
   integrity sha1-QFQRqOfmM5/mTbmiNN4R3DHgK9Q=[m
 [m
[32m+[m[32mtiny-invariant@^1.0.2:[m
[32m+[m[32m  version "1.1.0"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/tiny-invariant/-/tiny-invariant-1.1.0.tgz#634c5f8efdc27714b7f386c35e6760991d230875"[m
[32m+[m[32m  integrity sha512-ytxQvrb1cPc9WBEI/HSeYYoGD0kWnGEOR8RY6KomWLBVhqz0RgTwVO9dLrGz7dC+nN9llyI7OKAgRq8Vq4ZBSw==[m
[32m+[m
[32m+[m[32mtiny-warning@^1.0.0, tiny-warning@^1.0.3:[m
[32m+[m[32m  version "1.0.3"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/tiny-warning/-/tiny-warning-1.0.3.tgz#94a30db453df4c643d0fd566060d60a875d84754"[m
[32m+[m[32m  integrity sha512-lBN9zLN/oAf68o3zNXYrdCt1kP8WsiGW8Oo2ka41b2IM5JL/S1CTyX1rW0mb/zSuJun0ZUrDxx4sqvYS2FWzPA==[m
[32m+[m
 tmp@^0.0.33:[m
   version "0.0.33"[m
   resolved "https://registry.yarnpkg.com/tmp/-/tmp-0.0.33.tgz#6d34335889768d21b2bcda0aa277ced3b1bfadf9"[m
[36m@@ -10348,6 +10460,11 @@[m [mvalidate-npm-package-license@^3.0.1:[m
     spdx-correct "^3.0.0"[m
     spdx-expression-parse "^3.0.0"[m
 [m
[32m+[m[32mvalue-equal@^1.0.1:[m
[32m+[m[32m  version "1.0.1"[m
[32m+[m[32m  resolved "https://registry.yarnpkg.com/value-equal/-/value-equal-1.0.1.tgz#1e0b794c734c5c0cade179c437d356d931a34d6c"[m
[32m+[m[32m  integrity sha512-NOJ6JZCAWr0zlxZt+xqCHNTEKOsrks2HQd4MqhP1qy4z1SkbEP467eNx6TgDKXMvUOb+OENfJCZwM+16n7fRfw==[m
[32m+[m
 vary@~1.1.2:[m
   version "1.1.2"[m
   resolved "https://registry.yarnpkg.com/vary/-/vary-1.1.2.tgz#2299f02c6ded30d4a5961b0b9f74524a18f634fc"[m
