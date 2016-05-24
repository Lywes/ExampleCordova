cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
                  {
                  "file": "plugins/cordova-plugin-camera/www/CameraConstants.js",
                  "id": "cordova-plugin-camera.Camera",
                  "pluginId": "cordova-plugin-camera",
                  "clobbers": [
                               "Camera"
                               ]
                  },
                  {
                  "file": "plugins/cordova-plugin-camera/www/CameraPopoverOptions.js",
                  "id": "cordova-plugin-camera.CameraPopoverOptions",
                  "pluginId": "cordova-plugin-camera",
                  "clobbers": [
                               "CameraPopoverOptions"
                               ]
                  },
                  {
                  "file": "plugins/cordova-plugin-camera/www/Camera.js",
                  "id": "cordova-plugin-camera.camera",
                  "pluginId": "cordova-plugin-camera",
                  "clobbers": [
                               "navigator.camera"
                               ]
                  },
                  {
                  "file": "plugins/cordova-plugin-camera/www/ios/CameraPopoverHandle.js",
                  "id": "cordova-plugin-camera.CameraPopoverHandle",
                  "pluginId": "cordova-plugin-camera",
                  "clobbers": [
                               "CameraPopoverHandle"
                               ]
                  },
                  {
                  "file": "plugins/cordova-plugin-device/www/device.js",
                  "id": "cordova-plugin-device.device",
                  "pluginId": "cordova-plugin-device",
                  "clobbers": [
                               "device"
                               ]
                  },
                  {
                  "file": "plugins/cordova-plugin-imagepicker/www/imagepicker.js",
                  "id": "cordova-plugin-imagepicker.ImagePicker",
                  "pluginId": "cordova-plugin-imagepicker",
                  "clobbers": [
                               "plugins.imagePicker"
                               ]
                  },
                  {
                  "file": "plugins/cordova-plugin-inappbrowser/www/inappbrowser.js",
                  "id": "cordova-plugin-inappbrowser.inappbrowser",
                  "pluginId": "cordova-plugin-inappbrowser",
                  "clobbers": [
                               "cordova.InAppBrowser.open",
                               "window.open"
                               ]
                  },
                  {
                  "file": "plugins/cordova-plugin-statusbar/www/statusbar.js",
                  "id": "cordova-plugin-statusbar.statusbar",
                  "pluginId": "cordova-plugin-statusbar",
                  "clobbers": [
                               "window.StatusBar"
                               ]
                  },
                  {
                  "file": "plugins/ionic-plugin-keyboard/www/ios/keyboard.js",
                  "id": "ionic-plugin-keyboard.keyboard",
                  "pluginId": "ionic-plugin-keyboard",
                  "clobbers": [
                               "cordova.plugins.Keyboard"
                               ],
                  "runs": true
                  },
                  {
                  "file": "plugins/xu.li.cordova.wechat/www/wechat.js",
                  "id": "xu.li.cordova.wechat.Wechat",
                  "pluginId": "xu.li.cordova.wechat",
                  "clobbers": [
                               "Wechat"
                               ]
                  },
                  {
                  "file": "plugins/zhougn.cordova.plugin.alipay/www/cdv-alipay.js",
                  "id": "zhougn.cordova.plugin.alipay.CDVAlipay",
                  "pluginId": "zhougn.cordova.plugin.alipay",
                  "clobbers": [
                               "CDVAlipay"
                               ]
                  },
                  {
                  "file": "plugins/cn.zxj.cordova.UmengAnalyticsPlugin/www/UmengAnalyticsPlugin.js",
                  "id": "cn.zxj.cordova.UmengAnalyticsPlugin.UmengAnalyticsPlugin",
                  "pluginId": "cn.zxj.cordova.UmengAnalyticsPlugin",
                  "clobbers": [
                               "window.plugins.umengAnalyticsPlugin"
                               ]
                  }
];
module.exports.metadata = 
// TOP OF METADATA
{
        "cordova-plugin-whitelist": "1.2.2",
        "cordova-plugin-compat": "1.0.0",
        "cordova-plugin-camera": "2.2.0",
        "cordova-plugin-device": "1.1.3-dev",
        "cordova-plugin-imagepicker": "1.1.0",
        "cordova-plugin-inappbrowser": "1.4.1-dev",
        "cordova-plugin-statusbar": "2.1.4-dev",
        "ionic-plugin-keyboard": "1.0.8",
        "xu.li.cordova.wechat": "0.9.1",
        "zhougn.cordova.plugin.alipay": "0.1.0",
        "cn.zxj.cordova.UmengAnalyticsPlugin": "0.0.1"
}
// BOTTOM OF METADATA
});