import coconut.feathersui.Renderer;
import feathers.controls.Application;

class Main extends Application {
	public function new() {
		super();

		Renderer.mount(this, '<LoginForm onSubmit={this.onSubmit}/>');
	}

	private function onSubmit(userName:String, password:String):Void {
		trace('user name: ${userName}, password: ${password}');
	}
}
