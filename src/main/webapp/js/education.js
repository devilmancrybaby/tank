function blankCheck() {
    var textInput = document.getElementsByTagName("input");
    for (var i = 0; i < textInput.length; i++) {
        if(textInput[i].value==""){
            alert("不能为空！");
            return false;
        }
    }
    return true;
    
}

function showText() {

    var textInput=document.getElementsByName("schoolName");
    if (textInput !=null){
        document.getElementById("p1").style.display="none";
    }else{
        document.getElementById("p1").style.display="block";
    }
    
}