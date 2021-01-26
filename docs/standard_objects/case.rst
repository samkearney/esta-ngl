.. _standard-objects-case:

####
Case
####

:ref:`Property Definitions<standard-objects-property-definition>` and
:ref:`Property Instances<standard-objects-property-instance>` can contain
child *case* objects which provide human-readable values describing either
ranges of possible property values, or each of the potential cases. These
values are considered the key for any localization.

Un-ranged cases are available for *Boolean* and *Enum*
:ref:`data types<standard-objects-property-definition-data-type>`. The number
of cases should match the number of enumerated items. In the case of *Boolean*
data types, this is always 2.

Ranged cases are available for all
:ref:`data types<standard-objects-property-definition-data-type>` apart from
*Boolean* and *Enum*. Cases should be provided for all possible values of the
property, and must not overlap.

When new cases are provided they replace all previously defined cases.

**********
Attributes
**********

.. _standard-objects-case-property-min:

Property Min (Required*)
========================

The minimum (inclusive) value of the range this case provides a value for.

* required for ranged data types.

.. _standard-objects-case-property-max:

Property Max (Required*)
========================

The maximum (inclusive) value of the range this case provides a value for.

* required for ranged data types.

.. _standard-objects-case-value:

*****
Value
*****

The value of the string describing this case.

.. _standard-objects-case-markup:

Markup
======

.. tabs::

  .. tab:: XML

    * Tag name: ``case``
    * Attributes:

      * ``propertymin``: :ref:`standard-objects-case-property-min`
      * ``propertymax``: :ref:`standard-objects-case-property-max`

    Example:

    .. code-block:: xml

      <!-- simplified example -->
      <propertydef class="velocity-indexed" name="Velocity Index" description="The indexed velocity of a wheel" datatype="enum">
          <case>Slow</case>
          <case>Medium</case>
          <case>Fast</case>
      </propertydef>

      <!-- simplified color wheel example -->
      <propertydef class="wheel-position" name="Wheel Position" description="The position of a wheel" datatype="number" unit="degree">
          <case propertymin="0" property_max="4">Red</case>
          <case propertymin="5" property_max="19">Red/Orange</case>
          <case propertymin="20" property_max="24">Orange</case>
          ...
      </propertydef>

  .. tab:: JSON

    * Type: ``case``
    * Members:

      ============== ========== ============================================================
      Key            Value Type Represents
      ============== ========== ============================================================
      propertymin    number     :ref:`standard-objects-case-property-min`
      propertymax    number     :ref:`standard-objects-case-property-max`
      value          string     :ref:`standard-objects-case-value`
      ============== ========== ============================================================

    Example:

    .. code-block:: json

      {
        "udrtype": "propertydef",
        "class": "velocity-indexed",
        "name": "Velocity Index",
        "description": "The indexed velocity of a wheel",
        "datatype": "enum",
        "children": [
          {
            "udrtype": "case",
            "value": "Slow"
          },
          {
            "udrtype": "case",
            "value": "Medium"
          },
          {
            "udrtype": "case",
            "value": "Fast"
          }
        ]
      }

      {
        "udrtype": "propertydef",
        "class": "wheel-position",
        "name": "Wheel Position",
        "description": "The position of a wheel",
        "datatype": "number",
        "unit": "degree",
        "children": [
          {
            "udrtype": "case",
            "propertymin": "0",
            "propertymin": "4",
            "value": "Red"
          },
          {
            "udrtype": "case",
            "propertymin": "5",
            "propertymin": "19",
            "value": "Red/Orange"
          },
          {
            "udrtype": "case",
            "propertymin": "20",
            "propertymin": "24",
            "value": "Orange"
          }
        ]
      }
