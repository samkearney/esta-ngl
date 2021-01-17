.. _standard-objects-case:

####
Case
####

:ref:`Property Definitions<standard-objects-property-definition>` and
:ref:`Property Instances<standard-objects-property-instance>`, using
certain enumerated data types can contain child *case* objects which provide
human-readable values describing each of the potential cases. These values
are considered the key for any localization.

Cases are available for *Boolean* and *Enum*
:ref:`data types<standard-objects-property-definition-data-type>`.

The number of cases should match the number of enumerated items. In the
case of *Boolean* data types, this is always 2. When new cases are provided
they replace all previously defined cases.

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

    Example:

    .. code-block:: xml

      <!-- simplified example -->
      <propertydef class="velocity-indexed" name="Velocity Index" description="The indexed velocity of a wheel" datatype="enum">
          <case>Slow</case>
          <case>Medium</case>
          <case>Fast</case>
      </propertydef>

  .. tab:: JSON

    * Type: ``case``
    * Members:

      ============== ========== ============================================================
      Key            Value Type Represents
      ============== ========== ============================================================
      value          various    :ref:`standard-objects-case-value`
      ============== ========== ============================================================

    Example:

    .. code-block:: json

      {
        "type": "propertydef",
        "class": "velocity-indexed",
        "name": "Velocity Index",
        "description": "The indexed velocity of a wheel",
        "datatype": "enum",
        "children": [
          {
            "type": "case",
            "value": "Slow"
          },
          {
            "type": "case",
            "value": "Medium"
          },
          {
            "type": "case",
            "value": "Fast"
          }
        ]
      }
