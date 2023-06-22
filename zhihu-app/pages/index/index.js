//index.js

var util = require('../../utils/util.js')
var app = getApp()
Page({
  data: {
    feed: [],
    feed_length: 0,
    page: 1,
    ansData: [],
    httpUrl: "http://localhost:8080/",
    feed_source_txt: " 回答了问题",
    isData: true
  },
  //事件处理函数
  bindItemTap: function (event) {
    console.log("点击点击", event)
    console.log(event.currentTarget.dataset.aid)
    var aid = event.currentTarget.dataset.aid
    wx.navigateTo({
      url: '../answer/answer?id=' + aid
    })
  },
  bindQueTap: function (event) {
    console.log("点击点击点击", event)
    console.log("测试", event.currentTarget.dataset.qid)
    var qid = event.currentTarget.dataset.qid
    wx.navigateTo({
      url: '../question/question?id=' + qid
    })
  },
  onLoad: function () {
    console.log('onLoad')
    var that = this
    //调用应用实例的方法获取全局数据
    wx.request({
      url: that.data.httpUrl + 'answer/getAnswerInfos', //仅为示例，并非真实的接口地址
      data: {
        page: that.data.page,
        limit: 10,
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        console.log("获取项目信息", res.data)
        if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
          that.setData({
            ansData: res.data.data
          })
        } else { //失败  提示   失败原因

        }
      }
    })

  },

  lower: function () {
    var that = this;

    if (that.data.isData) {
      that.data.page++;
      console.log("当前页面：", that.data.page);
      wx.request({
        url: that.data.httpUrl + 'answer/getAnswerInfos', //仅为示例，并非真实的接口地址
        data: {
          page: that.data.page,
          limit: 10,
        },
        header: {
          'content-type': 'application/json' // 默认值
        },
        success(res) {
          console.log("12333",that.data.ansData)
          console.log("获取项目信息", res.data.data) //每次拿到的数据  应该和之前的数据进行拼接
          var ansList = [...that.data.ansData, ...res.data.data]; //拼接之后的数据
          var isData = true;
          if (ansList.length >= res.data.count) {
            //说明没有数据  
            isData = false
          }
          if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
            that.setData({
              ansData: ansList,
              isData: isData
            })
          } else { //失败  提示   失败原因

          }
        }
      })
    }


  },

  onShow: function () {
    var that = this
    console.log("11111111", that.data)
    //调用应用实例的方法获取全局数据
    wx.request({
      url: that.data.httpUrl + 'answer/getAnswerInfos', //仅为示例，并非真实的接口地址
      data: {
        page: 1,
        limit: 10,
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        console.log("获取项目信息", res.data)
        if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
          that.setData({
            ansData: res.data.data,
            page:1
          })
        } else { //失败  提示   失败原因

        }
      }
    })

    
  },


  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

    

  },




})