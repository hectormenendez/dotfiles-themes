'use strict';

const PATH          = require('path');
const Del           = require('del');
const Slug          = require('slugify');
const Through       = require('through2');
const Lodash        = require('lodash');
const Accord        = require('accord');
const Gulp          = require('gulp');
const {XmlEntities} = require('html-entities');
const Package       = require('./package.json');

const Action = { styl:Accord.load('stylus'), jade:Accord.load('jade') };

for (let key in Package){
    if (typeof Package[key] !== 'string') delete Package[key];
    else Package[key] = (new XmlEntities()).encode(Package[key]);
}

const Dir = {};
Dir.root  = __dirname;
Dir.src   = PATH.join(Dir.root, 'src');
Dir.build = PATH.join(Dir.root, Slug(Package.name) + '.growlStyle');

const Route = {};
Route[PATH.join(Dir.src, 'info.jade')]     = PATH.join(Dir.build, 'Contents', 'Info.plist');
Route[PATH.join(Dir.src, 'template.jade')] = PATH.join(Dir.build, 'Contents', 'Resources', 'template.html');
Route[PATH.join(Dir.src, 'template.styl')] = PATH.join(Dir.build, 'Contents', 'Resources', 'template.css');


Gulp.task('clean', function(callback){
    Del(['*.growlStyle'], callback);
});

Gulp.task('build', ()=> Gulp
    .src(PATH.join(Dir.src, '**/*'))
    .pipe(Through.obj(function(file, encoding, cback){
        if (!file.isBuffer()) return cback(null, file);
        var type = PATH.extname(file.path).slice(1);
        Action[type].render(
            Lodash.template(file.contents.toString(encoding))(Package),
            { pretty:true }
        )
        .then(function(res){
            file.contents = new Buffer(res.result);
            file.path = Route[file.path];
            cback(null, file);
        });
    }))
    .pipe(Gulp.dest('meh')) // just save to whatever path the file has.
)
