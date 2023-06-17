// pages/more/register/register.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    httpUrl: "http://localhost:8080/"
  },

  toLogin: function () {
    wx.navigateTo({
      url: '../login/login',
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad(options) {

  },

  //提交表单
  formSubmit: function (e) {
    var that = this;
    console.log(e.detail.value);
    //1.获取本地缓存的user信息   
    wx.getStorage({
      key: 'weixinUser',
      success(res) {
        //res.data用户信息
        //2.发起请求   注册  post请求
        wx.request({
          url: that.data.httpUrl + 'user/userRegister', //仅为示例，并非真实的接口地址
          method: "post",
          data: {
            imageurl: res.data.avatarUrl,
            username: e.detail.value.username,
            password: e.detail.value.password,
            phone: e.detail.value.phone
          },
          header: {
            "Content-Type": "application/x-www-form-urlencoded"
          },
          success(res) {
            //res.data返回的值
            console.log(res.data)
            if (res.data.code == 0) { //表示成功  
              wx.showToast({
                title: res.data.msg,
                icon: 'success',
                duration: 2000
              })
            } else {
              //失败 显示提示信息
              wx.showToast({
                title: res.data.msg,
                icon: 'error',
                duration: 2000
              })
            }
          }
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