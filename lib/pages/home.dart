import "package:parrot/widgets/buttons.dart";
import "package:parrot/widgets/fields.dart";
import "package:parrot/utils.dart";

class Home extends StatelessWidget {

	const Home({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) => GetBuilder<HomeController>(
		builder: ($) => Scaffold(
			body: SafeArea(
				child: Column(
					children: [
						Column(
							children: $.submitted ? [
								Container(
									child: $.input.text.bold.justify.color(MAIN_COLOUR).size(24.0).makeCentered(),
									padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 32.0),
									decoration: BoxDecoration(
										borderRadius: BorderRadius.circular(8.0),
										border: Border.all(
											color: MAIN_COLOUR,
											width: 2.0,
										),
									),
								),
								40.heightBox,
								BigButton(
									onTap: $.edit,
									title: "Edit",
								),
							] : [
								HomeTextField(
									labelText: "Say Something",
									onChanged: (value) => $.update(),
									controller: $.editor,
									focusNode: $.node,
								),
								40.heightBox,
								BigButton(
									title: "Submit",
									onTap: $.submit,
									live: $.ready,
								),
							],
						).expand(),
						Row(
							children: [
								InkWell(
									onTap: () => launch("https://internship.zuri.team/"),
									highlightColor: TRANSPARENT,
									splashColor: TRANSPARENT,
									child: image("zuri.png"),
								).expand(),
								InkWell(
									onTap: () => launch("https://ingressive.org/"),
									highlightColor: TRANSPARENT,
									splashColor: TRANSPARENT,
									child: image("i4g.png"),
								).expand(),
							],
						),
					],
				).pLTRB(32.0, 64.0, 32.0, 16.0),
			),
		),
		init: HomeController(),
	);
}

class HomeController extends GetxController {

	bool get ready => input.isNotEmpty;

	String get input => editor.text.trim();

	final editor = TextEditingController();
	final node = FocusNode();

	bool submitted = false;

	@override
	void onClose() {
		editor.dispose();
		super.onClose();
	}

	void submit() {
		if (ready) {
			Get.focusScope?.unfocus();
			submitted = true;
			update();
		}
	}

	void edit() {
		submitted = false;
		node.requestFocus();
		update();
	}
}