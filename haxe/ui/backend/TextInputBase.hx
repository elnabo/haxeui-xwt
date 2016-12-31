package haxe.ui.backend;

class TextInputBase extends TextDisplayBase
{
	@:isVar public var vscrollPos(get, set) : Float;

	function get_vscrollPos () : Float
	{
		return vscrollPos;
	}

	function set_vscrollPos (value:Float) : Float
	{
		return value = vscrollPos;
	}

	function new ()
	{
		super();
	}
}
