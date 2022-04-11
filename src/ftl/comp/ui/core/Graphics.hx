package ftl.comp.ui.core;

import ftl.comp.ui.GraphicsBase;
import haxe.ui.core.Component;

interface Graphics
{
    public function getContext2D():Graphics2DContext;
}

