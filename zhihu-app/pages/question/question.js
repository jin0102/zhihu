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
    selansData: [],
    httpUrl: "http://localhost:8080/",
    qid: null,
    isData: true,
    token:[]
  },
  //事件处理函数
  bindItemTap: function (event) {
    console.log("啊啊啊啊啊啊啊啊啊啊啊啊啊", event.currentTarget.dataset.aid)
    var aid = event.currentTarget.dataset.aid
    wx.navigateTo({
      url: '../answer/answer?id=' + aid
    })
  },

  createans: function (event) {
    console.log("啊啊啊啊啊啊啊啊啊啊啊啊啊", event.currentTarget.dataset.qid)
    var qid = event.currentTarget.dataset.qid
    wx.navigateTo({
      url: '../createans/createans?id=' + qid
    })
  },

  clickOn: function (event) {
    let value = this.data.isChecked;
    if (value) {

      wx.showToast({
        title: '取消关注', //标题
        icon: "success", //图标类型, 默认success
        duration: 1500 //提示框停留时间, 默认1500ms
      })
      this.setData({
        isChecked: !value
      })
      
      
    } else {
      var that = this
      console.log("444444", that.data)
      var que_id = that.data.qid
      console.log("444444", that.data.qid)

      wx.getStorage({
        key: 'token',
        success(res) {
          that.setData({
            token: res.data,
          }, )
          console.log("token信息", res.data); //token信息
          console.log("id信息", that.data.token.id);
          wx.request({
            url: that.data.httpUrl + 'follow/createFollowQue', //接收收藏回答
            data: {
              question_id: que_id,
              user_id: that.data.token.id,
            },
            header: {
              'content-type': 'application/json' // 默认值
            },
            success(res) {
              if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
                wx.showToast({
                  title: '关注成功', //标题
                  icon: "success", //图标类型, 默认success
                  duration: 1500 //提示框停留时间, 默认1500ms
                })
                that.setData({
                  isChecked: !value
                })

              } else { //失败  提示   失败原因

              }
            }
          })

        }
      })
      
    }

    console.log(value)
  },

  onLoad: function (option) {

    console.log('onLoad')
    var that = this
    console.log('onLoad', that.data)
    //调用应用实例的方法获取全局数据
    wx.request({
      url: that.data.httpUrl + 'answer/getSelectAnswerInfos', //接收
      data: {
        page: that.data.page,
        limit: 10,
        question_id: option.id
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        console.log("获取sel项目信息", res.data)
        console.log("huoquqid", res.data.data[0].question_id)
        if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
          that.setData({
            selansData: res.data.data,
            qid: res.data.data[0].question_id
          })
        } else { //失败  提示   失败原因

        }
      }
    })

  },

  onReachBottom: function () {
    var that = this;
    console.log("21321312",that.data.page)
    if (that.data.isData) {
      that.data.page++;
      console.log("当前页面：", that.data.page);
      wx.request({
        url: that.data.httpUrl + 'answer/getSelectAnswerInfos', //接收
        data: {
          page: that.data.page,
          limit: 10,
          question_id: that.data.qid
        },
        header: {
          'content-type': 'application/json' // 默认值
        },
        success(res) {
          console.log("获取项目信息", res.data.data) //每次拿到的数据  应该和之前的数据进行拼接
          console.log("获取项目信息2", that.data.selansData)
          var selansList = [...that.data.selansData, ...res.data.data]; //拼接之后的数据
          var isData = true;
          if (selansList.length >= res.data.count) {
            //说明没有数据  
            isData = false
          }
          if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
            that.setData({
              selansData: selansList,
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
    console.log("12321313123", that.data.qid)
    console.log("999999",that.data.page)
    if (that.data.qid != null) {
      wx.request({
        url: that.data.httpUrl + 'answer/getSelectAnswerInfos', //接收
        data: {
          page: 1,
          limit: 10,
          question_id: that.data.qid
        },
        header: {
          'content-type': 'application/json' // 默认值
        },
        success(res) {
          console.log("获取sel项目信息", res.data)
          if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
            that.setData({
              selansData: res.data.data,
              page: 1
            })
          } else { //失败  提示   失败原因

          }
        }
      })
    }

  },
  tapName: function (event) {
    console.log(event)
  },


})