package cn.edu.huas.zhihu.vo;

public class ResultVo {
	/*
		状态码 可以自己指定数字代表成功失败
	 */
	private int code;
	/*
		返回信息
	 */
	private String msg;
	/*
		数据长度
	 */
	private int count;
	/*
		返回的值
	 */
	private Object data;

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public static ResultVo getSuccessVo(String msg, Object data, Integer count) {
		ResultVo resultVo = new ResultVo();
		// code=0 表示成功
		resultVo.setCode(0);
		resultVo.setMsg(msg);
		resultVo.setData(data);
		resultVo.setCount(count);
		return resultVo;
	}

	public static ResultVo getSuccessVo(String msg, Object data) {
		ResultVo resultVo = new ResultVo();
		// code=0 表示成功
		resultVo.setCode(0);
		resultVo.setMsg(msg);
		resultVo.setData(data);
		return resultVo;
	}

	public static ResultVo getSuccessVo(String msg) {
		return getSuccessVo(msg, null);
	}

	public static ResultVo getFailedVo(String msg) {
		ResultVo resultVo = new ResultVo();
		// code=1 表示失败
		resultVo.setCode(1);
		resultVo.setMsg(msg);
		return resultVo;
	}
}
