####################
Intensity Properties
####################

*********
Intensity
*********

Definition
==========

Intensity properties control the light intensity of a light-emitting device.

=========== ===================================================================================
Name        intensity
Description Represents an emitter intensity as a percentage of its maximum brightness.
Data Type   number
Unit        percent
Minimum     0
Maximum     100
Access      Read-Write
Lifetime    Runtime
=========== ===================================================================================

Markup
======

.. code-block:: xml

  <propertydef name="intensity">
    <propertydesc>Represents an emitter intensity as a percentage of its maximum brightness.</propertydesc>
    <datadesc type="number" unit="percent" minimum="0" maximum="100" access="readwrite" lifetime="runtime" />
  </propertydef>

Example
=======

.. tabs::

  .. code-tab:: xml

    <property name="intensity" id="primary-emitter-intensity" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "name": "intensity",
          "id": "primary-emitter-intensity"
        }
      ]
    }


