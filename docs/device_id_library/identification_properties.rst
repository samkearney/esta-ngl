#########################
Identification Properties
#########################

.. _properties-identification-device-id:

*********
Device ID
*********

A globally unique identifier for a model of device. This identifier should follow a single device
model for its lifetime and should not change with new firmware or hardware revisions of the device.

Definition
==========

================== ============================================================================
Class              device-id
Qualified Class    org.esta.identification.1/device-id
Name               Device ID
Description        A globally unique identifier for a device model.
Data Type          string
String Constraints Follows the convention of a :ref:`tutorial-identifiers-qualified-device-id`.
================== ============================================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="device-id"
      name="Device ID"
      description="A globally unique identifier for a device model."
      datatype="string" />
    
  .. code-tab:: json

    {
      "udrtype": "propertydef"
      "class": "device-id",
      "name": "Device ID"
      "description": "A globally unique identifier for a device model.",
      "datatype": "string"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property
      class="udr://org.esta.identification.1/device-id"
      alias="device-id"
      friendlyname="Device ID"
      access="readonly"
      lifetime="static"
      minimum="0"
      maximum="128" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.identification.1/device-id",
          "alias": "device-id",
          "friendlyname": "Device ID",
          "access": "readonly",
          "lifetime": "static",
          "minimum": 0,
          "maximum": 128
        }
      ]
    }

.. _properties-identification-manufacturer:

************
Manufacturer
************

A string identifying a device's manufacturer.

Definition
==========

================== ============================================================================
Class              device-manufacturer
Qualified Class    org.esta.identification.1/device-manufacturer
Name               Manufacturer
Description        Identifies a device's manufacturer.
Data Type          string
================== ============================================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="device-manufacturer"
      name="Manufacturer"
      description="Identifies a device's manufacturer."
      datatype="string" />
    
  .. code-tab:: json

    {
      "udrtype": "propertydef"
      "class": "device-manufacturer",
      "name": "Manufacturer"
      "description": "Identifies a device's manufacturer.",
      "datatype": "string"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property
      class="udr://org.esta.identification.1/device-manufacturer"
      alias="manufacturer"
      friendlyname="Manufacturer"
      access="readonly"
      lifetime="static"
      minimum="0"
      maximum="128" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.identification.1/device-manufacturer",
          "alias": "manufacturer",
          "friendlyname": "Manufacturer",
          "access": "readonly",
          "lifetime": "static"
          "minimum": 0,
          "maximum": 128
        }
      ]
    }

.. _properties-identification-model:

*****
Model
*****

A string identifying a device's model name.

Definition
==========

================== ============================================================================
Class              device-model
Qualified Class    org.esta.identification.1/device-model
Name               Model
Description        Identifies a device's model name.
Data Type          string
================== ============================================================================

Definition Markup
=================

.. tabs::

  .. code-tab:: xml

    <propertydef 
      class="device-model"
      name="Model"
      description="Identifies a device's model name."
      datatype="string" />
    
  .. code-tab:: json

    {
      "udrtype": "propertydef"
      "class": "device-model",
      "name": "Model"
      "description": "Identifies a device's model name.",
      "datatype": "string"
    }

Instance Example
================

.. tabs::

  .. code-tab:: xml

    <property
      class="udr://org.esta.identification.1/device-model"
      alias="model"
      friendlyname="Model"
      access="readonly"
      lifetime="static"
      minimum="0"
      maximum="128" />
    
  .. code-tab:: json

    {
      "properties": [
        {
          "class": "org.esta.identification.1/device-model",
          "alias": "model",
          "friendlyname": "Model",
          "access": "readonly",
          "lifetime": "static"
          "minimum": 0,
          "maximum": 128
        }
      ]
    }

