package ftl.comp.ui;

import haxe.ui.core.Component;
import js.html.Console;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import js.Browser;
import ftl.comp.ui.core.Graphics2DContext;
import ftl.comp.ui.core.Graphics;

class GraphicsBase implements Graphics
{
    var _component:Component;
    var _canvas:CanvasElement;

	public function new(component:Component) {
		_component = component;
		_canvas = Browser.document.createCanvasElement();
		_component.element.appendChild(_canvas);
	}

	public function getBackendContext2D():CanvasRenderingContext2D {
        return _canvas.getContext("2d");
	}

	public function getContext2D():Graphics2DContext
	{
	    return new Graphics2DBaseContext(getBackendContext2D());
	}
}
