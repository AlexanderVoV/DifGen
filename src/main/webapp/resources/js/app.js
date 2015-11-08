function validatForm() {

}

function registration() {
	var obj = {
		email: document.getElementById("remail").value,
		username: document.getElementById("rusername").value,
		password: document.getElementById("rpassword").value
	};
	var data = JSON.stringify(obj);
	var xhr = new XMLHttpRequest();
	var url = "/user/new";
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8");
	xhr.send(data);
}
