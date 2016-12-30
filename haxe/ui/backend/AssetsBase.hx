package haxe.ui.backend;

import haxe.ui.assets.FontInfo;
import haxe.ui.assets.ImageInfo;

class AssetsBase
{
	function new ()
	{
	}

	function getFontInternal (resourceId:String, callback:FontInfo->Void) : Void
	{
		callback(null);
	}

	function getImageInternal (resourceId:String, callback:ImageInfo->Void) : Void
	{
		callback(null);
	}

	function getImageFromHaxeResource (resourceId:String, callback:String->ImageInfo->Void) : Void
	{
		callback(resourceId, null);
	}

	function getFontFromHaxeResource (resourceId:String, callback:String->FontInfo->Void) : Void
	{
		callback(resourceId, null);
	}

	function getTextDelegate (resourceId:String) : String
	{
		return null;
	}
}
