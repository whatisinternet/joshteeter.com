var webpack = require('webpack');

module.exports = {

  entry: {
    full: './assets/index.js'
  },

  output: {
    path: './dist',
    publicPath: '/',
    filename: "app.entry.js"
  },

  module: {
    loaders: [
      { test: /\.(png|jpg)$/, loader: "file-loader?name=images/[name].[ext]" },
      { test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: "url-loader?limit=10000&mimetype=application/font-woff" },
      { test: /\.(ttf|eot|svg)(\?v=[1-9]\.[0-9]\.[0-9])?$/, loader: "file-loader"},
      { test: /\.woff(2)?\?\-hdf3wh?$/, loader: "url-loader?limit=10000&mimetype=application/font-woff" },
      { test: /\.(ttf|eot|svg)\?\-hdf3wh$/, loader: "url-loader"},
      { test: /\.(ttf|eot|svg)/, loader: "url-loader"},
      { test: /\.woff/i, loader: "url-loader?limit=20000&mimetype=application/font-woff" },
      { test: /\.css$/, loader: "style!css" },
      { test: /\.sass$/, loader: "style-loader!css-loader!sass?indentedSyntax" }
    ]
  },

  resolve: {
    extensions: ["", ".js", ".elm", ".sass",
      ".css",  "eot", "svg", "ttf", "woff", "woff2", "mp4"],
    modules: ['node_modules'],
      alias: {
        'devicons': '../node_modules/devicons/css/devicons.css'
      }
  },
  noParse: [/.elm$/],

  plugins: []
};
