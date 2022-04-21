package ;

import haxe.ui.components.DropDown.DropDownBuilder;
import haxe.ui.components.DropDown.DropDownEvents;
import haxe.ui.components.DropDown.DropDownHandler;
import haxe.ui.core.Component;
import haxe.ui.core.Screen;
import haxe.ui.events.UIEvent;
import haxe.ui.containers.HBox;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.ComponentBuilder.build("assets/ftl/duration-item.xml"))
class FtlDurationLYItem extends HBox 
{
    var _parent:Component;
    
    public function new(comp:Component)
    {
        super();
        _parent = comp;
    }

    @:bind(btn_del, MouseEvent.CLICK)
    private function onMyButton(e:MouseEvent) 
    {
        _parent.removeComponent(this);
    }

    public function calcDistanceKM():Float
    {
        var _dist = distValueComp.pos;
        switch(distMetricComp.selectedItem.value)
        {
            case "km": {
                _dist *= 1000;
            }
            case "mi": {
                _dist *= 1609.34;
            }
        }
        return 0.0;
    }
}
