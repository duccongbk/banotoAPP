const path = require('path');
const glob = require('glob');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

// Tự động tìm các tệp JS và CSS trong thư mục src
const entryJsFiles = glob.sync('./src/js/*.js');
const entryCssFiles = glob.sync('./src/css/*.css');

// Tạo một đối tượng entry cho Webpack
const entry = entryJsFiles.reduce((entries, file) => {
    const entryName = path.basename(file, path.extname(file));
    entries[entryName] = entries[entryName] || [];
    entries[entryName].push(file);
    return entries;
}, {});

// Thêm các tệp CSS vào đối tượng entry
entryCssFiles.forEach(file => {
    const entryName = path.basename(file, path.extname(file));
    entry[entryName] = entry[entryName] || [];
    entry[entryName].push(file);
});

// Tạo các đối tượng HtmlWebpackPlugin cho mỗi tệp HTML
const htmlFiles = glob.sync('./src/html/*.html');
const htmlPlugins = htmlFiles.map(file => {
    const filename = path.basename(file);
    const chunkName = path.basename(file, '.html');
    return new HtmlWebpackPlugin({
        template: file,
        filename: filename,
        chunks: [chunkName],
    });
});

module.exports = {
    entry: entry,
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'js/[name].[contenthash].js',
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /node_modules/,
                use: ['babel-loader'],
            },
            {
                test: /\.css$/,
                use: [MiniCssExtractPlugin.loader, 'css-loader'],
            },
        ],
    },
    plugins: [
        new MiniCssExtractPlugin({
            filename: 'css/[name].[contenthash].css',
        }),
        ...htmlPlugins,
    ],
    optimization: {
        runtimeChunk: 'single',
        splitChunks: {
            cacheGroups: {
                vendor: {
                    test: /[\\/]node_modules[\\/]/,
                    name: 'vendors',
                    chunks: 'all',
                },
            },
        },
    },
};

