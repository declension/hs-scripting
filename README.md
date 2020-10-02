Haskell scripting
=================

What?
-----
Yes, scripting in Haskell for great good.
Or: using modern Haskell and libraries to do scripting tasks,
without too much boilerplate at all.

Currently also using the new and excellent [`lens-regex-pcre`](https://github.com/ChrisPenner/lens-regex-pcre) library, 
as decent regexes seem useful on the command line.

Why?
----

To prove (to myself?) it's as easy and fast to run as is now claimed. 


How?
----
Shebangs and [Stack interpreter magic](https://docs.haskellstack.org/en/stable/GUIDE/#script-interpreter).


My turn?
--------

```bash
$ app/Main.hs foobar
F-O-O-B-A-R
```
