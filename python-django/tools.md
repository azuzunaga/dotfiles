## pyenv

Python version manager. Allows for [multiple global versions](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md#pyenv-global-advanced).

## ipython

`pip3 install ipython`

Shell replacement with colorized output and many other features.

## ipdb

`pip3 install ipdb`

Python debugger that uses the ipython shell. Similar to byebug in that it displays the context on every command.

To change the number on lines that appear by default, run:

```bash
grep -rn . -e "set_trace(frame=None, context=3)"
```

from your terminal and navigate to the `__main__.py` file. In there, change the context argument in `set_trace` to however many lines you want (usually 11 is pretty great):

```python
def set_trace(frame=None, context=11):
...
```

The file is usually located here: `.../ve/lib/python#.#/site-packages/ipdb/__main__.py`

## redgreenunittest

`pip3 install redgreenunittest`

In `settings.py` add the following line:

```python
TEST_RUNNER = ”redgreenunittest.django.runner.RedGreenDiscoverRunner”
```

Colorize django test output red / green
