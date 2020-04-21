<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="my_tasks.aspx.cs" Inherits="TaskManager.user.my_tasks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <div class="breadcrumbs">
        <div class="col-sm-4">
            <div class="page-header float-left">
                <div class="page-title">
                    <h1>My Issued Cars</h1>
                </div>
            </div>
        </div>

    </div>

    <div class="container-fluid" style="min-height:500px; background-color:white">
        <asp:DataList ID="d1" runat="server">
            <HeaderTemplate>
                <table class="table table-bordered" id="example">
                    <tr>
                        <th>Issued To</th>
                        <th>Task</th>
                        <th>Description</th>
                        <th>Task Created</th>
                        <th>Due Date</th>
                        <th>Task Completion</th>
                        <th>Complete</th>
                        
                        
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("username") %></td>
                    <td><%#Eval("tasks_name") %></td>
                    <td><%#Eval("tasks_desc") %></td>
                    <td><%#Eval("tasks_created") %></td>
                    <td><%#Eval("due_date") %></td>
                    <td><%#Eval("completed") %></td>
                    <td><a href="task_completed.aspx?id=<%#Eval("id") %>">Complete</a></td>
                </tr>
            </ItemTemplate>
            
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:DataList>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                "pagingType": "full_numbers"
            });
        });
    </script>
</asp:Content>
