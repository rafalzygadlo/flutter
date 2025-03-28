
abstract class AuthRepository {
  Future<void> verifyPhoneNumber(String phoneNumber);
  Future<void> signInWithPhone(String verificationId, String smsCode);
  Future<void> signOut();
}