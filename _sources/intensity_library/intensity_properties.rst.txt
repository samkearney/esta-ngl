####################
Intensity Properties
####################

.. _properties-intensity-intensity:

*********
Intensity
*********

A continuous intensity value represented in percent of maximum brightness.

Definition
==========

=========== ===================================================================================
Class       intensity
Description Represents an emitter intensity as a percentage of its maximum brightness.
Data Type   number
Unit        percent
Minimum     0
Maximum     100
=========== ===================================================================================

Definition Markup
=================

.. code-block:: xml

  <propertydef 
    class="intensity"
    description="Represents an emitter intensity as a percentage of its maximum brightness"
    data_type="number"
    unit="percent"
    minimum="0"
    maximum="100" />

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property
      type="esta.intensity.1/intensity"
      id="primary-emitter-intensity"
      access="readwrite"
      lifetime="runtime" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "type": "esta.intensity.1/intensity",
          "id": "primary-emitter-intensity",
          "access": "readwrite",
          "lifetime": "runtime"
        }
      ]
    }

****************
Binary Intensity
****************

A binary intensity value used for non-dimming light sources.

Definition
==========

Intensity properties control the light intensity of a light-emitting device.

=========== ===================================================================================
Class       binary-intensity
Description Represents an emitter intensity as an on/off state where "true" indicates "on".
Data Type   boolean
=========== ===================================================================================

Definition Markup
=================

.. code-block:: xml

  <propertydef 
    class="binary-intensity"
    description="Represents an emitter intensity as an on/off state where 'true' indicates 'on'."
    data_type="boolean" />

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property
      class="esta.intensity.1/binary-intensity"
      id="primary-emitter-intensity"
      access="readwrite"
      lifetime="runtime" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "esta.intensity.1/binary-intensity",
          "id": "primary-emitter-intensity",
          "access": "readwrite",
          "lifetime": "runtime"
        }
      ]
    }

