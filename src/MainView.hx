package ;

import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;
import haxe.ui.events.UIEvent;

@:build(haxe.ui.ComponentBuilder.build("assets/main-view.xml"))
class MainView extends VBox {
    public function new() {
        super();
    }

    var _d = null;

    @:bind(calc_Selector, UIEvent.PROPERTY_CHANGE)
    private function onSelChange(e:UIEvent)
    {
        frame1.removeComponentAt(0);
        if(calc_Selector.selectedItem != null)
        {
            switch calc_Selector.selectedItem.value
            {
            case "ftl-duration":
                _d = new FtlDurationLY();
            default:
                _d=null;
            }

            if(_d != null)
            {
            frame1.addComponent(_d);
            }
        }
    }

}