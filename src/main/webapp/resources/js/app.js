function registration() {
	var obj = {
		username: document.getElementById("username").value,
		password: document.getElementById("password").value
	};
	var data = JSON.stringify(obj);
	var xhr = new XMLHttpRequest();
	var url = "/rest/user/new";
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8");
	xhr.send(data);
}

