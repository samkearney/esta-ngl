####################
Intensity Properties
####################

.. _properties-intensity-intensity:

*********
Intensity
*********

Definition
==========

Intensity properties control the light intensity of a light-emitting device.

=========== ===================================================================================
Type        esta.intensity.1
Description Represents an emitter intensity as a percentage of its maximum brightness.
Data Type   number
Unit        percent
Minimum     0
Maximum     100
=========== ===================================================================================

Definition Markup
=================

.. code-block:: xml

  <propertydef type="esta.intensity.1" data_type="number" unit="percent" minimum="0" maximum="100">
    <description>Represents an emitter intensity as a percentage of its maximum brightness.</description>
    <tag id="lighting" />
    <tag id="intensity" />
  </propertydef>

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property type="esta.intensity.1" id="primary-emitter-intensity" access="readwrite" lifetime="runtime" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "type": "esta.intensity.1",
          "id": "primary-emitter-intensity",
          "access": "readwrite",
          "lifetime": "runtime"
        }
      ]
    }


