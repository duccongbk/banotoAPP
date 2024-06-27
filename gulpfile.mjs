import gulp from 'gulp';
import babel from 'gulp-babel';
import concat from 'gulp-concat';
import rename from 'gulp-rename';
import htmlmin from 'gulp-htmlmin';
import cleanCSS from 'gulp-clean-css';

const paths = {
  html: {
    src: 'src/html/*.html',
    dest: 'dist/'
  },
  styles: {
    src: 'src/css/*.css',
    dest: 'dist/css/'
  },
  scripts: {
    src: 'src/js/*.js',
    dest: 'dist/js/'
  }
};

export function processCSS() {
  return gulp.src(paths.styles.src)
    .pipe(cleanCSS())
    .pipe(rename({ suffix: '.min' }))
    .pipe(gulp.dest(paths.styles.dest));
}

export function processJS() {
  return gulp.src(paths.scripts.src)
    .pipe(babel({
      presets: ['@babel/preset-env']
    }))
    .pipe(rename({ suffix: '.min' })) // Rename each file with a .min suffix
    .pipe(gulp.dest(paths.scripts.dest));
}

export function processHTML() {
  return gulp.src(paths.html.src)
    .pipe(htmlmin({ collapseWhitespace: true }))
    .pipe(rename((path) => {
      if (path.basename === 'home') {
        path.basename = 'index';
      }
    }))
    .pipe(gulp.dest(paths.html.dest));
}

export default gulp.parallel(processCSS, processJS, processHTML);
