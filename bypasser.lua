// ==UserScript==
// @name         key bypasser for key-systems for roblox scripts
// @namespace    http://tampermonkey.net/
// @version      1.3
// @description  wiats 15 seconds
// @author       Discord: voidd#6209
// @match        *://*.linkvertise.com/*
// @match        *://*.linkvertise.net/*
// @match        *://*.link-to.net/*
// @exclude      *://publisher.linkvertise.com/*
// @exclude      *://linkvertise.com
// @exclude      *://linkvertise.com/search*
// @exclude      *://blog.linkvertise.com
// @exclude      *://blog.linkvertise.com/*
// @exclude      https://linkvertise.com/assets/vendor/thinksuggest.html
// @exclude      https://linkvertise.com/assets/vendor/*
// @exclude      https://linkvertise.com/
// @grant        GM.xmlHttpRequest
// @icon         https://www.google.com/s2/favicons?domain=linkvertise.com
// @grant        none
// ==/UserScript==
 
(async function () {
    'use strict';
 
      var url = "https://main-bypass-server.tk/v3?" + window.location.href;
      var oReq = new XMLHttpRequest();
      var location = window.location.href;
 
    function httpGet(theUrl)
    {
        var xmlHttp = new XMLHttpRequest();
        xmlHttp.open( "GET", theUrl, false ); // false for synchronous request
        xmlHttp.send( null );
        return xmlHttp.responseText;
    }
 
 
      if (location.includes('https://linkvertise.com/')) {
          console.log("gay");
          function reqListener() {
              var a = this.responseText;
              var b = JSON.parse(a);
              setTimeout(function () {
                  window.location = b.destination;
              }, 15100);
          }
          oReq.addEventListener("load", reqListener);
          oReq.open("GET", url);
          oReq.send();
      }
      else {
 
          function reqListener() {
              var a = this.responseText;
              var b = JSON.parse(a);
              window.location = b.destination;
          }
          oReq.addEventListener("load", reqListener);
          oReq.open("GET", url);
          oReq.send();
      }
})();
