.. _standard-objects-override:

########
Override
########

Interface instances can contain *override* objects, which provide new
values for defined property attributes or change property values.

When overriding property instance minimum and maximum attribute values,
the new range can be any valid number for that data type.

**********
Attributes
**********

Overrides are per-property-instance; they can vary between instances of
the property.

.. _standard-objects-override-refalias:

Ref Alias (Required)
====================

Indicates the **alias** of the property instance which this object is
providing new values for. This must be a valid :ref:`tutorial-identifiers-alias`.

.. _standard-objects-override-style:

Style (Required)
===============

Indicates the **style** of this override.

For properties with a :ref:`data type<standard-objects-property-definition-data-type>` of *number*
this can be any of the following:

============= ===============================================================
addend        The value provided should be added to that previously defined
multiplier    The value provided is a multiplier to that previously defined
absolute      The value provided should replace that previously defined
============= ===============================================================

All other data types shall always use **absolute**.

.. _standard-objects-override-attribute:

Attribute (Required)
====================

The property attribute for which new values are being provided. **value** is
a special attribute identifier which indicates this object relates to the
value of a property rather than one of its attributes. **case** is
a special attribute identifier which indicates this object contains child
:ref:`standard-objects-case` objects for this property instance rather than
one of its attributes.

.. _standard-objects-override-valuealias:

Value Alias
===========

Indicates the **alias** of the property instance which this object should
observe for new values. This must be a valid :ref:`tutorial-identifiers-alias`.
When this attribute is defined and the **style** is absolute, any discrete value
provided will be ignored.

.. _standard-objects-override-value:

*****
Value
*****

The value for the attribute specified, or the value for this property if the
attribute is specified as **value**. This value should be excluded, and will
be ignored if a **valuealias** is included with a **style** of absolute.

.. _standard-objects-override-markup:

Markup
======

.. tabs::

  .. tab:: XML

    * Tag name: ``override``
    * Attributes:

      * ``refalias``: :ref:`standard-objects-override-refalias`
      * ``style``: :ref:`standard-objects-override-style`
      * ``attribute``: :ref:`standard-objects-override-attribute`
      * ``valuealias``: :ref:`standard-objects-override-valuealias`

    Example:

    .. code-block:: xml

      <!-- simplified example -->
      <interface class="org.esta.identification.1/device" alias="device" friendlyname="Device">
          <override refalias="device-id" style="absolute" attribute="value">com.acme.device-model.1</override>
      </interface>

      <!-- simplified example -->
      <interface class="org.esta.wheel.1/wheel-velocity" alias="velocity" friendlyname="Wheel Speed">
          <override refalias="angular-velocity" style="absolute" attribute="minimum">-720</override>
          <override refalias="angular-velocity" style="absolute" attribute="maximum">720</override>
      </interface>

      <!-- simplified example -->
      <interface class="org.esta.beam.1/optics" alias="optics" friendlyname="Optics">
          <override refalias="zoom" style="multiplier" attribute="maximum" valuealias="edge">1.2<override>
      </interface>

  .. tab:: JSON

    * Type: ``override``
    * Members:

      ============== ========== ============================================================
      Key            Value Type Represents
      ============== ========== ============================================================
      refalias       string     :ref:`standard-objects-override-refalias`
      style          string     :ref:`standard-objects-override-style`
      attribute      string     :ref:`standard-objects-override-attribute`
      valuealias     string     :ref:`standard-objects-override-valuealias`
      value          various    :ref:`standard-objects-override-value`
      ============== ========== ============================================================

    Example:

    .. code-block:: json

      {
        "type": "interface",
        "class": "org.esta.identification.1/device",
        "alias": "device",
        "friendlyname": "Device"
        "children": [
          {
            "type": "override",
            "refalias": "device-id",
            "style": "absolute",
            "attribute": "value",
            "value": "com.acme.device-model.1"
          }
        ]
      }

      {
        "type": "interface",
        "class": "org.esta.wheel.1/wheel-velocity",
        "alias": "velocity",
        "friendlyname": "Wheel Speed",
        "children": [
          {
            "type": "override",
            "refalias": "angular-velocity",
            "style": "absolute",
            "attribute": "minimum",
            "value": -720
          },
          {
            "type": "override",
            "refalias": "angular-velocity",
            "style": "absolute",
            "attribute": "maximum",
            "value": 720
          }
        ]
      }

      {
        "type": "interface",
        "class": "org.esta.beam.1/optics",
        "alias": "optics",
        "friendlyname": "Optics",
        "children": [
          {
            "type": "override",
            "refalias": "zoom",
            "style": "multiplier",
            "attribute": "maximum",
            "valuealias": "edge"
            "value": 1.2
          }
        ]
      }
