![Alpha warning](http://haxeui.org/db/haxeui2-warning.png)

[![Build Status](https://travis-ci.org/haxeui/haxeui-xwt.svg?branch=master)](https://travis-ci.org/haxeui/haxeui-xwt)
[![Build status](https://ci.appveyor.com/api/projects/status/2phv2o2wg8md1ygo/branch/master?svg=true)](https://ci.appveyor.com/project/ibilon/haxeui-xwt/branch/master)
[![Code Climate](https://codeclimate.com/github/haxeui/haxeui-xwt/badges/gpa.svg)](https://codeclimate.com/github/haxeui/haxeui-xwt)
[![Issue Count](https://codeclimate.com/github/haxeui/haxeui-xwt/badges/issue_count.svg)](https://codeclimate.com/github/haxeui/haxeui-xwt)
[![Support this project on Patreon](http://haxeui.org/db/patreon_button.png)](https://www.patreon.com/haxeui)

# haxeui-xwt

`haxeui-xwt` is the `Xwt` backend for HaxeUI.

![Sample window](https://github.com/haxeui/haxeui-xwt/raw/master/screen.png)

## Installation

* `haxeui-xwt` has a dependency to [`haxeui-core`](https://github.com/haxeui/haxeui-core), and so that too must be installed.

Eventually all these libs will become haxelibs, however, currently in their alpha form they do not even contain a `haxelib.json` file
(for dependencies, etc) and therefore can only be used by downloading the source and using the `haxelib dev` command or by directly
using the git versions using the `haxelib git` command (recommended). Eg:

```
haxelib git haxeui-core https://github.com/haxeui/haxeui-core
haxelib dev haxeui-xwt path/to/expanded/source/archive
```

You can find the required dlls in the `dlls/` folder, see `dlls/README.md` for license information and instructions on how to rebuild them yourself.

## Usage

The simplest method to create a new `Xwt` application that is HaxeUI ready is to use one of the
[`haxeui-template`](https://github.com/haxeui/haxeui-templates). These templates will allow you
to start a new project rapidly with HaxeUI support baked in.

### Toolkit initialisation and usage

Initialising the toolkit requires you to add this line somewhere _before_ you start to actually use HaxeUI in your application:

```haxe
Toolkit.init();
```

Once the toolkit is initialised you can add components using the methods specified
[here](https://github.com/haxeui/haxeui-core#adding-components-using-haxe-code).

## Addtional resources

* [`haxeui-api`](http://haxeui.github.io/haxeui-api/) - The HaxeUI api docs.
* [`haxeui-guides`](https://github.com/haxeui/haxeui-guides) - Set of guides to working with HaxeUI and backends.
* [`haxeui-demo`](https://github.com/haxeui/haxeui-demo) - Demo application written using HaxeUI.
* [`haxeui-templates`](https://github.com/haxeui/haxeui-templates) - Set of templates for IDE's to allow quick project creation.
* [`haxeui-bdd`](https://github.com/haxeui/haxeui-bdd) - A behaviour driven development engine written specifically for HaxeUI
  (uses [`haxe-bdd`](https://github.com/haxeui/haxe-bdd) which is a gherkin/cucumber inspired project).
* [WWX2016 presentation](https://www.youtube.com/watch?v=L8J8qrR2VSg&feature=youtu.be) - A presentation given at WWX2016 regarding HaxeUI.
