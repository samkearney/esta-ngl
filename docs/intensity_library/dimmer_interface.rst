################
Dimmer Interface
################

The dimmer interface represents a simple dimmer controlling an intensity.

**********
Definition
**********

=============== =================================================
Class           dimmer
Qualified Class org.esta.intensity.1/dimmer
Name            Dimmer
Description     A simple dimmer controlling an intensity.
=============== =================================================

**********
Properties
**********

.. tabs::

  .. code-tab:: xml

    <interfacedef
        class="dimmer"
        name="Dimmer"
        description="A simple dimmer controlling an intensity.">
      <property class="intensity" alias="intensity" access="readwrite" lifetime="runtime" minimum="0" maximum="100" />
    </interfacedef>

  .. code-tab:: json

    {
      "type": "interfacedef",
      "class": "dimmer",
      "name": "Dimmer",
      "description": "A simple dimmer controlling an intensity.",
      "children": [
        {
          "type": "property",
          "class": "intensity",
          "alias": "intensity",
          "access": "readwrite",
          "lifetime": "runtime",
          "minimum": 0,
          "maximum": 100
        }
      ]
    }

****************
Instance Example
****************

.. tabs::

  .. code-tab:: xml

    <interface class="org.esta.intensity.1/dimmer" alias="primary-dimmer" />

  .. code-tab:: json

    {
      "type": "interface",
      "class": "org.esta.intensity.1/dimmer",
      "alias": "primary-dimmer",
    }
