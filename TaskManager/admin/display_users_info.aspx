<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="display_users_info.aspx.cs" Inherits="TaskManager.admin.display_users_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <div class="container-fluid" style="background-color: white; padding: 20px">
        <asp:Repeater ID="r1" runat="server">

            <HeaderTemplate>

                <table class="table table-bordered" id="example">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Username</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>

            <ItemTemplate>

                <tr>
                    <td><%#Eval("firstname") %></td>
                    <td><%#Eval("lastname") %></td>
                    <td><%#Eval("username") %></td>
                    <td><%#Eval("email") %></td>
                </tr>

            </ItemTemplate>

            <FooterTemplate>
                </tbody>
                </table>

            </FooterTemplate>

        </asp:Repeater>
    </div>

        <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                "pagingType": "full_numbers"
            });
        });
    </script>

</asp:Content>
