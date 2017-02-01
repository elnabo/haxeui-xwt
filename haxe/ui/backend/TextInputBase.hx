package haxe.ui.backend;

class TextInputBase extends TextDisplayBase
{
	public var hscrollPos : Float;
	public var password : Bool;
	@:isVar public var vscrollPos(get, set) : Float;
	public var wordWrap : Bool;

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
