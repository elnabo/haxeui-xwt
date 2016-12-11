package haxe.ui.backend.xwt;

enum XwtType
{
	Button;
	Canvas;
	CheckBox;
	Label;
	RadioButton;
	Other;
}

class Type
{
	public static function of (w:xwt.Widget) : XwtType
	{
		return if (Std.is(w, xwt.Button)) Button;
		else if (Std.is(w, xwt.Canvas)) Canvas;
		else if (Std.is(w, xwt.CheckBox)) CheckBox;
		else if (Std.is(w, xwt.Label)) Label;
		else if (Std.is(w, xwt.RadioButton)) RadioButton;
		else Other;
	}
}
