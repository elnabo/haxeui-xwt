package haxe.ui.backend;

class AppBase
{
	function new ()
	{
	}

	function build ()
	{
	}

	function getToolkitInit () : Dynamic
	{
		return {};
	}

	function init (onReady:Void->Void, onEnd:Void->Void=null)
	{
		onReady();
	}

	public function start ()
	{
	}
}
