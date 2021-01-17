.. _standard-objects-library:

*******
Library
*******

A list of property, interface, and/or device definitions. Definitions defined inside a library are
usable by anything that imports the library.

Attributes
==========

Class (Required)
----------------

A library's **class** is a unique string identifying an individual library. This string must be a
:ref:`tutorial-identifiers-qualified-class`.

Description (Required)
----------------------

A string that describes the purpose of a library in human-readable language.

Publish Date (Required)
-----------------------

The date this version of the library was published, formatted as an ISO date string (``YYYY-MM-DD``).

Author Name (Required)
----------------------

The name of the individual or organization that created this library.

Children
========

A library can have the following children:

* :ref:`standard-objects-property-definition`
* :ref:`standard-objects-interface-definition`
* :ref:`standard-objects-device-definition`

.. _standard-objects-library-markup:

Markup Example
==============

.. tabs::

  .. tab:: XML

    .. code-block:: xml

      <library class="com.acme.standarddefs.1" description="ACME Corp Standard Definitions" publishdate="2020-09-02" author="ACME Corp">
        <propertydef class="customproperty" name="Custom Property" description="My custom property" datatype="string" />
        <interfacedef class="custominterface" name="Custom Interface" description="My custom interface">
          <property class="org.esta.intensity.1/intensity" alias="intensity-1" friendlyname="Trim LED Intensity" access="readwrite" lifetime="runtime" minimum="0", maximum="100" />
          <property class="org.esta.intensity.1/intensity" alias="intensity-2" friendlyname="Yoke Logo Intensity" access="readwrite" lifetime="runtime" minimum="0", maximum="100" />

          <property class="$/customproperty" alias="custom_property_1" friendlyname="Custom Property" access="readonly" lifetime="persistent" minimum="0" maximum="128" />

          <propertydef class="customproperty2" name="Custom Property 2" description="My custom property 2" datatype="number" unit="rpm" />
          <property class="customproperty2" alias="customproperty2-1" friendlyname="Some Custom Property" access="readwrite" lifetime="runtime" minimum="-100" maximum="100" />
          <property class="customproperty2" alias="customproperty2-2" friendlyname="Another Custom Property" access="readwrite" lifetime="runtime" minimum="-100" maximum="100" />
        </interfacedef>
      </library>

  .. tab:: JSON

    .. code-block:: json

      {
        "type": "library",
        "class": "com.acme.standarddefs.1",
        "description": "ACME Corp Standard Definitions",
        "publishdate": "2020-09-02",
        "author": "ACME Corp"
        "children": [
          {
            "type": "propertydef",
            "class": "$/customproperty",
            "name": "Custom Property",
            "description": "My custom property",
            "datatype": "string"
          },
          {
            "type": "interfacedef",
            "class": "custominterface",
            "name": "Custom Interface",
            "description": "My custom interface",
            "children": [
              {
                "type": "property",
                "class": "org.esta.intensity.1/intensity",
                "alias": "intensity-1",
                "friendlyname": "Trim LED Intensity",
                "access": "readwrite",
                "lifetime": "runtime",
                "minimum": 0,
                "maximum": 100
              },
              {
                "type": "property",
                "class": "org.esta.intensity.1/intensity",
                "alias": "intensity-2",
                "friendlyname": "Yoke Logo Intensity",
                "access": "readwrite",
                "lifetime": "runtime",
                "minimum": 0,
                "maximum": 100
              },
              {
                "type": "property",
                "class": "customproperty",
                "alias": "custom_property_1",
                "friendlyname": "Custom Property",
                "access": "readwrite",
                "lifetime": "persistent",
                "minimum": 0,
                "maximum": 128
              },
              {
                "type": "propertydef",
                "class": "customproperty2",
                "name": "Custom Property 2",
                "description": "My custom property 2",
                "datatype": "number",
                "unit": "rpm"
              },
              {
                "type": "property",
                "class": "customproperty2",
                "alias": "customproperty2-1",
                "friendlyname": "Some Custom Property",
                "access": "readwrite",
                "lifetime": "runtime",
                "minimum": -100,
                "maximum": 100
              },
              {
                "type": "property",
                "class": "customproperty2",
                "alias": "customproperty2-2",
                "friendlyname": "Another Custom Property",
                "access": "readwrite",
                "lifetime": "runtime",
                "minimum": -100,
                "maximum": 100
              }
            ]
          }
        ]
      }
