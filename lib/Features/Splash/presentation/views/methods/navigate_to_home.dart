import 'package:bookly/Features/Home/peresentation/views/home_view.dart';
import 'package:bookly/constants.dart';
import 'package:get/get.dart';

void navigateToHome() {
  Future.delayed(const Duration(seconds: 3), () {
    Get.to(
      () => const HomeView(),
      transition: Transition.fade,
      duration: kTransationDuration,
    );
  });
}
