<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="Default12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/StyleSheet.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     

         
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                     <asp:BoundField DataField="CourseNO" HeaderText="CourseNO" SortExpression="CourseNO" />
                     <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                     <asp:BoundField DataField="CreditHours" HeaderText="CreditHours" SortExpression="CreditHours" />
                     <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                     <asp:BoundField DataField="PreReguisite" HeaderText="PreReguisite" SortExpression="PreReguisite" />
                 </Columns>
                 <EditRowStyle BackColor="#999999" />
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                 <SortedDescendingCellStyle BackColor="#FFFDF8" />
                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" ProviderName="<%$ ConnectionStrings:TestConnectionString.ProviderName %>" SelectCommand="SELECT [ID], [CourseNO], [CourseName], [CreditHours], [Level], [PreReguisite] FROM [Course]"></asp:SqlDataSource>
             

         

         




</asp:Content>

