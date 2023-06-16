// pages/more/login/login.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    httpUrl:"http://localhost:8080/"
  },

  toRegister: function () {
    wx.navigateTo({
      url: '../register/register',
    })
  },

  //点击登录 调用的方法
  formSubmit: function (e) {
    var that = this;
    console.log(e.detail.value.phone) //password

    wx.login({
      success(res) {
        if (res.code) {
          //发起网络请求    res.code需要的登录凭证   5分钟
          wx.request({
            url: that.data.httpUrl + 'user/userLogin',
            method: "post",
            header: {
              "Content-Type": "application/x-www-form-urlencoded"
            },
            data: {
              code: res.code,
              phone: e.detail.value.phone,
              password: e.detail.value.password
            },
            success: function (result) {
              console.log(result.data)
              if (result.data.code == 0) {
                //把返回token放入本地缓存
                wx.setStorage({
                  key: "token",
                  data: result.data.data
                })
                //跳转到首页
                wx.switchTab({
                  url: '../more',
                })
              } else { //显示错误信息
                wx.showToast({
                  title: result.data.msg,
                  icon: 'error',
                  duration: 2000
                })
              }
            }
          })
        } else {
          console.log('登录失败！' + res.errMsg)
        }
      }
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad(options) {

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