.. _standard-objects-case:

####
Case
####

:ref:`Property Definitions<standard-objects-property-definition>` using
certain enumerated data types can contain *case* objects which provide
human-readable values describing each of the potential cases.

Cases are available for *Boolean* and *Enum*
:ref:`data types<standard-objects-property-definition-data-type>`.

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
      <propertydef class="velocity-indexed" name="Velocity Index" description="The indexed velocity of a wheel" data_type="enum">
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
        "data_type": "enum",
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
