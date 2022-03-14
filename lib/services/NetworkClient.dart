import 'package:get/get.dart';

class NetworkClient extends GetConnect {

  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = 'https://camo.githubusercontent.com';
    httpClient.timeout = const Duration(seconds: 5);
    for (int i = 0; i < 100; i++) {
      getRepos().then((value) {
        print(value);
      });
    }

  }

  @override
  Future<dynamic> getRepos() => get("/2172e6d86e2f70be3a366366e728c38eac6fdfe33d459a078dd4b4573edc0c38/68747470733a2f2f6b6f6d617265762e636f6d2f67687076632f3f757365726e616d653d6269627574696b6f6c6579");

}
