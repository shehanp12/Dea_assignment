function  validateForm() {

var x = document.forms["myForm"]["Name"].value;

if(x == "") {
    alert("Mame must be filled out");

    return false;

}



}