<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <link href="ContactStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" name="form1" onsubmit="return myfun()" runat="server">
       <script>
function myfun()
{
var a=document.getElementById("phonenumber").value;
if(a=="")
  {
  document.getElementById("messages").innerHTML="***Please fill mobile number";
  return false;
  }
  if(a.length<10)
  {
    document.getElementById("messages").innerHTML="***Mobile Number must 10 digit";
  return false;
  }
  if(a.length>10)
  {
    document.getElementById("messages").innerHTML="***Mobile Number must be 10 digit";
  return false;
  }
  if(isNaN(a))
  {
  document.getElementById("messages").innerHTML="*** Enter Only Numeric value";
  return false;
  }
}
   </script>

    <div class="container">
      
          <label for="name">Name</label>
          <input type="text" id="fname" name="name" placeholder="Your name.." required maxlength="50"/>
          <label for="email">EMAIL</label>
          <input type="email" id="email" name="email" placeholder="Your Email id.." required />
          <label for="phonenumber">PHONE NUMBER</label>
          <input type="text" id="phonenumber" name="phonenumber" placeholder="Your phone number.." />
          <span id="messages" style="color:red"></span><br />
          <label for="subject">Subject</label>
          <textarea id="subject" name="subject" placeholder="Write something..." style="height:200px" required></textarea>
      
          <input type="submit" value="submit" />

        </div>
    </form>
</body>
</html>
