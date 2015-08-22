importtraining.co.uk
~~~~~~~~~~~~~~~~~~~~

This site is built with wok_.  To install wok and its dendencies, run ``pip
install -r requirements.txt``.

wok builds the site by assembling several components:

* Pages are found in ``content/``.  Pages may be HTML, Markdown_ or
  reStructuredText_, and contain some YAML metadata.
* Static files are found in ``media/``.
* A jinja2_ template for all the pages is found in ``templates/default.html``

To build the site, run ``make build``.  This will pull together all the
componenents into a set of HTML files in ``output/``.

Alternatively, if you run ``make serve``, wok will build the site, serve the
built site on port 8000, and watch for changes.

You can test that the site can be built by running ``make test``.

To deploy the site, run ``make deploy``.  See ``deploy.sh`` for details.

.. _wok: http://wok.mythmon.com/
.. _Markdown: https://pythonhosted.org/Markdown/
.. _reStructuredText: http://docutils.sourceforge.net/rst.html
.. _jinja2: http://jinja.pocoo.org/
