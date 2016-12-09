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

	function get__window () : xwt.Window
	{
		return options.window;
	}

	function new ()
	{
	}

	function addComponent (component:Component)
	{
		_window.Content = component._widget;
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
	}

	function messageDialog (message:String, title:String=null, options:Dynamic=null, callback:DialogButton->Void=null) : Dialog
	{
		return null;
	}

	function removeComponent (component:Component)
	{
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
