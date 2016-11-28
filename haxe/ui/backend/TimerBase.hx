package haxe.ui.backend;

class TimerBase
{
	function new (delay:Int, callback:Void->Void)
	{
		callback();
	}

	function stop ()
	{
	}
}
