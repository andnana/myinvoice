<%@ page contentType="text/html;charset=utf-8" %>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>发送成功</title>
</head>

<body>
<%
String tu = request.getParameter("select");//选择用哪个邮局发信测试的时候用了2个,第一个是我们公司自己的，第二是126的
//这样做是怕我们公司的发不到可以用126的备用的发
String tto=request.getParameter("to");//邮件发给谁
String ttitle=request.getParameter("title");//邮件的标题
String tcontent=request.getParameter("content");//邮件的内容
Properties props=new Properties();
props.put("mail.smtp.host","smtp."+tu);//发信的主机，这里要把您的与名的SMTP指向正确的邮件服务器上 smtp.8isp.cn 这里一般不要动！
props.put("mail.smtp.auth","true");
Session s=Session.getInstance(props);
s.setDebug(true);

MimeMessage message=new MimeMessage(s);

//给消息对象设置发件人/收件人/主题/发信时间
InternetAddress from=new InternetAddress("wangrenjiewang@"+tu); //发件人的邮箱号码，必须是已经存在的前面zcdnsz可以改为自己的，串联起来应该是zcdnsz@8isp.cn
//或者zcdnsz@126.com
message.setFrom(from);
InternetAddress to=new InternetAddress(tto);
message.setRecipient(Message.RecipientType.TO,to);
message.setSubject(ttitle);
message.setSentDate(new Date());


//给消息对象设置内容
BodyPart mdp=new MimeBodyPart();//新建一个存放信件内容的BodyPart对象
mdp.setContent(tcontent,"text/html;charset=utf-8");//给BodyPart对象设置内容和格式/编码方式防止邮件出现乱码
Multipart mm=new MimeMultipart();//新建一个MimeMultipart对象用来存放BodyPart对
//象(事实上可以存放多个)
mm.addBodyPart(mdp);//将BodyPart加入到MimeMultipart对象中(可以加入多个BodyPart)
message.setContent(mm);//把mm作为消息对象的内容

message.saveChanges();
Transport transport=s.getTransport("smtp");
transport.connect("smtp."+tu,"wangrenjiewang","mima19840214");//设置发邮件的网关，发信的帐户和密码，这里修改为您自己用的
transport.sendMessage(message,message.getAllRecipients());
transport.close();
%>
<script language="vbscript">
				msgbox "发信成功！",vbInformation,"提示"
				window.location="host-zs-xin.htm"
			</script>
</body>
</html>

