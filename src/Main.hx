package ;

import haxe.ui.backend.ToolkitOptions;
import haxe.ui.Toolkit;
import haxe.ui.HaxeUIApp;
import js.Browser;

class Main
{
    public static function main()
    {
        //Toolkit.backendProperties.setProp("haxe.ui.html5.container", "d3");

        var app = new HaxeUIApp({container: Browser.document.getElementById('d3')});
        app.ready(function() {
            app.addComponent(new MainView());

            app.start();
        });
    }
}
