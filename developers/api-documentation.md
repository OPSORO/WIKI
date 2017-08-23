# Software API

The Opsoro platform is designed to be easy to extend, both hardware-wise as well
as software-wise. The software platform borrows ideas from the app-paradigm on
smartphones and tablets, where the functionality of the software is split up
into task-specific apps. The Opsoro-OS comes with a number of default apps,
covering a variety of use basic use cases. However, this may not be enough for
everyone, so the true potential of the software can be unlocked by writing your
own custom app.

The core of the Opsoro-OS software is written in Python (back-end) and
HTML/CSS/Javascript (interface). Solid knowledge of these languages are required
to get started as an Opsoro software developer.

An Opsoro app is a self-contained python module placed in the ```opsoro/apps/```
folder. This module contains python code, the HTML templates, and any other
required web assets. The software documentation of Opsoro is still
work-in-progress. A step-by-step tutorial to write an app is not yet available.
However, take a look at the [app template][app-template] to see a bare-bones
example of an app. The full API documentation, generated from the python source
code, can be found [here][api].

[app-template]: https://github.com/OPSORO/OS/tree/master/src/opsoro/apps/app_template
[api]: http://docs.opsoro.be/en/master/
