package com.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/send")
public class MailResponse extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public MailResponse() {
        super();
    }
    
    private void process(HttpServletRequest request, HttpServletResponse response) {
        try{
            String pwd = "gvywdrzpymezhdac";//��������������
             String mailfrom = request.getParameter("14575469976"); //���׵�����
             String wangyiFrom = mailfrom.substring(0, mailfrom.indexOf('@'));//����������û���
            String tu = "qq.com"; //������ĺ�׺����
            String tto= request.getParameter("14575469976"); //�����ʼ�������
            String ttitle= "�����������̹���Ա�ظ���";
            String tcontent = request.getParameter("messageTo");
    
            Properties props=new Properties();
    
            props.put("mail.smtp.host","smtp."+tu);//����SMTP��������ַ�˿�
    
            props.put("mail.smtp.auth","true");//��������ͨ����֤
    
            Session s=Session.getInstance(props);
    
            s.setDebug(true);
    
            MimeMessage message=new MimeMessage(s);
    
            //����Ϣ�������÷�����/�ռ���/����/����ʱ��
    
            InternetAddress from=new InternetAddress(mailfrom); //�����˵�qq����
    
            message.setFrom(from);
    
            InternetAddress to=new InternetAddress(tto);//�ռ��˵�����
    
            message.setRecipient(Message.RecipientType.TO,to);
    
            message.setSubject(ttitle);
    
            message.setSentDate(new Date());
    
            //����Ϣ������������
    
            BodyPart mdp=new MimeBodyPart();//�½�һ������ż����ݵ�BodyPart����
    
            mdp.setContent(tcontent,"text/html;charset=gb2312");//��BodyPart�����������ݺ͸�ʽ/���뷽ʽ
    
            Multipart mm=new MimeMultipart();//�½�һ��MimeMultipart�����������BodyPart��
    
            //��(��ʵ�Ͽ��Դ�Ŷ��)
    
            mm.addBodyPart(mdp);//��BodyPart���뵽MimeMultipart������(���Լ�����BodyPart)
    
            message.setContent(mm);//��mm��Ϊ��Ϣ���������
    
            message.saveChanges();
    
            Transport transport=s.getTransport("smtp");
    
            transport.connect("smtp."+tu, wangyiFrom, pwd); //�����wangyiFromΪ�����������˺�
    
            transport.sendMessage(message,message.getAllRecipients());
    
            transport.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        process(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        process(request, response);
    }

}