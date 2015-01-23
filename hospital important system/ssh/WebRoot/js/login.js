function checklogin()
{
  if(document.loginform.username.value.length == 0)
  {
	  alert("请输入用户名");
	  return false;
  }
  else if(document.loginform.password.value.length == 0)
  {
	  alert("请输入密码");
	  return false;
  }
  else
	  return true;
}