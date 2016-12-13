package haxe.ui.backend;

import haxe.ui.assets.ImageInfo;

class ImageDisplayBase
{
    @:isVar public var imageInfo(get, set) : ImageInfo;
    @:isVar public var imageHeight(get, set) : Float;
    @:isVar public var imageWidth(get, set) : Float;
    @:isVar public var left(get, set) : Float;
    @:isVar public var top(get, set) : Float;

    function get_imageInfo () : ImageInfo
    {
        return imageInfo;
    }

    function get_imageHeight () : Float
    {
        return imageHeight;
    }

    function get_imageWidth () : Float
    {
        return imageWidth;
    }

    function get_left () : Float
    {
        return left;
    }

    function get_top () : Float
    {
        return top;
    }

    function set_imageInfo (value:ImageInfo) : ImageInfo
    {
        return imageInfo = value;
    }

    function set_imageHeight (value:Float) : Float
    {
        if (value <= 0)
        {
            return imageHeight;
        }

        return imageHeight = value;
    }

    function set_imageWidth (value:Float) : Float
    {
        if (value <= 0)
        {
            return imageWidth;
        }

        return imageWidth = value;
    }

    function set_left (value:Float) : Float
    {
        return left = value;
    }

    function set_top (value:Float) : Float
    {
        return top = value;
    }

    function new ()
    {
        imageHeight = 0;
        imageWidth = 0;
        left = 0;
        top = 0;
    }
}
