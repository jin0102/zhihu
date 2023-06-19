//answer.js
var util = require('../../utils/util.js')
var postsData = require('../../data/data_index')
var app = getApp();

Page({
  data: {
    motto: '知乎--微信小程序版',
    userInfo: {},
    page: 1,
    isChecked: false,
    selansData:[],
    httpUrl:"http://localhost:8080/"
  },
  //事件处理函数
  bindItemTap: function(event) {
    console.log("啊啊啊啊啊啊啊啊啊啊啊啊啊",event.currentTarget.dataset.aid)
    var aid=event.currentTarget.dataset.aid
    wx.navigateTo({
      url: '../answer/answer?id='+aid
    })
  },

  createans: function(event){
    console.log("啊啊啊啊啊啊啊啊啊啊啊啊啊",event.currentTarget.dataset.qid)
    var qid = event.currentTarget.dataset.qid
    wx.navigateTo({
      url: '../createans/createans?id='+qid
    })
  },

  clickOn:function(event){
    let value = this.data.isChecked;
    if(value){
      wx.showToast({
        title: '关注成功',      //标题
        icon: "success",        //图标类型, 默认success
        duration: 1500                //提示框停留时间, 默认1500ms
      })
      this.setData({
        isChecked: !value
      })
    }else{
      wx.showToast({
        title: '取消关注',      //标题
        icon: "success",        //图标类型, 默认success
        duration: 1500                //提示框停留时间, 默认1500ms
      })
      this.setData({
        isChecked: !value
      })
    }
    
    console.log(value)
  },
  onLoad: function (option) {
    
    console.log('onLoad')
    var that = this
    console.log('onLoad',that.data)
    //调用应用实例的方法获取全局数据
    wx.request({
      url: that.data.httpUrl+'answer/getSelectAnswerInfos', //接收
      data: {
        page: that.data.page,
        limit: 10,
        question_id: option.id
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success (res) {
        console.log("获取sel项目信息",res.data)
        if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
          that.setData({
            selansData:res.data.data
          })
        }else{  //失败  提示   失败原因

        }
      }
    })
    
  },
  tapName: function(event){
    console.log(event)
  }
})
