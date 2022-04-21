package ;

import haxe.ui.backend.ToolkitOptions;
import haxe.ui.Toolkit;
import haxe.ui.HaxeUIApp;
import js.Browser;

class Main
{
    public static function main()
    {
#if _OPENFL_
        var app = new HaxeUIApp();
#else
        //Toolkit.init({container: Browser.document.getElementById('d3')});

        var app = new HaxeUIApp({container: Browser.document.getElementById('d3')});
#end
        app.ready(function() {
            app.addComponent(new MainView());

            app.start();
        });
        
    }
}
