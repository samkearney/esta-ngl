################
Device Interface
################

There can be only one instance of the device interface, which must be present at the root level of
every :ref:`device definiton<standard-objects-device-definition>`.

**********
Definition
**********

=============== =================================================
Class           device
Qualified Class org.esta.identification.1/device
Name            Device
Description     The root-level interface that describes a device.
=============== =================================================

**********
Properties
**********

* :ref:`properties-identification-device-id`
* :ref:`properties-identification-manufacturer`
* :ref:`properties-identification-model`

.. tabs::

  .. code-tab:: xml

    <interfacedef class="device" name="Device" description="The root-level interface that describes a device.">
      <property class="udr://$/device-id" alias="device-id" access="readonly" lifetime="static" minimum="0" maximum="128" />
      <property class="udr://$/manufacturer" alias="device-manufacturer" access="readonly" lifetime="static" minimum="0" maximum="128" />
      <property class="udr://$/model" alias="device-model" access="readonly" lifetime="static" minimum="0" maximum="128" />
    </interfacedef>

  .. code-tab:: json

    {
      "type": "interfacedef",
      "class": "device",
      "name": "Device",
      "description": "The root-level interface that describes a device.",
      "children": [
        {
          "type": "property",
          "class": "udr://$/device-id",
          "alias": "device-id",
          "access": "readonly",
          "lifetime": "static",
          "minimum": 0,
          "maximum": 128
        },
        {
          "type": "property",
          "class": "udr://$/manufacturer",
          "alias": "device-manufacturer",
          "access": "readonly",
          "lifetime": "static",
          "minimum": 0,
          "maximum": 128
        },
        {
          "type": "property",
          "class": "udr://$/model",
          "alias": "device-model",
          "access": "readonly",
          "lifetime": "static",
          "minimum": 0,
          "maximum": 128
        }
      ]
    }

****************
Instance Example
****************

.. tabs::

  .. code-tab:: xml

    <interface class="udr://org.esta.identification.1/device" alias="device" friendlyname="Device">
      <override refalias="device-id" style="absolute" attribute="value">com.acme.device-model.1</override>
      <override refalias="device-manufacturer" style="absolute" attribute="value">ACME Corp</override>
      <override refalias="device-model" style="absolute" attribute="value">New Device Model</override>
    </interface>

  .. code-tab:: json

    {
      "type": "interface",
      "class": "udr://org.esta.identification.1/device",
      "alias": "device",
      "friendlyname": "Device",
      "children": [
        {
          "type": "override",
          "refalias": "device-id",
          "style": "absolute",
          "attribute": "value",
          "value": "com.acme.device-model.1"
        },
        {
          "type": "override",
          "refalias": "device-manufacturer",
          "style": "absolute",
          "attribute": "value",
          "value": "ACME Corp"
        },
        {
          "type": "override",
          "refalias": "device-model",
          "style": "absolute",
          "attribute": "value",
          "value": "New Device Model"
        }
      ]
    }