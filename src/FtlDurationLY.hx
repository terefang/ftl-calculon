package ;

import haxe.ui.components.DropDown.DropDownBuilder;
import haxe.ui.components.DropDown.DropDownEvents;
import haxe.ui.components.DropDown.DropDownHandler;
import haxe.ui.core.Component;
import haxe.ui.core.Screen;
import haxe.ui.events.UIEvent;
import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.ComponentBuilder.build("assets/ftl/duration.xml"))
class FtlDurationLY extends VBox {
    public function new() {
        super();
        this.autoHeight = true;
        this.percentHeight = null;
    }

    @:bind(btn_1, MouseEvent.CLICK)
    private function onMyButton1(e:MouseEvent) {
        paths.addComponent(new FtlDurationLYItem(this));
    }

    @:bind(btn_2, MouseEvent.CLICK)
    private function onMyButton2(e:MouseEvent) {
        paths.removeAllComponents();
    }

    @:bind(btn_calc, MouseEvent.CLICK)
    private function onButtonCalc(e:MouseEvent)
    {
    }
}