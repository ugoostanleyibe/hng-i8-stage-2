import "package:hng/utils.dart";

class HomeTextField extends StatelessWidget {

	final TextEditingController? controller;
	final ValueChanged<String>? onChanged;
	final String? labelText;

	const HomeTextField({this.onChanged, this.controller, this.labelText});

	@override
	Widget build(BuildContext context) => TextField(
		decoration: InputDecoration(
			floatingLabelBehavior: FloatingLabelBehavior.always,
			contentPadding: EdgeInsets.all(16.0),
			enabledBorder: OutlineInputBorder(
				borderSide: BorderSide(
					color: MAIN_COLOUR,
					width: 2.0,
				),
			),
			labelStyle: TextStyle(
				color: MAIN_COLOUR,
				fontSize: 20.0,
			),
			labelText: labelText,
			border: OutlineInputBorder(
				borderSide: BorderSide(
					color: MAIN_COLOUR,
					width: 2.0,
				),
			),
		),
		cursorColor: MAIN_COLOUR,
		controller: controller,
		onChanged: onChanged,
		maxLines: 2,
		style: TextStyle(
			color: MAIN_COLOUR,
			fontWeight: FontWeight.bold,
			fontSize: 20.0,
		),
	);
}