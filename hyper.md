# Hyper.md

My configs for [Hyper](https://hyper.is/), both for Windows and MacOS.

## Windows:

```js
module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 11,

    // font family with optional fallbacks
    fontFamily: '"Roboto Mono", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'UNDERLINE',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000', 

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    //termCSS: '.cursor-node{height:14px !important}',

    // set to `true` if you're using a Linux set up
    // that doesn't shows native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    
    // uncomment for the default colors.
/**//*
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

/**/    
/*  Ocean16 theme - does not change the background color! 
    colors: {
      black             : '#303845',
      red               : '#E39194',
      green             : '#8FCA9A',
      yellow            : '#F7EFAE',
      blue              : '#77ABE7',
      magenta           : '#CAA6EC',
      cyan              : '#A2C6EF',
      white             : '#D0D4E6',
      lightBlack        : '#515A6F',
      lightRed          : '#E39194',
      lightGreen        : '#8FCA9A',
      lightYellow       : '#EFAA8E',
      lightBlue         : '#77ABE7',
      lightMagenta      : '#CAA6EC',
      lightCyan         : '#A2C6EF',
      lightWhite        : '#303845'
    },

/**/
    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: 'C:\\Program Files\\Git\\git-cmd.exe',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    // shellArgs: ['--login'],
    shellArgs: ['--command=usr/bin/bash.exe', '-l', '-i'], // non-default shell only.

    // for environment variables
    env: {},

    // set to false for no bell
    bell: false/*'SOUND'*/,

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`

  // 'hyperterm-base16-tomorrow-dark'
  // 'hyperterm-tomorrow-night'
  // 'hyperterm-material-spacegray'
  // 'hyper-material-theme'
  // 'hyper-material-vibrancy'
  // 'hyper-atom-dark-transparent'
  // 'hyper-peacock'
  // 'hyperatompunk' - insanely cool but slow as fk
  // 'hyper-ayu'
  // 'hyperminimal
  // 'hyper-aurora'
  plugins: [
    /*'hyper-material-box',*/
    // 'hyperterm-material-spacegray',
    /*'hyperminimal',*/
    // 'hyper-tabs-enhanced'
    // 'verminal'
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
```

## MacOS:

```js

```
