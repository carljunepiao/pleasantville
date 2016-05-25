function notify() {
	var title = 'Login!';
	var body = 'Hey! Be sure to sign-up first.';
	var icon = '../images/logo.jpg';
	var notification = new Notification(title, {
		body: body,
		icon: icon
	});

	setTimeout(function() { notification.close() }, 5000);
}
notify();