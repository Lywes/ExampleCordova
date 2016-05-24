cordova.define("zhougn.cordova.plugin.alipay.CDVAlipay", function(require, exports, module) {
var exec = require('cordova/exec');

exports.pay = function(orderStr, appScheme, callback) {
    exec(success, error, "CDVAlipay", "pay", [orderStr, appScheme]);

    function success(rst){
        if(callback)
            callback(null, rst);
    }

    function error(err){
        if(callback)
            callback(err);
    }
}

exports.isWalletExist = function(callback) {
    exec(success, error, "CDVAlipay", "isWalletExist", []);

    function success(rst){
        if(callback)
            callback(null, rst);
    }

    function error(err){
        if(callback)
            callback(err);
    }
}

});
