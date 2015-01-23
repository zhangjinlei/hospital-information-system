function checkregister()
{
  if(document.registerform.username.value.length == 0)
  {
	  alert("请输入用户名");
	  return false;
  }
  else if(document.registerform.password.value.length == 0)
  {
	  alert("请输入密码");
	  return false;
  }
  else if(document.registerform.repassword.value != document.registerform.password.value)
  {
	  alert("密码重复输入不相同");
	  return false;
  }
  else if(document.registerform.email.value.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)!= !(-1))
  {
	  alert("邮箱格式不正确");
	  return false;
  }
  else if((document.registerform.phone.value.length != '11')&&(document.registerform.phone.value.length != '6'))
  {
	  alert("手机号输入错误");
	  return false;
  }
  else
	  return true;
}