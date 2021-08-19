import "package:parrot/splash.dart";
import "package:parrot/utils.dart";

void main() {
	runApp(GetMaterialApp(
		debugShowCheckedModeBanner: false,
		theme: ThemeData(
			accentColor: MAIN_COLOUR,
			primaryColor: MAIN_COLOUR,
			backgroundColor: Colors.white,
			fontFamily: FONTS[0],
		),
		title: "Parrot",
		home: Splash(),
	));
}