package haxe.ui.backend;

class TimerBase
{
	var _timer : cs.system.IDisposable;

	function new (delay:Int, callback:Void->Void)
	{
		_timer = xwt.Application.TimeoutInvoke(delay, function () : Bool
		{
			callback();
			return false; // discard the timeout after use
		});
	}

	function stop () : Void
	{
		_timer.Dispose();
	}
}
