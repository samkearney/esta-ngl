.. _standard-objects-device-definition:

#################
Device Definition
#################

A **device definition** defines the behavior of a **device**, which is some type of equipment that
is configurable. The term "device" in this standard is typically used to refer to a single model of
equipment, and "device instance" refers to a single unit of that model.

Within a the context of a particular device definition, the combination of fully qualified class and
fully qualified alias provides unique identification and addressing. When migrating between versions
of a device definition which may contain differences in the hierarchy, and therefore alias changes,
this combination allows controllers to make sense of the new mapping.

.. _standard-objects-device-definition-versioning:

Versioning
==========

Any change to a device definition must result in the device version number incrementing.

It is possible for a **device definition** to contain multiple versions of the same interface or
property. Controllers can differentiate between these using the version number contained within the
:ref:`qualified class<tutorial-identifiers-qualified-class>` for each interface or property. To allow
receiving devices to differentiate between the version being used by a controller, this version number
must be appended to a transmitted alias seperated by a dot. For example:

  .. code-block:: xml

    <!-- simplified example -->
    <library class="org.esta.devices.4">
      <devicedef class="my-device" version="3">
        <interface class="udr://org.esta.gobo.1/wheel" alias="gobo-wheel">
        <interface class="udr://org.esta.gobo.2/wheel" alias="gobo-wheel">
      </devicedef>
    </library>

udr://org.esta.devices.4/my-device/gobo-wheel.2 would inform the receiver the controller intends to
address the second revision of the class udr://org.esta.gobo.2/wheel.

**********
Attributes
**********

.. _standard-objects-device-definition-class:

Class (Required)
===============

A device definition's **class** is a string identifying an individual interface definition. This string
must be unique within the :ref:`standard-objects-library`.

.. _standard-objects-device-definition-version:

Version (Required)
==================

A device definition's **version** is an integer in string representation, which must increment when any
change is made to a published device.

.. _standard-objects-device-definition-markup:

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``devicedef``
    * Attributes:

      * ``class``: :ref:`standard-objects-device-definition-class`
      * ``version``: :ref:`standard-objects-device-definition-version`
    
    Example:

    .. code-block:: xml

      <devicedef class="es1" version="1">
        <interface class="udr://org.esta.identification.1/device" alias="device" friendlyname="Device">
          <override refalias="device-id" type="absolute" attribute="value">com.etcconnect.es1.1</override>
          <override refalias="device-manufacturer" type="absolute" attribute="value">ETC Inc.</override>
          <override refalias="device-model" type="absolute" attribute="value">ES1</override>
        </interface>
      </devicedef>

  .. tab:: JSON

    * Type: ``devicedef``
    * Members:

      =========== ========== =======================================================
      Key         Value Type Represents
      =========== ========== =======================================================
      class       string     :ref:`standard-objects-device-definition-class`
      version     string     :ref:`standard-objects-device-definition-version`
      =========== ========== =======================================================
    
    Example:

    .. code-block:: json

      {
        "udrtype": "devicedef",
        "class": "es1",
        "version": "1",
        "children": [
          {
            "udrtype": "interface",
            "class": "udr://org.esta.device.1/device",
            "alias": "device",
            "friendlyname": "Device",
            "children": [
              {
                "udrtype": "override",
                "refalias": "device-id",
                "type": "absolute",
                "attribute": "value",
                "value": "com.etcconnect.es1.1"
              },
              {
                "udrtype": "override",
                "refalias": "device-manufacturer",
                "type": "absolute",
                "attribute": "value",
                "value": "ETC Inc."
              },
              {
                "udrtype": "override",
                "refalias": "device-model",
                "type": "absolute",
                "attribute": "value",
                "value": "ES1"
              }
            ]
          }
        ]
      }
