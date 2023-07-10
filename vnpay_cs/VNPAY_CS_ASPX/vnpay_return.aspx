<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vnpay_return.aspx.cs" Inherits="VNPAY_CS_ASPX.vnpay_return" Async="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RETURN URL FROM VNPAY</title>
    <link href="Styles/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="header clearfix">
            <h3 class="text-muted">Kết quả thanh toán</h3>
        </div>
        <div class="table-responsive">
            <div runat="server" id="displayMsg"></div>
        </div> 
        <div class="table-responsive">
            <div runat="server" id="displayTmnCode"></div>
        </div>
        <div class="table-responsive">
            <div runat="server" id="displayTxnRef"></div>
        </div> 
        <div class="table-responsive">
            <div runat="server" id="displayVnpayTranNo"></div>
        </div> 
        <div class="table-responsive">
            <div runat="server" id="displayAmount"></div>
        </div>
        <div class="table-responsive">
            <div runat="server" id="displayBankCode"></div>
        </div>
        <div id="countdownTimer"></div>
    </div>
    
    <script type="text/javascript">
        var secondsLeft = 10;

        function countdown() {
            if (secondsLeft === 0) {
                // Redirect to the desired URL after countdown
                var redirectUrl = "http://localhost:3000" ;
                window.location.href = redirectUrl;
            } else {
                document.getElementById("countdownTimer").innerHTML = "Đang chuyển trang sau " + secondsLeft + " giây...";
                countdownTimer.style.color = "red";
                secondsLeft--;
                setTimeout(countdown, 1000);
            }
        }

        countdown();
    </script>
</body>
</html>
