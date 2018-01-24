package org.mfm.travel.controller.pub;

import org.springframework.stereotype.Controller;


@Controller
public class PublicUserController {
//    @Inject
//    private JavaMailSender mailSender;
//
//    //	@Inject
////	private TaskExecutor taskExecutor;
//    @Inject
//    private IPublicUserService publicUserService;
//
//    /**
//     * 邮箱注册功能
//     */
//    //1.跳转到注册页面（http://localhost:8080/travel/regist）
//    @RequestMapping(value = "/regist", method = RequestMethod.GET)
//    public String regist() {
//        return "public/user/regist";
//    }
//
//    //2.在注册页面输入邮箱地址后，点击注册开始异步发送邮件并跳转到邮件已发送页面
//    @RequestMapping(value = "/regist/mail", method = RequestMethod.POST)
//    public String sendMail(String email, Model model) {
//        System.out.println("开始发邮件-Admin-send-email-to-" + email + "-------------------------------");
//        String code = RandomGenerator.getRandomString();
//        String url = BaseInfoUtil.getInstacne().read().getDomainName() + "public/regist/confirm?code=" + code;
////		taskExecutor.execute(new SendMailThread(email, url));
//        model.addAttribute("email", email);
//        return "public/user/forward_to_mail";
//    }
//
//    //3.登录邮箱，打开邮件，点击激活连接后跳到注册页面，跳转到---regist_email_confirm.jsp
//    @RequestMapping(value = "/regist/confirm", method = RequestMethod.GET)
//    public String registEmailConfirm(String code) {
//        //TODO code除了唯一标识外，每个还要计算超时后重新填写后，重新发送邮件？
//        //TODO email要设置成默认的绑定邮箱，怎么做？
//        return "public/user/regist_email_confirm";
//    }
//
//    //4.输入昵称和密码后，注册成功并且自动登录，跳转到首页
//    @RequestMapping(value = "/regist/confirm", method = RequestMethod.POST)
//    public String registEmailConfirm(PublicUser pu, HttpSession session) {
//        //默认2是保密，1是男，0是女
//        pu.setSex(2);
//        publicUserService.add(pu);
//        System.out.println(pu.getId() + "----hibernate的session关闭了吗？-------");
//        //hibernate的session关闭了吗？--实践证明可以获取id，pu任被session管理，属于persitent状态
//        pu = publicUserService.loadByNickname(pu.getNickname());
//        session.setAttribute("loginPu", pu);
//        return "redirect:/index";
//    }
//
//
//    //发送邮件的线程
//    private class SendMailThread implements Runnable {
//        private String email;
//        private String url;
//
//        public SendMailThread(String email, String url) {
//            super();
//            this.email = email;
//            this.url = url;
//        }
//
//        @Override
//        public void run() {
//            sendMail(email, url);
//        }
//    }
//
//    //线程中发送邮件激活邮件的细节--sendMail()
//    private void sendMail(String email, String url) {
//        try {
//            //通过MimeMessageHelper来完成对邮件信息的创建
//            MimeMessage msg = mailSender.createMimeMessage();
//            MimeMessageHelper helper = new MimeMessageHelper(msg, true, "utf-8");
//            helper.setFrom("m148632015@sina.com");
//            helper.setTo(email);
//            helper.setSubject("欢迎注册！");
//            //设置邮件的正文
//            StringBuffer sb = new StringBuffer();
//            sb.append("<table width='100%' cellspacing='0' cellpadding='0' border='0'><tbody><tr><td bgcolor='#f7f9fa' align='center' style='padding:22px 0 20px 0'><table width='552' cellspacing='0' cellpadding='0' border='0' style='background-color:f7f9fa; border-radius:3px;border:1px solid #dedede;margin:0 auto; background-color:#ffffff'><tbody>")
//                    .append("<tr><td bgcolor='#ffffff' align='center' style='padding: 0 15px 0px 15px;'><table width='480' cellspacing='0' cellpadding='0' border='0'><tbody><tr><td><table width='100%' cellspacing='0' cellpadding='0' border='0'><tbody><tr><td><table cellspacing='0' cellpadding='0' border='0' align='left'>")
//                    .append("<tbody><tr><td width='550' valign='top' align='left'><table width='100%' cellspacing='0' cellpadding='0' border='0'><tbody><tr><td bgcolor='#ffffff' align='left' style='background-color:#ffffff; font-size: 17px; color:#7b7b7b; padding:28px 0 0 0;line-height:25px;'>")
//                    .append("为了保证你正常体验蚂蜂窝的服务，请激活账号。</td></tr><tr><td align='center' style='border-bottom:1px #f1f4f6 solid; padding: 10px 0 35px 0;'><table cellspacing='0' cellpadding='0' border='0'><tbody><tr><td><span style='font-family:Hiragino Sans GB;font-size:17px;'><a target='_blank' href='" + url + "' style='text-decoration:none;color:#ffffff;'>")
//                    .append("<div style='padding:10px 25px 10px 25px;border-radius:3px;text-align:center;text-decoration:none;background-color:#ffa800;color:#ffffff;font-size:17px;margin:0;white-space:nowrap'>立即激活账号</div></a></span></td></tr></tbody></table></td></tr><tr><td valign='top' align='left' style='font-size:15px; color:#7b7b7b; font-size:14px; line-height: 25px; font-family:Hiragino Sans GB; padding: 20px 0px 35px 0px'>")
//                    .append("如果以上按钮无法打开，请把下面的链接复制到浏览器地址栏中打开：<a target='_blank' href='" + url + "'>" + url + "</a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>")
//                    .append("<table width='100%' cellspacing='0' cellpadding='0' border='0'><tbody><tr><td bgcolor='#f7f9fa' align='center'><table width='552' cellspacing='0' cellpadding='0' border='0' align='center'><tbody><tr><td valign='top' bgcolor='#f7f9fa' align='center' style='font-family:Hiragino Sans GB; font-size:12px; color:#b6c2cc; line-height:17px; padding:0 0 25px 0;'>这封邮件的收件地址是 <a target='_blank' href='mailto:" + email + "'>" + email + "</a><br>")
//                    .append(" 你可以通过<a target='_blank' style='border:none;color:#8a939b;text-decoration:none;' href='#'>&nbsp;设置 </a><span>管理其他来自蚂蜂窝的邮件</span><br> &copy; 2014 蚂蜂窝</td></tr></tbody></table></td></tr></tbody></table>");
//            helper.setText(sb.toString(), true);
//            mailSender.send(msg);
//            System.out.println("发邮件结束-Admin-send-email-End-------------------------------");
//        } catch (MailException e) {
//            e.printStackTrace();
//        } catch (MessagingException e) {
//            e.printStackTrace();
//        }
//    }
//
//    /**
//     * 短信验证注册功能
//     *
//     * @param phone
//     * @param model
//     * @return
//     * @throws HttpException
//     * @throws IOException
//     */
//    //1.在注册页面输入手机号码后跳转到输入昵称和密码页面，并点击按钮获取手机验证码
//    @RequestMapping(value = "/regist/sms", method = RequestMethod.GET)
//    public String sendSMS(String phone, Model model) throws HttpException, IOException {
//        model.addAttribute("phone", phone);
//        return "public/user/regist_sms_confirm";
//    }
//
//    @RequestMapping(value = "/regist/sms", method = RequestMethod.POST)
//    public void sendSMS(String phone) throws HttpException, IOException {
//        System.out.println("开始发短信-Admin-send-SMS-to-" + phone + "-------------------------------");
//        HttpClient client = new HttpClient();
//        PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");
//        post.addRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=gbk");// 在头文件中设置转码
//        NameValuePair[] data = {new NameValuePair("Uid", "m148632015"), new NameValuePair("Key", "424731cc7373f129d80a"),
//                new NameValuePair("smsMob", phone), new NameValuePair("smsText", "蚂蜂窝注册验证码：8888")};
//        post.setRequestBody(data);
//
//        client.executeMethod(post);
//        Header[] headers = post.getResponseHeaders();
//        int statusCode = post.getStatusCode();
//        System.out.println("statusCode:" + statusCode);
//        for (Header h : headers) {
//            System.out.println(h.toString());
//        }
//        String result = new String(post.getResponseBodyAsString().getBytes("gbk"));
//        System.out.println(result); // 打印返回消息状态
//
//        post.releaseConnection();
//    }
//
//    /**
//     * 用户设置功能
//     */
//    @RequestMapping(value = "/user/settings", method = RequestMethod.GET)
//    public String toSettings() {
//        return "public/user/settings";
//    }
//
//    @RequestMapping(value = "/user/settings", method = RequestMethod.POST)
//    public String toSettings(PublicUser pu, HttpSession session) {
//        PublicUser loginPu = (PublicUser) session.getAttribute("loginPu");
//        pu.setId(loginPu.getId());
//        publicUserService.update(pu);
//        return "public/user/settings";
//    }
//
//    public @ResponseBody
//    AjaxObject uploadAvatar() {
//
//        return null;
//    }
}
