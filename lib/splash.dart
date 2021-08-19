import "package:parrot/pages/home.dart";
import "package:parrot/utils.dart";

class Splash extends StatelessWidget {

	const Splash({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) => GetBuilder<SplashController>(
		init: SplashController(),
		builder: ($) => Scaffold(
			body: image("hng.png").pSymmetric(h: 64.0).centered(),
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