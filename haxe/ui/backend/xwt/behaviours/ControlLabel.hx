package haxe.ui.backend.xwt.behaviours;

import haxe.ui.backend.xwt.Type;
import haxe.ui.core.Behaviour;
import haxe.ui.util.Variant;

class ControlLabel extends Behaviour
{
	override public function get () : Variant
	{
		var widget = _component._widget;

		switch (Type.of(widget))
		{
			case Button, CheckBox, RadioButton:
				return (cast widget).Label;

			case Label:
				return cast(widget, xwt.Label).Text;

			default:
				throw "Unknown widget type for ControlLabel behaviour";
		}
	}

	override public function set (value:Variant) : Void
	{
		super.set(value);

		if (!value.isNull)
		{
			var widget = _component._widget;

			switch (Type.of(widget))
			{
				case Button, CheckBox, RadioButton:
					(cast widget).Label = (value : String);

				case Label:
					cast(widget, xwt.Label).Text = value;

				default:
					throw "Unknown widget type for ControlLabel behaviour";
			}

			_component.invalidateLayout();
		}
	}
}
