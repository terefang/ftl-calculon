package ;

import haxe.ui.containers.VBox;
import haxe.ui.containers.menus.Menu;

@:build(haxe.ui.ComponentBuilder.build("assets/main-view.xml"))
class MainView extends VBox {
    public function new() {
        super();
    }

    var _d = null;

    @:bind(ftlMenu, MenuEvent.MENU_SELECTED)
    private function onClickMenu(e:MenuEvent)
    {
        frame1.removeComponentAt(0);
        switch e.menuItem.id
        {
        case "ftl-duration":
            _d = new FtlDurationLY();
            //canvasView1.line(0,0,100,100);
        default:
            _d=null;
        }

        if(_d != null)
        {
        frame1.addComponent(_d);
        }
    }

}