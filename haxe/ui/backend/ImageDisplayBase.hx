package haxe.ui.backend;

import haxe.ui.assets.ImageInfo;

class ImageDisplayBase
{
	public var imageInfo(get, set) : ImageInfo;
	public var imageHeight(get, set) : Float;
	public var imageWidth(get, set) : Float;
	public var left(get, set) : Float;
	public var top(get, set) : Float;

	function get_imageInfo () : ImageInfo
	{
		return null;
	}

	function get_imageHeight () : Float
	{
		return 0.0;
	}

	function get_imageWidth () : Float
	{
		return 0.0;
	}

	function get_left () : Float
	{
		return 0.0;
	}

	function get_top () : Float
	{
		return 0.0;
	}

	function set_imageInfo (value:ImageInfo) : ImageInfo
	{
		return value;
	}

	function set_imageHeight (value:Float) : Float
	{
		return value;
	}

	function set_imageWidth (value:Float) : Float
	{
		return value;
	}

	function set_left (value:Float) : Float
	{
		return value;
	}

	function set_top (value:Float) : Float
	{
		return value;
	}

	function new ()
	{
	}
}
