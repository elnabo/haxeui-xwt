package haxe.ui.backend;

import haxe.ui.Toolkit;
import haxe.ui.core.Screen;

class AppBase
{
	var _onEnd : Void->Void;
	var _window : xwt.Window;
	var _canvas : xwt.Canvas;

	function new ()
	{
	}

	function build ()
	{
		var windows = Sys.systemName().indexOf("Windows") > -1;
		var mac = Sys.systemName().indexOf("Mac") > -1;

		xwt.Application.Initialize(if (windows) xwt.ToolkitType.Wpf else if (mac) xwt.ToolkitType.Cocoa else xwt.ToolkitType.Gtk3);

		_window = new xwt.Window();
		_canvas = new xwt.Canvas();
		_window.Content = _canvas;

		_canvas.add_MouseMoved(function (_, mouseEvent:xwt.MouseMovedEventArgs) {
			Screen.instance._mouseX = mouseEvent.X;
			Screen.instance._mouseY = mouseEvent.Y;
		});
	}

	function getToolkitInit () : Dynamic
	{
		return {
			window: _window,
			canvas: _canvas
		};
	}

	function init (onReady:Void->Void, onEnd:Void->Void=null)
	{
		_onEnd = onEnd;

		_window.add_Closed(function (_, _) {
			stop();
		});

		onReady();
	}

	public function start ()
	{
		var width = 0.0;
		var height = 0.0;
		var iter = _canvas.Children.GetEnumerator();

		while ({ iter.MoveNext(); iter.Current != null; })
		{
			var r = _canvas.GetChildBounds(iter.Current);
			width = Math.max(width, r.X + r.Width);
			height = Math.max(height, r.Y + r.Height);
		}

		_window.Size = new xwt.Size(width + _window.PaddingLeft + _window.PaddingRight, height + _window.PaddingTop + _window.PaddingBottom);
		_window.InitialLocation = CenterScreen;
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
