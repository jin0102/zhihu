// pages/createans/createans.js
var util = require('../../utils/util.js')

var postsData = require('../../data/data_index')
var app = getApp();
Page({
  /**
   * 页面的初始数据
   */
  data: {
    motto: '知乎--微信小程序版',
    qusData:[],
    httpUrl:"http://localhost:8080/",
    page: 1

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

  clicksub:function(event){
    var that = this;
    console.log("ccccccc",that.data);
  },

  inputeExplain(e) {
    var value = e.detail.value;
    let dataset = e.currentTarget.dataset;
    this.data[dataset.obj] = value;
    var len = parseInt(value.length);
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