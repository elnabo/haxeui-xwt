<p align="center">
	<img src="https://dl.dropboxusercontent.com/u/26678671/haxeui2-warning.png"/>
</p>

[![Support this project on Patreon](https://dl.dropboxusercontent.com/u/26678671/patreon_button.png)](https://www.patreon.com/haxeui)
[![Code Climate](https://codeclimate.com/github/haxeui/haxeui-xwt/badges/gpa.svg)](https://codeclimate.com/github/haxeui/haxeui-xwt)
[![Issue Count](https://codeclimate.com/github/haxeui/haxeui-xwt/badges/issue_count.svg)](https://codeclimate.com/github/haxeui/haxeui-xwt)

<h2>haxeui-xwt</h2>
`haxeui-xwt` is the `Xwt` backend for HaxeUI.

<p align="center">
	<img src="https://github.com/haxeui/haxeui-xwt/raw/master/screen.png" />
</p>

<h2>Installation</h2>
* `haxeui-xwt` has a dependency to <a href="https://github.com/haxeui/haxeui-core">`haxeui-core`</a>, and so that too must be installed.
* You will also need a copy of the `Xwt` libraries which can be obtained <a href="https://github.com/mono/xwt">here</a>. The easiest way to install and setup the libraries is to follow the instructions <a href="https://github.com/mono/xwt">here</a>.

Eventually all these libs will become haxelibs, however, currently in their alpha form they do not even contain a `haxelib.json` file (for dependencies, etc) and therefore can only be used by downloading the source and using the `haxelib dev` command or by directly using the git versions using the `haxelib git` command (recommended). Eg:

```
haxelib git haxeui-core https://github.com/haxeui/haxeui-core
haxelib dev haxeui-xwt path/to/expanded/source/archive
```

You will need to place a copy of your `Xwt.dll` inside the `dlls/` folder.

<h2>Usage</h2>
The simplest method to create a new `Xwt` application that is HaxeUI ready is to use one of the <a href="https://github.com/haxeui/haxeui-templates">haxeui-templates</a>. These templates will allow you to start a new project rapidly with HaxeUI support baked in. 

<h3>Toolkit initialisation and usage</h3>
Initialising the toolkit requires you to add this two lines somewhere _before_ you start to actually use HaxeUI in your application:

```haxe
Toolkit.theme = "native";
Toolkit.init();
```

Once the toolkit is initialised you can add components using the methods specified <a href="https://github.com/haxeui/haxeui-core#adding-components-using-haxe-code">here</a>.

<h2>Addtional resources</h2>
* <a href="http://haxeui.github.io/haxeui-api/">haxeui-api</a> - The HaxeUI api docs.
* <a href="https://github.com/haxeui/haxeui-guides">haxeui-guides</a> - Set of guides to working with HaxeUI and backends.
* <a href="https://github.com/haxeui/haxeui-demo">haxeui-demo</a> - Demo application written using HaxeUI.
* <a href="https://github.com/haxeui/haxeui-templates">haxeui-templates</a> - Set of templates for IDE's to allow quick project creation.
* <a href="https://github.com/haxeui/haxeui-bdd">haxeui-bdd</a> - A behaviour driven development engine written specifically for HaxeUI (uses <a href="https://github.com/haxeui/haxe-bdd">haxe-bdd</a> which is a gherkin/cucumber inspired project).
* <a href="https://www.youtube.com/watch?v=L8J8qrR2VSg&feature=youtu.be">WWX2016 presentation</a> - A presentation given at WWX2016 regarding HaxeUI.
