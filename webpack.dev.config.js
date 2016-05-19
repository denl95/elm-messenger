var webpack = require('webpack');
var path = require('path');
var autoprefixer = require('autoprefixer');

module.exports = {
  entry: {
    app: [
      'webpack-hot-middleware/client',
      'font-awesome-loader',
      'bootstrap-loader',
      './src/index'
    ]
  },

  output: {
    filename: '[name].js',
    path: path.join(__dirname, './out'),
    publicPath: '/'
  },

  resolve: {
    extensions: ['', '.js'],
    modulesDirectories: ['src', 'node_modules']
  },

  module: {
    loaders: [
      {
        test:    /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader:  'elm-webpack'
      },
      {
        test:    /\.html$/,
        exclude: /node_modules/,
        loader:  'file?name=[name].[ext]'
      },
      {
        test: /\.css$/,
        loaders: [
          'style',
          'css?modules&importLoaders=1&localIdentName=[name]__[local]__[hash:base64:5]',
          'postcss'
        ]
      },
      {
        test: /\.(scss)$/,
        loaders: [
          'style',
          'css?modules&importLoaders=2&localIdentName=[name]__[local]__[hash:base64:5]',
          'postcss',
          'sass'
        ]
      },
      { test: /\.woff2?(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: 'url?limit=10000' },
      { test: /\.(ttf|eot|svg)(\?[\s\S]+)?$/, loader: 'file' }
    ],
    noParse: /\.elm$/
  },

  plugins: [
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NoErrorsPlugin()
  ],

  postcss: [autoprefixer]
};