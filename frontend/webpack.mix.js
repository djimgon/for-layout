// webpack.mix.js

let mix = require('laravel-mix');

mix.js('resources/assets/js/app.js', 'dist').setPublicPath('public');
