package dev.ugoostanleyibe.parrot;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

import io.flutter.embedding.android.FlutterFragmentActivity;

public class MainActivity extends FlutterFragmentActivity {

	@Override
	public void configureFlutterEngine(FlutterEngine engine) {
		GeneratedPluginRegistrant.registerWith(engine);
	}
}