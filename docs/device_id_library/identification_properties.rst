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
Description        A globally unique identifier for a device model.
Data Type          string
String Constraints Follows the convention of a :ref:`concepts-identifiers-qualified-device-id`.
================== ============================================================================

.. _properties-identification-manufacturer:

************
Manufacturer
************

A string identifying a device's manufacturer.

Definition
==========

================== ============================================================================
Class              manufacturer
Qualified Class    org.esta.identification.1/manufacturer
Description        Identifies a device's manufacturer.
Data Type          string
================== ============================================================================

.. _properties-identification-model:

*****
Model
*****

A string identifying a device's model name.

Definition
==========

================== ============================================================================
Class              model
Qualified Class    org.esta.identification.1/model
Description        Identifies a device's model name.
Data Type          string
================== ============================================================================



