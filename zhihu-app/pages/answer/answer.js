//answer.js
var util = require('../../utils/util.js')

var postsData = require('../../data/data_index')
var app = getApp();
Page({
  data: {
    motto: '知乎--微信小程序版',
    userInfo: {},
    addBookrackSucceed: true,
    CollectionSucceed: true,
    HelpSucceed: true,
    iconAddBookrack: "../../images/heart2.png", //感谢图标
    iconAddBookrackSucceed: "../../images/heart.png", //感谢成功图标    
    iconCollection: "../../images/star2.png", //收藏图标
    iconCollectionSucceed: "../../images/star3.png", //收藏图标成功图标  
    iconHelp: "../../images/star2.png", //收藏图标
    iconHelpSucceed: "../../images/star3.png", //收藏图标成功图标  
    isChecked: false,
    speansData: [],
    httpUrl: "http://localhost:8080/",
    page: 1,
    token: []
  },
  //事件处理函数
  toQuestion: function (event) {
    console.log(event)
    console.log(event.currentTarget.dataset.qid)
    var qid = event.currentTarget.dataset.qid
    wx.navigateTo({
      url: '../question/question?id=' + qid
    })
  },
  onLoad: function (option) {

    console.log('onLoad')
    var that = this
    console.log('onLoad', that.data)
    //调用应用实例的方法获取全局数据
    wx.request({
      url: that.data.httpUrl + 'answer/getSpecificAnswerInfos', //接收
      data: {
        page: that.data.page,
        limit: 10,
        answer_id: option.id
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        console.log("获取spe项目信息", res.data)
        if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
          that.setData({
            speansData: res.data.data

          })

        } else { //失败  提示   失败原因

        }

      }
    })

  },
  tapName: function (event) {
    console.log(event)
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
      var fol_id = that.data.speansData.user_id
      console.log("444444", fol_id)
      let value = this.data.CollectionSucceed;
      wx.getStorage({
        key: 'token',
        success(res) {
          that.setData({
            token: res.data,
          }, )
          console.log("token信息", res.data); //token信息
          console.log("id信息", that.data.token.id);
          wx.request({
            url: that.data.httpUrl + 'follow/createFollower', //接收收藏回答
            data: {
              follower_id: fol_id,
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
                  isChecked: value
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

  clickThank: function (event) {
    let value = this.data.addBookrackSucceed;
    wx.showToast({
      title: '加入成功', //标题
      icon: "success", //图标类型, 默认success
      duration: 1500 //提示框停留时间, 默认1500ms
    })
    this.setData({
      addBookrackSucceed: !value
    })
    console.log(value)
  },

  chooseAddBookrack: function (event) {
    let value = this.data.addBookrackSucceed;
    if (value) {
      wx.showToast({
        title: '感谢成功', //标题
        icon: "success", //图标类型, 默认success
        duration: 1500 //提示框停留时间, 默认1500ms
      })
      this.setData({
        addBookrackSucceed: !value
      })
    } else {
      wx.showToast({
        title: '取消感谢', //标题
        icon: "success", //图标类型, 默认success
        duration: 1500 //提示框停留时间, 默认1500ms
      })
      this.setData({
        addBookrackSucceed: !value
      })
    }

    console.log(value)
  },

  chooseCollection: function (event) {
    var that = this
    console.log("444444", that.data)
    var ans_id = that.data.speansData.id
    console.log("444444", ans_id)
    let value = this.data.CollectionSucceed;
    if (value) {

      wx.getStorage({
        key: 'token',
        success(res) {
          that.setData({
            token: res.data,
          }, )
          console.log("token信息", res.data); //token信息
          console.log("id信息", that.data.token.id);
          console.log("输入内容", that.data.ceshi)
          wx.request({
            url: that.data.httpUrl + 'collect/createCollect', //接收收藏回答
            data: {
              answer_id: ans_id,
              user_id: that.data.token.id,
            },
            header: {
              'content-type': 'application/json' // 默认值
            },
            success(res) {
              if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data

                wx.showToast({
                  title: '收藏成功', //标题
                  icon: "success", //图标类型, 默认success
                  duration: 1500 //提示框停留时间, 默认1500ms
                })

                that.setData({
                  CollectionSucceed: !value
                })

              } else { //失败  提示   失败原因

              }
            }
          })

        }
      })



    } else {
      wx.showToast({
        title: '取消收藏成功', //标题
        icon: "success", //图标类型, 默认success
        duration: 1500 //提示框停留时间, 默认1500ms
      })
      this.setData({
        CollectionSucceed: !value
      })

    }


    console.log(value)
  }

})