import "package:parrot/utils.dart";

class BigButton extends StatelessWidget {

	final GestureTapCallback onTap;
	final String title;
	final Color tint;
	final bool live;

	const BigButton({required this.onTap, required this.title, this.tint = MAIN_COLOUR, this.live = true});

	@override
	Widget build(BuildContext context) => InkWell(
		highlightColor: TRANSPARENT,
		splashColor: TRANSPARENT,
		child: Container(
			child: title.text.white.size(16.0).make(),
			padding: EdgeInsets.symmetric(vertical: 20.0),
			alignment: Alignment.center,
			decoration: BoxDecoration(
				color: tint.withOpacity(live ? 1.0 : 0.512),
				borderRadius: BorderRadius.circular(32.0),
			),
		),
		onTap: onTap,
	);
}