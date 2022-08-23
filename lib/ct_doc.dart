// Creates a separate and distinct user profile identified by one or more of Identity,
///  Email, FBID or GPID values,
onUserLogin(Map<String, dynamic> profile) ;

/// Push a profile update.
profileSet(Map<String, dynamic> profile) ;
///Remove the user profile property value specified by key from the user profile
profileRemoveValueForKey(String key) ;
profileSetMultiValues() ;
// Add a unique value to a multi-value user profile property
profileAddMultiValue() ;
///Increment given num value. The value should be in positive range
profileIncrementValue(String key, num value) ;
///Decrement given num value. The value should be in positive range
profileDecrementValue(String key, num value) ;
/// Add a collection of unique values to a multi-value user profile property
profileAddMultiValues(String key, List values) ;
/// Remove a unique value from a multi-value user profile property
profileRemoveMultiValue(String key, String value) ;

/// Remove a collection of unique values from a multi-value user profile property
profileRemoveMultiValues(String key, List values) ;
/// This method is used to push install referrer via UTM source, medium & campaign parameters
/**************** system events ********************/
pushInstallReferrer(
String source, String medium, String campaign) ;
/// Returns the time elapsed by the user on the app
sessionGetTimeElapsed() ;

/// Returns the total number of times the app has been launched
sessionGetTotalVisits() ;

/// Returns the number of screens which have been displayed by the app
sessionGetScreenCount() ;


/// Returns the timestamp of the previous visit
sessionGetPreviousVisitTime() ;

/// Returns a Map of UTMDetail object which consists of UTM parameters like source, medium & campaign
sessionGetUTMDetails() ;
/***** In-App Controls ******/

/// Suspends display of InApp Notifications.
/// The InApp Notifications are queued once this method is called
/// and will be displayed once resumeInAppNotifications() is called.
suspendInAppNotifications() ;

/// Suspends the display of InApp Notifications and discards any new InApp Notifications to be shown
/// after this method is called.
/// The InApp Notifications will be displayed only once resumeInAppNotifications() is called.

discardInAppNotifications() ;

/// Resumes display of InApp Notifications.
/// If suspendInAppNotifications() was called previously, calling this method will instantly show
/// all queued InApp Notifications and also resume InApp Notifications on events raised after this
/// method is called.
/// If discardInAppNotifications() was called previously, calling this method will only resume
/// InApp Notifications on events raised after this method is called.
resumeInAppNotifications() ;

/// Initializes the inbox controller and sends a callback
initializeInbox() ;

/// Opens CTInboxActivity to display Inbox Messages
showInbox(Map<String, dynamic> styleConfig) ;
/// Returns the count of all inbox messages for the user
getInboxMessageCount() ;
/// Returns the count of total number of unread inbox messages for the user
getInboxMessageUnreadCount() ;
/// Returns a list of json string representation of all CTInboxMessage
getAllInboxMessages() ;
/// Returns a list of json string representation of unread CTInboxMessage
getUnreadInboxMessages() ;
/// Returns a json string representation of CTInboxMessage for given messageId
getInboxMessageForId(String messageId) ;
/// Deletes the CTInboxMessage object for given messageId
deleteInboxMessageForId(String messageId) ;
/// Marks the given messageId of CTInboxMessage object as read
markReadInboxMessageForId(String messageId)  ;
/// Pushes the Notification Clicked event for App Inbox to CleverTap.
pushInboxNotificationClickedEventForId(String messageId) ;
/// Pushes the Notification Viewed event for App Inbox to CleverTap.
pushInboxNotificationViewedEventForId(
String messageId) ;
/// only iOS - If an application is launched from a push notification click, returns the CleverTap deep link included in the push notification
Future<String?> getInitialUrl() async {}
///Display units
///Returns a List of Display units as a Map
Future<List?> getAllDisplayUnits() ;
///Returns Display unit info as a Map
Future<Map<String, dynamic>>getDisplayUnitForId(String unitId) ;
///Raise Notification Viewed for Display Unit id passed
Future<void> pushDisplayUnitViewedEvent(String unitId) ;
///Raise Notification Clicked for Display Unit id passed
Future<void> pushDisplayUnitClickedEvent(String unitId)


/************       Feature Flags *****/
Future<bool?> getFeatureFlag(String key, bool defaultValue);

/********* Product Config *************/
///Sets Default Values for Product Config using the passed Map
setDefaultsMap(Map<String, dynamic> defaults) ;
///Fetches the Product Configs from CleverTap
Future<void> fetch()  ;
///Fetches Product configs, adhering to the specified minimum fetch interval in seconds.
fetchWithMinimumIntervalInSeconds(int interval) ;
///Activates the most recently fetched Product configs
activate() ;
///Fetches and then activates the fetched Product configs.
Future<void> fetchAndActivate()  ;
///Sets the minimum interval between successive fetch calls.
setMinimumFetchIntervalInSeconds(int interval) ;
///Returns the last fetched timestamp in millis.
Future<int?> getLastFetchTimeStampInMillis() ;
///Returns the parameter value for the given key as a String.
Future<String?>getProductConfigString(String key) ;
///Returns the parameter value for the given key as a boolean.
Future<bool?> getProductConfigBoolean(String key) ;
///Returns the parameter value for the given key as a long (int for Dart).
Future<int?> getProductConfigLong(String key)  ;
///Returns the parameter value for the given key as a double.
Future<double?> getProductConfigDouble(String key) ;
///Deletes all activated, fetched and defaults configs as well as all Product Config settings.
Future<void> resetProductConfig() ;

