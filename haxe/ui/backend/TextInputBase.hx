package haxe.ui.backend;

class TextInputBase extends TextDisplayBase
{
	public var vscrollPos(get, set) : Float;

	function get_vscrollPos () : Float
	{
		return 0.0;
	}

	function set_vscrollPos (value:Float) : Float
	{
		return value;
	}

	function new ()
	{
		super();
	}
}
