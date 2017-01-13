package haxe.ui.backend;

class TextInputBase extends TextDisplayBase
{
    public var password:Bool;
	
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
