###############
UDR Root Object
###############

A UDR root object forms the root of an object model that is built from a UDR document. It contains
libraries and imports, which are references to external libraries.

Children
========

A UDR root object can have the following children:

* :ref:`standard-objects-library`
* :ref:`standard-objects-import`

.. _standard-objects-udr-root-object-markup:

Markup Example
==============

.. tabs::

  .. code-tab:: xml

    <udr>
      <import name="org.esta.intensity.1" />
      <library class="com.acme.standarddefs.1" description="ACME Corp Standard Definitions" publishdate="2020-09-02" author="ACME Corp">
        <!-- ... -->
      </library>
      <library class="com.acme.devices.1" description="ACME Corp Standard Devices" publishdate="2020-09-02" author="ACME Corp">
        <!-- ... -->
      </library>
    </udr>

  .. code-tab:: json

    {
      "udrtype": "udr",
      "children": [
        {
          "udrtype": "import",
          "name": "org.esta.intensity.1"
        },
        {
          "udrtype": "library",
          "class": "com.acme.standarddefs.1",
          "description": "ACME Corp Standard Definitions",
          "publishdate": "2020-09-02",
          "author": "ACME Corp",
          "children": [
          ]
        },
        {
          "udrtype": "library",
          "class": "com.acme.devices.1",
          "description": "ACME Corp Standard Devices",
          "publishdate": "2020-09-02",
          "author": "ACME Corp",
          "children": [
          ]
        }
      ]
    }
