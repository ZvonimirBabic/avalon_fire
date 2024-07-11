import 'package:get/get.dart';

class SnackbarService extends GetxService {
  void showErrorSnackbar(String title, String body) => Get.showSnackbar(
        GetSnackBar(
          title: title,
          message: body,
          duration: const Duration(seconds: 2),
        ),
      );
  void showSuccessSnackbar(String title, String body) => Get.showSnackbar(
        GetSnackBar(
          title: title,
          message: body,
          duration: const Duration(seconds: 2),
        ),
      );
}
