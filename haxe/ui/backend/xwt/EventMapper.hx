package haxe.ui.backend.xwt;

import haxe.ui.core.MouseEvent;
import haxe.ui.core.Screen;
import haxe.ui.core.UIEvent;

class EventMapper
{
	public static function mapEvent (w:xwt.Widget, type:String, listener:UIEvent->Void)
	{
		if (w == null)
		{
			return;
		}

		switch (type)
		{
			case "Click": //MouseEvent.CLICK: //"Only inline or read-only (default, never) fields can be used as a pattern"
				onClick(w, listener);

			default:
				throw 'Event "$type" not handled';
		}
	}

	public static function onClick (w:xwt.Widget, listener:UIEvent->Void)
	{
		var fn = function (a, b) {
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
				throw "Component doesn't have click event";
		}
	}
}
