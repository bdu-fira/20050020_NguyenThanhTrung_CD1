//using System;
//using System.Collections.Generic;
//using System.Configuration;
//using System.Linq;
//using System.Net;
//using System.Net.Mail;
//using System.Web;

//namespace WebsiteNoiThat.Common
//{
//    public class MailHelper
//    {
//        public void SendMail(string toEmailAddress, string subject, string content)
//        {
//            var fromEmailAddress = ConfigurationManager.AppSettings["FromEmailAddress"].ToString();
//            var fromEmailDisplayName = ConfigurationManager.AppSettings["FromEmailDisplayName"].ToString();
//            var fromEmailPassword = ConfigurationManager.AppSettings["FromEmailPassword"].ToString();
//            var smtpHost = ConfigurationManager.AppSettings["SMTPHost"].ToString();
//            var smtpPort = ConfigurationManager.AppSettings["SMTPPort"].ToString();

//            bool enabledSsl = bool.Parse(ConfigurationManager.AppSettings["EnabledSSL"].ToString());

//            string body = content;
//            MailMessage message = new MailMessage(new MailAddress(fromEmailAddress, fromEmailDisplayName), new MailAddress(toEmailAddress));
//            message.Subject = subject;
//            message.IsBodyHtml = true;
//            message.Body = body;

//            var client = new SmtpClient();

//            client.EnableSsl = true;
//            client.UseDefaultCredentials = false;
//            client.Credentials = new NetworkCredential(fromEmailAddress, fromEmailPassword);
//            client.Host = "smtp.gmail.com";
//            client.Port = 587;

//            client.Send(message);
//        }
//    }
//}

using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace WebsiteNoiThat.Common
{
    public class MailHelper
    {
        public void SendMail(string toEmailAddress, string subject, string content)
        {
            var fromEmailAddress = ConfigurationManager.AppSettings["FromEmailAddress"];
            var fromEmailDisplayName = ConfigurationManager.AppSettings["FromEmailDisplayName"];
            var fromEmailPassword = ConfigurationManager.AppSettings["FromEmailPassword"];
            var smtpHost = ConfigurationManager.AppSettings["SMTPHost"];
            var smtpPort = int.Parse(ConfigurationManager.AppSettings["SMTPPort"]);
            var enabledSsl = bool.Parse(ConfigurationManager.AppSettings["EnabledSSL"]);

            var toEmail = string.IsNullOrEmpty(toEmailAddress)
                ? ConfigurationManager.AppSettings["ToEmailAddress"]
                : toEmailAddress;

            var emailSubject = string.IsNullOrEmpty(subject)
                ? ConfigurationManager.AppSettings["DefaultEmailSubject"]
                : subject;

            var emailBodyHeader = ConfigurationManager.AppSettings["DefaultEmailBodyHeader"];
            var emailContent = string.IsNullOrEmpty(content)
                ? emailBodyHeader
                : content;

            MailMessage message = new MailMessage(
                new MailAddress(fromEmailAddress, fromEmailDisplayName),
                new MailAddress(toEmail))
            {
                Subject = emailSubject,
                Body = emailContent,
                IsBodyHtml = true
            };

            using (var client = new SmtpClient(smtpHost, smtpPort))
            {
                client.EnableSsl = enabledSsl; // Bật SSL/TLS
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential(fromEmailAddress, fromEmailPassword);

                try
                {
                    client.Send(message); // Gửi email
                }
                catch (SmtpException smtpEx)
                {
                    // Hiển thị thông báo lỗi chi tiết
                    Console.WriteLine($"SMTP Error: {smtpEx.Message}");
                    throw;
                }
            }
        }
    }
}
