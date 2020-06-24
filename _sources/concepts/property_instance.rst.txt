.. _concepts-property-instance:

#################
Property Instance
#################

A **property instance** is a single addressable instance of a :doc:`property_definition`.

**********
Attributes
**********

Instance attributes are per-property-instance; they can vary between instances of the property.

.. _concepts-property-instance-class:

Class
=====

Indicates the :ref:`class<concepts-property-definition-class>` of the defined property of which
this is an instance.

.. _concepts-property-instance-id:

Id
==

The **id** is a unique string identifying this property instance. The string must be unique within
a device definition.

.. _concepts-property-instance-access-and-lifetime:

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

.. _concepts-property-instance-markup:       

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``property``
    * Attributes:

      * ``class``: Class
      * ``id``: :ref:`concepts-property-instance-id`
      * ``access``: :ref:`Access<concepts-property-instance-access-and-lifetime>`
      * ``lifetime``: :ref:`Lifetime<concepts-property-instance-access-and-lifetime>`
    
    Example:

    .. code-block:: xml

      <property
        class="org.esta.identification.1/firmware-version"
        id="my-firmware-version"
        access="readonly"
        lifetime="persistent" />
