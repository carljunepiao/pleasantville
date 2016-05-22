function notify() {
	var title = 'Please log in to verify existence!';
	var body = 'Robots are prohibited. Be sure to input the right combination!';
	var icon = "../images/adminicon.jpg";
	var notification = new Notification(title, {
		body: body,
		icon: icon
	});

	setTimeout(function() { notification.close() }, 5000);
}
notify();