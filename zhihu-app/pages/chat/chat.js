//logs.js
var util = require('../../utils/util.js')
var postsData = require('../../data/data_index')
var app = getApp();
// Page({
//  data: {
//    logs: []
//  },
//  onLoad: function () {
//    that.setData({
//      logs: (wx.getStorageSync('logs') || []).map(function (log) {
//        return util.formatTime(new Date(log))
//      })
//    })
//  }
// })

Page({
  data: {
    focus: false,
    inputValue: '',
    session: {},
    httpUrl:"http://localhost:8080/"
  },
  onLoad: function (option) {
    var that = this
    var postData =postsData.index.data;
    wx.getStorage({
      key: 'token',
      success (res) {
        console.log("获取到的用户信息chat：",res.data)
        that.setData({
          token: res.data,
        })
        wx.request({
          url: that.data.httpUrl + 'session/getSessionInfos',
          data: {
            id: that.data.token.id,
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success (res) {
            if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
              console.log("获取到的会话列表",res.data)
              console.log(that.data.token.id)
              that.setData({
                session: res.data.data
              })
            }else{  //失败  提示   失败原因
              console.log("会话列表获取失败")
            }
          }
        })
      },
      fail (res) {
        console.log("未登录")
      }
    })
    
    postData = postData.slice(0,3);
    console.log(postData)
    that.setData({
      postData: postData
    })
  },
  bindButtonTap: function() {
    that.setData({
      focus: Date.now()
    })
  },
  bindKeyInput: function(e) {
    that.setData({
      inputValue: e.detail.value
    })
  },
  bindReplaceInput: function(e) {
    var value = e.detail.value
    var pos = e.detail.cursor
    if(pos != -1){
      //光标在中间
      var left = e.detail.value.slice(0,pos)
      //计算光标的位置
      pos = left.replace(/11/g,'2').length
    }

    //直接返回对象，可以对输入进行过滤处理，同时可以控制光标的位置
    return {
      value: value.replace(/11/g,'2'),
      cursor: pos
    }

    //或者直接返回字符串,光标在最后边
    //return value.replace(/11/g,'2'),
  },
  bindHideKeyboard: function(e) {
    if (e.detail.value === '123') {
      //收起键盘
      wx.hideKeyboard()
    }
  },
  toMessage: function () {
    wx.navigateTo({
      url: 'message/message',
    })
  }
})