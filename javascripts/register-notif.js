function notify() {
	var title = 'Register and become a member!';
	var body = '1010101010100111001101';
	var icon = '../images/logo.jpg';
	var notification = new Notification(title, {
		body: body,
		icon: icon
	});

	setTimeout(function() { notification.close() }, 3000);
}
notify();