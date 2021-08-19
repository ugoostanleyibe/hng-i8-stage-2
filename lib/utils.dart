import "package:velocity_x/velocity_x.dart";
import "package:flutter/material.dart";
import "dart:async";

export "package:get/get.dart" hide MultipartFile, HeaderValue, Response, StringExtension, BoolExtension, IntExtension;
export "package:url_launcher/url_launcher.dart";
export "package:velocity_x/velocity_x.dart";
export "package:flutter/material.dart";
export "package:flutter/services.dart";

const FONTS = ["SegoeUI"];

const MAIN_COLOUR = Color(0xFF473893);
const TRANSPARENT = Color(0x00000000);
const BLACK = Colors.black;
const WHITE = Colors.white;

MaterialColor material(Color primary) {
	int r = primary.red, g = primary.green, b = primary.blue, shade = 50, i = 1;
	Map<int, Color> swatch = {};

	while (shade < 1000) {
		final d = 500 - shade;

		swatch[shade] = Color.fromRGBO(
			r + ((d < 0 ? r : 255-r) * .001 * d).round(),
			g + ((d < 0 ? g : 255-g) * .001 * d).round(),
			b + ((d < 0 ? b : 255-b) * .001 * d).round(),
			1,
		);

		shade = 100 * i++;
	}

	return MaterialColor(primary.value, swatch);
}

Image image(String file, [double? width, double? height]) => Image.asset("assets/images/$file",
	fit: BoxFit.cover,
	height: height,
	width: width,
);

Timer schedule(VoidCallback task, int delay) => Timer(delay.milliseconds, task);