function valid(){
      let id=document.getElementById("6");
      let name=document.getElementById("7");
      let salary=document.getElementById("8");
      if(id.value.trim()=="" || name.value.trim()=="" || salary.value.trim()=="")
      {
           alert("Don't leave white spaces");
           id.value=="";
           name.value=="";
           salary.value=="";
           id.focus();
           name.focus();
           salary.focus();
           return false;
      }
      else if(id.value.length >12 || name.value.length>20 || salary.value.length >10)
      {
           alert("You have exceeded limit");
           id.value=="";
           name.value=="";
           salary.value=="";
           id.focus();
           name.focus();
           salary.focus();
           return false; 
      }
      else if(name.value.match(/^[A-Za-z ]+$/)==null)
      {
           alert("You have entered wrong name");
           name.value=="";
           name.focus();
           return false;  
      }
      else
      {
            return true;
      }
}

function validate(){
      let id=document.getElementById("9");
      let name=document.getElementById("10");
      let salary=document.getElementById("11");
      if(id.value.trim()=="" || name.value.trim()=="" || salary.value.trim()=="")
      {
           alert("Don't leave white spaces");
           id.value=="";
           name.value=="";
           salary.value=="";
           id.focus();
           name.focus();
           salary.focus();
           return false;
      }
      else if(id.value.length >12 || name.value.length>20 || salary.value.length >10)
      {
           alert("You have exceeded limit");
           id.value=="";
           name.value=="";
           salary.value=="";
           id.focus();
           name.focus();
           salary.focus();
           return false; 
      }
      else if(name.value.match(/^[A-Za-z ]+$/)==null)
      {
           alert("You have entered wrong name");
           name.value=="";
           name.focus();
           return false;  
      }
      else
      {
            return true;
      }
}

function validated(){
      let id=document.getElementById("12");
      if(id.value.trim()=="")
      {
           alert("Don't leave white spaces");
           id.value=="";
           id.focus();
           return false;
      }
      else if(id.value.length >12)
      {
           alert("You have exceeded limit");
           id.value=="";
           id.focus();
           return false; 
      }
      else
      {
            return true;
      }
}