import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../routes/app_routes.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final isLoading = false.obs;
  final obscurePassword = true.obs;
  final obscureConfirmPassword = true.obs;

  User? get currentUser => _auth.currentUser;

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  void toggleConfirmPasswordVisibility() {
    obscureConfirmPassword.value = !obscureConfirmPassword.value;
  }

  /// Create a new account with email & password, then set the display name.
  Future<void> signUpWithEmail({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      isLoading.value = true;
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      await credential.user?.updateDisplayName(name.trim());
      Get.offAllNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      _showError(_mapError(e));
    } catch (_) {
      _showError('Something went wrong. Please try again.');
    } finally {
      isLoading.value = false;
    }
  }

  /// Sign in an existing user with email & password.
  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      isLoading.value = true;
      await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      Get.offAllNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      _showError(_mapError(e));
    } catch (_) {
      _showError('Something went wrong. Please try again.');
    } finally {
      isLoading.value = false;
    }
  }

  /// Sign in (or sign up, automatically) using a Google account.
  Future<void> signInWithGoogle() async {
    try {
      isLoading.value = true;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // User cancelled the Google sign-in flow.
        isLoading.value = false;
        return;
      }

      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _auth.signInWithCredential(credential);
      Get.offAllNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      _showError(_mapError(e));
    } catch (_) {
      _showError('Google sign-in failed. Please try again.');
    } finally {
      isLoading.value = false;
    }
  }

  /// Send a password reset email.
  Future<void> resetPassword(String email) async {
    if (email.trim().isEmpty) {
      _showError('Please enter your email first.');
      return;
    }
    try {
      await _auth.sendPasswordResetEmail(email: email.trim());
      Get.snackbar(
        '',
        'Password reset email sent. Check your inbox.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color(0xFF612A7E),
        colorText: Colors.white,
        borderRadius: 12,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        titleText: const SizedBox.shrink(),
      );
    } on FirebaseAuthException catch (e) {
      _showError(_mapError(e));
    }
  }

  /// Sign out of both Google and Firebase, then return to the login screen.
  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
    } catch (_) {
      // Ignore - user may not have signed in with Google.
    }
    await _auth.signOut();
    Get.offAllNamed(AppRoutes.login);
  }

  String _mapError(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'No account found with this email.';
      case 'wrong-password':
      case 'invalid-credential':
        return 'Incorrect email or password.';
      case 'email-already-in-use':
        return 'This email is already registered.';
      case 'invalid-email':
        return 'Please enter a valid email address.';
      case 'weak-password':
        return 'Password should be at least 6 characters.';
      case 'too-many-requests':
        return 'Too many attempts. Please try again later.';
      case 'network-request-failed':
        return 'Network error. Check your connection.';
      default:
        return e.message ?? 'Authentication error occurred.';
    }
  }

  void _showError(String message) {
    Get.snackbar(
      '',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: const Color(0xFFB23B3B),
      colorText: Colors.white,
      borderRadius: 12,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      titleText: const SizedBox.shrink(),
    );
  }
}