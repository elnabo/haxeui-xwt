package haxe.ui.backend;

class TextDisplayBase
{
	public var color(get, set) : Int;
	public var fontName(get, set) : String;
	public var fontSize(get, set) : Null<Float>;
	public var left(get, set) : Float;
	public var text(get, set) : String;
	public var textHeight(get, null) : Float;
	public var textWidth(get, null) : Float;
	public var top(get, set) : Float;
	public var width(get, set) : Float;

	function get_color () : Int
	{
		return 0;
	}

	function get_fontName () : String
	{
		return null;
	}

	function get_fontSize () : Null<Float>
	{
		return null;
	}

	function get_left () : Float
	{
		return 0.0;
	}

	function get_text () : String
	{
		return null;
	}

	function get_textHeight () : Float
	{
		return 0.0;
	}

	function get_top () : Float
	{
		return 0.0;
	}

	function get_textWidth () : Float
	{
		return 0.0;
	}

	function get_width () : Float
	{
		return 0.0;
	}

	function set_color (value:Int) : Int
	{
		return value;
	}

	function set_fontName (value:String) : String
	{
		return value;
	}

	function set_fontSize (value:Null<Float>) : Null<Float>
	{
		return value;
	}

	function set_left (value:Float) : Float
	{
		return value;
	}

	function set_text (value:String) : String
	{
		return value;
	}

	function set_textHeight (value:Float) : Float
	{
		return value;
	}

	function set_top (value:Float) : Float
	{
		return value;
	}

	function set_textWidth (value:Float) : Float
	{
		return value;
	}

	function set_width (value:Float) : Float
	{
		return value;
	}

	function new ()
	{
	}
}
