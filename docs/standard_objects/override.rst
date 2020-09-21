.. _standard-objects-override:

########
Override
########

Interface instances can contain *override* objects, which provide new
values for defined property attributes or change property values.

When overriding property instance minimum and maximum attribute values,
the new range must be a subrange of any previously defined range for
that property.

**********
Attributes
**********

Overrides are per-property-instance; they can vary between instances of
the property.

.. _standard-objects-override-refid:

Ref Id
======

Indicates the **id** ** of the property instance which this object is
providing new values for. This can be a :ref:`tutorial-identifiers-qualified-id`
or a relative id.

.. _standard-objects-override-attribute:

Attribute
=========

The property attribute for which new values are being provided. **value** is
a special attribute identifier which indicates this object relates to the
value of a property rather than one of its attributes.

.. _standard-objects-override-value:

*****
Value
*****

The value for the attribute specified, or the value for this property if the
attribute is specified as **value**.

.. _standard-objects-override-markup:

Markup
======

.. tabs::

  .. tab:: XML

    * Tag name: ``override``
    * Attributes:

      * ``refid``: :ref:`standard-objects-override-refid`
      * ``attribute``: :ref:`standard-objects-override-attribute`

    Example:

    .. code-block:: xml

    <!-- simplified example -->
    <interface class="org.esta.identification.1/device" id="device">
        <override refid="device-id" attribute="value">com.acme.device-model.1</override>
    </interface>

    <!-- simplified example -->
    <interface class="org.esta.wheel.1/wheel-velocity" id="velocity">
        <override refid="angular-velocity" attribute="minimum">-720</override>
        <override refid="angular-velocity" attribute="maximum">720</override>
    </interface>

  .. tab:: JSON

    * Type: ``override``
    * Members:

      ============== ========== ============================================================
      Key            Value Type Represents
      ============== ========== ============================================================
      refid          string     :ref:`standard-objects-override-refid`
      attribute      string     :ref:`standard-objects-override-attribute`
      value          various    :ref:`standard-objects-override-value`
      ============== ========== ============================================================

    Example:

    .. code-block:: json

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
          }
        ]
      }

      {
        "type": "interface",
        "class": "org.esta.wheel.1/wheel-velocity",
        "id": "velocity",
        "children": [
          {
            "type": "override",
            "refid": "angular-velocity"
            "attribute": "minimum",
            "value": -720
          },
          {
            "type": "override",
            "refid": "angular-velocity"
            "attribute": "maximum",
            "value": 720
          }
        ]
      }