//discovery.js
var util = require('../../utils/util.js')
Page({
  data: {
    navTab: ["热门", "关注", "收藏"],
    currentNavtab: "0",
    imgUrls: [
      '../../images/picture2.jpg',
      '../../images/picture1.jpg',
      '../../images/picture3.jpg',
      '../../images/picture4.jpg'
    ],
    indicatorDots: false,
    autoplay: true,
    interval: 5000,
    duration: 1000,
    feed: [],
    feed_length: 0,
    page: 1,
    hotansData: [],
    folqusData: [],
    colansData: [],
    httpUrl: "http://localhost:8080/",
    token: [],
    isData: true
  },
  onLoad: function () {
    console.log('onLoad')
    var that = this
    //调用应用实例的方法获取全局数据

    wx.request({
      url: that.data.httpUrl + 'answer/getHotAnswerInfos', //接收热门回答
      data: {
        page: that.data.page,
        limit: 10,
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        console.log("获取hot项目信息", res.data)
        if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
          that.setData({
            hotansData: res.data.data
          })
        } else { //失败  提示   失败原因

        }
      }
    })

    wx.getStorage({
      key: 'token',
      success(res) {
        that.setData({
          token: res.data,
        }, )
        console.log("token信息", res.data); //token信息
        console.log("id信息", that.data.token.id)
        wx.request({
          url: that.data.httpUrl + 'question/getAllQuestionInfos', //接收关注回答
          data: {
            page: that.data.page,
            limit: 10,
            user_id: that.data.token.id
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success(res) {
            console.log("获取关注问题信息", res.data)
            if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
              that.setData({
                folqusData: res.data.data
              })
            } else { //失败  提示   失败原因

            }
          }
        })

        wx.request({
          url: that.data.httpUrl + 'answer/getCollectAnswerInfos', //接收收藏回答
          data: {
            page: that.data.page,
            limit: 10,
            user_id: that.data.token.id
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success(res) {
            console.log("获取col项目信息", res.data)
            if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
              that.setData({
                colansData: res.data.data
              })
            } else { //失败  提示   失败原因

            }
          }
        })
      },

    })


  },

  onShow: function () {
    var that = this
    wx.getStorage({
      key: 'token',
      success(res) {
        that.setData({
          token: res.data,
        }, )
        console.log("token信息", res.data); //token信息
        console.log("id信息", that.data.token.id)
        wx.request({
          url: that.data.httpUrl + 'question/getAllQuestionInfos', //接收关注回答
          data: {
            page: 1,
            limit: 10,
            user_id: that.data.token.id
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success(res) {
            console.log("获取关注项目信息", res.data)
            if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
              that.setData({
                folqusData: res.data.data,
                page: 1
              })
            } else { //失败  提示   失败原因

            }
          }
        })

        wx.request({
          url: that.data.httpUrl + 'answer/getCollectAnswerInfos', //接收收藏回答
          data: {
            page: 1,
            limit: 10,
            user_id: that.data.token.id
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success(res) {
            console.log("获取col项目信息", res.data)
            if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
              that.setData({
                colansData: res.data.data,
                page: 1
              })
            } else { //失败  提示   失败原因

            }
          }
        })
      },

    })

  },

  lower: function () {
    var that = this;
    console.log("21321312", that.data.page)
    if (that.data.isData) {
      that.data.page++;
      console.log("当前页面：", that.data.page);

      wx.getStorage({
        key: 'token',
        success(res) {
          that.setData({
            token: res.data,
          }, )
          wx.request({
            url: that.data.httpUrl + 'question/getAllQuestionInfos', //接收关注回答
            data: {
              page: that.data.page,
              limit: 10,
              user_id: that.data.token.id
            },
            header: {
              'content-type': 'application/json' // 默认值
            },
            success(res) {
              console.log("获取关注信息", res.data.data) //每次拿到的数据  应该和之前的数据进行拼接
              console.log("获取关注信息2", that.data.folqusData)
              var folqusList = [...that.data.folqusData, ...res.data.data]; //拼接之后的数据
              var isData = true;
              if (folqusList.length >= res.data.count) {
                //说明没有数据  
                isData = false
              }
              if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
                that.setData({
                  folqusData: folqusList,
                  isData: isData
                })
              } else { //失败  提示   失败原因

              }
            }
          })

          wx.request({
            url: that.data.httpUrl + 'answer/getCollectAnswerInfos', //接收收藏回答
            data: {
              page: that.data.page,
              limit: 10,
              user_id: that.data.token.id
            },
            header: {
              'content-type': 'application/json' // 默认值
            },
            success(res) {
              console.log("获取收藏项目信息", res.data.data) //每次拿到的数据  应该和之前的数据进行拼接
              console.log("获取收藏项目信息2", that.data.colansData)
              var colansList = [...that.data.colansData, ...res.data.data]; //拼接之后的数据
              var isData = true;
              if (colansList.length >= res.data.count) {
                //说明没有数据  
                isData = false
              }
              if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
                that.setData({
                  colansData: colansList,
                  isData: isData
                })
              } else { //失败  提示   失败原因

              }
            }
          })
        },

      })


      wx.request({
        url: that.data.httpUrl + 'answer/getHotAnswerInfos', //接收热门回答
        data: {
          page: that.data.page,
          limit: 10,
        },
        header: {
          'content-type': 'application/json' // 默认值
        },
        success(res) {
          console.log("获取项目信息", res.data.data) //每次拿到的数据  应该和之前的数据进行拼接
          console.log("获取项目信息2", that.data.hotansData)
          var hotansList = [...that.data.hotansData, ...res.data.data]; //拼接之后的数据
          var isData = true;
          if (hotansList.length >= res.data.count) {
            //说明没有数据  
            isData = false
          }
          if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
            that.setData({
              hotansData: hotansList,
              isData: isData
            })
          } else { //失败  提示   失败原因

          }
        }
      })
    }
  },

  onReachBottom: function () {

  },

  switchTab: function (e) {
    this.setData({
      currentNavtab: e.currentTarget.dataset.idx
    });
  },

  bindItemTap: function (event) {
    console.log(event + '---------------333333-----------------------------------------o--0')
    console.log(event.currentTarget.dataset.aid)
    var aid = event.currentTarget.dataset.aid
    wx.navigateTo({
      url: '../answer/answer?id=' + aid
    })
  },
  bindQueTap: function (event) {
    console.log(event)
    console.log(event.currentTarget.dataset.qid)
    var qid = event.currentTarget.dataset.qid
    wx.navigateTo({
      url: '../question/question?id=' + qid
    })
  },


});