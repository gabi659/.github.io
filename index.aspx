﻿<%@ Page Language="C#" Culture="en-US" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MeetingWebApplication.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>index</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width = device-width, initial-scale=1" />

    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
    </script>   

    <link href="Content/StyleSheetIndex.css" rel="stylesheet"  media='(min-width: 1200px)'  />
    <link href="Content/StyleSheetIndexNarrow.css" rel="stylesheet" media='(max-width: 1200px)' />
</head>
<body>
    <form id="form1" runat="server">  
        <br /><br /> 
        <div class="list-group links">
                <a href="AddAppointment.aspx" class="list-group-item">Add Appointment</a>
                <a href="ManageAppointments.aspx" class="list-group-item">Manage Appointments</a>
                <a href="AddCustomer.aspx" class="list-group-item">Add Customer</a>
                <a href="ChangeCustomerDetails.aspx" class="list-group-item">Change Customer Details</a>
                <a href="ShowCustomers.aspx" class="list-group-item">Show All Customers</a>
            </div>     
        <div class="calendar">
            <%--This event is raised when each day is created in the control hierarchy for the Calendar control.
         Although data binding is not supported for the Calendar control, it is possible to modify the content
         and formatting of the individual date cells. The DayRender event is raised when each date cell
         in the Calendar control is created. You can control the contents and formatting of a date cell
         when it is created by providing code in the event handler for the DayRender event.--%>
            <asp:Calendar ID="MeetingCalendar" runat="server" OnDayRender="MeetingCalendar_DayRender"
                Width="100%" BackColor="White" BorderColor="DarkGray" 
                BorderWidth="1px" DayNameFormat="Short" Font-Names="Verdana" 
                Font-Size="8pt" ForeColor="black" ShowGridLines="true"
                Height="394px" NextPrevFormat="FullMonth">
                <DayHeaderStyle BackColor="#ffb3ff" Font-Bold="true" Height="1px" CssClass="text-center" />
                <NextPrevStyle Font-Size="10pt" ForeColor="white" BackColor="Transparent" CssClass="text-center" />
                <OtherMonthDayStyle ForeColor="Gray" />
                <SelectedDayStyle BackColor="yellow" Font-Bold="true" />
                <SelectorStyle BackColor="Transparent" />
                <TitleStyle BackColor="#ff33ff" Font-Bold="true" Font-Size="10pt" ForeColor="black" />
                <TodayDayStyle BackColor="Purple" ForeColor="White" />
            </asp:Calendar>
        </div>      
    </form>
</body>
</html>



