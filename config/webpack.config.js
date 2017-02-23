var base = require('./base.config.js');
base.module.loaders.push({
  test: /\.elm$/,
  exclude: [/elm-stuff/, /node_modules/],
  loader: 'elm-hot!elm-webpack'
});
base.devServer = {port: 8080}
module.exports = base
