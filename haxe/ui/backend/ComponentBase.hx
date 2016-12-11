package haxe.ui.backend;

import haxe.ui.backend.xwt.Type as XwtType;
import haxe.ui.core.Component;
import haxe.ui.core.ImageDisplay;
import haxe.ui.core.TextDisplay;
import haxe.ui.core.TextInput;
import haxe.ui.core.UIEvent;
import haxe.ui.styles.Style;
import haxe.ui.util.Rectangle;

using StringTools;

class ComponentBase
{
	@:allow(haxe.ui.backend) var _parent : xwt.Canvas;
	@:allow(haxe.ui.backend) var _widget : xwt.Widget;

	function new ()
	{
	}

	function applyStyle (style:Style)
	{
		if (_widget == null)
		{
			return;
		}

		if (style.fontSize != null)
		{
			_widget.Font = _widget.Font.WithSize(style.fontSize);
		}
	}

	public function getImageDisplay () : ImageDisplay
	{
		return null;
	}

	public function getTextDisplay () : TextDisplay
	{
		return null;
	}

	public function getTextInput () : TextInput
	{
		return null;
	}

	function handleAddComponent (child:Component) : Component
	{
		switch (XwtType.of(_widget))
		{
			case Canvas:
				var canvas:xwt.Canvas = cast _widget;
				child._parent = canvas;
				canvas.AddChild(child._widget);

			default:
				throw "Only containers can have children";
		}

		return child;
	}

	function handleClipRect (value:Rectangle)
	{
	}

	function handleCreate (native:Bool)
	{
		var className = Type.getClassName(Type.getClass(this));
		var nativeComponentClass = Toolkit.nativeConfig.query('component[id=${className}].@class', "Xwt.Canvas");
		_widget = cs.system.Activator.CreateInstance(cs.system.Type.GetType('$nativeComponentClass, Xwt'));
	}

	function handlePosition (left:Null<Float>, top:Null<Float>, style:Style)
	{
		var bounds = _parent.GetChildBounds(_widget);

		if (left != null)
		{
			bounds.Left = left;
		}

		if (top != null)
		{
			bounds.Top = top;
		}

		_parent.SetChildBounds(_widget, bounds);
	}

	function handlePostReposition ()
	{
	}

	function handlePreReposition ()
	{
	}

	function handleReady ()
	{
	}

	function handleRemoveComponent (child:Component, dispose:Bool=true) : Component
	{
		return child;
	}

	function handleSetComponentIndex (child:Component, index:Int)
	{
	}

	function handleSize (width:Null<Float>, height:Null<Float>, style:Style)
	{
		var bounds = _parent.GetChildBounds(_widget);

		if (width != null)
		{
			bounds.Width = width;
		}

		if (height != null)
		{
			bounds.Height = height;
		}

		_parent.SetChildBounds(_widget, bounds);
	}

	function handleVisibility (show:Bool)
	{
	}

	public function hasImageDisplay () : Bool
	{
		return false;
	}

	public function hasTextDisplay () : Bool
	{
		return false;
	}

	public function hasTextInput () : Bool
	{
		return false;
	}

	function mapEvent (type:String, listener:UIEvent->Void)
	{
		haxe.ui.backend.xwt.EventMapper.mapEvent(_widget, type, listener);
	}

	function removeImageDisplay ()
	{
	}

	function unmapEvent (type:String, listener:UIEvent->Void)
	{
	}
}
