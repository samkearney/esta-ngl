################
Device Interface
################

There can be only one instance of the device interface, which must be present at the root level of
every device description.

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
      <property class="org.esta.identification.1/device-id" id="device-id" access="readonly" lifetime="static" minimum="0" maximum="128" />
      <property class="org.esta.identification.1/manufacturer" id="device-manufacturer" access="readonly" lifetime="static" minimum="0" maximum="128" />
      <property class="org.esta.identification.1/model" id="device-model" access="readonly" lifetime="static" minimum="0" maximum="128" />
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
          "class": "org.esta.identification.1/device-id",
          "id": "device-id",
          "access": "readonly",
          "lifetime": "static",
          "minimum": 0,
          "maximum": 128
        },
        {
          "type": "property",
          "class": "org.esta.identification.1/manufacturer",
          "id": "device-manufacturer",
          "access": "readonly",
          "lifetime": "static",
          "minimum": 0,
          "maximum": 128
        },
        {
          "type": "property",
          "class": "org.esta.identification.1/model",
          "id": "device-model",
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

    <interface class="org.esta.identification.1/device" id="device">
      <override refid="device-id" attribute="value">com.acme.device-model.1</override>
      <override refid="device-manufacturer" attribute="value">ACME Corp</override>
      <override refid="device-model" attribute="value">New Device Model</override>
    </interface>

  .. code-tab:: json

    {
      "type": "interface",
      "class": "org.esta.identification.1/device",
      "id": "device",
      "children": [
        {
          "type": "override",
          "refid": "device-id"
          "attribute": "value",
          "value": "com.acme.device-model.1"
        },
        {
          "type": "override",
          "refid": "device-manufacturer"
          "attribute": "value",
          "value": "ACME Corp"
        },
        {
          "type": "override",
          "refid": "device-model"
          "attribute": "value",
          "value": "New Device Model"
        }
      ]
    }