Gulpify project
=======
This is a simple web project that use Gulp for precompile all assets:

- Slim with include
- SCSS with [Autoprefixer](https://github.com/postcss/autoprefixer-core)
- CoffeeScript
- Optimize images
- Generate sprites from images folder
- Generate WebFont from folder of SVG files
- Organize folder structure (copying fonts, sounds etc)

## Main features

- **Easy installation** and ready to work after 3 commands
- **CoffeeScript based** Gulpfile 
- **Useful Gulpfiles structure** with tasks, utils etc
- Full **bower support** (Automatic concat and optimize bower components from bower.js)
- **BrowserSync** support with *.xip.io external link (no need Chrome extension)
- **Service tasks:**
  - **block** - creates block in slim and scss folders and append includes in index files
 
## Requirements
- *nix like OS (Mac OS is recommended)
- **Homebrew** (Mac OS) or your operating system **package manager**
- **node.js** as main engine
- **npm** as node.js package manager

----

## Installation (Mac OS)
### Node.js
`brew install node`
### Node Package Manager (NPM)
*Note: strongly unrecommended to install NPM via Homebrew, because there may be problems with access permissions*

`curl -L https://npmjs.com/install.sh | sh`
### Clone Git project
`git clone https://github.com/fishtag/gulpify.git`

### Install required NPM packages
`npm install`

### Install required Ruby gems
`gem install slim compass`

## Start gulp
*Note: Use Webstorm 9 Gulp support or start process from your Terminal with this command:*

`gulp`

----
# Additional information
## Bower components installation
All bower components automatically concatenates into one file libraries.js. Gulp get main file of each component by its 'main' attribute in bower.json. So if you want automatically attach new component to your project you shoud do it with this command:

`bower install backbone --save`

*Important! Gulp does not find your component without node in bower.json. Flag **--save** means that the information about the component will be included in the main bower.json file.*

----

# Service tasks
## block
This task creates block in your app/slim and scss/includes folders and append include directives to index.slim and applications.scss files. To create new block run this command in your terminal:

`gulp block --name=%your-block-name%`

----

# Upcoming features

- Favicon generation for all devices
- Check npm packages installation status
- Production mode with uglify support
