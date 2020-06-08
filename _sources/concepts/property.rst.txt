########
Property
########

A property represents a single piece of data related to a device. A **property definition** provides
information about how to read (and write, if supported) the data associated with a property. A
property definition defines several attributes about a property.

**********
Attributes
**********

Name
====

A property's **name** is a unique string identifying an individual property definition.

Value
=====

A property's **value** is the data stored by a property. Depending on the property's
:ref:`lifetime<Property Access and Lifetime>`, a property's value may be retrievable from an
individual instance of a device, or may be the same across all instances of a device.

Data Type
=========

A property's **data type** specifies how to interpret the data store

.. _Property Access and Lifetime:

Access and Lifetime
===================

Access and Lifetime define how the data associated with a property is stored, how it can be
changed, and when it is invalidated.

**Access** defines whether property data can be changed by a user.

* **Read-Only** properties cannot be changed.
* **Read-Write** properties can be changed.

**Lifetime** defines how property data is stored.

* **Static** properties are properties that apply to all instances of a device. This data may or
  may not be retrievable from an individual device.
* **Persistent** properties are individual to a specific device instance, and their data is
  retained between device power cycles.
* **Runtime** properties are individual to a specific device instance, and their data is not
  retained between device power cycles.

.. list-table:: Access and Lifetime Grid
   :header-rows: 1
   :widths: auto

   * - 
     - Read-Only
     - Read-Write
   * - Static
     - Data that is the same for all units of a device type.

       **Example:** Device Manufacturer.
     - N/A
   * - Persistent
     - Data that is per-device-instance and stored persistently but cannot be changed from outside
       the device.

       **Example:** Serial Number.
     - Data that is per-device-instance and stored persistently and can be changed from outside
       the device.

       **Example:** User-Assigned Device Name.
   * - Runtime
     - Data that is measured or calculated at runtime and is not retained between power cycles.
       This is typically status and health data.

       **Example:** Temperature Sensors.
     - Data that can be changed from outside the device that is not retained between power cycles.
       This is typically data that is used to trigger the device to do an action.

       **Example:** :ref:`Intensity<properties-intensity-intensity>`.


***********************************
Standard vs Non-Standard Properties
***********************************

**Standard** properties are defined by the Next-Gen Library standard. Their property definitions
are immutable and do not appear in Next-Gen Library markup.

**Non-Standard** properties are defined by a Next-Gen Library document writer. Their property
definitions are present in the markup, since the definition is necessary to interpret a
previously-unknown property correctly.

******
Markup
******

