var base = require('./base.config.js');
var webpack = require('webpack');
var CompressionPlugin = require("compression-webpack-plugin");
base.plugins.push(
  new webpack.optimize.DedupePlugin(),
  new webpack.DefinePlugin({
    'process.env': {
      'NODE_ENV': JSON.stringify('production')
    }
  }),
  new webpack.optimize.UglifyJsPlugin(),
  new CompressionPlugin({
    asset: "[path].gz[query]",
    algorithm: "gzip",
    test: /\.js$|\.woff[2?]$|eot$\.ttf$|\.css$|\.html$/,
    threshold: 10240,
    minRatio: 0.8
  })
);
module.exports = base;
