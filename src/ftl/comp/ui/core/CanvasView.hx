package ftl.comp.ui.core;

import haxe.ui.core.Component;
import ftl.comp.ui.GraphicsBase;

class CanvasView extends Component {

    var _graphics:Graphics;

	public function new() {
	    super();
		_graphics = new GraphicsBase(this);
	}

	public function line(x1, y1, x2, y2) {
		_graphics.getContext2D().line(x1, y1, x2, y2);
	}
}