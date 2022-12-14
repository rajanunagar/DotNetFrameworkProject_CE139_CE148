<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="StudentAttedenceSystem.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Take Attedence</title>
    <style>
        h2{
            color : darkblue;
        }
        .logout{
            margin:auto;
            width:50px;
        }
        form{
            margin-top:50px;
        }
    </style>
</head>
<body>

    <h2> Hii Teacher </h2>
    <span style="font-size:22px">Now You can Take Attedence</span>
    <br />
    <br />
    <form id="form1" runat="server">
        <div>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton Onclick="LinkButton1_Click" ValidationGroup="Insert" ID="LinkButton1" runat ="server">TakeAttedence</asp:LinkButton>
                       </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rollnumber" SortExpression="rollnumber">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("rollnumber") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator  ControlToValidate="TextBox3" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator1" runat="server" ErrorMessage="roll number is required field"></asp:RequiredFieldValidator>
                     </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("rollnumber") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FooterRoll" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator  ValidationGroup="Insert"  ControlToValidate="FooterRoll" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator2" runat="server" ErrorMessage="roll number is required field"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="studentname" SortExpression="studentname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("studentname") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator  ControlToValidate="TextBox1" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator3" runat="server" ErrorMessage="Student name is required field"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("studentname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FooterStudent" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ValidationGroup="Insert"  ControlToValidate="FooterStudent" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator4" runat="server" ErrorMessage="Student name is required field"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="sem" SortExpression="sem">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("sem") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator  ControlToValidate="TextBox2" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator5" runat="server" ErrorMessage="sem number is required field"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("sem") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FooterSem" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ValidationGroup="Insert"  ControlToValidate="FooterSem" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator6" runat="server" ErrorMessage="sem number is required field"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="teachername" SortExpression="teachername">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("teachername") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator  ControlToValidate="TextBox4" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator7" runat="server" ErrorMessage="Teacher name is required field"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("teachername") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FooterTeacher" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ValidationGroup="Insert"  ControlToValidate="FooterTeacher" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator8" runat="server" ErrorMessage="Teacher name is required field"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="subjectname" SortExpression="subjectname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("subjectname") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator  ControlToValidate="TextBox5" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator9" runat="server" ErrorMessage="Subject name is required field"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("subjectname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FooterSubject" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ValidationGroup="Insert"  ControlToValidate="FooterSubject" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator10" runat="server" ErrorMessage="Subject name is required field"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="date" SortExpression="date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator  ControlToValidate="TextBox6" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator11" runat="server" ErrorMessage="Date is required field"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox   ID="FooterDate" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ValidationGroup="Insert"  ControlToValidate="FooterDate" ForeColor="Red" Text="*" SetFocusOnEror="true"   ID="RequiredFieldValidator12" runat="server" ErrorMessage="Date is required field"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
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

            <asp:ValidationSummary ValidationGroup="Insert" ID="ValidationSummary1" runat="server" BackColor="#999999" Font-Size="Larger" ForeColor="Red" />
            <asp:ValidationSummary  ID="ValidationSummary2" runat="server" BackColor="#999999" Font-Size="Larger" ForeColor="Red" />


            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Attedence] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Attedence] ([rollnumber], [studentname], [sem], [teachername], [subjectname], [date]) VALUES (@rollnumber, @studentname, @sem, @teachername, @subjectname, @date)" SelectCommand="SELECT * FROM [Attedence]" UpdateCommand="UPDATE [Attedence] SET [rollnumber] = @rollnumber, [studentname] = @studentname, [sem] = @sem, [teachername] = @teachername, [subjectname] = @subjectname, [date] = @date WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="rollnumber" Type="String" />
                    <asp:Parameter Name="studentname" Type="String" />
                    <asp:Parameter Name="sem" Type="String" />
                    <asp:Parameter Name="teachername" Type="String" />
                    <asp:Parameter Name="subjectname" Type="String" />
                    <asp:Parameter Name="date" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="rollnumber" Type="String" />
                    <asp:Parameter Name="studentname" Type="String" />
                    <asp:Parameter Name="sem" Type="String" />
                    <asp:Parameter Name="teachername" Type="String" />
                    <asp:Parameter Name="subjectname" Type="String" />
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        &nbsp;</div>
        <%--<br />--%>
        <div class="logout">

            <asp:Button ID="Logout" runat="server" Font-Size="Larger" ForeColor="Red" OnClick="Logout_Click" Text="Logout" Height="52px" Width="118px" />

        </div>
    </form>
    
    
</body>
</html>
