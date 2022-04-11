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
    
    public function new(componenet:Component) 
    {
        super();
        _parent = componenet;
    }

    @:bind(btn_del, MouseEvent.CLICK)
    private function onMyButton(e:MouseEvent) 
    {
        _parent.removeComponent(this, true, false);
        _parent.invalidateComponentLayout();
    }
}