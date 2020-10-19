import coconut.feathersui.Renderer;
import feathers.controls.Application;
import feathers.controls.Button;
import feathers.controls.TextCallout;
import feathers.events.TriggerEvent;
import feathers.layout.AnchorLayout;
import feathers.layout.AnchorLayoutData;

class Main extends Application {
	public function new() {
		super();

		this.layout = new AnchorLayout();

		Renderer.mount(this, '<Button
				ref=${button -> this.button = button}
				text="Click Me"
				layoutData=${AnchorLayoutData.center()}
				onTrigger={button_triggerHandler(cast event)}/>');
	}

	// store the button so that we can refer to it in other functions
	private var button:Button;

	private function button_triggerHandler(event:TriggerEvent):Void {
		// display a pop-up message when the button is clicked or tapped
		TextCallout.show("Hello World", this.button);
	}
}
