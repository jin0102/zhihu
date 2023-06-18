// pages/more/follow/follow.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    follow: {},
    token: {},
    httpUrl:"http://localhost:8080/"
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad(options) {
    var that =this
    wx.setNavigationBarTitle({
      title: '我的关注',
    })
    wx.getStorage({
      key: 'token',
      success (res) {
        console.log("获取到的用户信息aa：",res.data)
        that.setData({
          token: res.data,
        })
        wx.request({
          url: that.data.httpUrl+'follow/getFollower',
          data: {
            user_id: that.data.token.id,
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success (res) {
            if(res.data.code==0){  //说明请求成功，把返回的数据，设置给data
              console.log("获取到的用户关注信息",res.data)
              console.log(that.data.token.id)
              that.setData({
                follow: res.data.data
              })
            }else{  //失败  提示   失败原因
              console.log("用户关注获取失败")
            }
          }
        })
      },
      fail (res) {
        console.log("未登录")
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