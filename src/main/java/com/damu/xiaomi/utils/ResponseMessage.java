package com.damu.xiaomi.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * <p>项目文档： 响应数据封装</p>
 *
 * @author <a href="https://github.com/laomu/laomu.github.io">大牧</a>
 * @version V1.0
 */
public class ResponseMessage {
    private String errorCode;
    private String errorMsg;
    private Map<String, Object> objectMap = new HashMap<>();

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    public Map<String, Object> getObjectMap() {
        return objectMap;
    }

    public void setObjectMap(Map<String, Object> objectMap) {
        this.objectMap = objectMap;
    }

    public ResponseMessage addObject(String key, Object value) {
        this.objectMap.put(key, value);
        return this;
    }

    public static ResponseMessage success() {
        ResponseMessage rm = new ResponseMessage();
        rm.setErrorCode("100");
        rm.setErrorMsg("处理成功");
        return rm;
    }

    public static ResponseMessage error() {
        ResponseMessage rm = new ResponseMessage();
        rm.setErrorCode("200");
        rm.setErrorMsg("处理失败");
        return rm;
    }
}
