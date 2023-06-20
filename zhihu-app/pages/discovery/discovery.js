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
    page:1,
    hotansData:[],
    folqusData:[],
    colansData:[],
    httpUrl:"http://localhost:8080/",
    token:[],
  },
  onLoad: function () {
    console.log('onLoad')
    var that = this
    //调用应用实例的方法获取全局数据

    wx.request({
      url: that.data.httpUrl+'answer/getHotAnswerInfos', //接收热门回答
      data: {
        page: that.data.page,
        limit: 10,
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success (res) {
        console.log("获取hot项目信息",res.data)
        if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
          that.setData({
            hotansData:res.data.data
          })
        }else{  //失败  提示   失败原因

        }
      }
    })

    wx.getStorage({
      key: 'token',
      success (res) {
        that.setData(
          {
            token: res.data,
          },
        ) 
        console.log("token信息",res.data);//token信息
        console.log("id信息",that.data.token.id)
        wx.request({
          url: that.data.httpUrl+'answer/getFollowAnswerInfos', //接收关注回答
          data: {
            page: that.data.page,
            limit: 10,
            user_id:that.data.token.id
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success (res) {
            console.log("获取关注项目信息",res.data)
            if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
              that.setData({
                folansData:res.data.data
              })
            }else{  //失败  提示   失败原因
    
            }
          }
        })

        wx.request({
          url: that.data.httpUrl+'answer/getCollectAnswerInfos', //接收收藏回答
          data: {
            page: that.data.page,
            limit: 10,
            user_id:that.data.token.id
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success (res) {
            console.log("获取col项目信息",res.data)
            if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
              that.setData({
                colansData:res.data.data
              })
            }else{  //失败  提示   失败原因

            }
          }
        })
            },  
            
    })

    
  },
  onShow: function () {
    var that = this
    //调用应用实例的方法获取全局数据

    wx.request({
      url: that.data.httpUrl+'answer/getHotAnswerInfos', //接收热门回答
      data: {
        page: that.data.page,
        limit: 10,
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success (res) {
        console.log("获取hot项目信息",res.data)
        if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
          that.setData({
            hotansData:res.data.data
          })
        }else{  //失败  提示   失败原因

        }
      }
    })

    wx.getStorage({
      key: 'token',
      success (res) {
        that.setData(
          {
            token: res.data,
          },
        ) 
        console.log("token信息",res.data);//token信息
        console.log("id信息",that.data.token.id)
        wx.request({
          url: that.data.httpUrl+'question/getAllQuestionInfos', //接收关注回答
          data: {
            page: that.data.page,
            limit: 10,
            user_id:that.data.token.id
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success (res) {
            console.log("获取关注问题信息",res.data)
            if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
              that.setData({
                folqusData:res.data.data
              })
            }else{  //失败  提示   失败原因
    
            }
          }
        })

        wx.request({
          url: that.data.httpUrl+'answer/getCollectAnswerInfos', //接收收藏回答
          data: {
            page: that.data.page,
            limit: 10,
            user_id:that.data.token.id
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success (res) {
            console.log("获取col项目信息",res.data)
            if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
              that.setData({
                colansData:res.data.data
              })
            }else{  //失败  提示   失败原因

            }
          }
        })
            },  
            
    })
  },

  switchTab: function(e){
    this.setData({
      currentNavtab: e.currentTarget.dataset.idx
    });
  },

  bindItemTap: function(event) {
    console.log(event+'---------------333333-----------------------------------------o--0')
    console.log(event.currentTarget.dataset.aid)
    var aid=event.currentTarget.dataset.aid
    wx.navigateTo({
      url: '../answer/answer?id='+aid
    })
  },
  bindQueTap: function(event) {
    console.log(event)
    console.log(event.currentTarget.dataset.qid)
    var qid=event.currentTarget.dataset.qid
    wx.navigateTo({
      url: '../question/question?id='+qid
    })
  },

  upper: function () {
    wx.showNavigationBarLoading()
    this.refresh();
    console.log("upper");
    setTimeout(function(){wx.hideNavigationBarLoading();wx.stopPullDownRefresh();}, 2000);
  },
  lower: function (e) {
    wx.showNavigationBarLoading();
    var that = this;
    setTimeout(function(){wx.hideNavigationBarLoading();that.nextLoad();}, 1000);
    console.log("lower")
  },
  //scroll: function (e) {
  //  console.log("scroll")
  //},

  //网络请求数据, 实现刷新
  refresh0: function(){
    var index_api = '';
    util.getData(index_api)
        .then(function(data){
          //this.setData({
          //
          //});
          console.log(data);
        });
  },

  //使用本地 fake 数据实现刷新效果
  refresh: function(){
    var feed = util.getDiscovery();
    console.log("loaddata");
    var feed_data = feed.data;
    this.setData({
      feed:feed_data,
      feed_length: feed_data.length
    });
  },

  //使用本地 fake 数据实现继续加载效果
  nextLoad: function(){
    var next = util.discoveryNext();
    console.log("continueload");
    var next_data = next.data;
    this.setData({
      feed: this.data.feed.concat(next_data),
      feed_length: this.data.feed_length + next_data.length
    });
  }
});
