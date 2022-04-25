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

		data = '{"name":null,"assets":"aoy4:pathy22:assets%2Fmain-view.xmly4:sizei614y4:typey4:TEXTy2:idR1y7:preloadtgoR0y27:assets%2Fftl%2Fduration.xmlR2i1356R3R4R5R7R6tgoR0y32:assets%2Fftl%2Fduration-item.xmlR2i1846R3R4R5R8R6tgoR0y19:assets%2Findex.htmlR2i1035R3R4R5R9R6tgoR2i2114R3y5:MUSICR5y26:flixel%2Fsounds%2Fbeep.mp3y9:pathGroupaR11y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R10R5y28:flixel%2Fsounds%2Fflixel.mp3R12aR14y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R13R12aR11R13hgoR2i33629R3R16R5R15R12aR14R15hgoR2i15744R3y4:FONTy9:classNamey35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R17R18y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3y5:IMAGER5R23R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R24R5R25R6tgoR0y43:haxeui-flixel%2Fstyles%2Fdefault%2Fmain.cssR2i168R3R4R5R26R6tgoR0y48:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fbuttons.cssR2i646R3R4R5R27R6tgoR0y51:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fcheckboxes.cssR2i802R3R4R5R28R6tgoR0y48:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fdialogs.cssR2i664R3R4R5R29R6tgoR0y50:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fdropdowns.cssR2i1001R3R4R5R30R6tgoR0y47:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fframes.cssR2i364R3R4R5R31R6tgoR0y53:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fbox.pngR2i912R3R24R5R32R6tgoR0y56:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fbutton.pngR2i247R3R24R5R33R6tgoR0y62:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fbutton_arrow.pngR2i292R3R24R5R34R6tgoR0y67:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fbutton_arrow_down.pngR2i272R3R24R5R35R6tgoR0y66:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fbutton_no_border.pngR2i251R3R24R5R36R6tgoR0y58:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fcheckbox.pngR2i164R3R24R5R37R6tgoR0y55:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fclose.pngR2i144R3R24R5R38R6tgoR0y60:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fdown_arrow.pngR2i124R3R24R5R39R6tgoR0y67:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fdown_arrow_square.pngR2i133R3R24R5R40R6tgoR0y72:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fdrop_down_propertygrid.pngR2i275R3R24R5R41R6tgoR0y58:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fdropdown.pngR2i273R3R24R5R42R6tgoR0y55:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fframe.pngR2i130R3R24R5R43R6tgoR0y65:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fhaxeflixel_tiny.pngR2i6016R3R24R5R44R6tgoR0y60:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Finset_thin.pngR2i209R3R24R5R45R6tgoR0y70:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Finset_thin_no_border.pngR2i198R3R24R5R46R6tgoR0y72:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Finset_thin_transparent.pngR2i161R3R24R5R47R6tgoR0y60:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fleft_arrow.pngR2i140R3R24R5R48R6tgoR0y54:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fmenu.pngR2i302R3R24R5R49R6tgoR0y61:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fmenu_filler.pngR2i161R3R24R5R50R6tgoR0y60:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fmenubar_bg.pngR2i157R3R24R5R51R6tgoR0y90:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fnumber_stepper_deinc_button_propertygrid.pngR2i305R3R24R5R52R6tgoR0y88:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fnumber_stepper_inc_button_propertygrid.pngR2i305R3R24R5R53R6tgoR0y59:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Foptionbox.pngR2i217R3R24R5R54R6tgoR0y61:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fright_arrow.pngR2i140R3R24R5R55R6tgoR0y68:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fright_arrow_square.pngR2i139R3R24R5R56R6tgoR0y59:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fselection.pngR2i146R3R24R5R57R6tgoR0y56:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Ftabbar.pngR2i234R3R24R5R58R6tgoR0y59:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Ftabbar_bg.pngR2i132R3R24R5R59R6tgoR0y60:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Ftabview_bg.pngR2i179R3R24R5R60R6tgoR0y61:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Ftransparent.pngR2i121R3R24R5R61R6tgoR0y65:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Ftransparent_box.pngR2i132R3R24R5R62R6tgoR0y58:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fup_arrow.pngR2i131R3R24R5R63R6tgoR0y64:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fimages%2Fup_down_arrows.pngR2i152R3R24R5R64R6tgoR0y50:haxeui-flixel%2Fstyles%2Fflixel-ui%2Flistviews.cssR2i149R3R4R5R65R6tgoR0y45:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fmain.cssR2i163R3R4R5R66R6tgoR0y46:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fmenus.cssR2i1525R3R4R5R67R6tgoR0y54:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fpropertygrids.cssR2i2128R3R4R5R68R6tgoR0y47:haxeui-flixel%2Fstyles%2Fflixel-ui%2Franges.cssR2i2010R3R4R5R69R6tgoR0y48:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fscrolls.cssR2i2606R3R4R5R70R6tgoR0y49:haxeui-flixel%2Fstyles%2Fflixel-ui%2Fsteppers.cssR2i692R3R4R5R71R6tgoR0y51:haxeui-flixel%2Fstyles%2Fflixel-ui%2Ftableviews.cssR2i167R3R4R5R72R6tgoR0y45:haxeui-flixel%2Fstyles%2Fflixel-ui%2Ftabs.cssR2i1567R3R4R5R73R6tgoR0y51:haxeui-flixel%2Fstyles%2Fflixel-ui%2Ftextfields.cssR2i583R3R4R5R74R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

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
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
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

@:keep @:file("assets/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("assets/ftl/duration.xml") @:noCompletion #if display private #end class __ASSET__assets_ftl_duration_xml extends haxe.io.Bytes {}
@:keep @:file("assets/ftl/duration-item.xml") @:noCompletion #if display private #end class __ASSET__assets_ftl_duration_item_xml extends haxe.io.Bytes {}
@:keep @:file("assets/index.html") @:noCompletion #if display private #end class __ASSET__assets_index_html extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("/u/fredo/IdeaProjects/ftl-calculon/.haxelib/flixel/4,11,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("build/flixel/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("build/flixel/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
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
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


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
