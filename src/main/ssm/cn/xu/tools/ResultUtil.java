package cn.xu.tools;

public class ResultUtil {
    public static Result success(Object jsonArray){
        Result result = new Result();
        result.setData(jsonArray);
        result.setMessage("success");
        result.setCode(1);
        return result;
    }

    public static Result error(int code , String message){
        Result result = new Result();
        result.setMessage(message);
        result.setCode(code);
        return result;
    }
}
