package haxe.ui.backend;

class TextDisplayBase
{
	@:isVar public var color(get, set) : Int;
	@:isVar public var fontName(get, set) : String;
	@:isVar public var fontSize(get, set) : Null<Float>;
	@:isVar public var height(get, set) : Float;
	@:isVar public var left(get, set) : Float;
	@:isVar public var multiline(get, set) : Bool;
	@:isVar public var text(get, set) : String;
	@:isVar public var textAlign(get, set) : String;
	@:isVar public var textHeight(get, null) : Float;
	@:isVar public var textWidth(get, null) : Float;
	@:isVar public var top(get, set) : Float;
	@:isVar public var width(get, set) : Float;

	function get_color () : Int
	{
		return color;
	}

	function get_fontName () : String
	{
		return fontName;
	}

	function get_fontSize () : Null<Float>
	{
		return fontSize;
	}

	function get_height () : Float
	{
		return height;
	}

	function get_left () : Float
	{
		return left;
	}

	function get_multiline () : Bool
	{
		return multiline;
	}

	function get_text () : String
	{
		return text;
	}

	function get_textAlign () : String
	{
		return textAlign;
	}

	function get_textHeight () : Float
	{
		return textHeight;
	}

	function get_textWidth () : Float
	{
		return textWidth;
	}

	function get_top () : Float
	{
		return top;
	}

	function get_width () : Float
	{
		return width;
	}

	function set_color (value:Int) : Int
	{
		return color = value;
	}

	function set_fontName (value:String) : String
	{
		return fontName = value;
	}

	function set_fontSize (value:Null<Float>) : Null<Float>
	{
		return fontSize = value;
	}

	function set_height (value:Float) : Float
	{
		return height = value;
	}

	function set_left (value:Float) : Float
	{
		return left = value;
	}

	function set_multiline (value:Bool) : Bool
	{
		return multiline = value;
	}

	function set_text (value:String) : String
	{
		return text = value;
	}

	function set_textAlign (value:String) : String
	{
		return textAlign = value;
	}

	function set_textHeight (value:Float) : Float
	{
		return textHeight = value;
	}

	function set_textWidth (value:Float) : Float
	{
		return textWidth = value;
	}

	function set_top (value:Float) : Float
	{
		return top = value;
	}

	function set_width (value:Float) : Float
	{
		return width = value;
	}

	function new ()
	{
	}
}
