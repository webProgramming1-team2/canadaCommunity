
function btn_click(){
    const form = document.form;
    
    const id = form.id.value;
    const pwd = form.passwd.value;



    var loginData = new Object();
    loginData.id = form.id.value;
    loginData.passwd = form.passwd.value;
    var json = JSON.stringify(userData);
    alert(json);
}

function login(){
    console.log(data);
}