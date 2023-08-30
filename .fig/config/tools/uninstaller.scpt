JsOsaDAS1.001.00bplist00�Vscript_�ObjC.import('Foundation')


var args = $.NSProcessInfo.processInfo.arguments
var argv = []
var argc = args.count
for (var i = 0; i < argc; i++) {
    console.log($(args.objectAtIndex(i)).js)       // print each argument
    argv.push(ObjC.unwrap(args.objectAtIndex(i)))  // collect arguments
}

var app = Application.currentApplication()
app.includeStandardAdditions = true

var path = Path(`/Users/${app.systemInfo().shortUserName}/.Trash/Fig.app`);

var finderApp = Application("Finder");

if (finderApp.exists(path)) {

	let source = `/Users/${app.systemInfo().shortUserName}/.Trash/Fig.app`
	let destination	= argv[2]
	if (destination) {
		app.doShellScript(`mv "${source}" "${destination}"`);
	}  
	app.displayDialog("To ensure that Fig is uninstalled correctly, please use the built-in uninstaller.\n\nRun `fig app uninstall`", { buttons: ['OK'],
						  defaultButton: 'OK',
						  withTitle: "Uninstalling Fig?" })
	
}                              � jscr  ��ޭ