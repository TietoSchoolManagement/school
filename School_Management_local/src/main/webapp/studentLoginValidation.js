/**
 * 
 *//**
 * 
 */
type= "text/javascript";
$(function() {
        $('#mobile').on('keypress', function(e) {
            if (e.which == 32){
                
                return false;
            }
        });
});

$(function() {
        $('#pass').on('keypress', function(e) {
            if (e.which == 32){
                
                return false;
            }
        });
});





$(document).ready(function() {
    $('#pass').on("contextmenu",function(){
       return false;
    }); 
}); 

function validate(){
	var username=document.loginForm.mobile.value;
	var password = document.loginForm.pass.value;
	if(username==""||password==""){
		alert("All fields required");
		return false;
	}else if(password.length>20 || username.length>20){
		alert("Password or username length not valid!!!");
		return false;
	}
	else
	{
	return true;
	}

}


