/**
 * 
 *//**
 * 
 */
type= "text/javascript";
$(function() {
        $('#name').on('keypress', function(e) {
            if (e.which>0 && e.which<32||e.which>32 && e.which<65 || e.which>90 && e.which<97 ||e.which>122 && e.which<128){
                
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
$(function() {
        $('#cpass').on('keypress', function(e) {
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
	var pass=document.getElementById("pass");
	var cpass = document.getElementById("cpass")
	if(pass.value!=cpass.value){
	
	alert("Password and confirm password not matched!!!!");
	return false;
	}
	else
	{
			
		
		return true;
	}

}



