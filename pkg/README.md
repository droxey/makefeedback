# `/pkg`

Library code that's ok to use by external applications (e.g., `/pkg/mypubliclib`). Other projects will import these libraries expecting them to work, so think twice before you put something here :-)

It's also a way to group Go code in one place when your root directory contains lots of non-Go components and directories making it easier to run various Go tool (as mentioned in the [**Best Practices for Industrial Programming from GopherCon EU 2018**](https://www.youtube.com/watch?v=PTE4VJIdHPg)).

Note that this is not a universally accepted pattern and for every popular repo that uses it you can find 10 that don't. It's up to you to decide if you want to use this pattern or not. Regardless of whether or not it's a good pattern more people will know what you mean than not. It is a bit confusing for new Go devs, but it's a pretty simple confusion to resolve and that's one of the goals for this project layout repo.
