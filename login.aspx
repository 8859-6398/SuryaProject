<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SeedDistribution.Projects.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="../Scripts/md5.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/loginstyle.css" rel="stylesheet" />
    <link href="../Content/all.css" rel="stylesheet" />
   

    <script type="text/javascript">
        function md5auth(seed) {
            if ((document.getElementById('txtpassword').value == '') || (document.getElementById('txtUserId').value == '')) {
                alert("Please enter UserId and Password");
                return -1;
            }
            var password = document.getElementById('txtpassword').value;
            var hash = hex_md5(seed + hex_md5(password));
            if (password.length = 0 || password.length < 6 || password.length > 15) {

                document.getElementById('txtpassword').value = hash;
                document.getElementById('txtpassword').focus();
                return -1;
            }

            var rexp1 = /^(?=[\w$#@]{6,15})[\w$#@]{6,15}$/;

            if (password.search(rexp1) == -1) {

                document.getElementById('txtpassword').value = hash;
                alert("Please enter valid UserId or password");
                //document.forms[0].txtpassword.focus();
                return -1;
            }
            //alert(seed);
            //var hash = hex_md5(seed+hex_md5(password)); 
            document.getElementById('txtpassword').value = hash;

            var username = document.getElementById('txtUserId').value;

            var rexp = /^\w+$/;
            if (username.length < 5 || username.length > 15) {
                alert("Please enter valid UserId or password");
                document.getElementById('txtUserId').focus();
                return -1;
            }

            if (username.search(rexp) == -1) {
                alert("Please enter valid UserId or password");
                //document.getElementById('txtUserId').focus();
                return -1;
            }
            return true;

        }


        function capLock(e)
		
		{
	
var msg1,msg2;
 kc = e.keyCode?e.keyCode:e.which;
 sk = e.shiftKey?e.shiftKey:((kc == 16)?true:false);
 var isCtrlPressed = e.ctrlKey;
	//alert(isCtrlPressed);
	//alert(sk);
	
//if ((isCtrlPressed) && (kc==86))
//{
//msg1='';
//}

//else
//{	
 if(((kc >= 65 && kc <= 90) && !sk)||((kc >= 97 && kc <= 122) && sk))
{
//alert(sk);
//alert(kc);

    if ((isCtrlPressed))
    {
    msg1='';
    }
else
{
msg1='Caps Lock';
}
  }
 else
 {
 msg1='';
 }
//}
 if((e.keyCode==144) && (kc>=48 && kc<=57))
 {
    if (msg1=="")
     {
       msg2='Num Lock';
      }
      else
       {
      msg2=' and Num Lock';
     }
//alert('dd');
}
 else
 {

  msg2='';
 }
 

 
 if((msg1=='') && (msg2==''))
   {document.getElementById('divMayus').style.visibility = 'hidden';}
   else
  { document.getElementById('divMayus').style.visibility = 'visible';}
   
   
        }


    </script>
</head>
<body class="homepage">
      <div class="col-lg-12 col-md-12 col-sm-12 col-12 cus-maintop-banner d-none d-sm-block">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4 col-12 d-none d-md-block">
             <div class="push-left">
                        <div class="text-govt">
                            <ul>
                                <li>
                                    <a href="javascript:void(0);" lang="hi">
                                        हरियाणा                                    </a></li>
                                <li>
                                    <a href="javascript:void(0);" lang="en">
                                        Government of Haryana                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
          </div>
            <div class="col-lg-8 col-md-8 col-sm-8 col-12">
                <div id="exchanger" class="text-right selectbox">
                    <ul style="list-style:none;">
                        <li>
                            <a href="#topbar" class="skip-content scroll" title="skip to main content"><span class="english">Skip to Main Content</span><span class="hindi" style="display:none;">मुख्य विषयवस्तु पर जाएं</span></a>
                            <a href="#!" class="button-toggle-remove" title="Standard">A</a>
                            <a href="#!" class="button-toggle-highcontrast" title="Black/Yellow">A</a>
                           <a href="#!" class="cus-bg increase" title="Font Increase">A+</a> 
                            <a href="#!" class="cus-bg decrease" title="Font Decrease">A-</a> 
                            <a href="#!" class="cus-bg resetMe" title="Font Reset">A</a> 
                        

                        </li>
                    </ul>

                </div>
            </div>
        
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
               
                <img src="images/banner.jpg" alt="banner" class="w-100" />
            </div>
        </div>
        <div id="topbar" class="fadeInDown container-fluid">
           
            <div class="row reverse">
                <div class="col-lg-7 col-12">
                    <div class="cus-left-section" >
                       <h4>किसान अनुभाग</h4>
 
   <ol style="list-style-type:square;color:#fff;">
       <li>
<a href="/Projects/AppDataCitizen.aspx" target="_blank" >
        बीज उत्पादन कार्यक्रम में पंजीकरण के लिए यहाँ क्लिक करें 
    </a>
       </li>
       <li>
             <a href="/Projects/Status.aspx" target="_blank">
        अपने बीज आवेदन की स्थिति जानने के लिए यहाँ क्लिक करें 
    </a>
       </li>
       <li>
            <a href="https://fasal.haryana.gov.in/" target="_blank">
        मेरी फसल मेरा ब्यौरा पर पंजीकरण के लिए यहाँ क्लिक करें
    </a>
       </li>
   </ol>
  <div class="cus-note"><span style="color:#f00;font-weight:800;">नोट:</span> <span style="color:#fff;font-weight:700;">बीज उत्पादन कार्यक्रम में पंजीकरण के लिए, <a href="https://fasal.haryana.gov.in/" target="_blank" style="color:#0575F3;">मेरी फसल मेरा ब्यौरा</a> पोर्टल पर पंजीकरण अनिवार्य है</span></div>
    
  
   

  

                    </div>
                </div>
                <div class="col-lg-5 col-12">
                      <div class="fadeIn first">
                        <h4>Official Login </h4>
                    </div>
                    <div id="formContent">
                      
                <div class="cus-loginform">
                    
                    <div class="form-group">
                        <label>Enter User Name</label>
                        <asp:TextBox ID="txtUserId" class="fadeIn form-control" placeholder="User ID" MaxLength="15" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Enter Password</label>
                        <asp:TextBox ID="txtpassword" class="fadeIn form-control" TextMode="Password"  onkeypress="capLock(event)" onkeydown="capLock(event)" placeholder="Password" runat="server"></asp:TextBox>
                    </div>
                    <%--<div class="form-group">
                        <label>Enter Captcha</label>
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="text" id="login" class="fadeIn form-control" name="login" placeholder="Enter User" />
                            </div>
                            <div class="col-lg-4">
                                <img src="../images/captchaImage.jpg" id="icon" alt="Captcha" style="width: 100%; height: 40px;" />
                            </div>
                            <div class="col-lg-2">
                                <img src="../images/captcha.png" id="icon" alt="Reset" style="width: 32px;" />
                            </div>
                        </div>
                    </div>--%>
                    <div class="col-lg-12 text-center">
                        <asp:Button ID="btnlogin" class="fadeIn text-center" OnClick="btnlogin_Click" runat="server" Text="Log In" />
                    </div>
                    <asp:RegularExpressionValidator ID="revUseralphanum" runat="server" ControlToValidate="txtUserId"
                        ValidationExpression="[aA-zZ0-9]*" ErrorMessage="Either User ID or password is incorrect.."
                        Display="Dynamic" EnableClientScript="False"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="revpassword" runat="server" ControlToValidate="txtpassword"
                        ValidationExpression="[aA-zZ0-9$#@]*" ErrorMessage="Either User ID or password is incorrect.."
                        Display="Dynamic" EnableClientScript="False"></asp:RegularExpressionValidator>
                </div>
            </div>
                </div>
            </div>
       </div>
                <div class="container-fluid" style="margin-bottom:2rem;">

     

            <div class="col-lg-12 col-12 cus-logos" style="margin-bottom:0.5rem;">

                <h5 class="text-left carousel-title">महत्वपूर्ण लिंक</h5>
             
            </div>
   <section class="customer-logos slider">
      <div class="slide"><a href="http://hafed.gov.in/" target="_blank"><img class="img-fluid" src="../Images/hafed-logo.jpg" alt="hafed"/></a></div>
      <div class="slide"><a href="http://haryanaseeds.org.in/en-us/" target="_blank"><img class="img-fluid" src="../Images/haryana-seeds.jpg" alt="Haryana Seed"/></a></div>
      <div class="slide"><a href="http://www.hil.gov.in/HomePage.aspx" target="_blank"><img class="img-fluid" src="../Images/hil-logo.jpg" alt="HIL"/></a></div>
      <div class="slide"><a href="https://www.kribhco.net/" target="_blank"><img class="img-fluid" src="../Images/kribhco-logo.jpg" alt="Kribhco"/></a></div>
      <div class="slide"><a href="https://www.nationalfertilizers.com" target="_blank"><img class="img-fluid" src="../Images/NFL-logo.jpg" alt=""/></a></div>
      <div class="slide"><a href="https://www.indiaseeds.com/" target="_blank"><img class="img-fluid" src="../Images/NSC-logo.jpg" alt=""/></a></div>
     <div class="slide"><a href="https://fasal.haryana.gov.in/" target="_blank"><img class="img-fluid" src="../Images/mfmb-logo.jpg" alt=""/></a></div>
       <div class="slide"><a href="https://meraparivar.haryana.gov.in/" target="_blank"><img class="img-fluid" src="../Images/parivar-pehchan-logo.jpg" alt=""/></a></div>
       <div class="slide"><a href="https://agriharyana.gov.in/" target="_blank"><img class="img-fluid" src="../Images/agriculture.jpg" alt=""/></a></div>

   </section>
 </div>
        
     
        <footer id="footer">

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-12 cus-footer-div text-center">
                    <div class="row">
                        <div class="col-lg-4 col-md-4">
                           <span>Department of Agriculture and Farmers Welfare, Haryana</span>  <br />
                            <span>Government of Haryana</span>
                        </div>
                        <div class="col-lg-6 col-md-6 text-center">
                            <div class="credits">
                                <a>Site is technically designed, hosted and maintained by<br /> National Informatics Centre, Haryana</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2">
                            <img src="../Images/nic-logo.png" style="width:100px;"/>          
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </footer>
    </form>
    <script src="../Content/js/jquery.min.js"></script>
    <script src="../Content/bootstrap.min.js"></script>
     <script src="../Content/js/jquery.cookie.js"></script>
    <script src="../Content/js/slick.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
        $('.customer-logos').slick({
           
        slidesToShow: 6,
        slidesToScroll: 1,
        autoplay: true,
            autoplaySpeed: 2500,
            arrows: true,
        dots: false,
        pauseOnHover: false,
            infinite: true,
            prevArrow: "<span class='arrow prev'><i class='fas fa-angle-left'></i></span>",
            nextArrow: "<span class='arrow next'><i class='fas fa-angle-right'></i></span>",
        responsive: [{
            breakpoint: 768,
            settings: {
                slidesToShow: 4
            }
        }, {
            breakpoint: 520,
            settings: {
                slidesToShow: 3
            }
        }]
    });
    });
    </script>
      <script type="text/javascript">
          $(document).ready(function () {
              var originalSize = $('div').css('font-size');
              // reset        
              $(".resetMe").click(function () {
                  $('div,a,h1,h2,h3,h4,h5,h6,label,span').css('font-size', originalSize);
              });

              // Increase Font Size          
              $(".increase").click(function () {
                  var currentSize = $('div').css('font-size');
                  var currentSize = parseFloat(currentSize) * 1.1;
                  $('div,a,h1,h2,h3,h4,h5,h6,label,span').css('font-size', currentSize);
            
                  return false;
              });

              // Decrease Font Size       
              $(".decrease").click(function () {
                  var currentFontSize = $('div').css('font-size');
                  var currentSize = $('div').css('font-size');
                  var currentSize = parseFloat(currentSize) * 0.8;
                  $('div,a,h1,h2,h3,h4,h5,h6,label,span').css('font-size', currentSize);
                  return false;
              });
          });

      </script>
    <script>
        // color-changing-script
        // Check (onLoad) if the cookie is there and set the class if it is
        if (jQuery.cookie('highcontrast') == "yes") {
            jQuery("body").addClass("highcontrast");
        }
        // When the element is clicked
        jQuery("a.button-toggle-highcontrast").click(function () {
            if (jQuery.cookie('highcontrast') == "undefined" || jQuery.cookie('highcontrast') == "no") {
                jQuery.cookie('highcontrast', 'yes', {
                    expires: 7,
                    path: '/'
                });
                jQuery("body").addClass("highcontrast");
            } else {
                jQuery.cookie('highcontrast', 'yes', {
                    expires: 7,
                    path: '/'
                });
                jQuery("body").addClass("highcontrast");
            }
        });
        jQuery("a.button-toggle-remove").click(function () {
            jQuery('body').removeClass('highcontrast');
            if (jQuery.cookie('highcontrast') == "yes") {
                jQuery.cookie("highcontrast", null, {
                    path: '/'
                });
            }
        });
    </script>

</body>
</html>
