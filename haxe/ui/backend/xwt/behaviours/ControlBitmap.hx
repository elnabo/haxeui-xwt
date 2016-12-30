package haxe.ui.backend.xwt.behaviours;

import haxe.ui.core.Behaviour;
import haxe.ui.util.Variant;

class ControlBitmap extends Behaviour
{
	override public function get () : Variant
	{
		return null;
	}

	override public function set (value:Variant) : Void
	{
		super.set(value);

		if (_component._widget == null || value.isNull)
		{
			return;
		}

		if (Std.is(_component._widget, xwt.ImageView) && Resource.getBytes(value) != null)
		{
			var bmp:xwt.ImageView = cast _component._widget;
			bmp.Image = xwt.drawing.Image.FromStream(new cs.system.io.MemoryStream(haxe.Resource.getBytes(value).getData()));
		}
	}
}
