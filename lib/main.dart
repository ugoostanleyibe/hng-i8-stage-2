import "package:hng/splash.dart";
import "package:hng/utils.dart";

void main() {
	runApp(GetMaterialApp(
		debugShowCheckedModeBanner: false,
		theme: ThemeData(
			primarySwatch: material(MAIN_COLOUR),
			scaffoldBackgroundColor: WHITE,
			backgroundColor: WHITE,
			fontFamily: FONTS[0],
		),
		title: "InputCollector",
		home: Splash(),
	));
}