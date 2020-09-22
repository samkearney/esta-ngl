.. _standard-objects-property-instance:

#################
Property Instance
#################

A **property instance** is a single addressable instance of a :doc:`property_definition`.

**********
Attributes
**********

Instance attributes are per-property-instance; they can vary between instances of the property.

.. _standard-objects-property-instance-class:

Class
=====

Indicates the :ref:`class<standard-objects-property-definition-class>` of the defined property of which
this is an instance.

.. _standard-objects-property-instance-id:

Id
==

The **id** is a unique string identifying this property instance. The string must be unique within
the interface containing the property instance.

.. _standard-objects-property-instance-access-and-lifetime:

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

.. _standard-objects-property-instance-minimum:

Minimum
=======

This attribute defines a minimum value for the property. It applies in different ways when combined
with different data types:

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

Maximum
=======

This attribute defines a maximum value for the property. It applies in different ways when combined
with different data types:

Maximum when applied to...

================== ===============================================
When applied to... Maximum indicates...
================== ===============================================
number             The number's maximum value.
string             The maximum length of the string in characters.
binary             N/A
boolean            N/A
enum               N/A
array              The maximum length of the array in elements.
================== ===============================================

.. _standard-objects-property-instance-mode-selector:

Mode Selector
=============

Indicates that this property is a *mode selector* for a group of exclusive child interfaces. See
:ref:`tutorial-mutual-exclusion` for more information.

The value of this attribute is the name of the exclusive group for which the property is a mode
selector.

.. _standard-objects-property-instance-markup:       

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``property``
    * Attributes:

      * ``class``: :ref:`standard-objects-property-instance-class`
      * ``id``: :ref:`standard-objects-property-instance-id`
      * ``access``: :ref:`Access<standard-objects-property-instance-access-and-lifetime>`
      * ``lifetime``: :ref:`Lifetime<standard-objects-property-instance-access-and-lifetime>`
      * ``minimum``: :ref:`standard-objects-property-instance-minimum`
      * ``maximum``: :ref:`standard-objects-property-instance-maximum`
      * ``modeselector``: :ref:`standard-objects-property-instance-mode-selector`
    
    Example:

    .. code-block:: xml

      <property
        class="org.esta.identification.1/firmware-version"
        id="my-firmware-version"
        access="readonly"
        lifetime="persistent" />

  .. tab:: JSON

    * Type: ``property``
    * Members:

      ============ ========== =======================================================
      Key          Value Type Represents
      ============ ========== =======================================================
      class        string     :ref:`standard-objects-property-definition-class`
      id           string     :ref:`standard-objects-property-definition-name`
      access       string     :ref:`standard-objects-property-definition-description`
      lifetime     string     :ref:`standard-objects-property-definition-data-type`
      minimum      number     :ref:`standard-objects-property-instance-minimum`
      maximum      number     :ref:`standard-objects-property-instance-maximum`
      modeselector string     :ref:`standard-objects-property-instance-mode-selector`
      ============ ========== =======================================================

    Example:

    .. code-block:: json

      {
        "type": "property",
        "class": "org.esta.identification.1/firmware-version",
        "id": "my-firmware-version",
        "access": "readonly",
        "lifetime": "persistent"
      }
