'use strict';

require('materialize-css/dist/css/materialize.css');
require('./styles/index');
require('devicons');
require('materialize-css/dist/js/materialize.min.js');

var Elm = require('./scripts/App.elm');

document.addEventListener("DOMContentLoaded", function(event) {
  Elm.App.embed( document.getElementById( 'appEntry' ) )
})