getCleverTapDate(DateTime dateTime)  ;
/******************* app notification ****************/

/// Define a method to handle inApp notification dismissed
/// Define a method to handle inApp notification button clicked
/// Define a method to handle profile initialization
/// Define a method to handle profile sync
/// Define a method to handle inbox initialization
/// Define a method to handle inbox update
/// Define a method to handle inbox notification button clicked
/// Define a method to handle Native Display Unit updates
/// Define a method to handle Feature Flag updates
/// Define a method to handle Product config initialization
/// Define a method to handle Product config fetch updates
/// Define a method to handle Product config activation updates
/// Define a method to handle Push Amplification payload
/// Define a method to handle Push Clicked payload
/// Sets debug level to show logs on Android Studio/Xcode console
/// Only for iOS - Registers the application to receive push notifications
Future<void> registerForPush() ;
/// Set the FCM Token for Push Notifications
Future<void> setPushToken(String value) ;

/// Set the Xiaomi Token for Push Notifications
Future<void> setXiaomiPushToken(String value) ;

/// Set the Baidu Token for Push Notifications
Future<void> setBaiduPushToken(String value) ;

/// Set the Huawei Token for Push Notifications
Future<void> setHuaweiPushToken(String value)   ;

/// Method to create Notification Channel

Future<void> createNotificationChannel(
String channelId,
    String channelName,
String channelDescription,
    int importance,
bool showBadge) ;

/// Method to create Notification Channel With Sound
Future<void> createNotificationChannelWithSound(
String channelId, String channelName, String channelDescription, int importance, bool showBadge, String sound) ;

/// Method to create Notification Channel with Group
Future<void> createNotificationChannelWithGroupId(
String channelId, String channelName,
String channelDescription, int importance,
String groupId, bool showBadge) ;
/// Method to create Notification Channel with Group and Sound
Future<void> createNotificationChannelWithGroupIdAndSound(
String channelId, String channelName,
String channelDescription, int importance,
String groupId, bool showBadge, String sound) ;
/// Method to create Notification Channel Group
Future<void> createNotificationChannelGroup(
String groupId, String groupName) ;
/// Method to delete Notification Channel
Future<void> deleteNotificationChannel(String channelId) ;
/// Method to delete Notification Channel Group
Future<void> deleteNotificationChannelGroup(String groupId) ;
/// Method to create Notification using CleverTap
Future<void> createNotification(dynamic data) ;
/// Method to process Notification using CleverTap to avoid duplicates using Push Amplification
Future<void> processPushNotification(dynamic data) ;
/// Method to allow user to Opt out of sending data to CleverTap as per GDPR rules
Future<void> setOptOut(bool value)  ;
/// Sets the CleverTap SDK to offline
Future<void> setOffline(bool value) ;
/// Enables Device & Networking Information Reporting to CleverTap
Future<void> enableDeviceNetworkInfoReporting(bool value)  ;
/// Enables the Profile/Events Read and Synchronization API
Future<void> enablePersonalization()  ;
/// Disables the Profile/Events Read and Synchronization API
Future<void> disablePersonalization()  ;
///Record Notification Clicked event
Future<void> pushNotificationClickedEvent(Map<String, dynamic> extras) ;
///Record Notification Viewed event
Future<void> pushNotificationViewedEvent(Map<String, dynamic> extras) ;
/// Record a Screen View event
Future<void> recordScreenView(String screenName) ;
/// Pushes a basic event.
Future<void> recordEvent(String eventName, Map<String, dynamic> properties)  ;



///**
/// * Push Charged event, which describes a purchase made.
/// *
/// * @param chargeDetails A Map, with keys as strings, and values as String,
/// *                      Integer, Long,  Boolean}, Float, Double,
/// *                      java.util.Date, or Character
/// * @param items         A List which contains up to 15 Map objects,
/// *                      where each Map object describes a particular item purchased
///
Future<void> recordChargedEvent(Map<String, dynamic> chargeDetails,
    List<Map<String, dynamic>> items)   ;
/// Returns the timestamp of the first time the given event was raised
 Future<dynamic> eventGetFirstTime(String eventName)  ;
/// Returns the timestamp of the last time the given event was raised
  Future<dynamic> eventGetLastTime(String eventName) ;
/// Returns the total count of the specified event
 Future<int?> eventGetOccurrences(String eventName)  ;

/// Returns a Map object for the particular event passed. EventDetail consists of event name, count, first time
//  and last time timestamp of the event.
 Future<Map<String, dynamic>> eventGetDetail(String eventName)  ;
/// Returns a Map of event names and corresponding event details of all the events raised
Future<Map<String, dynamic>> getEventHistory(String eventName)  ;
/// Set the user profile location in CleverTap
setLocation(double latitude, double longitude) ;
/// Returns a unique identifier through callback by which CleverTap identifies this user
 Future<String?> getCleverTapID() ;



















































