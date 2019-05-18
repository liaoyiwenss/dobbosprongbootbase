package net.wanho.alipay;
import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016093000635270";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCdjZP6IKaHRj/TRgv0S6Lixb9b/iSzjfPtPZh5YUqPrV0WudEfcuT1yFTL+E5tn5V17NybobXFKOMo25Xm4yW2RB2/6X5jQAypFK15JlSO804ERiAZx8SsR2l6CNVu2ATelLe6Q80RtjmuWCbrTN5dJR9xCG0qGtPkIgxV9w6nX8L8QFDszN7M6/CJnZFafQZWdF8y4SY08vpZYcOVwSKFo9iquGLldtmhybw5h21JhPHFxh2LH1QJHH+du/cN/8M9A93D8IUrnO5zUsiO02eL3KwQrhxe8XfRk1zZHqGW8GBksKbgFPpNx1YAn3FSw1CrOvt9tDcmqPbJzXS6yxMHAgMBAAECggEAA+gTyDrxBh+my31MJJWPh2Hx2b0WeeFGMBa75h6Uc7WPvlWDKu11YebCu3//qdYwJYlm+vDqieX2o/e14tC1Cazss+p9OMbIyZR6rKtXo2fDAnYeq6T5anAm3GDFsgbnMAGuAI9X0V2cVodXB7STOuoFuo7D7ixWHqz9c1A568p5CBmCE0r75BgcCvjOsFGrQ8rRQc7BhzCJhD9YOTjNdDkX7k/dRBg7xeq88zzvCRwFsgOQ724jmOW+SlNSE99sIqTdoyZi65Lk+ifFXGPhWfRyyqLOCfmWJmArAZ52VxtMznxW2JFMdzx4dgHcJ7Lx36mosAL4zrVLdfNUI9V5oQKBgQDj9zAKtzAJagpIsepwh9Qp+j7Id4RZMEgEM7miCw8j8EOLdbFaEeHTI9mQ5iT6TbiIWtk7W4icqZImOvgGoGBPSY9qY6be2BMyvbhclAw4PBrvHbclmb0fZqWtdQor+OkrjJqW6Fa7gUQByLQNJIClHxVxzOB5UgG+k7e7C3txdwKBgQCw7amwa/Q9CMT2SK2q9tZMI8wwE2yoyv+bH7ExrdJ/mn0bXHHBJygHki4aULmGWqCll3eu1DRocNDllY3XCLgvaUshnHax1Tir8pw7HgdX+4FYRMpuiMTJ2fFn5uup1JfXJHgoFfe92SBI9TrsNLQqRSugbZyhroNGMYynEdVO8QKBgQDEFRNytB0Si+5qlvZTctHwhXpJTlw9pwTa8G7kzeRpAjnnFAXHtofq5/Q06XC3B/EJADPIFbSNJGI8lg5PDNWqfVhpp2uaVHs28u9IWmOkXza/pGyrX/DHuLAbYgesyP4u4lL6KMCpqceITU1p3JL29KSqbRJL6FjtxvuLXJYCgwKBgQCApyDX53f/FaxbRff6tGiZjwJABy/hAVOiUgZAEJxbK1RDnBIfmMBz2OjrO73cI3RjVOOzXh0JwNc1ym0Mawu7df4q36Izp88AwXa3Shue74RbUhI9E/i8qlzu56x/ntYWnC8/PtIZ25OtWZzR+3Tys7+IdYwKyWItnYQgTEhmkQKBgA8uQAYyhaay2Kabpvkt1gV604vMMnJA4blxP2Y/xmKITojV/uVI8U0hGs9udCJiR36UiDjaXMGZ5D87qEDbsRR190LEWNK3+Hd/sw5N/PVI8EdZepm5V0X/c0ihQ8/0BB5wY0/cADckz37lEPQmXWmDhsJKZH1UhcHwZnkmKdLA";
    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnY2T+iCmh0Y/00YL9Eui4sW/W/4ks43z7T2YeWFKj61dFrnRH3Lk9chUy/hObZ+Vdezcm6G1xSjjKNuV5uMltkQdv+l+Y0AMqRSteSZUjvNOBEYgGcfErEdpegjVbtgE3pS3ukPNEbY5rlgm60zeXSUfcQhtKhrT5CIMVfcOp1/C/EBQ7MzezOvwiZ2RWn0GVnRfMuEmNPL6WWHDlcEihaPYqrhi5XbZocm8OYdtSYTxxcYdix9UCRx/nbv3Df/DPQPdw/CFK5zuc1LIjtNni9ysEK4cXvF30ZNc2R6hlvBgZLCm4BT6TcdWAJ9xUsNQqzr7fbQ3Jqj2yc10ussTBwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8081/notify";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8081/return";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

