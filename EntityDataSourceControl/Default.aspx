<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EntityDataSourceControl._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Entity DataSource Control for Entity Framework 6</h1>
      </div>

    <div class="row">
        <asp:GridView ID="detailsGrid" runat="server"
            DataSourceID="dataSource"
            AutoGenerateColumns="False" AllowPaging="True"
            AllowSorting="True" DataKeyNames="CategoryID">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="true" ShowSelectButton="True"></asp:CommandField>
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" SortExpression="CategoryID"></asp:BoundField>
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName"></asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
            </Columns>
        </asp:GridView>
        
        <strong>Insert a New Item</strong>
        <asp:DetailsView ID="insert" runat="server" DefaultMode="Insert"
            DataSourceID="dataSource" OnItemInserted="insert_ItemInserted">
            <Fields>
                <asp:CommandField ShowInsertButton="True"></asp:CommandField>
            </Fields>
        </asp:DetailsView>

        <ef:EntityDataSource runat="server"
            ID="dataSource"
            ContextTypeName="EntityDataSourceControl.Models.Northwind"
            ConnectionString="name=Northwind"
            EnableFlattening="False" EntitySetName="Categories" EnableDelete="true"
            EnableInsert="True" EnableUpdate="True">
        </ef:EntityDataSource>

    </div>

</asp:Content>
