package cn.edu.huas.zhihu.vo;

public class ResultVo {
    private int code;
    private  String msg;
    private int count;
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

    public static ResultVo getSuccessVo(String msg,Object data){
        ResultVo resultVo = new ResultVo();
        //code=0表示成功
        resultVo.setCode(0);
        resultVo.setMsg(msg);
        resultVo.setData(data);
        return resultVo;
    }

    public static ResultVo getSuccessVo(String msg,Object data,int count){
        ResultVo resultVo = new ResultVo();
        //code=0表示成功
        resultVo.setCode(0);
        resultVo.setMsg(msg);
        resultVo.setData(data);
        return resultVo;
    }

    public static ResultVo getSuccessVo(String msg){
        return getSuccessVo(msg,null);
    }

    public static ResultVo getFailedVo(String msg){
        ResultVo resultVo = new ResultVo();
        //code=1表示失败
        resultVo.setCode(1);
        resultVo.setMsg(msg);
        return resultVo;
    }


}