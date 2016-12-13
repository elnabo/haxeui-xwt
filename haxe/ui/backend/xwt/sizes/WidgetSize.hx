package haxe.ui.backend.xwt.sizes;

import haxe.ui.layouts.DelegateLayout.DelegateLayoutSize;

class WidgetSize extends DelegateLayoutSize
{
    override function get_height () : Float
    {
        return component._widget.Surface.GetPreferredSize(xwt.SizeConstraint.Unconstrained, xwt.SizeConstraint.Unconstrained, false).Height;
    }

    override function get_width () : Float
    {
        return component._widget.Surface.GetPreferredSize(xwt.SizeConstraint.Unconstrained, xwt.SizeConstraint.Unconstrained, false).Width;
    }
}
