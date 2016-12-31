package haxe.ui.backend;

import haxe.ui.core.UIEvent;

class EventBase
{
	public function new ()
	{
	}

	public function cancel () : Void
	{
	}

	function postClone (event:UIEvent) : Void
	{
	}
}
