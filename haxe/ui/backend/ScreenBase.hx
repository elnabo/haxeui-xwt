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

	function get_dpi () : Float
	{
		return 72.0;
	}

	function get_height () : Float
	{
		return 0.0;
	}

	function get_width () : Float
	{
		return 0.0;
	}

	function new ()
	{
	}

	function addComponent (component:Component)
	{
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
