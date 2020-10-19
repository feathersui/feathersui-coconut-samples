# Coconut Samples for Feathers UI

Sample projects using [Feathers UI](https://feathersui.com/) and [Coconut](https://lib.haxe.org/p/coconut.ui).

## Quick Start

Add the [coconut.feathersui](https://lib.haxe.org/p/coconut.feathersui) backend to your [_project.xml_ file](https://lime.software/docs/project-files/xml-format/).

```xml
<haxelib name="coconut.feathersui"/>
```

Import `coconut.feathersui.Renderer`, and call `Renderer.mount()`:

```hx
Renderer.mount(this, '<Label text="Hello World"/>');
```