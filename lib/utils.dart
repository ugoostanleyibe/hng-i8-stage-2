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

Image image(String file, [double? width, double? height]) => Image.asset("assets/images/$file",
	fit: BoxFit.cover,
	height: height,
	width: width,
);

Timer schedule(VoidCallback task, int delay) => Timer(delay.milliseconds, task);