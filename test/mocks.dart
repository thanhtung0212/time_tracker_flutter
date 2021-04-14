import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter_app/services/database.dart';
import 'package:mockito/mockito.dart';

class MockAuth extends Mock implements AuthBase {}
class MockDatabse extends Mock implements Database {}

class MockUser extends Mock implements User {
  MockUser();
  factory MockUser.uid(String uid){
    final user= MockUser();
    when(user.uid).thenReturn(uid);
    return user;
  }
}