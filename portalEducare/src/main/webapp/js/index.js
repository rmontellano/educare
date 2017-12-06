function d2h(d) {
	return d.toString(16);
}
function h2d (h) {
	return parseInt(h, 16);
}
function stringToHex (tmp) {
	var str = '',
	i = 0,
	tmp_len = tmp.length,
	c;
	
	for (; i < tmp_len; i += 1) {
		c = tmp.charCodeAt(i);
		str += d2h(c) + '';
	}
	return str;
}
function hexToString (tmp) {
	var arr = tmp.split(' '),
	str = '',
	i = 0,
	arr_len = arr.length,
	c;
	for (; i < arr_len; i += 1) {
		c = String.fromCharCode( h2d( arr[i] ) );
		str += c;
	}
	return str;
}

function login() {
	console.log(stringToHex($('#x').val()) + "l" + stringToHex($('#y').val()));
	$.ajax({
	    url: 'Login',
	    type: 'POST',
	    data: jQuery.param({ q: stringToHex($('#x').val()) + "l" + stringToHex($('#y').val())}) ,
	    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
	    success: function (response) {
	    	console.info(response);
	    	if(response.header.status) {
	    		window.location = "app.jsp?q=" + response.token;
	    	} else {
	    		alert(response.header.mensaje);
	    	}
	    },
	    error: function (e) {
	    	console.error(e);
	        alert("error");
	    }
	});
}