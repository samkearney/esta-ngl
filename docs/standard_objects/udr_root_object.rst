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

.. code-block:: xml

  <udr>
    <import class="org.esta.intensity.1" />
    <library class="com.acme.standarddefs.1">
      <!-- ... -->
    </library>
    <library class="com.acme.devices.1">
      <!-- ... -->
    </library>
  </udr>
