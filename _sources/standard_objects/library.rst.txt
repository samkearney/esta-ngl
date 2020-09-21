.. _standard-objects-library:

*******
Library
*******

A list of property, interface, and/or device definitions. Definitions defined inside a library are
usable by anything that imports the library.

Attributes
==========

Class
-----

A library's **class** is a unique string identifying an individual library. This string must be a
:ref:`tutorial-identifiers-qualified-class`.

Description
-----------

A string that describes the purpose of a library in human-readable language.

Publish Date
------------

The date this version of the library was published, formatted as an ISO date string (``YYYY-MM-DD``).

Author Name
-----------

The name of the individual or organization that created this library.

Children
========

A library can have the following children:

* :ref:`standard-objects-property-definition`
* :ref:`standard-objects-interface-definition`
* :ref:`standard-objects-device-definition`

Markup Example
==============

.. code-block:: xml

  <library class="com.acme.standarddefs.1" description="ACME Corp Standard Definitions" publishdate="2020-09-02" author="ACME Corp">
    <propertydef class="customproperty" data_type="string" />
    <interfacedef class="custominterface">
      <property class="org.esta.intensity.1/intensity" id="intensity-1" access="readwrite" lifetime="runtime" />
      <property class="org.esta.intensity.1/intensity" id="intensity-2" access="readwrite" lifetime="runtime" />

      <property class="customproperty" id="custom_property_1" access="readonly" lifetime="persistent" />

      <propertydef class="customproperty2" data_type="number" unit="rpm" minimum="1" maximum="100" />
      <property class="customproperty2" id="customproperty2-1" access="readwrite" lifetime="runtime" />
      <property class="customproperty2" id="customproperty2-2" access="readwrite" lifetime="runtime" />
    </interfacedef>
  </library>
