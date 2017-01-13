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
	var _imageDisplay : ImageDisplay;
	@:allow(haxe.ui.backend) var _parent : xwt.Canvas;
	var _textDisplay : TextDisplay;
	var _textInput : TextInput;
	@:allow(haxe.ui.backend) var _widget : xwt.Widget;

	function new ()
	{
	}

	function applyStyle (style:Style) : Void
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
		if (_imageDisplay == null)
		{
			_imageDisplay = new ImageDisplay();
		}

		return _imageDisplay;
	}

	public function getTextDisplay () : TextDisplay
	{
		if (_textDisplay == null)
		{
			_textDisplay = new TextDisplay();
		}

		return _textDisplay;
	}

	public function getTextInput () : TextInput
	{
		if (_textInput == null)
		{
			_textInput = new TextInput();
		}

		return _textInput;
	}

	function handleAddComponent (child:Component) : Component
	{
		switch (XwtType.of(_widget))
		{
			case Canvas:
				var canvas:xwt.Canvas = cast _widget;
				child._parent = canvas;
				canvas.AddChild(child._widget);

			case Notebook:
				var notebook:xwt.Notebook = cast _widget;
				child._parent = new xwt.Canvas();
				child._parent.AddChild(child._widget);
				notebook.Add(child._parent, child.text);

			default:
				throw "Only containers can have children";
		}

		return child;
	}

	function handleClipRect (value:Rectangle) : Void
	{
	}

	function handleCreate (native:Bool) : Void
	{
		var className = Type.getClassName(Type.getClass(this));
		var nativeComponentClass = Toolkit.nativeConfig.query('component[id=${className}].@class', "Xwt.Canvas");
		_widget = cs.system.Activator.CreateInstance(cs.system.Type.GetType('$nativeComponentClass, Xwt'));
	}

	function handlePosition (left:Null<Float>, top:Null<Float>, style:Style) : Void
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

	function handlePostReposition () : Void
	{
	}

	function handlePreReposition () : Void
	{
	}

	function handleReady () : Void
	{
	}

	function handleRemoveComponent (child:Component, dispose:Bool = true) : Component
	{
		switch (XwtType.of(_widget))
		{
			case Canvas:
				var canvas:xwt.Canvas = cast _widget;
				canvas.RemoveChild(child._widget);

			case Notebook:
				//TODO: figure out how to remove tab
				//var notebook:xwt.Notebook = cast _widget;
				//notebook.Remove(child._parent);

			default:
				throw "Only containers can have children";
		}

		return child;
	}

	function handleSetComponentIndex (child:Component, index:Int) : Void
	{
	}

	function handleSize (width:Null<Float>, height:Null<Float>, style:Style) : Void
	{
		var bounds = _parent.GetChildBounds(_widget);

		if (width != null)
		{
			bounds.Width = width;
			_widget.WidthRequest = width;
		}

		if (height != null)
		{
			bounds.Height = height;
			_widget.HeightRequest = height;
		}

		_parent.SetChildBounds(_widget, bounds);
	}

	function handleVisibility (show:Bool) : Void
	{
		_widget.Visible = show;
	}

	public function hasImageDisplay () : Bool
	{
		return _imageDisplay != null;
	}

	public function hasTextDisplay () : Bool
	{
		return _textDisplay != null;
	}

	public function hasTextInput () : Bool
	{
		return _textInput != null;
	}

	function mapEvent (type:String, listener:UIEvent->Void) : Void
	{
		haxe.ui.backend.xwt.EventMapper.mapEvent(_widget, type, listener);
	}

	function removeImageDisplay () : Void
	{
		if (_imageDisplay != null)
		{
			_imageDisplay.dispose();
			_imageDisplay = null;
		}
	}

	function unmapEvent (type:String, listener:UIEvent->Void) : Void
	{
	}
}
