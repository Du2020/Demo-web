package com.neusoft.service;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
public class MD5 {
    public static void main(String[] args) {
        System.out.println(getMD5("123"));
    }
    public static String getMD5(String src) {
        String result="";
        try {
            MessageDigest md5 = MessageDigest.getInstance("md5");
            byte[] b = src.getBytes();
            byte[] digest = md5.digest(b);
            char[] chars = new char[] { '0', '1', '2', '3', '4', '5',
                    '6', '7' , '8', '9', 'A', 'B', 'C', 'D', 'E','F' };
            StringBuffer sb = new StringBuffer();
            for (byte bb : digest) {
                sb.append(chars[(bb >> 4) & 15]);
                sb.append(chars[bb & 15]);
            }
            result=sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return result;
    }
}