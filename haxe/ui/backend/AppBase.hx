package haxe.ui.backend;

import haxe.ui.Toolkit;

class AppBase
{
	var _onEnd : Void->Void;
	var _window : xwt.Window;

	function new ()
	{
	}

	function build ()
	{
		var windows = Sys.systemName().indexOf("Windows") > -1;
		var mac = Sys.systemName().indexOf("Mac") > -1;

		xwt.Application.Initialize(if (windows) xwt.ToolkitType.Wpf else if (mac) xwt.ToolkitType.Cocoa else xwt.ToolkitType.Gtk3);

		_window = new xwt.Window();
	}

	function getToolkitInit () : Dynamic
	{
		return {
			window: _window
		};
	}

	function init (onReady:Void->Void, onEnd:Void->Void=null)
	{
		_onEnd = onEnd;

		var frameWidth = 800;
		var frameHeight = 600;

		_window.Size = new xwt.Size(frameWidth, frameHeight);
		_window.InitialLocation = CenterScreen;

		_window.add_Closed(function (_, _) { stop(); });

		onReady();
	}

	public function start ()
	{
		_window.Show();
		xwt.Application.Run();
		stop();
	}

	function stop ()
	{
		_window.Dispose();
		xwt.Application.Exit();

		if (_onEnd != null)
		{
			_onEnd();
		}
	}
}
