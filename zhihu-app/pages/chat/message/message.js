// pages/chat/message/message.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    sendid: null,
    receiveid: null,
    message: {},
    token: {},
    httpUrl:"http://localhost:8080/"
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad(options) {
    var that = this
    console.log("message1:",options.sendid)
    console.log("message2:",options.receiveid)
    that.setData({
      sendid: options.sendid,
      receiveid: options.receiveid
    })
    wx.getStorage({
      key: 'token',
      success (res) {
        console.log("获取到的用户信息aa：",res.data)
        that.setData({
          token: res.data
        })
        wx.setNavigationBarTitle({
          title: that.data.token.username,
        })
      },
      fail (res) {
        console.log("未登录")
      }
    })
    wx.request({
      url: that.data.httpUrl+'chat/getChatMessage',
      data: {
        send_user_id: options.sendid,
        receive_user_id: options.receiveid
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success (res) {
        console.log("message数据：",res.data.data)
        that.setData({
          message: res.data.data
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