function notify() {
	var title = 'Become a member!';
	var body = 'Thank You for trusting us!';
	var icon = '../images/logo.jpg';
	var notification = new Notification(title, {
		body: body,
		icon: icon
	});

	setTimeout(function() { notification.close() }, 5000);
}
notify();