.. _standard-objects-device-definition:

#################
Device Definition
#################

A **device definition** defines the behavior of a **device**, which is some type of equipment that
is configurable. The term "device" in this standard is typically used to refer to a single model of
equipment, and "device instance" refers to a single unit of that model.

Within a the context of a particular device definition, the combination of fully qualified class and
fully qualified alias provides unique identification and addressing.

When migrating between versions of a device definition which may contain differences in the hierarchy,
and therefore alias changes, this combination allows controllers to make sense of the new mapping.

**********
Attributes
**********

.. _standard-objects-device-definition-class:

Class (Required)
===============

A device definition's **class** is a string identifying an individual interface definition. This string
must be unique within the :ref:`standard-objects-library`.

.. _standard-objects-device-definition-markup:

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``devicedef``
    * Attributes:

      * ``class``: :ref:`standard-objects-device-definition-class`
    
    Example:

    .. code-block:: xml

      <devicedef class="es1">
        <interface class="udr://org.esta.identification.1/device" alias="device" friendlyname="Device">
          <override refalias="device-id" style="absolute" attribute="value">com.etcconnect.es1.1</override>
          <override refalias="device-manufacturer" style="absolute" attribute="value">ETC Inc.</override>
          <override refalias="device-model" style="absolute" attribute="value">ES1</override>
        </interface>
      </devicedef>

  .. tab:: JSON

    * Type: ``devicedef``
    * Members:

      =========== ========== =======================================================
      Key         Value Type Represents
      =========== ========== =======================================================
      class       string     :ref:`standard-objects-device-definition-class`
      =========== ========== =======================================================
    
    Example:

    .. code-block:: json

      {
        "type": "devicedef",
        "class": "es1",
        "children": [
          {
            "type": "interface",
            "class": "udr://org.esta.device.1/device",
            "alias": "device",
            "friendlyname": "Device",
            "children": [
              {
                "type": "override",
                "refalias": "device-id",
                "style": "absolute",
                "attribute": "value",
                "value": "com.etcconnect.es1.1"
              },
              {
                "type": "override",
                "refalias": "device-manufacturer",
                "style": "absolute",
                "attribute": "value",
                "value": "ETC Inc."
              },
              {
                "type": "override",
                "refalias": "device-model",
                "style": "absolute",
                "attribute": "value",
                "value": "ES1"
              }
            ]
          }
        ]
      }
