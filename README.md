
last update: 2018 sept 19

this project fails to compile with a build of urweb-regex [1] with the latest version of urweb [2]

some remarks about [1]:

1 - generated makefile tries to run g++ with flag -Weverything, which doesnt exist apparently. I manually edited the Makefile, removed the flag, and it seems to build ok

2 - files get installed into /usr/local/share/urweb/ur/regex/ which urweb cant see apparently, so I copied them into /usr/local/lib/urweb/ur/regex/

==

[1]: https://github.com/bbarenblat/urweb-regex
[2]: https://github.com/urweb/urweb

==

urweb test fails with:

```
:0:0: (to 0:0) Anonymous function remains at code generation
Function: 
(fn _ : {} =>
  (write("\n<body");
   (write(FFI(Basis.maybe_onload(FFI(Basis.get_settings({})))));
    (write(FFI(Basis.maybe_onunload("")));
     (write(">\n");
      ((case UNBOUND_1 of
         FFIC(Basis.False) => write("none") | 
          FFIC(Basis.True) => write("something"));
       write("\n</body>\n")))))))

```

check dumpVerboseSource.txt for the result of urweb -dumpVerboseSource test
