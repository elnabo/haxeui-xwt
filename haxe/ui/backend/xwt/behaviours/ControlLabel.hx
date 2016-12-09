package haxe.ui.backend.xwt.behaviours;

import haxe.ui.core.Behaviour;
import haxe.ui.util.Variant;

class ControlLabel extends Behaviour
{
	override public function get () : Variant
	{
		var widget = _component._widget;

		if (Std.is(widget, xwt.Button))
		{
			return cast(widget, xwt.Button).Label;
		}
		else if (Std.is(widget, xwt.Label))
		{
			return cast(widget, xwt.Label).Text;
		}
		else
		{
			throw "Unknown widget type for ControlLabel behaviour";
		}
	}
	
	override public function set (value:Variant)
	{
		super.set(value);

		if (!value.isNull)
		{
			var widget = _component._widget;

			if (Std.is(widget, xwt.Button))
			{
				cast(widget, xwt.Button).Label = value;
			}
			else if (Std.is(widget, xwt.Label))
			{
				cast(widget, xwt.Label).Text = value;
			}
			else
			{
				throw "Unknown widget type for ControlLabel behaviour";
			}

			_component.invalidateLayout();
		} 
	}
}
 