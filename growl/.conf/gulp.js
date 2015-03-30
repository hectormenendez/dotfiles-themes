'use strict';

const Path  = require('path');

const Del      = require('del');
const Slug     = require('slugify');
const Through  = require('through2');
const Lodash   = require('lodash');
const Accord   = require('accord');
const Gulp     = require('gulp');
const GulpLint = require('gulp-eslint');

const Package = require('../package.json');
const Action  = { styl:Accord.load('stylus'), jade:Accord.load('jade') };

const Dir = {};
Dir.root  = Path.resolve(Path.join(__dirname, '..'));
Dir.src   = Path.join(Dir.root, 'src');
Dir.build = Path.join(Dir.root, Slug(Package.name) + '.growlStyle');

const Route = {};
Route[Path.join(Dir.src, 'info.jade')]     = Path.join(Dir.build, 'Contents', 'Info.plist');
Route[Path.join(Dir.src, 'template.jade')] = Path.join(Dir.build, 'Contents', 'Resources', 'template.html');
Route[Path.join(Dir.src, 'template.styl')] = Path.join(Dir.build, 'Contents', 'Resources', 'template.css');


Gulp.task('clean', function(callback){
	Del(['*.growlStyle'], callback);
});

Gulp.task('lint-self', ()=>
	Gulp.src(__filename)
		.pipe(GulpLint({ useEslintrc : true }))
		.pipe(GulpLint.format())
		.pipe(GulpLint.failOnError())
);

Gulp.task('default', ['lint-self', 'clean'], ()=> Gulp.src(Path.join(Dir.src, '**/*'))
	.pipe(Through.obj(function(file, encoding, cback){
		if (!file.isBuffer()) return cback(null, file);
		var type = Path.extname(file.path).slice(1);
		Action[type].render(Lodash.template(file.contents.toString(encoding))(Package))
		.then(function(res){
			file.contents = new Buffer(res.result);
			file.path = Route[file.path];
			cback(null, file);
		});
	}))
	.pipe(Gulp.dest('meh')) // just save to whatever path the file has.
);
