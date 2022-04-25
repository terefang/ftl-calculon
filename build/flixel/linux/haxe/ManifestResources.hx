package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["default"] = rootPath + "manifest/default.json";
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_ftl_duration_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_ftl_duration_item_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_index_html extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_main_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_buttons_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_checkboxes_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_dialogs_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_dropdowns_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_frames_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_button_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_button_no_border_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_checkbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_close_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_down_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_down_arrow_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_drop_down_propertygrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_dropdown_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_frame_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_haxeflixel_tiny_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_inset_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_inset_thin_no_border_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_inset_thin_transparent_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_left_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_menu_filler_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_menubar_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_number_stepper_deinc_button_propertygrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_number_stepper_inc_button_propertygrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_optionbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_right_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_right_arrow_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_selection_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_tabbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_tabbar_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_tabview_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_transparent_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_transparent_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_up_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_up_down_arrows_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_listviews_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_main_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_menus_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_propertygrids_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_ranges_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_scrolls_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_steppers_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_tableviews_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_tabs_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_textfields_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/fonts/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/fonts/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/main.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_main_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/buttons.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_buttons_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/checkboxes.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_checkboxes_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/dialogs.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_dialogs_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/dropdowns.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_dropdowns_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/frames.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_frames_css extends haxe.io.Bytes {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/box.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_box_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/button.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_button_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/button_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_button_arrow_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/button_no_border.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_button_no_border_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/checkbox.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_checkbox_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/close.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_close_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/down_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_down_arrow_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/down_arrow_square.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_down_arrow_square_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/drop_down_propertygrid.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_drop_down_propertygrid_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/dropdown.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_dropdown_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/frame.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_frame_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/haxeflixel_tiny.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_haxeflixel_tiny_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/inset_thin.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_inset_thin_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/inset_thin_no_border.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_inset_thin_no_border_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/inset_thin_transparent.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_inset_thin_transparent_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/left_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_left_arrow_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/menu.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_menu_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/menu_filler.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_menu_filler_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/menubar_bg.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_menubar_bg_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/number_stepper_deinc_button_propertygrid.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_number_stepper_deinc_button_propertygrid_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/number_stepper_inc_button_propertygrid.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_number_stepper_inc_button_propertygrid_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/optionbox.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_optionbox_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/right_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_right_arrow_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/right_arrow_square.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_right_arrow_square_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/selection.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_selection_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/tabbar.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_tabbar_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/tabbar_bg.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_tabbar_bg_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/tabview_bg.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_tabview_bg_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/transparent.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_transparent_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/transparent_box.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_transparent_box_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/up_arrow.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_up_arrow_png extends lime.graphics.Image {}
@:keep @:image("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/images/up_down_arrows.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_images_up_down_arrows_png extends lime.graphics.Image {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/listviews.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_listviews_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/main.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_main_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/menus.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_menus_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/propertygrids.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_propertygrids_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/ranges.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_ranges_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/scrolls.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_scrolls_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/steppers.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_steppers_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/tableviews.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_tableviews_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/tabs.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_tabs_css extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/flixel-ui/textfields.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_flixel_ui_textfields_css extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
