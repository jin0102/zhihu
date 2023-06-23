// pages/more/user/user.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    token: {},
    httpUrl:"http://localhost:8080/"
  },

  choosePhoto: function(){
    var that = this;
    wx.chooseMedia({
      count: 1,
      mediaType: ['image'],
      sourceType: ['album'],
      sizeType: ['original'],
      success (res) {
        console.log("图片",res)
        that.setData({
          'token.imageurl': res.tempFiles[0].tempFilePath,
        })
      },
      fail (res) {
        console.log("图片2",res.data)
      }
    })
    // wx.chooseMedia(function(imgUrl){
    //   that.setData({
    //     'token.imageurl': imgUrl
    //   })
    // });
  },
  inputDescribe: function(e){
    this.setData({
      'token.describe': e.detail.value
    })
  },
  inputNickname: function(e){
    this.setData({
      'token.username': e.detail.value
    })
  },
  inputPhone: function(e) {
    this.setData({
      'token.phone': e.detail.value
    })
  },
  saveUserInfo: function(){
    var that = this
    console.log("更改后的个人信息：",that.data.token)
    wx.request({
      url: that.data.httpUrl + 'user/updataUser',
      method: "post",
      data: {
        id: that.data.token.id,
        username: that.data.token.username,
        phone: that.data.token.phone,
        describe: that.data.token.describe,
        imageurl: that.data.token.imageurl
      },
      header: {
        "Content-Type": "application/x-www-form-urlencoded"
      },
      success (res) {
        wx.setStorage({
          key: 'token',
          data: that.data.token
        })
      },
      fail (res) {

      }
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad(options) {
    var that = this
    wx.getStorage({
      key: 'token',
      success (res) {
        console.log("个人信息：",res.data)
        that.setData({
          token: res.data
        })
      }
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