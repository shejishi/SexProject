package com.ellison.project.utils;

import com.ellison.project.utils.base64.BASE64Encoder;

import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.net.QCodec;

import java.util.Arrays;

/**
 * @author ellison
 * @date 2020年09月27日
 * @desc 用一句话描述这个类的作用
 */
public class Base64Util {
//    public static String base64Decrypt(String paramString)
//            throws Exception {
//        return new QCodec().decode(paramString);
//    }

    public static String base64Encrypt(byte[] paramArrayOfByte) {
        return new BASE64Encoder().encode(paramArrayOfByte);
    }
}
