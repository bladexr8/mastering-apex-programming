/**
 * EXAMPLES OF NULL POINTER ERRORS 
 * AND HOW TO AVOID THEM 
 * (DO NOT RUN THIS CODE)
 */

// Map of Contacts
Map<String, Contact> contactsByBadgeId = new Map<String, Contact>();

// non-existent key in Map
String badBadgeId = 'THIS ID DOES NOT EXIST';

// attempt to retrieve a key that doesn't exist, this will
// cause a NullPointerException
String ownerName = contactsByBadgeId.get(badBadgeId).FirstName;

// defensive code to avoid NullPointerException when
// rerieving a non-existent key
if (contactsByBadgeId.containsKey(badBadgeId)) {
  String ownerName = contactsByBadgeId.get(badBadgeId).FirstName;
} else {
  System.Debug(LoggingLevel.ERROR, 'Attempt to retrieve non-existent Map Key: ' + badBadgeId);
}

// List of badge id's
List<String> badgeIdList = new List<String>();

// non-defensive code to iterate through the map
for (String badgeId : badgeIdList) {
  // will trigger NullPointerException if key doesn't exist
  String firstName = contactsByBadgeId.get(badBadgeId).FirstName;
  System.Debug(LoggingLevel.DEBUG, 'Retrieved First Name: ' + firstName);
}

// defensive code to iterate through the map
Set<String> badgeIdSet = new Set<String>(badgeIdList).retainAll(contactsByBadgeId.keySet());
for (String badgeId : badgeIdSet) {
  tring firstName = contactsByBadgeId.get(badBadgeId).FirstName;
  System.Debug(LoggingLevel.DEBUG, 'Retrieved First Name: ' + firstName);
}

// SAFE NAVGATION OPERATOR "?."
// returns null if a value is unavailable OR
// returns a value if one is available
String safeOwnerName = contactsByBadgeId.get(badBadgeId)?.FirstName;

Integer employeeAccount = myAccount?.NumberOfEmployees;     // returns null if myAccount is not an Account instance
paul?.getContactRecord?.FirstName;                          // returns null if paul is null or getContactRecord() method returns null
Sting accName = [
  SELECT Name
  FROM Account
  WHERE Account_Reference__c = :externalAccountKey
]?.Name;                                                    // returns null if no Account record is found by the query
