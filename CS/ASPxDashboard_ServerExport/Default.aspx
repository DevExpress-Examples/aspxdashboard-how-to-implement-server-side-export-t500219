﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPxDashboard_ServerExport.Default" %>

<%@ Register Assembly="DevExpress.Dashboard.v17.1.Web, Version=17.1.1.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div id="selectBox" style="float: left;"></div>
    <div id="buttonContainer" style="float: left; margin-left: 150px;"></div>
    <div style="position: absolute; left: 0; right: 0; top:50px; bottom:0;">
        <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" Width="100%" Height="100%" WorkingMode="Viewer"
            ClientInstanceName="webDashboard"
            ClientSideEvents-Init="function(s, e) { initializeControls(); }"
            ClientSideEvents-CustomDataCallback="function(s, e) { dashboardExportedSuccess(e); }"
            OnCustomDataCallback="ASPxDashboard1_CustomDataCallback" 
            OnCustomJSProperties="ASPxDashboard1_CustomJSProperties">
            </dx:ASPxDashboard>
    </div>
    </form>
</body>
</html>
<script type="text/javascript" src="<%= Page.ResolveClientUrl("~/Scripts/InitializeControls.js") %>"></script>
