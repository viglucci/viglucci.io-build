var gulp        = require("gulp");
var dir         = require("require-dir");

dir("./gulp/tasks", { recurse: true });

/**
 * Default task, running just `gulp` will compile the sass,
 * compile the jekyll site, launch BrowserSync & watch files.
 */
gulp.task("default", ["build:js", "build:stylus", "watch:browser-sync", "watch"]);

