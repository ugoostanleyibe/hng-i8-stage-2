import "package:parrot/utils.dart";

class HomeTextField extends StatelessWidget {

	final TextEditingController? controller;
	final ValueChanged<String>? onChanged;
	final FocusNode? focusNode;
	final String? labelText;

	const HomeTextField({this.onChanged, this.controller, this.focusNode, this.labelText});

	static const OUTLINE = OutlineInputBorder(
		borderSide: BorderSide(
			color: MAIN_COLOUR,
			width: 2.0,
		),
	);

	@override
	Widget build(BuildContext context) => TextField(
		decoration: InputDecoration(
			floatingLabelBehavior: FloatingLabelBehavior.always,
			contentPadding: EdgeInsets.all(16.0),
			enabledBorder: OUTLINE,
			focusedBorder: OUTLINE,
			labelStyle: TextStyle(
				color: MAIN_COLOUR,
				fontWeight: FontWeight.bold,
				fontSize: 20.0,
			),
			labelText: labelText,
			border: OUTLINE,
		),
		cursorColor: MAIN_COLOUR,
		controller: controller,
		focusNode: focusNode,
		onChanged: onChanged,
		maxLines: 2,
		style: TextStyle(
			color: MAIN_COLOUR,
			fontSize: 20.0,
		),
	);
}