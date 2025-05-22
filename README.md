# Table of Contents

- [s-li-di, s-la-da](#s-li-di-s-la-da)
  - [Requirements](#requirements)
  - [Getting Started](#getting-started)
  - [Slide Generation](#slide-generation)
- [License](#license)

# s-li-di, s-la-da

Generate a Slidy presentation from your org file. See [HTML Slidy: Slide Shows in HTML and XHTML](https://www.w3.org/Talks/Tools/Slidy2/#(1)) (w3.org) for more information.

## Requirements

``` bash
pandoc --version
```

``` example
pandoc 3.6.4
...
```

## Getting Started

1.  Run

    ``` bash
    make init
    ```

    to see the following files created in the root directory.

    - `slidy.html`: the base Slidy template

    - `slidy.css`: the default Slidy theme

    - `slidy.js`: the Slidy script

2.  Make `slidy.html` point to the local `slidy.css` and `slidy.js` files.

    ``` diff
    @@ -20,7 +20,7 @@ $endif$
         $styles.html()$
       </style>
       <link rel="stylesheet" type="text/css" media="screen, projection, print"
    -    href="$slidy-url$/styles/slidy.css" />
    +    href="slidy.css" />
     $for(css)$
       <link rel="stylesheet" type="text/css" media="screen, projection, print"
        href="$css$" />
    @@ -31,7 +31,7 @@ $endif$
     $for(header-includes)$
       $header-includes$
     $endfor$
    -  <script src="$slidy-url$/scripts/slidy.js"
    +  <script src="slidy.js"
         charset="utf-8" type="text/javascript"></script>
     $if(duration)$
       <meta name="duration" content="$duration$" />
    ```

3.  Change `slidy.css` to add custom styling.

## Slide Generation

To generate a Slidy presentation from your org file, run

``` bash
make gen INPUT=slides.org
```

Open `slides.html` in your web browser to view the presentation.

Note: Replace `slides.org` above with your own org file.

# License

MIT
