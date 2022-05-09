// ignore_for_file: non_constant_identifier_names

import 'package:kora/modules/login/login.dart';
import 'package:kora/shared/components/components.dart';
import 'package:kora/shared/network/local/cache_helper.dart';

void SignOut(context) {
  CacheHelper.removeData(key: 'token').then((value) {
    if (value) {
      NavigateAndFinish(context, LoginScreen());
    }
  });
}

void printFullText(String text) {
  final pattern = RegExp('.{1,800}');
  // ignore: avoid_print
  pattern.allMatches(text).forEach((element) => print(element.group(0)));
}

String? ID = '';
String? FORGET = '';
String? LANG = '';
String IamedUser = 'https://sbobaapp.com/sboba/api/user/Uploads/';

String PaymobToken = '';

String IntgrationId = '1942078';

String IntgrationIdKiosk = '1964091';

String PaymobApiKey =
    'ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SndjbTltYVd4bFgzQnJJam94TmpNNU5URXNJbU5zWVhOeklqb2lUV1Z5WTJoaGJuUWlMQ0p1WVcxbElqb2lNVFkwT0Rjek1ESXhOeTR4TkRFeU16VWlmUS4xdlVGV3NobElQZEtyaEJwQmhJZ3pYTGJPSzF3cldVNUdqSXdicWlKaGswRkFMemNPdlIxcGJ4WTVxNGs2TUZmNnNzOWo4RWtnNW01dU95ZS1hTC1rUQ==';
String PaymobOrderID = '';

String PaymobFinalToken = '';
String? PaymobFinalTokenKiosk = '';

String? RefCode = '';
