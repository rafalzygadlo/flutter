// data/auth_data_source.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_2/domain/repository/auth.dart';


class AuthDataSource implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<void> verifyPhoneNumber(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (e) {
        print("Weryfikacja nie powiodła się: ${e.message}");
      },
      codeSent: (String verificationId, int? resendToken) {
        // Tutaj możesz zapisać verificationId, żeby później wprowadzić kod SMS
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Timeout dla weryfikacji
      },
    );
  }

  @override
  Future<void> signInWithPhone(String verificationId, String smsCode) async {
    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);
    await _auth.signInWithCredential(credential);
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
