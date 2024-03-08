<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab02.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class=" w-50 m-auto border border-primary">
            <div class="w-100 m-auto">
                <h2 class="text-center">
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#00CC00" BackColor="LightGreen" BorderStyle="Solid" BorderColor="#33CC33" Width="716px" >ĐƠN ĐẶT HÀNG</asp:Label>
                </h2>
                <hr class="border-2" />
            </div>
            
            <br />
            <div class="row mb-2">
                <div class="col-2">
                    Khách hàng:
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtTenKH" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-2">
                    Địa chỉ:
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-2">
                    Mã số thuế:
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtMST" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class=" form-inline" >
                <div class="col-6 border border-right border-bottom border-top border-primary">
                    <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#00CC00" Font-Size="13pt" Width="210px" Height="29px">Chọn các loại món sau:</asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlLoaibanh" runat="server" CssClass="form-control" Width="250px"></asp:DropDownList>
                    <br />
                    <br />
                    Số lượng: <asp:TextBox ID="txtSL" runat="server" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSoLuong" runat="server" ErrorMessage="Chưa nhập số lượng" ControlToValidate="txtSL" ForeColor="#CC3300">(*)</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvSoLuong" runat="server" ErrorMessage="Số lượng không hợp lệ" ControlToValidate="txtSL" ForeColor="#CC3300" Operator="GreaterThan" Type="Integer" ValueToCompare="0">(*)</asp:CompareValidator>
                    phần
                    <br />
                    <br />
                    <asp:Button ID="btnSL" runat="server" Text=">" Width="59px" BorderColor="#00ccff" OnClick="btnSL_Click" />
                </div >

                <div class="col-6 border border-bottom border-top border-primary">
                    <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#00CC00" Font-Size="13pt" Width="210px" Height="29px">Danh sách món được đặt:</asp:Label>
                    <br />
                    <asp:ListBox ID="lbBDD" runat="server" Width="349px" Height="145px"></asp:ListBox>
                    <asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" />
                </div>
            </div>
            <br />

            <div class="text-center">
                <asp:Button ID="btnIn" runat="server" Text="In đơn đặt hàng" OnClick="btnIn_Click" />
            </div>
            <div class="row mb-2">
                    <div class="col-md-12">
                        <asp:Label ID="lbKetQua" ForeColor="#cc3300" runat="server" Text=""></asp:Label>
                    </div>
                  
                </div>
                  <asp:ValidationSummary ID="vsThongBaoLoi" ForeColor="#ff3300" runat="server" />
        </div>
    </form>
</body>
</html>
