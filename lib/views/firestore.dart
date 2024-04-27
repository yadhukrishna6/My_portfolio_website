import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static Future<void> sendMessage(String fullName, String emailAddress,
      String mobileNumber, String emailSubject, String message) async {
    try {
      // Add a new document with a generated ID
      await FirebaseFirestore.instance.collection('messages').add({
        'fullName': fullName,
        'emailAddress': emailAddress,
        'mobileNumber': mobileNumber,
        'emailSubject': emailSubject,
        'message': message,
      });
    } catch (e) {
      // Throw the error for proper handling in the UI
      throw 'Failed to send message: $e';
    }
  }
}
