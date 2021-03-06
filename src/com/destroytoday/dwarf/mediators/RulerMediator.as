package com.destroytoday.dwarf.mediators {
	import com.destroytoday.desktop.NativeMenuPlus;
	import com.destroytoday.dwarf.assets.Color;
	import com.destroytoday.dwarf.controllers.ToolController;
	import com.destroytoday.dwarf.desktop.RulerMenu;
	import com.destroytoday.dwarf.mediators.base.ToolMediator;
	import com.destroytoday.dwarf.models.ToolModel;
	import com.destroytoday.dwarf.views.base.ToolView;
	import com.destroytoday.dwarf.views.ruler.RulerView;
	import com.destroytoday.util.ApplicationUtil;
	
	import flash.desktop.NativeApplication;
	import flash.events.ContextMenuEvent;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;
	
	import org.robotlegs.mvcs.Mediator;

	/**
	 * The RulerMediator.
	 * @author Jonnie Hallman
	 */	
	public class RulerMediator extends ToolMediator {
		/**
		 * @private 
		 */		
		[Inject]
		public var rulerMenu:RulerMenu;
		
		/**
		 * @private 
		 */		
		[Inject]
		public var view:RulerView;
		
		/**
		 * Constructs the RulerMediator instance.
		 */		
		public function RulerMediator() {
		}
		
		/**
		 * @private
		 * @return 
		 */		
		override protected function get tool():ToolView {
			return view;
		}
		
		/**
		 * @private 
		 * @return 
		 */		
		override protected function get menu():NativeMenuPlus {
			return rulerMenu;
		}
	}
}