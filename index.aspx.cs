using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MeetingWebApplication.Models;
using System.Globalization;

namespace MeetingWebApplication
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //using (MyDbContext db = new MyDbContext())
            //{
            //    Customer c = new Customer()
            //    {
            //        FullName = "Roni oz",
            //        Phone = "054-8888338888",
            //        Address = "nes ziona"
            //    };
            //    db.Customers.Add(c);
            //    try
            //    {
            //        db.SaveChanges();
            //    }
            //    catch (Exception)
            //    {

            //        throw;
            //    }
            //}
        }

        //The DayRender event is raised when each date cell in the Calendar control is created.
        //You can control the contents and formatting of a date cell when it is created by providing code in the event handler for the DayRender event.
        protected void MeetingCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            using (MyDbContext db = new MyDbContext())
            {
                var allAppointmets = db.Appointments.Select(x => new { x.FullName, x.Date, x.Time, x.Description });
                try
                {
                    foreach (var item in allAppointmets)
                    {
                        DateTime result = DateTime.ParseExact(item.Date, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                        if (result == e.Day.Date)
                        {
                            //LiteralControl = Represents HTML elements, text, and any other strings in an ASP.NET
                            //page that do not require processing on the server.
                            e.Cell.Controls.Add(new LiteralControl("<p>" + item.Time + " - " + item.FullName + "<br />" +
                                item.Description + "<br />" + "__________________" + "</p>"));
                            e.Cell.BackColor = System.Drawing.Color.LightBlue;
                            e.Cell.ForeColor = System.Drawing.Color.Black;
                            e.Cell.Font.Bold = true;
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error loading data to calender." + ex.Message + "')</script>");
                }
            }
        }
    }
}