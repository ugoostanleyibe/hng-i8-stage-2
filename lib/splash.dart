import "package:hng/pages/home.dart";
import "package:hng/utils.dart";

class Splash extends StatelessWidget {

	const Splash({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) => GetBuilder<SplashController>(
		init: SplashController(),
		builder: ($) => Scaffold(
			body: Center(child: image("hng.png").pSymmetric(h: 64.0)),
		),
		tag: "Splash",
	);
}

class SplashController extends GetxController {

	@override
	void onInit() {
		super.onInit();
		SystemChrome.setEnabledSystemUIOverlays([]);
		schedule(() => Get.off(Home()), 2048);
	}

	@override
	void onClose() {
		SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
		super.onClose();
	}
}