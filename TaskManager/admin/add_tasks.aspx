<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add_tasks.aspx.cs" Inherits="TaskManager.admin.add_tasks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Add New Task</strong>
            </div>
            <div class="card-body">
                <div id="pay-invoice">
                    <div class="card-body">
                        <form action="" id="fo1" runat="server" method="post" novalidate="novalidate">

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Select Assigned User</label>
                                <asp:DropDownList ID="userna" runat="server" CssClass="form-control"></asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">*Tasks Name</label>
                                <asp:TextBox ID="tasksname" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">*Task's Description</label>
                                <asp:TextBox id="tasksdesc" TextMode="multiline" Columns="50" Rows="5" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">*Due Date</label>
                                <asp:TextBox id="duedate" textmode="Date" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div>
                                <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Add Task" OnClick="b1_Click" />
                            </div>

                            <div class="alert alert-success" id="msg" runat="server" style="margin-top:10px; display:none">
                                <strong>Task Has Been Added Successfully!</strong>
                            </div>
                        </form>
                    </div>
            </div>

        </div>
    </div>
    <!-- .card -->

    </div>
    <!--/.col-->
</asp:Content>
