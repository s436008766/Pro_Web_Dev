<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default123.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/StyleSheet.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Btn1" runat="server"  Text="General Information" OnClick="Btn1_Click" BackColor="#FFFFCC" BorderColor="#993366" BorderStyle="Solid" />
    <asp:Button ID="Btn2" runat="server"  Text="Topics" OnClick="Btn2_Click" BackColor="#FFFFCC" BorderColor="#993366" BorderStyle="Solid" />
    <asp:Button ID="Btn3" runat="server" Text="CLOs and PLOs" OnClick="Btn3_Click" BackColor="#FFFFCC" BorderColor="#993366" BorderStyle="Solid" />
    
            
            <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                     <div class="row">

        <div class="column">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="CourseNO" HeaderText="CourseNO" SortExpression="CourseNO" />
                    <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                    <asp:BoundField DataField="CreditHours" HeaderText="CreditHours" SortExpression="CreditHours" />
                    <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                    <asp:BoundField DataField="PreReguisite" HeaderText="PreReguisite" SortExpression="PreReguisite" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Objectives" HeaderText="Objectives" SortExpression="Objectives" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [ID] = @original_ID AND (([CourseNO] = @original_CourseNO) OR ([CourseNO] IS NULL AND @original_CourseNO IS NULL)) AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([CreditHours] = @original_CreditHours) OR ([CreditHours] IS NULL AND @original_CreditHours IS NULL)) AND (([Level] = @original_Level) OR ([Level] IS NULL AND @original_Level IS NULL)) AND (([PreReguisite] = @original_PreReguisite) OR ([PreReguisite] IS NULL AND @original_PreReguisite IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Objectives] = @original_Objectives) OR ([Objectives] IS NULL AND @original_Objectives IS NULL))" InsertCommand="INSERT INTO [Course] ([CourseNO], [CourseName], [CreditHours], [Level], [PreReguisite], [Description], [Objectives]) VALUES (@CourseNO, @CourseName, @CreditHours, @Level, @PreReguisite, @Description, @Objectives)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [CourseNO], [CourseName], [CreditHours], [Level], [PreReguisite], [Description], [Objectives] FROM [Course]" UpdateCommand="UPDATE [Course] SET [CourseNO] = @CourseNO, [CourseName] = @CourseName, [CreditHours] = @CreditHours, [Level] = @Level, [PreReguisite] = @PreReguisite, [Description] = @Description, [Objectives] = @Objectives WHERE [ID] = @original_ID AND (([CourseNO] = @original_CourseNO) OR ([CourseNO] IS NULL AND @original_CourseNO IS NULL)) AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([CreditHours] = @original_CreditHours) OR ([CreditHours] IS NULL AND @original_CreditHours IS NULL)) AND (([Level] = @original_Level) OR ([Level] IS NULL AND @original_Level IS NULL)) AND (([PreReguisite] = @original_PreReguisite) OR ([PreReguisite] IS NULL AND @original_PreReguisite IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Objectives] = @original_Objectives) OR ([Objectives] IS NULL AND @original_Objectives IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_CourseNO" Type="String" />
                    <asp:Parameter Name="original_CourseName" Type="String" />
                    <asp:Parameter Name="original_CreditHours" Type="Int32" />
                    <asp:Parameter Name="original_Level" Type="Int32" />
                    <asp:Parameter Name="original_PreReguisite" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_Objectives" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CourseNO" Type="String" />
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="CreditHours" Type="Int32" />
                    <asp:Parameter Name="Level" Type="Int32" />
                    <asp:Parameter Name="PreReguisite" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Objectives" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CourseNO" Type="String" />
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="CreditHours" Type="Int32" />
                    <asp:Parameter Name="Level" Type="Int32" />
                    <asp:Parameter Name="PreReguisite" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Objectives" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_CourseNO" Type="String" />
                    <asp:Parameter Name="original_CourseName" Type="String" />
                    <asp:Parameter Name="original_CreditHours" Type="Int32" />
                    <asp:Parameter Name="original_Level" Type="Int32" />
                    <asp:Parameter Name="original_PreReguisite" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_Objectives" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>

        <div class="column">
            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ID" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    CourseNO:
                    <asp:TextBox ID="CourseNOTextBox" runat="server" Text='<%# Bind("CourseNO") %>' />
                    <br />
                    CourseName:
                    <asp:TextBox ID="CourseNameTextBox" runat="server" Text='<%# Bind("CourseName") %>' />
                    <br />
                    CreditHours:
                    <asp:TextBox ID="CreditHoursTextBox" runat="server" Text='<%# Bind("CreditHours") %>' />
                    <br />
                    Level:
                    <asp:TextBox ID="LevelTextBox" runat="server" Text='<%# Bind("Level") %>' />
                    <br />
                    PreReguisite:
                    <asp:TextBox ID="PreReguisiteTextBox" runat="server" Text='<%# Bind("PreReguisite") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    Objectives:
                    <asp:TextBox ID="ObjectivesTextBox" runat="server" Text='<%# Bind("Objectives") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <InsertItemTemplate>
                    CourseNO:
                    <asp:TextBox ID="CourseNOTextBox" runat="server" Text='<%# Bind("CourseNO") %>' />
                    <br />
                    CourseName:
                    <asp:TextBox ID="CourseNameTextBox" runat="server" Text='<%# Bind("CourseName") %>' />
                    <br />
                    CreditHours:
                    <asp:TextBox ID="CreditHoursTextBox" runat="server" Text='<%# Bind("CreditHours") %>' />
                    <br />
                    Level:
                    <asp:TextBox ID="LevelTextBox" runat="server" Text='<%# Bind("Level") %>' />
                    <br />
                    PreReguisite:
                    <asp:TextBox ID="PreReguisiteTextBox" runat="server" Text='<%# Bind("PreReguisite") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    Objectives:
                    <asp:TextBox ID="ObjectivesTextBox" runat="server" Text='<%# Bind("Objectives") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    CourseNO:
                    <asp:Label ID="CourseNOLabel" runat="server" Text='<%# Bind("CourseNO") %>' />
                    <br />
                    CourseName:
                    <asp:Label ID="CourseNameLabel" runat="server" Text='<%# Bind("CourseName") %>' />
                    <br />
                    CreditHours:
                    <asp:Label ID="CreditHoursLabel" runat="server" Text='<%# Bind("CreditHours") %>' />
                    <br />
                    Level:
                    <asp:Label ID="LevelLabel" runat="server" Text='<%# Bind("Level") %>' />
                    <br />
                    PreReguisite:<asp:Label ID="PreReguisiteLabel" runat="server" Text='<%# Bind("PreReguisite") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    Objectives:
                    <asp:Label ID="ObjectivesLabel" runat="server" Text='<%# Bind("Objectives") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [ID] = @original_ID AND (([CourseNO] = @original_CourseNO) OR ([CourseNO] IS NULL AND @original_CourseNO IS NULL)) AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([CreditHours] = @original_CreditHours) OR ([CreditHours] IS NULL AND @original_CreditHours IS NULL)) AND (([Level] = @original_Level) OR ([Level] IS NULL AND @original_Level IS NULL)) AND (([PreReguisite] = @original_PreReguisite) OR ([PreReguisite] IS NULL AND @original_PreReguisite IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Objectives] = @original_Objectives) OR ([Objectives] IS NULL AND @original_Objectives IS NULL))" InsertCommand="INSERT INTO [Course] ([CourseNO], [CourseName], [CreditHours], [Level], [PreReguisite], [Description], [Objectives]) VALUES (@CourseNO, @CourseName, @CreditHours, @Level, @PreReguisite, @Description, @Objectives)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [CourseNO], [CourseName], [CreditHours], [Level], [PreReguisite], [Description], [Objectives] FROM [Course] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [Course] SET [CourseNO] = @CourseNO, [CourseName] = @CourseName, [CreditHours] = @CreditHours, [Level] = @Level, [PreReguisite] = @PreReguisite, [Description] = @Description, [Objectives] = @Objectives WHERE [ID] = @original_ID AND (([CourseNO] = @original_CourseNO) OR ([CourseNO] IS NULL AND @original_CourseNO IS NULL)) AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([CreditHours] = @original_CreditHours) OR ([CreditHours] IS NULL AND @original_CreditHours IS NULL)) AND (([Level] = @original_Level) OR ([Level] IS NULL AND @original_Level IS NULL)) AND (([PreReguisite] = @original_PreReguisite) OR ([PreReguisite] IS NULL AND @original_PreReguisite IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Objectives] = @original_Objectives) OR ([Objectives] IS NULL AND @original_Objectives IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_CourseNO" Type="String" />
                    <asp:Parameter Name="original_CourseName" Type="String" />
                    <asp:Parameter Name="original_CreditHours" Type="Int32" />
                    <asp:Parameter Name="original_Level" Type="Int32" />
                    <asp:Parameter Name="original_PreReguisite" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_Objectives" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CourseNO" Type="String" />
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="CreditHours" Type="Int32" />
                    <asp:Parameter Name="Level" Type="Int32" />
                    <asp:Parameter Name="PreReguisite" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Objectives" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CourseNO" Type="String" />
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="CreditHours" Type="Int32" />
                    <asp:Parameter Name="Level" Type="Int32" />
                    <asp:Parameter Name="PreReguisite" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Objectives" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_CourseNO" Type="String" />
                    <asp:Parameter Name="original_CourseName" Type="String" />
                    <asp:Parameter Name="original_CreditHours" Type="Int32" />
                    <asp:Parameter Name="original_Level" Type="Int32" />
                    <asp:Parameter Name="original_PreReguisite" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_Objectives" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>

        </div>
                </asp:View>
                <asp:View ID="View2" runat="server">

                    <div class="row">

                        <div class="column">

                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="topics1" HeaderText="topics1" SortExpression="topics1" />
                            <asp:BoundField DataField="topics2" HeaderText="topics2" SortExpression="topics2" />
                            <asp:BoundField DataField="topics3" HeaderText="topics3" SortExpression="topics3" />
                            <asp:BoundField DataField="topics4" HeaderText="topics4" SortExpression="topics4" />
                            <asp:BoundField DataField="topics5" HeaderText="topics5" SortExpression="topics5" />
                            <asp:BoundField DataField="topics6" HeaderText="topics6" SortExpression="topics6" />
                            <asp:BoundField DataField="topics7" HeaderText="topics7" SortExpression="topics7" />
                            <asp:BoundField DataField="topics8" HeaderText="topics8" SortExpression="topics8" />
                            <asp:BoundField DataField="topics9" HeaderText="topics9" SortExpression="topics9" />
                            <asp:BoundField DataField="topics10" HeaderText="topics10" SortExpression="topics10" />
                            <asp:BoundField DataField="Textbook" HeaderText="Textbook" SortExpression="Textbook" />
                            <asp:BoundField DataField="Supp_book" HeaderText="Supp_book" SortExpression="Supp_book" />
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

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [ID] = @original_ID AND (([topics1] = @original_topics1) OR ([topics1] IS NULL AND @original_topics1 IS NULL)) AND (([topics2] = @original_topics2) OR ([topics2] IS NULL AND @original_topics2 IS NULL)) AND (([topics3] = @original_topics3) OR ([topics3] IS NULL AND @original_topics3 IS NULL)) AND (([topics4] = @original_topics4) OR ([topics4] IS NULL AND @original_topics4 IS NULL)) AND (([topics5] = @original_topics5) OR ([topics5] IS NULL AND @original_topics5 IS NULL)) AND (([topics6] = @original_topics6) OR ([topics6] IS NULL AND @original_topics6 IS NULL)) AND (([topics7] = @original_topics7) OR ([topics7] IS NULL AND @original_topics7 IS NULL)) AND (([topics8] = @original_topics8) OR ([topics8] IS NULL AND @original_topics8 IS NULL)) AND (([topics9] = @original_topics9) OR ([topics9] IS NULL AND @original_topics9 IS NULL)) AND (([topics10] = @original_topics10) OR ([topics10] IS NULL AND @original_topics10 IS NULL)) AND (([Textbook] = @original_Textbook) OR ([Textbook] IS NULL AND @original_Textbook IS NULL)) AND (([Supp_book] = @original_Supp_book) OR ([Supp_book] IS NULL AND @original_Supp_book IS NULL))" InsertCommand="INSERT INTO [Course] ([topics1], [topics2], [topics3], [topics4], [topics5], [topics6], [topics7], [topics8], [topics9], [topics10], [Textbook], [Supp_book]) VALUES (@topics1, @topics2, @topics3, @topics4, @topics5, @topics6, @topics7, @topics8, @topics9, @topics10, @Textbook, @Supp_book)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [topics1], [topics2], [topics3], [topics4], [topics5], [topics6], [topics7], [topics8], [topics9], [topics10], [Textbook], [Supp_book] FROM [Course]" UpdateCommand="UPDATE [Course] SET [topics1] = @topics1, [topics2] = @topics2, [topics3] = @topics3, [topics4] = @topics4, [topics5] = @topics5, [topics6] = @topics6, [topics7] = @topics7, [topics8] = @topics8, [topics9] = @topics9, [topics10] = @topics10, [Textbook] = @Textbook, [Supp_book] = @Supp_book WHERE [ID] = @original_ID AND (([topics1] = @original_topics1) OR ([topics1] IS NULL AND @original_topics1 IS NULL)) AND (([topics2] = @original_topics2) OR ([topics2] IS NULL AND @original_topics2 IS NULL)) AND (([topics3] = @original_topics3) OR ([topics3] IS NULL AND @original_topics3 IS NULL)) AND (([topics4] = @original_topics4) OR ([topics4] IS NULL AND @original_topics4 IS NULL)) AND (([topics5] = @original_topics5) OR ([topics5] IS NULL AND @original_topics5 IS NULL)) AND (([topics6] = @original_topics6) OR ([topics6] IS NULL AND @original_topics6 IS NULL)) AND (([topics7] = @original_topics7) OR ([topics7] IS NULL AND @original_topics7 IS NULL)) AND (([topics8] = @original_topics8) OR ([topics8] IS NULL AND @original_topics8 IS NULL)) AND (([topics9] = @original_topics9) OR ([topics9] IS NULL AND @original_topics9 IS NULL)) AND (([topics10] = @original_topics10) OR ([topics10] IS NULL AND @original_topics10 IS NULL)) AND (([Textbook] = @original_Textbook) OR ([Textbook] IS NULL AND @original_Textbook IS NULL)) AND (([Supp_book] = @original_Supp_book) OR ([Supp_book] IS NULL AND @original_Supp_book IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ID" Type="Int32" />
                            <asp:Parameter Name="original_topics1" Type="String" />
                            <asp:Parameter Name="original_topics2" Type="String" />
                            <asp:Parameter Name="original_topics3" Type="String" />
                            <asp:Parameter Name="original_topics4" Type="String" />
                            <asp:Parameter Name="original_topics5" Type="String" />
                            <asp:Parameter Name="original_topics6" Type="String" />
                            <asp:Parameter Name="original_topics7" Type="String" />
                            <asp:Parameter Name="original_topics8" Type="String" />
                            <asp:Parameter Name="original_topics9" Type="String" />
                            <asp:Parameter Name="original_topics10" Type="String" />
                            <asp:Parameter Name="original_Textbook" Type="String" />
                            <asp:Parameter Name="original_Supp_book" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="topics1" Type="String" />
                            <asp:Parameter Name="topics2" Type="String" />
                            <asp:Parameter Name="topics3" Type="String" />
                            <asp:Parameter Name="topics4" Type="String" />
                            <asp:Parameter Name="topics5" Type="String" />
                            <asp:Parameter Name="topics6" Type="String" />
                            <asp:Parameter Name="topics7" Type="String" />
                            <asp:Parameter Name="topics8" Type="String" />
                            <asp:Parameter Name="topics9" Type="String" />
                            <asp:Parameter Name="topics10" Type="String" />
                            <asp:Parameter Name="Textbook" Type="String" />
                            <asp:Parameter Name="Supp_book" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="topics1" Type="String" />
                            <asp:Parameter Name="topics2" Type="String" />
                            <asp:Parameter Name="topics3" Type="String" />
                            <asp:Parameter Name="topics4" Type="String" />
                            <asp:Parameter Name="topics5" Type="String" />
                            <asp:Parameter Name="topics6" Type="String" />
                            <asp:Parameter Name="topics7" Type="String" />
                            <asp:Parameter Name="topics8" Type="String" />
                            <asp:Parameter Name="topics9" Type="String" />
                            <asp:Parameter Name="topics10" Type="String" />
                            <asp:Parameter Name="Textbook" Type="String" />
                            <asp:Parameter Name="Supp_book" Type="String" />
                            <asp:Parameter Name="original_ID" Type="Int32" />
                            <asp:Parameter Name="original_topics1" Type="String" />
                            <asp:Parameter Name="original_topics2" Type="String" />
                            <asp:Parameter Name="original_topics3" Type="String" />
                            <asp:Parameter Name="original_topics4" Type="String" />
                            <asp:Parameter Name="original_topics5" Type="String" />
                            <asp:Parameter Name="original_topics6" Type="String" />
                            <asp:Parameter Name="original_topics7" Type="String" />
                            <asp:Parameter Name="original_topics8" Type="String" />
                            <asp:Parameter Name="original_topics9" Type="String" />
                            <asp:Parameter Name="original_topics10" Type="String" />
                            <asp:Parameter Name="original_Textbook" Type="String" />
                            <asp:Parameter Name="original_Supp_book" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                            </div>

                        <div class="column">
                    <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource4" GridLines="Horizontal">
                        <EditItemTemplate>
                            ID:
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            topics1:
                            <asp:TextBox ID="topics1TextBox" runat="server" Text='<%# Bind("topics1") %>' />
                            <br />
                            topics2:
                            <asp:TextBox ID="topics2TextBox" runat="server" Text='<%# Bind("topics2") %>' />
                            <br />
                            topics3:
                            <asp:TextBox ID="topics3TextBox" runat="server" Text='<%# Bind("topics3") %>' />
                            <br />
                            topics4:
                            <asp:TextBox ID="topics4TextBox" runat="server" Text='<%# Bind("topics4") %>' />
                            <br />
                            topics5:
                            <asp:TextBox ID="topics5TextBox" runat="server" Text='<%# Bind("topics5") %>' />
                            <br />
                            topics6:
                            <asp:TextBox ID="topics6TextBox" runat="server" Text='<%# Bind("topics6") %>' />
                            <br />
                            topics7:
                            <asp:TextBox ID="topics7TextBox" runat="server" Text='<%# Bind("topics7") %>' />
                            <br />
                            topics8:
                            <asp:TextBox ID="topics8TextBox" runat="server" Text='<%# Bind("topics8") %>' />
                            <br />
                            topics9:
                            <asp:TextBox ID="topics9TextBox" runat="server" Text='<%# Bind("topics9") %>' />
                            <br />
                            topics10:
                            <asp:TextBox ID="topics10TextBox" runat="server" Text='<%# Bind("topics10") %>' />
                            <br />
                            Textbook:
                            <asp:TextBox ID="TextbookTextBox" runat="server" Text='<%# Bind("Textbook") %>' />
                            <br />
                            Supp_book:
                            <asp:TextBox ID="Supp_bookTextBox" runat="server" Text='<%# Bind("Supp_book") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <InsertItemTemplate>
                            topics1:
                            <asp:TextBox ID="topics1TextBox" runat="server" Text='<%# Bind("topics1") %>' />
                            <br />
                            topics2:
                            <asp:TextBox ID="topics2TextBox" runat="server" Text='<%# Bind("topics2") %>' />
                            <br />
                            topics3:
                            <asp:TextBox ID="topics3TextBox" runat="server" Text='<%# Bind("topics3") %>' />
                            <br />
                            topics4:
                            <asp:TextBox ID="topics4TextBox" runat="server" Text='<%# Bind("topics4") %>' />
                            <br />
                            topics5:
                            <asp:TextBox ID="topics5TextBox" runat="server" Text='<%# Bind("topics5") %>' />
                            <br />
                            topics6:
                            <asp:TextBox ID="topics6TextBox" runat="server" Text='<%# Bind("topics6") %>' />
                            <br />
                            topics7:
                            <asp:TextBox ID="topics7TextBox" runat="server" Text='<%# Bind("topics7") %>' />
                            <br />
                            topics8:
                            <asp:TextBox ID="topics8TextBox" runat="server" Text='<%# Bind("topics8") %>' />
                            <br />
                            topics9:
                            <asp:TextBox ID="topics9TextBox" runat="server" Text='<%# Bind("topics9") %>' />
                            <br />
                            topics10:
                            <asp:TextBox ID="topics10TextBox" runat="server" Text='<%# Bind("topics10") %>' />
                            <br />
                            Textbook:
                            <asp:TextBox ID="TextbookTextBox" runat="server" Text='<%# Bind("Textbook") %>' />
                            <br />
                            Supp_book:
                            <asp:TextBox ID="Supp_bookTextBox" runat="server" Text='<%# Bind("Supp_book") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            ID:
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            topics1:
                            <asp:Label ID="topics1Label" runat="server" Text='<%# Bind("topics1") %>' />
                            <br />
                            topics2:
                            <asp:Label ID="topics2Label" runat="server" Text='<%# Bind("topics2") %>' />
                            <br />
                            topics3:
                            <asp:Label ID="topics3Label" runat="server" Text='<%# Bind("topics3") %>' />
                            <br />
                            topics4:
                            <asp:Label ID="topics4Label" runat="server" Text='<%# Bind("topics4") %>' />
                            <br />
                            topics5:
                            <asp:Label ID="topics5Label" runat="server" Text='<%# Bind("topics5") %>' />
                            <br />
                            topics6:
                            <asp:Label ID="topics6Label" runat="server" Text='<%# Bind("topics6") %>' />
                            <br />
                            topics7:
                            <asp:Label ID="topics7Label" runat="server" Text='<%# Bind("topics7") %>' />
                            <br />
                            topics8:
                            <asp:Label ID="topics8Label" runat="server" Text='<%# Bind("topics8") %>' />
                            <br />
                            topics9:
                            <asp:Label ID="topics9Label" runat="server" Text='<%# Bind("topics9") %>' />
                            <br />
                            topics10:
                            <asp:Label ID="topics10Label" runat="server" Text='<%# Bind("topics10") %>' />
                            <br />
                            Textbook:
                            <asp:Label ID="TextbookLabel" runat="server" Text='<%# Bind("Textbook") %>' />
                            <br />
                            Supp_book:
                            <asp:Label ID="Supp_bookLabel" runat="server" Text='<%# Bind("Supp_book") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    </asp:FormView>
                 

                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [ID] = @original_ID AND (([topics1] = @original_topics1) OR ([topics1] IS NULL AND @original_topics1 IS NULL)) AND (([topics2] = @original_topics2) OR ([topics2] IS NULL AND @original_topics2 IS NULL)) AND (([topics3] = @original_topics3) OR ([topics3] IS NULL AND @original_topics3 IS NULL)) AND (([topics4] = @original_topics4) OR ([topics4] IS NULL AND @original_topics4 IS NULL)) AND (([topics5] = @original_topics5) OR ([topics5] IS NULL AND @original_topics5 IS NULL)) AND (([topics6] = @original_topics6) OR ([topics6] IS NULL AND @original_topics6 IS NULL)) AND (([topics7] = @original_topics7) OR ([topics7] IS NULL AND @original_topics7 IS NULL)) AND (([topics8] = @original_topics8) OR ([topics8] IS NULL AND @original_topics8 IS NULL)) AND (([topics9] = @original_topics9) OR ([topics9] IS NULL AND @original_topics9 IS NULL)) AND (([topics10] = @original_topics10) OR ([topics10] IS NULL AND @original_topics10 IS NULL)) AND (([Textbook] = @original_Textbook) OR ([Textbook] IS NULL AND @original_Textbook IS NULL)) AND (([Supp_book] = @original_Supp_book) OR ([Supp_book] IS NULL AND @original_Supp_book IS NULL))" InsertCommand="INSERT INTO [Course] ([topics1], [topics2], [topics3], [topics4], [topics5], [topics6], [topics7], [topics8], [topics9], [topics10], [Textbook], [Supp_book]) VALUES (@topics1, @topics2, @topics3, @topics4, @topics5, @topics6, @topics7, @topics8, @topics9, @topics10, @Textbook, @Supp_book)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [topics1], [topics2], [topics3], [topics4], [topics5], [topics6], [topics7], [topics8], [topics9], [topics10], [Textbook], [Supp_book] FROM [Course] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [Course] SET [topics1] = @topics1, [topics2] = @topics2, [topics3] = @topics3, [topics4] = @topics4, [topics5] = @topics5, [topics6] = @topics6, [topics7] = @topics7, [topics8] = @topics8, [topics9] = @topics9, [topics10] = @topics10, [Textbook] = @Textbook, [Supp_book] = @Supp_book WHERE [ID] = @original_ID AND (([topics1] = @original_topics1) OR ([topics1] IS NULL AND @original_topics1 IS NULL)) AND (([topics2] = @original_topics2) OR ([topics2] IS NULL AND @original_topics2 IS NULL)) AND (([topics3] = @original_topics3) OR ([topics3] IS NULL AND @original_topics3 IS NULL)) AND (([topics4] = @original_topics4) OR ([topics4] IS NULL AND @original_topics4 IS NULL)) AND (([topics5] = @original_topics5) OR ([topics5] IS NULL AND @original_topics5 IS NULL)) AND (([topics6] = @original_topics6) OR ([topics6] IS NULL AND @original_topics6 IS NULL)) AND (([topics7] = @original_topics7) OR ([topics7] IS NULL AND @original_topics7 IS NULL)) AND (([topics8] = @original_topics8) OR ([topics8] IS NULL AND @original_topics8 IS NULL)) AND (([topics9] = @original_topics9) OR ([topics9] IS NULL AND @original_topics9 IS NULL)) AND (([topics10] = @original_topics10) OR ([topics10] IS NULL AND @original_topics10 IS NULL)) AND (([Textbook] = @original_Textbook) OR ([Textbook] IS NULL AND @original_Textbook IS NULL)) AND (([Supp_book] = @original_Supp_book) OR ([Supp_book] IS NULL AND @original_Supp_book IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ID" Type="Int32" />
                            <asp:Parameter Name="original_topics1" Type="String" />
                            <asp:Parameter Name="original_topics2" Type="String" />
                            <asp:Parameter Name="original_topics3" Type="String" />
                            <asp:Parameter Name="original_topics4" Type="String" />
                            <asp:Parameter Name="original_topics5" Type="String" />
                            <asp:Parameter Name="original_topics6" Type="String" />
                            <asp:Parameter Name="original_topics7" Type="String" />
                            <asp:Parameter Name="original_topics8" Type="String" />
                            <asp:Parameter Name="original_topics9" Type="String" />
                            <asp:Parameter Name="original_topics10" Type="String" />
                            <asp:Parameter Name="original_Textbook" Type="String" />
                            <asp:Parameter Name="original_Supp_book" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="topics1" Type="String" />
                            <asp:Parameter Name="topics2" Type="String" />
                            <asp:Parameter Name="topics3" Type="String" />
                            <asp:Parameter Name="topics4" Type="String" />
                            <asp:Parameter Name="topics5" Type="String" />
                            <asp:Parameter Name="topics6" Type="String" />
                            <asp:Parameter Name="topics7" Type="String" />
                            <asp:Parameter Name="topics8" Type="String" />
                            <asp:Parameter Name="topics9" Type="String" />
                            <asp:Parameter Name="topics10" Type="String" />
                            <asp:Parameter Name="Textbook" Type="String" />
                            <asp:Parameter Name="Supp_book" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="ID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="topics1" Type="String" />
                            <asp:Parameter Name="topics2" Type="String" />
                            <asp:Parameter Name="topics3" Type="String" />
                            <asp:Parameter Name="topics4" Type="String" />
                            <asp:Parameter Name="topics5" Type="String" />
                            <asp:Parameter Name="topics6" Type="String" />
                            <asp:Parameter Name="topics7" Type="String" />
                            <asp:Parameter Name="topics8" Type="String" />
                            <asp:Parameter Name="topics9" Type="String" />
                            <asp:Parameter Name="topics10" Type="String" />
                            <asp:Parameter Name="Textbook" Type="String" />
                            <asp:Parameter Name="Supp_book" Type="String" />
                            <asp:Parameter Name="original_ID" Type="Int32" />
                            <asp:Parameter Name="original_topics1" Type="String" />
                            <asp:Parameter Name="original_topics2" Type="String" />
                            <asp:Parameter Name="original_topics3" Type="String" />
                            <asp:Parameter Name="original_topics4" Type="String" />
                            <asp:Parameter Name="original_topics5" Type="String" />
                            <asp:Parameter Name="original_topics6" Type="String" />
                            <asp:Parameter Name="original_topics7" Type="String" />
                            <asp:Parameter Name="original_topics8" Type="String" />
                            <asp:Parameter Name="original_topics9" Type="String" />
                            <asp:Parameter Name="original_topics10" Type="String" />
                            <asp:Parameter Name="original_Textbook" Type="String" />
                            <asp:Parameter Name="original_Supp_book" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                 </div>

                        </div>

                </asp:View>


                <asp:View ID="View3" runat="server">

                     <div class="row">


                         <div class="column">
                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="CLO1_K1" HeaderText="CLO1_K1" SortExpression="CLO1_K1" />
                            <asp:BoundField DataField="PLO_K1" HeaderText="PLO_K1" SortExpression="PLO_K1" />
                            <asp:BoundField DataField="CLO2_K2" HeaderText="CLO2_K2" SortExpression="CLO2_K2" />
                            <asp:BoundField DataField="PLO_k2" HeaderText="PLO_k2" SortExpression="PLO_k2" />
                            <asp:BoundField DataField="CLO3_K3" HeaderText="CLO3_K3" SortExpression="CLO3_K3" />
                            <asp:BoundField DataField="PLO_k3" HeaderText="PLO_k3" SortExpression="PLO_k3" />
                            <asp:BoundField DataField="CLO4_S1" HeaderText="CLO4_S1" SortExpression="CLO4_S1" />
                            <asp:BoundField DataField="PLO_s1" HeaderText="PLO_s1" SortExpression="PLO_s1" />
                            <asp:BoundField DataField="CLO5_S2" HeaderText="CLO5_S2" SortExpression="CLO5_S2" />
                            <asp:BoundField DataField="PLO_s2" HeaderText="PLO_s2" SortExpression="PLO_s2" />
                            <asp:BoundField DataField="CLO6_S3" HeaderText="CLO6_S3" SortExpression="CLO6_S3" />
                            <asp:BoundField DataField="PLO_S3" HeaderText="PLO_S3" SortExpression="PLO_S3" />
                            <asp:BoundField DataField="CLO7_v1" HeaderText="CLO7_v1" SortExpression="CLO7_v1" />
                            <asp:BoundField DataField="PLO_v1" HeaderText="PLO_v1" SortExpression="PLO_v1" />
                            <asp:BoundField DataField="CLO8_v2" HeaderText="CLO8_v2" SortExpression="CLO8_v2" />
                            <asp:BoundField DataField="PLO_v2" HeaderText="PLO_v2" SortExpression="PLO_v2" />
                            <asp:BoundField DataField="CLO9_v3" HeaderText="CLO9_v3" SortExpression="CLO9_v3" />
                            <asp:BoundField DataField="PLO_v3" HeaderText="PLO_v3" SortExpression="PLO_v3" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                             </asp:GridView>


                             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [ID] = @original_ID AND (([CLO1_K1] = @original_CLO1_K1) OR ([CLO1_K1] IS NULL AND @original_CLO1_K1 IS NULL)) AND (([PLO_K1] = @original_PLO_K1) OR ([PLO_K1] IS NULL AND @original_PLO_K1 IS NULL)) AND (([CLO2_K2] = @original_CLO2_K2) OR ([CLO2_K2] IS NULL AND @original_CLO2_K2 IS NULL)) AND (([PLO_k2] = @original_PLO_k2) OR ([PLO_k2] IS NULL AND @original_PLO_k2 IS NULL)) AND (([CLO3_K3] = @original_CLO3_K3) OR ([CLO3_K3] IS NULL AND @original_CLO3_K3 IS NULL)) AND (([PLO_k3] = @original_PLO_k3) OR ([PLO_k3] IS NULL AND @original_PLO_k3 IS NULL)) AND (([CLO4_S1] = @original_CLO4_S1) OR ([CLO4_S1] IS NULL AND @original_CLO4_S1 IS NULL)) AND (([PLO_s1] = @original_PLO_s1) OR ([PLO_s1] IS NULL AND @original_PLO_s1 IS NULL)) AND (([CLO5_S2] = @original_CLO5_S2) OR ([CLO5_S2] IS NULL AND @original_CLO5_S2 IS NULL)) AND (([PLO_s2] = @original_PLO_s2) OR ([PLO_s2] IS NULL AND @original_PLO_s2 IS NULL)) AND (([CLO6_S3] = @original_CLO6_S3) OR ([CLO6_S3] IS NULL AND @original_CLO6_S3 IS NULL)) AND (([PLO_S3] = @original_PLO_S3) OR ([PLO_S3] IS NULL AND @original_PLO_S3 IS NULL)) AND (([CLO7_v1] = @original_CLO7_v1) OR ([CLO7_v1] IS NULL AND @original_CLO7_v1 IS NULL)) AND (([PLO_v1] = @original_PLO_v1) OR ([PLO_v1] IS NULL AND @original_PLO_v1 IS NULL)) AND (([CLO8_v2] = @original_CLO8_v2) OR ([CLO8_v2] IS NULL AND @original_CLO8_v2 IS NULL)) AND (([PLO_v2] = @original_PLO_v2) OR ([PLO_v2] IS NULL AND @original_PLO_v2 IS NULL)) AND (([CLO9_v3] = @original_CLO9_v3) OR ([CLO9_v3] IS NULL AND @original_CLO9_v3 IS NULL)) AND (([PLO_v3] = @original_PLO_v3) OR ([PLO_v3] IS NULL AND @original_PLO_v3 IS NULL))" InsertCommand="INSERT INTO [Course] ([CLO1_K1], [PLO_K1], [CLO2_K2], [PLO_k2], [CLO3_K3], [PLO_k3], [CLO4_S1], [PLO_s1], [CLO5_S2], [PLO_s2], [CLO6_S3], [PLO_S3], [CLO7_v1], [PLO_v1], [CLO8_v2], [PLO_v2], [CLO9_v3], [PLO_v3]) VALUES (@CLO1_K1, @PLO_K1, @CLO2_K2, @PLO_k2, @CLO3_K3, @PLO_k3, @CLO4_S1, @PLO_s1, @CLO5_S2, @PLO_s2, @CLO6_S3, @PLO_S3, @CLO7_v1, @PLO_v1, @CLO8_v2, @PLO_v2, @CLO9_v3, @PLO_v3)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [CLO1_K1], [PLO_K1], [CLO2_K2], [PLO_k2], [CLO3_K3], [PLO_k3], [CLO4_S1], [PLO_s1], [CLO5_S2], [PLO_s2], [CLO6_S3], [PLO_S3], [CLO7_v1], [PLO_v1], [CLO8_v2], [PLO_v2], [CLO9_v3], [PLO_v3] FROM [Course]" UpdateCommand="UPDATE [Course] SET [CLO1_K1] = @CLO1_K1, [PLO_K1] = @PLO_K1, [CLO2_K2] = @CLO2_K2, [PLO_k2] = @PLO_k2, [CLO3_K3] = @CLO3_K3, [PLO_k3] = @PLO_k3, [CLO4_S1] = @CLO4_S1, [PLO_s1] = @PLO_s1, [CLO5_S2] = @CLO5_S2, [PLO_s2] = @PLO_s2, [CLO6_S3] = @CLO6_S3, [PLO_S3] = @PLO_S3, [CLO7_v1] = @CLO7_v1, [PLO_v1] = @PLO_v1, [CLO8_v2] = @CLO8_v2, [PLO_v2] = @PLO_v2, [CLO9_v3] = @CLO9_v3, [PLO_v3] = @PLO_v3 WHERE [ID] = @original_ID AND (([CLO1_K1] = @original_CLO1_K1) OR ([CLO1_K1] IS NULL AND @original_CLO1_K1 IS NULL)) AND (([PLO_K1] = @original_PLO_K1) OR ([PLO_K1] IS NULL AND @original_PLO_K1 IS NULL)) AND (([CLO2_K2] = @original_CLO2_K2) OR ([CLO2_K2] IS NULL AND @original_CLO2_K2 IS NULL)) AND (([PLO_k2] = @original_PLO_k2) OR ([PLO_k2] IS NULL AND @original_PLO_k2 IS NULL)) AND (([CLO3_K3] = @original_CLO3_K3) OR ([CLO3_K3] IS NULL AND @original_CLO3_K3 IS NULL)) AND (([PLO_k3] = @original_PLO_k3) OR ([PLO_k3] IS NULL AND @original_PLO_k3 IS NULL)) AND (([CLO4_S1] = @original_CLO4_S1) OR ([CLO4_S1] IS NULL AND @original_CLO4_S1 IS NULL)) AND (([PLO_s1] = @original_PLO_s1) OR ([PLO_s1] IS NULL AND @original_PLO_s1 IS NULL)) AND (([CLO5_S2] = @original_CLO5_S2) OR ([CLO5_S2] IS NULL AND @original_CLO5_S2 IS NULL)) AND (([PLO_s2] = @original_PLO_s2) OR ([PLO_s2] IS NULL AND @original_PLO_s2 IS NULL)) AND (([CLO6_S3] = @original_CLO6_S3) OR ([CLO6_S3] IS NULL AND @original_CLO6_S3 IS NULL)) AND (([PLO_S3] = @original_PLO_S3) OR ([PLO_S3] IS NULL AND @original_PLO_S3 IS NULL)) AND (([CLO7_v1] = @original_CLO7_v1) OR ([CLO7_v1] IS NULL AND @original_CLO7_v1 IS NULL)) AND (([PLO_v1] = @original_PLO_v1) OR ([PLO_v1] IS NULL AND @original_PLO_v1 IS NULL)) AND (([CLO8_v2] = @original_CLO8_v2) OR ([CLO8_v2] IS NULL AND @original_CLO8_v2 IS NULL)) AND (([PLO_v2] = @original_PLO_v2) OR ([PLO_v2] IS NULL AND @original_PLO_v2 IS NULL)) AND (([CLO9_v3] = @original_CLO9_v3) OR ([CLO9_v3] IS NULL AND @original_CLO9_v3 IS NULL)) AND (([PLO_v3] = @original_PLO_v3) OR ([PLO_v3] IS NULL AND @original_PLO_v3 IS NULL))">
                                 <DeleteParameters>
                                     <asp:Parameter Name="original_ID" Type="Int32" />
                                     <asp:Parameter Name="original_CLO1_K1" Type="String" />
                                     <asp:Parameter Name="original_PLO_K1" Type="String" />
                                     <asp:Parameter Name="original_CLO2_K2" Type="String" />
                                     <asp:Parameter Name="original_PLO_k2" Type="String" />
                                     <asp:Parameter Name="original_CLO3_K3" Type="String" />
                                     <asp:Parameter Name="original_PLO_k3" Type="String" />
                                     <asp:Parameter Name="original_CLO4_S1" Type="String" />
                                     <asp:Parameter Name="original_PLO_s1" Type="String" />
                                     <asp:Parameter Name="original_CLO5_S2" Type="String" />
                                     <asp:Parameter Name="original_PLO_s2" Type="String" />
                                     <asp:Parameter Name="original_CLO6_S3" Type="String" />
                                     <asp:Parameter Name="original_PLO_S3" Type="String" />
                                     <asp:Parameter Name="original_CLO7_v1" Type="String" />
                                     <asp:Parameter Name="original_PLO_v1" Type="String" />
                                     <asp:Parameter Name="original_CLO8_v2" Type="String" />
                                     <asp:Parameter Name="original_PLO_v2" Type="String" />
                                     <asp:Parameter Name="original_CLO9_v3" Type="String" />
                                     <asp:Parameter Name="original_PLO_v3" Type="String" />
                                 </DeleteParameters>
                                 <InsertParameters>
                                     <asp:Parameter Name="CLO1_K1" Type="String" />
                                     <asp:Parameter Name="PLO_K1" Type="String" />
                                     <asp:Parameter Name="CLO2_K2" Type="String" />
                                     <asp:Parameter Name="PLO_k2" Type="String" />
                                     <asp:Parameter Name="CLO3_K3" Type="String" />
                                     <asp:Parameter Name="PLO_k3" Type="String" />
                                     <asp:Parameter Name="CLO4_S1" Type="String" />
                                     <asp:Parameter Name="PLO_s1" Type="String" />
                                     <asp:Parameter Name="CLO5_S2" Type="String" />
                                     <asp:Parameter Name="PLO_s2" Type="String" />
                                     <asp:Parameter Name="CLO6_S3" Type="String" />
                                     <asp:Parameter Name="PLO_S3" Type="String" />
                                     <asp:Parameter Name="CLO7_v1" Type="String" />
                                     <asp:Parameter Name="PLO_v1" Type="String" />
                                     <asp:Parameter Name="CLO8_v2" Type="String" />
                                     <asp:Parameter Name="PLO_v2" Type="String" />
                                     <asp:Parameter Name="CLO9_v3" Type="String" />
                                     <asp:Parameter Name="PLO_v3" Type="String" />
                                 </InsertParameters>
                                 <UpdateParameters>
                                     <asp:Parameter Name="CLO1_K1" Type="String" />
                                     <asp:Parameter Name="PLO_K1" Type="String" />
                                     <asp:Parameter Name="CLO2_K2" Type="String" />
                                     <asp:Parameter Name="PLO_k2" Type="String" />
                                     <asp:Parameter Name="CLO3_K3" Type="String" />
                                     <asp:Parameter Name="PLO_k3" Type="String" />
                                     <asp:Parameter Name="CLO4_S1" Type="String" />
                                     <asp:Parameter Name="PLO_s1" Type="String" />
                                     <asp:Parameter Name="CLO5_S2" Type="String" />
                                     <asp:Parameter Name="PLO_s2" Type="String" />
                                     <asp:Parameter Name="CLO6_S3" Type="String" />
                                     <asp:Parameter Name="PLO_S3" Type="String" />
                                     <asp:Parameter Name="CLO7_v1" Type="String" />
                                     <asp:Parameter Name="PLO_v1" Type="String" />
                                     <asp:Parameter Name="CLO8_v2" Type="String" />
                                     <asp:Parameter Name="PLO_v2" Type="String" />
                                     <asp:Parameter Name="CLO9_v3" Type="String" />
                                     <asp:Parameter Name="PLO_v3" Type="String" />
                                     <asp:Parameter Name="original_ID" Type="Int32" />
                                     <asp:Parameter Name="original_CLO1_K1" Type="String" />
                                     <asp:Parameter Name="original_PLO_K1" Type="String" />
                                     <asp:Parameter Name="original_CLO2_K2" Type="String" />
                                     <asp:Parameter Name="original_PLO_k2" Type="String" />
                                     <asp:Parameter Name="original_CLO3_K3" Type="String" />
                                     <asp:Parameter Name="original_PLO_k3" Type="String" />
                                     <asp:Parameter Name="original_CLO4_S1" Type="String" />
                                     <asp:Parameter Name="original_PLO_s1" Type="String" />
                                     <asp:Parameter Name="original_CLO5_S2" Type="String" />
                                     <asp:Parameter Name="original_PLO_s2" Type="String" />
                                     <asp:Parameter Name="original_CLO6_S3" Type="String" />
                                     <asp:Parameter Name="original_PLO_S3" Type="String" />
                                     <asp:Parameter Name="original_CLO7_v1" Type="String" />
                                     <asp:Parameter Name="original_PLO_v1" Type="String" />
                                     <asp:Parameter Name="original_CLO8_v2" Type="String" />
                                     <asp:Parameter Name="original_PLO_v2" Type="String" />
                                     <asp:Parameter Name="original_CLO9_v3" Type="String" />
                                     <asp:Parameter Name="original_PLO_v3" Type="String" />
                                 </UpdateParameters>
                             </asp:SqlDataSource>


                             </div>

                         
                        <div class="column">
                    <asp:FormView ID="FormView3" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource6" GridLines="Both">
                        <EditItemTemplate>
                            ID:
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            CLO1_K1:
                            <asp:TextBox ID="CLO1_K1TextBox" runat="server" Text='<%# Bind("CLO1_K1") %>' />
                            <br />
                            PLO_K1:
                            <asp:TextBox ID="PLO_K1TextBox" runat="server" Text='<%# Bind("PLO_K1") %>' />
                            <br />
                            CLO2_K2:
                            <asp:TextBox ID="CLO2_K2TextBox" runat="server" Text='<%# Bind("CLO2_K2") %>' />
                            <br />
                            PLO_k2:
                            <asp:TextBox ID="PLO_k2TextBox" runat="server" Text='<%# Bind("PLO_k2") %>' />
                            <br />
                            CLO3_K3:
                            <asp:TextBox ID="CLO3_K3TextBox" runat="server" Text='<%# Bind("CLO3_K3") %>' />
                            <br />
                            PLO_k3:
                            <asp:TextBox ID="PLO_k3TextBox" runat="server" Text='<%# Bind("PLO_k3") %>' />
                            <br />
                            CLO4_S1:
                            <asp:TextBox ID="CLO4_S1TextBox" runat="server" Text='<%# Bind("CLO4_S1") %>' />
                            <br />
                            PLO_s1:
                            <asp:TextBox ID="PLO_s1TextBox" runat="server" Text='<%# Bind("PLO_s1") %>' />
                            <br />
                            CLO5_S2:
                            <asp:TextBox ID="CLO5_S2TextBox" runat="server" Text='<%# Bind("CLO5_S2") %>' />
                            <br />
                            PLO_s2:
                            <asp:TextBox ID="PLO_s2TextBox" runat="server" Text='<%# Bind("PLO_s2") %>' />
                            <br />
                            CLO6_S3:
                            <asp:TextBox ID="CLO6_S3TextBox" runat="server" Text='<%# Bind("CLO6_S3") %>' />
                            <br />
                            PLO_S3:
                            <asp:TextBox ID="PLO_S3TextBox" runat="server" Text='<%# Bind("PLO_S3") %>' />
                            <br />
                            CLO7_v1:
                            <asp:TextBox ID="CLO7_v1TextBox" runat="server" Text='<%# Bind("CLO7_v1") %>' />
                            <br />
                            PLO_v1:
                            <asp:TextBox ID="PLO_v1TextBox" runat="server" Text='<%# Bind("PLO_v1") %>' />
                            <br />
                            CLO8_v2:
                            <asp:TextBox ID="CLO8_v2TextBox" runat="server" Text='<%# Bind("CLO8_v2") %>' />
                            <br />
                            PLO_v2:
                            <asp:TextBox ID="PLO_v2TextBox" runat="server" Text='<%# Bind("PLO_v2") %>' />
                            <br />
                            CLO9_v3:
                            <asp:TextBox ID="CLO9_v3TextBox" runat="server" Text='<%# Bind("CLO9_v3") %>' />
                            <br />
                            PLO_v3:
                            <asp:TextBox ID="PLO_v3TextBox" runat="server" Text='<%# Bind("PLO_v3") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            CLO1_K1:
                            <asp:TextBox ID="CLO1_K1TextBox" runat="server" Text='<%# Bind("CLO1_K1") %>' />
                            <br />
                            PLO_K1:
                            <asp:TextBox ID="PLO_K1TextBox" runat="server" Text='<%# Bind("PLO_K1") %>' />
                            <br />
                            CLO2_K2:
                            <asp:TextBox ID="CLO2_K2TextBox" runat="server" Text='<%# Bind("CLO2_K2") %>' />
                            <br />
                            PLO_k2:
                            <asp:TextBox ID="PLO_k2TextBox" runat="server" Text='<%# Bind("PLO_k2") %>' />
                            <br />
                            CLO3_K3:
                            <asp:TextBox ID="CLO3_K3TextBox" runat="server" Text='<%# Bind("CLO3_K3") %>' />
                            <br />
                            PLO_k3:
                            <asp:TextBox ID="PLO_k3TextBox" runat="server" Text='<%# Bind("PLO_k3") %>' />
                            <br />
                            CLO4_S1:
                            <asp:TextBox ID="CLO4_S1TextBox" runat="server" Text='<%# Bind("CLO4_S1") %>' />
                            <br />
                            PLO_s1:
                            <asp:TextBox ID="PLO_s1TextBox" runat="server" Text='<%# Bind("PLO_s1") %>' />
                            <br />
                            CLO5_S2:
                            <asp:TextBox ID="CLO5_S2TextBox" runat="server" Text='<%# Bind("CLO5_S2") %>' />
                            <br />
                            PLO_s2:
                            <asp:TextBox ID="PLO_s2TextBox" runat="server" Text='<%# Bind("PLO_s2") %>' />
                            <br />
                            CLO6_S3:
                            <asp:TextBox ID="CLO6_S3TextBox" runat="server" Text='<%# Bind("CLO6_S3") %>' />
                            <br />
                            PLO_S3:
                            <asp:TextBox ID="PLO_S3TextBox" runat="server" Text='<%# Bind("PLO_S3") %>' />
                            <br />
                            CLO7_v1:
                            <asp:TextBox ID="CLO7_v1TextBox" runat="server" Text='<%# Bind("CLO7_v1") %>' />
                            <br />
                            PLO_v1:
                            <asp:TextBox ID="PLO_v1TextBox" runat="server" Text='<%# Bind("PLO_v1") %>' />
                            <br />
                            CLO8_v2:
                            <asp:TextBox ID="CLO8_v2TextBox" runat="server" Text='<%# Bind("CLO8_v2") %>' />
                            <br />
                            PLO_v2:
                            <asp:TextBox ID="PLO_v2TextBox" runat="server" Text='<%# Bind("PLO_v2") %>' />
                            <br />
                            CLO9_v3:
                            <asp:TextBox ID="CLO9_v3TextBox" runat="server" Text='<%# Bind("CLO9_v3") %>' />
                            <br />
                            PLO_v3:
                            <asp:TextBox ID="PLO_v3TextBox" runat="server" Text='<%# Bind("PLO_v3") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            ID:
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            CLO1_K1:
                            <asp:Label ID="CLO1_K1Label" runat="server" Text='<%# Bind("CLO1_K1") %>' />
                            <br />
                            PLO_K1:
                            <asp:Label ID="PLO_K1Label" runat="server" Text='<%# Bind("PLO_K1") %>' />
                            <br />
                            CLO2_K2:
                            <asp:Label ID="CLO2_K2Label" runat="server" Text='<%# Bind("CLO2_K2") %>' />
                            <br />
                            PLO_k2:
                            <asp:Label ID="PLO_k2Label" runat="server" Text='<%# Bind("PLO_k2") %>' />
                            <br />
                            CLO3_K3:
                            <asp:Label ID="CLO3_K3Label" runat="server" Text='<%# Bind("CLO3_K3") %>' />
                            <br />
                            PLO_k3:
                            <asp:Label ID="PLO_k3Label" runat="server" Text='<%# Bind("PLO_k3") %>' />
                            <br />
                            CLO4_S1:
                            <asp:Label ID="CLO4_S1Label" runat="server" Text='<%# Bind("CLO4_S1") %>' />
                            <br />
                            PLO_s1:
                            <asp:Label ID="PLO_s1Label" runat="server" Text='<%# Bind("PLO_s1") %>' />
                            <br />
                            CLO5_S2:
                            <asp:Label ID="CLO5_S2Label" runat="server" Text='<%# Bind("CLO5_S2") %>' />
                            <br />
                            PLO_s2:
                            <asp:Label ID="PLO_s2Label" runat="server" Text='<%# Bind("PLO_s2") %>' />
                            <br />
                            CLO6_S3:
                            <asp:Label ID="CLO6_S3Label" runat="server" Text='<%# Bind("CLO6_S3") %>' />
                            <br />
                            PLO_S3:
                            <asp:Label ID="PLO_S3Label" runat="server" Text='<%# Bind("PLO_S3") %>' />
                            <br />
                            CLO7_v1:
                            <asp:Label ID="CLO7_v1Label" runat="server" Text='<%# Bind("CLO7_v1") %>' />
                            <br />
                            PLO_v1:
                            <asp:Label ID="PLO_v1Label" runat="server" Text='<%# Bind("PLO_v1") %>' />
                            <br />
                            CLO8_v2:
                            <asp:Label ID="CLO8_v2Label" runat="server" Text='<%# Bind("CLO8_v2") %>' />
                            <br />
                            PLO_v2:
                            <asp:Label ID="PLO_v2Label" runat="server" Text='<%# Bind("PLO_v2") %>' />
                            <br />
                            CLO9_v3:
                            <asp:Label ID="CLO9_v3Label" runat="server" Text='<%# Bind("CLO9_v3") %>' />
                            <br />
                            PLO_v3:
                            <asp:Label ID="PLO_v3Label" runat="server" Text='<%# Bind("PLO_v3") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            </asp:FormView>    


                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [ID] = @original_ID AND (([CLO1_K1] = @original_CLO1_K1) OR ([CLO1_K1] IS NULL AND @original_CLO1_K1 IS NULL)) AND (([PLO_K1] = @original_PLO_K1) OR ([PLO_K1] IS NULL AND @original_PLO_K1 IS NULL)) AND (([CLO2_K2] = @original_CLO2_K2) OR ([CLO2_K2] IS NULL AND @original_CLO2_K2 IS NULL)) AND (([PLO_k2] = @original_PLO_k2) OR ([PLO_k2] IS NULL AND @original_PLO_k2 IS NULL)) AND (([CLO3_K3] = @original_CLO3_K3) OR ([CLO3_K3] IS NULL AND @original_CLO3_K3 IS NULL)) AND (([PLO_k3] = @original_PLO_k3) OR ([PLO_k3] IS NULL AND @original_PLO_k3 IS NULL)) AND (([CLO4_S1] = @original_CLO4_S1) OR ([CLO4_S1] IS NULL AND @original_CLO4_S1 IS NULL)) AND (([PLO_s1] = @original_PLO_s1) OR ([PLO_s1] IS NULL AND @original_PLO_s1 IS NULL)) AND (([CLO5_S2] = @original_CLO5_S2) OR ([CLO5_S2] IS NULL AND @original_CLO5_S2 IS NULL)) AND (([PLO_s2] = @original_PLO_s2) OR ([PLO_s2] IS NULL AND @original_PLO_s2 IS NULL)) AND (([CLO6_S3] = @original_CLO6_S3) OR ([CLO6_S3] IS NULL AND @original_CLO6_S3 IS NULL)) AND (([PLO_S3] = @original_PLO_S3) OR ([PLO_S3] IS NULL AND @original_PLO_S3 IS NULL)) AND (([CLO7_v1] = @original_CLO7_v1) OR ([CLO7_v1] IS NULL AND @original_CLO7_v1 IS NULL)) AND (([PLO_v1] = @original_PLO_v1) OR ([PLO_v1] IS NULL AND @original_PLO_v1 IS NULL)) AND (([CLO8_v2] = @original_CLO8_v2) OR ([CLO8_v2] IS NULL AND @original_CLO8_v2 IS NULL)) AND (([PLO_v2] = @original_PLO_v2) OR ([PLO_v2] IS NULL AND @original_PLO_v2 IS NULL)) AND (([CLO9_v3] = @original_CLO9_v3) OR ([CLO9_v3] IS NULL AND @original_CLO9_v3 IS NULL)) AND (([PLO_v3] = @original_PLO_v3) OR ([PLO_v3] IS NULL AND @original_PLO_v3 IS NULL))" InsertCommand="INSERT INTO [Course] ([CLO1_K1], [PLO_K1], [CLO2_K2], [PLO_k2], [CLO3_K3], [PLO_k3], [CLO4_S1], [PLO_s1], [CLO5_S2], [PLO_s2], [CLO6_S3], [PLO_S3], [CLO7_v1], [PLO_v1], [CLO8_v2], [PLO_v2], [CLO9_v3], [PLO_v3]) VALUES (@CLO1_K1, @PLO_K1, @CLO2_K2, @PLO_k2, @CLO3_K3, @PLO_k3, @CLO4_S1, @PLO_s1, @CLO5_S2, @PLO_s2, @CLO6_S3, @PLO_S3, @CLO7_v1, @PLO_v1, @CLO8_v2, @PLO_v2, @CLO9_v3, @PLO_v3)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [CLO1_K1], [PLO_K1], [CLO2_K2], [PLO_k2], [CLO3_K3], [PLO_k3], [CLO4_S1], [PLO_s1], [CLO5_S2], [PLO_s2], [CLO6_S3], [PLO_S3], [CLO7_v1], [PLO_v1], [CLO8_v2], [PLO_v2], [CLO9_v3], [PLO_v3] FROM [Course] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [Course] SET [CLO1_K1] = @CLO1_K1, [PLO_K1] = @PLO_K1, [CLO2_K2] = @CLO2_K2, [PLO_k2] = @PLO_k2, [CLO3_K3] = @CLO3_K3, [PLO_k3] = @PLO_k3, [CLO4_S1] = @CLO4_S1, [PLO_s1] = @PLO_s1, [CLO5_S2] = @CLO5_S2, [PLO_s2] = @PLO_s2, [CLO6_S3] = @CLO6_S3, [PLO_S3] = @PLO_S3, [CLO7_v1] = @CLO7_v1, [PLO_v1] = @PLO_v1, [CLO8_v2] = @CLO8_v2, [PLO_v2] = @PLO_v2, [CLO9_v3] = @CLO9_v3, [PLO_v3] = @PLO_v3 WHERE [ID] = @original_ID AND (([CLO1_K1] = @original_CLO1_K1) OR ([CLO1_K1] IS NULL AND @original_CLO1_K1 IS NULL)) AND (([PLO_K1] = @original_PLO_K1) OR ([PLO_K1] IS NULL AND @original_PLO_K1 IS NULL)) AND (([CLO2_K2] = @original_CLO2_K2) OR ([CLO2_K2] IS NULL AND @original_CLO2_K2 IS NULL)) AND (([PLO_k2] = @original_PLO_k2) OR ([PLO_k2] IS NULL AND @original_PLO_k2 IS NULL)) AND (([CLO3_K3] = @original_CLO3_K3) OR ([CLO3_K3] IS NULL AND @original_CLO3_K3 IS NULL)) AND (([PLO_k3] = @original_PLO_k3) OR ([PLO_k3] IS NULL AND @original_PLO_k3 IS NULL)) AND (([CLO4_S1] = @original_CLO4_S1) OR ([CLO4_S1] IS NULL AND @original_CLO4_S1 IS NULL)) AND (([PLO_s1] = @original_PLO_s1) OR ([PLO_s1] IS NULL AND @original_PLO_s1 IS NULL)) AND (([CLO5_S2] = @original_CLO5_S2) OR ([CLO5_S2] IS NULL AND @original_CLO5_S2 IS NULL)) AND (([PLO_s2] = @original_PLO_s2) OR ([PLO_s2] IS NULL AND @original_PLO_s2 IS NULL)) AND (([CLO6_S3] = @original_CLO6_S3) OR ([CLO6_S3] IS NULL AND @original_CLO6_S3 IS NULL)) AND (([PLO_S3] = @original_PLO_S3) OR ([PLO_S3] IS NULL AND @original_PLO_S3 IS NULL)) AND (([CLO7_v1] = @original_CLO7_v1) OR ([CLO7_v1] IS NULL AND @original_CLO7_v1 IS NULL)) AND (([PLO_v1] = @original_PLO_v1) OR ([PLO_v1] IS NULL AND @original_PLO_v1 IS NULL)) AND (([CLO8_v2] = @original_CLO8_v2) OR ([CLO8_v2] IS NULL AND @original_CLO8_v2 IS NULL)) AND (([PLO_v2] = @original_PLO_v2) OR ([PLO_v2] IS NULL AND @original_PLO_v2 IS NULL)) AND (([CLO9_v3] = @original_CLO9_v3) OR ([CLO9_v3] IS NULL AND @original_CLO9_v3 IS NULL)) AND (([PLO_v3] = @original_PLO_v3) OR ([PLO_v3] IS NULL AND @original_PLO_v3 IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ID" Type="Int32" />
                                    <asp:Parameter Name="original_CLO1_K1" Type="String" />
                                    <asp:Parameter Name="original_PLO_K1" Type="String" />
                                    <asp:Parameter Name="original_CLO2_K2" Type="String" />
                                    <asp:Parameter Name="original_PLO_k2" Type="String" />
                                    <asp:Parameter Name="original_CLO3_K3" Type="String" />
                                    <asp:Parameter Name="original_PLO_k3" Type="String" />
                                    <asp:Parameter Name="original_CLO4_S1" Type="String" />
                                    <asp:Parameter Name="original_PLO_s1" Type="String" />
                                    <asp:Parameter Name="original_CLO5_S2" Type="String" />
                                    <asp:Parameter Name="original_PLO_s2" Type="String" />
                                    <asp:Parameter Name="original_CLO6_S3" Type="String" />
                                    <asp:Parameter Name="original_PLO_S3" Type="String" />
                                    <asp:Parameter Name="original_CLO7_v1" Type="String" />
                                    <asp:Parameter Name="original_PLO_v1" Type="String" />
                                    <asp:Parameter Name="original_CLO8_v2" Type="String" />
                                    <asp:Parameter Name="original_PLO_v2" Type="String" />
                                    <asp:Parameter Name="original_CLO9_v3" Type="String" />
                                    <asp:Parameter Name="original_PLO_v3" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="CLO1_K1" Type="String" />
                                    <asp:Parameter Name="PLO_K1" Type="String" />
                                    <asp:Parameter Name="CLO2_K2" Type="String" />
                                    <asp:Parameter Name="PLO_k2" Type="String" />
                                    <asp:Parameter Name="CLO3_K3" Type="String" />
                                    <asp:Parameter Name="PLO_k3" Type="String" />
                                    <asp:Parameter Name="CLO4_S1" Type="String" />
                                    <asp:Parameter Name="PLO_s1" Type="String" />
                                    <asp:Parameter Name="CLO5_S2" Type="String" />
                                    <asp:Parameter Name="PLO_s2" Type="String" />
                                    <asp:Parameter Name="CLO6_S3" Type="String" />
                                    <asp:Parameter Name="PLO_S3" Type="String" />
                                    <asp:Parameter Name="CLO7_v1" Type="String" />
                                    <asp:Parameter Name="PLO_v1" Type="String" />
                                    <asp:Parameter Name="CLO8_v2" Type="String" />
                                    <asp:Parameter Name="PLO_v2" Type="String" />
                                    <asp:Parameter Name="CLO9_v3" Type="String" />
                                    <asp:Parameter Name="PLO_v3" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView3" Name="ID" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CLO1_K1" Type="String" />
                                    <asp:Parameter Name="PLO_K1" Type="String" />
                                    <asp:Parameter Name="CLO2_K2" Type="String" />
                                    <asp:Parameter Name="PLO_k2" Type="String" />
                                    <asp:Parameter Name="CLO3_K3" Type="String" />
                                    <asp:Parameter Name="PLO_k3" Type="String" />
                                    <asp:Parameter Name="CLO4_S1" Type="String" />
                                    <asp:Parameter Name="PLO_s1" Type="String" />
                                    <asp:Parameter Name="CLO5_S2" Type="String" />
                                    <asp:Parameter Name="PLO_s2" Type="String" />
                                    <asp:Parameter Name="CLO6_S3" Type="String" />
                                    <asp:Parameter Name="PLO_S3" Type="String" />
                                    <asp:Parameter Name="CLO7_v1" Type="String" />
                                    <asp:Parameter Name="PLO_v1" Type="String" />
                                    <asp:Parameter Name="CLO8_v2" Type="String" />
                                    <asp:Parameter Name="PLO_v2" Type="String" />
                                    <asp:Parameter Name="CLO9_v3" Type="String" />
                                    <asp:Parameter Name="PLO_v3" Type="String" />
                                    <asp:Parameter Name="original_ID" Type="Int32" />
                                    <asp:Parameter Name="original_CLO1_K1" Type="String" />
                                    <asp:Parameter Name="original_PLO_K1" Type="String" />
                                    <asp:Parameter Name="original_CLO2_K2" Type="String" />
                                    <asp:Parameter Name="original_PLO_k2" Type="String" />
                                    <asp:Parameter Name="original_CLO3_K3" Type="String" />
                                    <asp:Parameter Name="original_PLO_k3" Type="String" />
                                    <asp:Parameter Name="original_CLO4_S1" Type="String" />
                                    <asp:Parameter Name="original_PLO_s1" Type="String" />
                                    <asp:Parameter Name="original_CLO5_S2" Type="String" />
                                    <asp:Parameter Name="original_PLO_s2" Type="String" />
                                    <asp:Parameter Name="original_CLO6_S3" Type="String" />
                                    <asp:Parameter Name="original_PLO_S3" Type="String" />
                                    <asp:Parameter Name="original_CLO7_v1" Type="String" />
                                    <asp:Parameter Name="original_PLO_v1" Type="String" />
                                    <asp:Parameter Name="original_CLO8_v2" Type="String" />
                                    <asp:Parameter Name="original_PLO_v2" Type="String" />
                                    <asp:Parameter Name="original_CLO9_v3" Type="String" />
                                    <asp:Parameter Name="original_PLO_v3" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>


                            </div>
                </asp:View>






            </asp:MultiView>


   






</asp:Content>

