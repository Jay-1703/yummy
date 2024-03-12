﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace yummy.Comman
{
    public class Sevices
    {
        internal static int execute(string sql, SqlConnection con)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();
            return affectedRows;
        }


        internal static DataTable select(string sql, SqlConnection con)
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }

        internal static bool SendEmail(string ToEmail, string Name)
        {
            string fromEmail = "darshitdudhaiya201@gmail.com";
            string toEmail = ToEmail;
            string appPassword = "kxql kysc tjxs uatp";

            string smtpServer = "smtp.gmail.com";
            int smtpPort = 587;

            MailMessage mail = new MailMessage(fromEmail, toEmail);


            string htmlTemplate = @"
                     <!DOCTYPE html>
                     <html lang=""en"">
                     <head>
                         <meta charset=""UTF-8"">
                         <meta name=""viewport"" content=""width=device-width, initial-scale=1.0"">
                         <title>Booking Confirmation</title>
                         <style>
                             /* Styles from the template */
                         </style>
                     </head>
                     <body>
                         <div class=""container"">
                             <h2>Request Confirmation</h2>
                             <p>Dear <span class=""highlight"">{Name}</span>,</p>
             
                             <p>Your Request details are confirmed. Here are the details:</p>
             
                             <p><strong>Name:</strong> <span class=""highlight"">{Name}</span></p>                     

                             <p>Please, Give your feedback here : 🌐  <a href='https://localhost:44360/pages/feedback' target='_blank'>Click here to leave us a feedback</a> </p>

                             < p>Thank you for choosing our service. We look forward to serving you!</p>

                             <p>Best regards,<br>CaterServ</p>
                         </div>
                     </body>
                     </html>
                    ";


            htmlTemplate = htmlTemplate.Replace("{Name}", Name)                            ;

            mail.Subject = "Catering Request";
            mail.Body = htmlTemplate;
            mail.IsBodyHtml = true;

            SmtpClient smtpClient = new SmtpClient(smtpServer, smtpPort);
            smtpClient.Credentials = new NetworkCredential(fromEmail, appPassword);
            smtpClient.EnableSsl = true;

            try
            {
                smtpClient.Send(mail);

                return true;

            }
            catch (Exception)
            {
                return false;
            }
        }

    }
}