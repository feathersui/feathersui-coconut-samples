import coconut.feathersui.View;
import feathers.controls.Button;
import feathers.controls.Label;
import feathers.controls.LayoutGroup;
import feathers.controls.TextInput;
import feathers.events.TriggerEvent;
import feathers.layout.VerticalLayout;
import openfl.events.Event;

class LoginForm extends View {
	@:attribute function onSubmit(userName:String, password:String):Void;

	@:state var userName:String = "";
	@:state var password:String = "";

	public function render() {
		var layout = new VerticalLayout();
		layout.paddingTop = 20.0;
		layout.paddingRight = 20.0;
		layout.paddingBottom = 20.0;
		layout.paddingLeft = 20.0;
		layout.gap = 10.0;

		return hxx('
		<LayoutGroup layout=${layout}>
			<Label text="User Name"/>
			<TextInput text=${userName} onChange=${userName = cast(event.currentTarget, TextInput).text}/>
			<Label text="Password"/>
			<TextInput text=${password} displayAsPassword=${true} onChange=${password = cast(event.currentTarget, TextInput).text}/>
			<Button text="Login" onClick=${submitButton_onTrigger(cast event)}/>
		</LayoutGroup>
		');
	}

	private function submitButton_onTrigger(event:TriggerEvent):Void {
		var submittedUserName = this.userName;
		var submittedPassword = this.password;
		this.userName = "";
		this.password = "";
		if (this.onSubmit != null) {
			this.onSubmit(submittedUserName, submittedPassword);
		}
	}
}
