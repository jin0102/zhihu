// pages/createans/createans.js
var util = require('../../utils/util.js')

var postsData = require('../../data/data_index')
var app = getApp();
Page({
  /**
   * 页面的初始数据
   */
  data: {
    qusData: [],
    httpUrl: "http://localhost:8080/",
    page: 1,
    ceshi:null,
    creansData:[],

  },

  /**
   * 生命周期函数--监听页面加载
   */

   //事件处理函数
  toQuestion: function(event) {
    console.log(event)
    console.log(event.currentTarget.dataset.qid)
    var qid=event.currentTarget.dataset.qid
    wx.navigateTo({
      url: '../question/question?id='+qid
    })
  },

  onLoad(option) {

    console.log('onLoad')
    var that = this
    console.log('onLoad',that.data)
    //调用应用实例的方法获取全局数据

    wx.request({
      url: that.data.httpUrl+'question/getQuestionInfos', //接收
      data: {
        question_id: option.id
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success (res) {
        console.log("获取问题信息",res.data)
        if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
          that.setData({
            qusData:res.data.data
            
          })
          
        }else{  //失败  提示   失败原因

        }

      }
    })

   

  },
  
  gettext: function(event){
    this.setData({
      ceshi:event.detail.value
    })
    var value = event.detail.value;
    let dataset = event.currentTarget.dataset;
    this.data[dataset.obj] = value;
    var len = parseInt(value.length);
    console.log("8888888",len)
    if (len > this.data.maxAddr) return;
    this.setData({
      currentWordNumber: len
    });
    if (this.data.currentWordNumber == 255) {
      wx.showModal({
        title: '提示',
        content: '您输入的次数已达上限',
      })
    }
  },

  clicksub:function(event){
    var that = this;
    var qus_id = that.data.qusData.id
    console.log("bbbbbb", qus_id);
    wx.getStorage({
      key: 'token',
      success(res) {
        that.setData({
          token: res.data,
        }, )
        console.log("token信息", res.data); //token信息
        console.log("id信息", that.data.token.id);
        console.log("输入内容",that.data.ceshi)
        wx.request({
          url: that.data.httpUrl + 'answer/createAnswer', //接收收藏回答
          data: {
            answer_ctnt: that.data.ceshi,
            answer_time : util.formatTime(new Date()),
            user_id: that.data.token.id,
            question_id: qus_id,
            good: 0,
            answer_comment: 0,
            
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success(res) {
            console.log("得到的回答信息", res.data)
            if (res.data.code == 0) { //说明请求成功，把返回的数据，设置给data
              wx.showToast({
                title: res.data.msg,
                icon: 'success',
                duration: 2000
              })
              
              wx.navigateBack({delta: 1
              })
            } else { //失败  提示   失败原因

            }
          }
        })
      },

    })





  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady() {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow() {


  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide() {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh() {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom() {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage() {

  }
})