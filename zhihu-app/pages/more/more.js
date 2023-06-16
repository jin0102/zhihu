//logs.js
var util = require('../../utils/util.js')
var app = getApp()
Page({
  data: {
    motto: 'Hello World',
    userInfo: {},
    code: 1,
    isLogin: false
  },
  //事件处理函数
  bindViewTap: function() {
    wx.navigateTo({
      url: ''
    })
  },
  onLoad: function () {
    console.log('onLoad')
    var that = this
    //调用应用实例的方法获取全局数据
    app.getUserInfo(function(userInfo){
      //更新数据
      console.log(userInfo)
      that.setData({
        userInfo:userInfo
      })
    })
    wx.getStorage({
      key: 'token',
      success (res) {
        console.log("我的页面获取的用户信息：",res.data)
      }
    })
  },

  onShow: function () {
    var that = this
    wx.getStorage({
      key: 'token',
      success (res) {
        console.log("我的页面获取的用户信息2：",res.data)
        that.setData({
          code: 0
        })
        if (that.data.code == 1) {
          that.setData({
            isLogin: true
          })
          console.log(that.data.isLogin)
        } else {
          that.setData({
            isLogin: false
          })
          console.log(that.data.isLogin)
        }
      },
      fail (res) {
        console.log("没有用户缓存"+that.data.code)
      }
    })
    if (that.data.code == 1) {
      that.setData({
        isLogin: true
      })
      console.log(that.data.isLogin)
    } else {
      that.setData({
        isLogin: false
      })
      console.log(that.data.isLogin)
    }
  },

  login: function () {
    wx.navigateTo({
      url: 'login/login',
    })
  },

  register: function () {
    wx.navigateTo({
      url: 'register/register',
    })
  },

  tuichu: function () {
    var that = this
    wx.clearStorageSync({
      key: 'token',
      success (res) {
        that.setData({
          code: 1
        })
      }
    })
    that.onShow()
  },

  getUserInfo2: function () {
    wx.navigateTo({
      url: 'user/user',
    })
  },

  getUserFollow: function () {
    wx.navigateTo({
      url: 'follow/follow',
    })
  },

  getUserCollection: function () {
    wx.navigateTo({
      url: 'collection/collection',
    })
  }
})