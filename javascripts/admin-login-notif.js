function notify() {
	var title = 'Please log in to verify existence!';
	var body = 'Robots are prohibited.';
	var icon = "../images/adminicon.jpg";
	var notification = new Notification(title, {
		body: body,
		icon: icon
	});

	setTimeout(function() { notification.close() }, 3000);
}
notify();