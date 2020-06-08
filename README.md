# Next-Gen Library Data Model

This repository houses working documentation for ESTA's Next-Gen Library Study Group data model.
The data model is currently an early work-in-progress and actively being worked on by the study
group. Everything in this documentation is subject to change drastically.

The Next-Gen Library study group is working toward defining a standardized method of describing
entertainment equipment in a machine-readable way, such that it can automatically be discovered and
controlled by control and configuration software.

## Documentation Output

The docs are served on the [GitHub Page](https://samkearney.github.io/esta-ngl) associated with
this repository.

Docs are rebuilt automically from the `master` branch.

## Building the Documentation

The documentaton is currently written in reStructuredText and converted to HTML with
[Sphinx](https://www.sphinx-doc.org). To build the documentation, you will need to install
[Python](https://www.python.org). You will also need a
[make](https://en.wikipedia.org/wiki/Make_(software)) tool of some kind.

Once python is installed, you can install Sphinx and the other dependencies of the documentation
by referencing the `requirements.txt` file at the root of this repostiory:

```
pip install -r requirements.txt
```

Then cd into the `docs/` directory and build the documentation using:

```
make html
```

The HTML documentation will be output to the `docs/_build` directory.

## reStructuredText

There is a good primer on the reStructuredText flavor used with Sphinx
[here](https://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html).
