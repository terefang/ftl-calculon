package ftl.comp.ui;

import haxe.ui.core.Component;
import js.html.Console;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import js.Browser;
import ftl.comp.ui.core.Graphics2DContext;

class Graphics2DBaseContext implements Graphics2DContext {
    var _ctx:CanvasRenderingContext2D;

	public function new(ctx:CanvasRenderingContext2D) {
		_ctx = ctx;
	}

	public function line(x1, y1, x2, y2)
	{
		_ctx.beginPath();
		_ctx.moveTo(x1, y1);
		_ctx.lineTo(x2, y2);
		_ctx.stroke();
	}

}