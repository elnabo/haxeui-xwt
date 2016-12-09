package haxe.ui.backend;

import haxe.ui.core.Component;
import haxe.ui.core.ImageDisplay;
import haxe.ui.core.TextDisplay;
import haxe.ui.core.TextInput;
import haxe.ui.core.UIEvent;
import haxe.ui.styles.Style;
import haxe.ui.util.Rectangle;

class ComponentBase
{
	@:allow(haxe.ui.backend.ScreenBase)
	var _widget : xwt.Widget;

	function new ()
	{
	}

	function applyStyle (style:Style)
	{
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
		return null;
	}

	function handleClipRect (value:Rectangle)
	{
	}

	function handleCreate (native:Bool)
	{
		var className = Type.getClassName(Type.getClass(this));
		var nativeComponentClass = Toolkit.nativeConfig.query('component[id=${className}].@class', "Xwt.Button");

		_widget = cs.system.Activator.CreateInstance(cs.system.Type.GetType('$nativeComponentClass, Xwt'));
	}

	function handlePosition (left:Null<Float>, top:Null<Float>, style:Style)
	{
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
		return null;
	}

	function handleSetComponentIndex (child:Component, index:Int)
	{
	}

	function handleSize (width:Null<Float>, height:Null<Float>, style:Style)
	{
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
	}

	function removeImageDisplay ()
	{
	}

	function unmapEvent (type:String, listener:UIEvent->Void)
	{
	}
}
