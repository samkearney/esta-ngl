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
      <property class="udr://$/intensity" alias="intensity" friendlyname="Dimmer" access="readwrite" lifetime="runtime" minimum="0" maximum="100" />
    </interfacedef>

  .. code-tab:: json

    {
      "udrtype": "interfacedef",
      "class": "dimmer",
      "name": "Dimmer",
      "description": "A simple dimmer controlling an intensity.",
      "children": [
        {
          "udrtype": "property",
          "class": "udr://$/intensity",
          "alias": "intensity",
          "friendlyname": "Dimmer",
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

    <interface class="udr://org.esta.intensity.1/dimmer" alias="primary-dimmer" friendlyname="Primary Dimmer" />

  .. code-tab:: json

    {
      "udrtype": "interface",
      "class": "udr://org.esta.intensity.1/dimmer",
      "alias": "primary-dimmer",
      "friendlyname": "Primary Dimmer"
    }
