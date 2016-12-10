package haxe.ui.backend;

import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.DialogButton;
import haxe.ui.core.Component;
import haxe.ui.core.UIEvent;

class ScreenBase
{
	public var dpi(get, null) : Float;
	public var focus : Component;
	public var height(get, null) : Float;
	public var options : Dynamic;
	public var width(get, null) : Float;

	@:allow(haxe.ui.backend) var _canvas(get, never) : xwt.Canvas;
	@:allow(haxe.ui.backend) var _mouseX : Float;
	@:allow(haxe.ui.backend) var _mouseY : Float;
	var _window(get, never) : xwt.Window;

	function get_dpi () : Float
	{
		return 72.0; //TODO
	}

	function get_height () : Float
	{
		return _window.Height;
	}

	function get_width () : Float
	{
		return _window.Width;
	}

	function get__canvas () : xwt.Canvas
	{
		return options.canvas;
	}

	function get__window () : xwt.Window
	{
		return options.window;
	}

	function new ()
	{
		_mouseX = _mouseY = 0.0;
	}

	function addComponent (component:Component)
	{
		if (component._widget != null)
		{
            component.__parent = _canvas;
			_canvas.AddChild(component._widget);
		}

        /*
		var ch = @:privateAccess component._children;
		if (ch != null)
		{
			for (c in ch)
			{
				addComponent(c);
			}
		}
        */
	}

	function handleSetComponentIndex (child:Component, index:Int)
	{
	}

	function hideDialog (dialog:Dialog) : Bool
	{
		return true;
	}

	function mapEvent (type:String, listener:UIEvent->Void)
	{
		haxe.ui.backend.xwt.EventMapper.mapEvent(_canvas, type, listener);
	}

	function messageDialog (message:String, title:String=null, options:Dynamic=null, callback:DialogButton->Void=null) : Dialog
	{
		return null;
	}

	function removeComponent (component:Component)
	{
		if (component._widget != null)
		{
			_canvas.RemoveChild(component._widget);
		}

		var ch = @:privateAccess component._children;
		if (ch != null)
		{
			for (c in ch)
			{
				addComponent(c);
			}
		}
	}

	function showDialog (content:Component, options:Dynamic=null, callback:DialogButton->Void=null) : Dialog
	{
		return null;
	}

	function supportsEvent (type:String) : Bool
	{
		return false;
	}

	function unmapEvent (type:String, listener:UIEvent->Void)
	{
	}
}
