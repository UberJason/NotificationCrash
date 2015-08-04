# NotificationCrash
A sample project to demonstrate a bug in iOS 8 actionable notifications that causes a phone rash.

In iOS 8, local and remote notifications can have an associated category (UIMutableUserNotificationCategory), and categories can have associated actions (UIMutableUserNotificationAction). If a UIMutableUserNotificationAction does not have a title set, then when this notification is fired and received on the iOS device, swiping left on the notification from the lock screen or notification center to reveal the actions will instead crash the device.

I've tested and verified this bug on an iPhone 5S and iPhone 6, both running iOS 8.4. This sample project demonstrates the problem for a UILocalNotification, but the problem also occurs for a UIRemoteNotification.
