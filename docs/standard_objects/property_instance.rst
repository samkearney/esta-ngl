.. _standard-objects-property-instance:

#################
Property Instance
#################

A **property instance** is a single addressable instance of a :doc:`property_definition`. Property
instances must be children of interface definitions.

**********
Attributes
**********

Instance attributes are per-property-instance; they can vary between instances of the property.

.. _standard-objects-property-instance-class:

Class (Required)
================

Indicates the :ref:`class<standard-objects-property-definition-class>` of the defined property of which
this is an instance.

.. _standard-objects-property-instance-alias:

Alias (Required)
================

The **alias** is a unique string identifying this property instance. The string must be unique within
the interface containing the property instance. When a property instance has been instatiated using the
count mechnisim, each instance will be identified with a unique alias followed by the ``!`` delimiter
and a unique instance number.

The alias must remain consistent through revisions of a :ref:`standard-objects-device-definition`, as
this will assist controllers with making sense of hierarchy changes.

.. _standard-objects-property-instance-friendly-name:

Friendly Name (Overridable)
===========================

The **friendly name** attribute provides a string that could be used to identify a particular instance
of a property in a software user interface, in order to provide more context to a user. It is not
intended to uniquely identify the property in a database.

.. _standard-objects-property-instance-count:

Count
=====

The **count** attribute provides a mechanism for instantiating multiple property instances of the same
type.

If multiple property instances are instantiated using the *count* attribute, each instance will be identified
starting with the unique alias followed by the ``!`` delimiter and initial instance number, and incrementing by
1 for each instance. For example "alias!2" would be followed by "alias!3".

.. _standard-objects-property-instance-access-and-lifetime:

Access and Lifetime (Required, Overridable)
===========================================

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

.. _standard-objects-property-instance-minimum:

Minimum (Overridable)
=====================

This attribute defines a minimum value for the property. It applies in different ways when combined
with different data types. If this attribute is absent, the minimum is assumed to be 0:

================== ===============================================
When applied to... Minimum indicates...
================== ===============================================
number             The number's minimum value.
string             The minimum length in characters of the string.
binary             N/A
boolean            N/A
enum               N/A
array              The minimum length of the array in elements.
================== ===============================================

.. _standard-objects-property-instance-maximum:

Maximum (Overridable)
=====================

This attribute defines a maximum value for the property. It applies in different ways when combined
with different data types. If this attribute is absent, the maximum is assumed to be 0:

Maximum when applied to...

================== ===============================================
When applied to... Maximum indicates...
================== ===============================================
number             The number's maximum value.
string             The maximum length of the string in characters.
binary             N/A
boolean            N/A
enum               The maximum enumerated index.
array              The maximum length of the array in elements.
================== ===============================================

.. _standard-objects-property-instance-markup:       

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``property``
    * Attributes:

      * ``class``: :ref:`standard-objects-property-instance-class`
      * ``alias``: :ref:`standard-objects-property-instance-alias`
      * ``friendlyname``: :ref:`standard-objects-property-instance-friendly-name`
      * ``count``: :ref:`standard-objects-property-instance-count`
      * ``access``: :ref:`Access<standard-objects-property-instance-access-and-lifetime>`
      * ``lifetime``: :ref:`Lifetime<standard-objects-property-instance-access-and-lifetime>`
      * ``minimum``: :ref:`standard-objects-property-instance-minimum`
      * ``maximum``: :ref:`standard-objects-property-instance-maximum`
    
    Example:

    .. code-block:: xml

      <property
        class="udr://org.esta.identification.1/firmware-version"
        alias="my-firmware-version"
        friendlyname="Firmware Version"
        access="readonly"
        lifetime="persistent" />

  .. tab:: JSON

    * Type: ``property``
    * Members:

      ============= ========== =======================================================
      Key           Value Type Represents
      ============= ========== =======================================================
      class         string     :ref:`standard-objects-property-instance-class`
      alias         string     :ref:`standard-objects-property-instance-alias`
      friendlyname  string     :ref:`standard-objects-property-instance-friendly-name`
      count         string     :ref:`standard-objects-property-instance-count`
      access        string     :ref:`Access<standard-objects-property-instance-access-and-lifetime>`
      lifetime      string     :ref:`Lifetime<standard-objects-property-instance-access-and-lifetime>`
      minimum       number     :ref:`standard-objects-property-instance-minimum`
      maximum       number     :ref:`standard-objects-property-instance-maximum`
      ============= ========== =======================================================

    Example:

    .. code-block:: json

      {
        "type": "property",
        "class": "udr://org.esta.identification.1/firmware-version",
        "alias": "my-firmware-version",
        "friendlyname": "Firmware Version",
        "access": "readonly",
        "lifetime": "persistent"
      }
