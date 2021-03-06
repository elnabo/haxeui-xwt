package haxe.ui.backend.xwt;

import haxe.ui.core.MouseEvent;
import haxe.ui.core.Screen;
import haxe.ui.core.UIEvent;

class EventMapper
{
	public static function mapEvent (w:xwt.Widget, type:String, listener:UIEvent->Void) : Void
	{
		if (w == null)
		{
			return;
		}

		switch (type)
		{
			case MouseEvent.CLICK:
				onClick(w, listener);

			case UIEvent.RESIZE:

			default:
				Sys.println('Event "$type" not handled');
		}
	}

	public static function onClick (w:xwt.Widget, listener:UIEvent->Void) : Void
	{
		var fn = function (a, b)
		{
			var event = new MouseEvent(MouseEvent.CLICK);
			event.screenX = Screen.instance._mouseX;
			event.screenY = Screen.instance._mouseY;
			listener(event);
		}

		switch (Type.of(w))
		{
			case Button:
				cast(w, xwt.Button).add_Clicked(fn);

			default:
				Sys.println('Component "$w" doesn\'t have click event');
		}
	}
}
