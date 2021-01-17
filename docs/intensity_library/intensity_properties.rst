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

=============== =================================================
Class           intensity
Qualified Class org.esta.intensity.1/intensity
Name            Intensity
Description     Represents an emitter intensity as a percentage of its maximum brightness.
Data Type       number
Unit            percent
=============== =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="intensity"
      name="Intensity"
      description="Represents an emitter intensity as a percentage of its maximum brightness"
      datatype="number"
      unit="percent" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "intensity",
      "name": "Name",
      "description": "Represents an emitter intensity as a percentage of its maximum brightness",
      "datatype": "number",
      "unit": "percent"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property 
      class="udr://org.esta.intensity.1/intensity"
      alias="intensity"
      access="readwrite"
      lifetime="runtime"
      minimum="0"
      maximum="100" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.intensity.1/intensity",
          "alias": "intensity",
          "access": "readwrite",
          "lifetime": "runtime",
          "minimum": 0,
          "maximum": 100
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

=============== =================================================
Class           binary-intensity
Qualified Class org.esta.intensity.1/binary-intensity
Name            Binary Intensity
Description     Represents an emitter intensity as an on/off state where "true" indicates "on".
Data Type       boolean
=============== =================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="binary-intensity"
      name="Binary Intensity"
      description="Represents an emitter intensity as an on/off state where 'true' indicates 'on'"
      datatype="boolean" />
    
  .. code-tab:: json

    {
      "type": "propertydef"
      "class": "binary-intensity",
      "name": "Binary Intensity"
      "description": "Represents an emitter intensity as an on/off state where \"true\" indicates \"on\"",
      "datatype": "boolean"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property
      class="udr://org.esta.intensity.1/binary-intensity"
      alias="primary-emitter-intensity"
      access="readwrite"
      lifetime="runtime" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.intensity.1/binary-intensity",
          "alias": "primary-emitter-intensity",
          "access": "readwrite",
          "lifetime": "runtime"
        }
      ]
    }

