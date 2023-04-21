import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class AuthManage {
  /// 회원가입
  Future<bool> createUser({
    required String email,
    required String pw,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: pw,
      );
      // FirebaseAuth.instance.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
      } else if (e.code == 'email-already-in-use') {}
    } catch (e) {
      return false;
    }
    // authPersistence(); // 인증 영속

    return true;
  }

  Future<bool> loginKakao() async {
    print('kakao');
    try {
      // login
      var result = await UserApi.instance.loginWithKakaoAccount();

      // get user info
      var userInfo = await UserApi.instance.me();

      // do something with the user info, like save it to a database
      print("userinfo : ${userInfo.toJson()}");
      print(result.accessToken.toString());
      return true;
    } catch (e) {
      print('Kakao login error: $e');
      return false;
    }
  }

  Future<bool> loginNaver() async {
    print('naver');
    try {
      final NaverLoginResult res = await FlutterNaverLogin.logIn();
      if (res.status == NaverLoginStatus.loggedIn) {
        NaverAccessToken token = await FlutterNaverLogin.currentAccessToken;
        print('account = ${res.account}');
        print(token);
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
  Future<bool> loginGoogle() async {
    print("google");
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser != null) {
        print('name = ${googleUser.displayName}');
        print('email = ${googleUser.email}');
        print('id = ${googleUser.id}');

        return true;
      }
    } catch (e) {
      print("Err : $e");
      return false;
    }
    return false;
  }
}
