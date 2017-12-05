package cn.xu.tools;

public class ResultException extends RuntimeException{

    private int code;

    public ResultException(int code,String message){
        super(message);
        this.code = code;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
