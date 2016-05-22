function notify() {
	var title = 'Pleasantville Theater Productions!';
	var body = 'Please enjoy our welcome.';
	var icon = '../images/logo.jpg';
	var notification = new Notification(title, {
		body: body,
		icon: icon
	});

	setTimeout(function() { notification.close() }, 5000);
}
notify();