<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="display_all_tasks.aspx.cs" Inherits="TaskManager.admin.display_all_tasks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Table Head</strong>
            </div>
            <div class="card-body">

                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table" id="example">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">Title</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Assigned To</th> 
                                    <th scope="col">Date Created</th> 
                                    <th scope="col">Due Date</th> 
                                    <th scope="col">Completed?</th> 
                                    <th scope="col">Edit</th>
                                    <th scope="col">Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>

                        <tr>
                            <td><%#Eval("tasks_name") %></td>
                            <td><%#Eval("tasks_desc") %></td>
                            <td><%#Eval("username") %></td>
                            <td><%#Eval("tasks_created") %></td>
                            <td><%#Eval("due_date") %></td>
                            <td><%#Eval("completed") %></td>
                            <td><a href="edit_tasks.aspx?id=<%#Eval("id") %>">Edit</a></td>
                            <td><a href="delete_files.aspx?id2=<%#Eval("id") %>">Delete</a></td>
                        </tr>

                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>

                </asp:Repeater>


            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                "pagingType": "full_numbers"
            });
        });
    </script>
</asp:Content>
