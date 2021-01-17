.. _standard-objects-condition:

#########
Condition
#########

Interface instances can contain *condition* objects, which provide conditional
availability or selection of child interfaces and properties.

**********
Attributes
**********

.. _standard-objects-condition-style:

Style (Required)
===============

Indicates the **style** of this condition.

This can be any of the following:

============= ==================================================================================
exclusive     Each child interface is considered mutually exclusive to other child interfaces
available     All child interfaces and properties are available when the **refalias** is valid
unavailable   All child interfaces and properties are unavailable when the **refalias** is valid
============= ==================================================================================

Validility may be either a valid value within a range, or the selection of an alias of
from within another condition with the Kind *exclusive*.

.. _standard-objects-condition-refalias:

Ref Alias (Required*)
=====================

Indicates the **alias** of the interface or property instance of which this condition
is observing the state. This must be a valid :ref:`tutorial-identifiers-alias`.

When the Kind attribute is defined as *exclusive*, the Ref Alias must be a property
instance with the data type enum. The 'selected' child index is defined by the
current value of this property instance.

\* Ref Alias is not required when the Kind attribute is defined as *exclusive*, and
should only be included when not including Alias.

.. _standard-objects-condition-alias:

Alias (Required*)
=====================

The **alias** is a unique string identifying this condition. The string must be unique
within the definition containing the condition.

\* Alias is required (and must be included) only when the Kind attribute is defined as
*exclusive*, and the Ref Alias attribute is not included.

To support cross-tree conditions, the alias may be followed by a global identification
delimiter ``+``, and then a global alias. The global alias string following this
delimiter must be unique within the :ref:`standard-objects-library`: or
:ref:`standard-objects-device-definition`. When a global alias is provided, any other
conditions using the same global alias are treated as the same condition.

Example:

  .. code-block:: xml

    <interface class="an-interface" alias="root-interface">
      <interface class="another-interface" alias="interface-a-alias">
        <condition style="exclusive" alias="wheel-control+global-wheel-control">
          <!-- "global-wheel-control" exclusive children interfaces -->
        </condition>
      </interface>

      <interface class="another-interface" alias="interface-b-alias">
        <condition style="exclusive" alias="wheel-control+global-wheel-control">
          <!-- "global-wheel-control" exclusive children interfaces -->
        </condition>
      </interface>
    </interface>

.. _standard-objects-condition-min:

Minimum
=======

Indicates the minimum value of a referenced property instance for which this condition
is considered valid.

This attribute should be excluded, and will be ignored when the Kind attribute is
defined as *exclusive*.

.. _standard-objects-condition-max:

Maximum
=======

Indicates the maximum value of a referenced property instance for which this condition
is considered valid.

This attribute should be excluded, and will be ignored when the Kind attribute is
defined as *exclusive*.

.. _standard-objects-condition-markup:

Markup
======

.. tabs::

  .. tab:: XML

    * Tag name: ``condition``
    * Attributes:

      * ``kind``: :ref:`standard-objects-condition-style`
      * ``refalias``: :ref:`standard-objects-condition-refalias`
      * ``alias``: :ref:`standard-objects-condition-alias`
      * ``min``: :ref:`standard-objects-condition-min`
      * ``max``: :ref:`standard-objects-condition-max`

    Example:

    .. code-block:: xml

      <!-- simplified example -->
      <condition style="exclusive" alias="wheel-control">
        <interface class="org.esta.wheel.1/wheel-velocity" alias="velocity" friendlyname="Wheel Speed">
        <interface class="org.esta.wheel.1/wheel-index" alias="index" friendlyname="Wheel Index">
      </condition>

      <!-- simplified example -->
      <condition style="unavailable" refalias="wheel-control/index">
        <interface class="org.esta.gobo.1/gobo-shake" alias="gobo-shake" friendlyname="Gobo Shake">
      </condition>

  .. tab:: JSON

    * Type: ``condition``
    * Members:

      ============== ========== ============================================================
      Key            Value Type Represents
      ============== ========== ============================================================
      kind           string     :ref:`standard-objects-condition-style`
      refalias       string     :ref:`standard-objects-condition-refalias`
      alias          string     :ref:`standard-objects-condition-alias`
      min            string     :ref:`standard-objects-condition-min`
      max            various    :ref:`standard-objects-condition-max`
      ============== ========== ============================================================

    Example:

    .. code-block:: json

      {
        "type": "condition",
        "kind": "exclusive",
        "alias": "wheel-control",
        "children": [
          {
            "type": "interface",
            "class": "org.esta.wheel.1/wheel-velocity",
            "alias": "velocity",
            "friendlyname": "Wheel Speed"
          },
          {
            "type": "interface",
            "class": "org.esta.wheel.1/wheel-index",
            "alias": "index",
            "friendlyname": "Wheel Index"
          }
        ]
      }

      {
        "type": "condition",
        "kind": "unavailable",
        "refalias": "wheel-control/index",
        "children": [
          {
            "type": "interface",
            "class": "org.esta.gobo.1/gobo-shake",
            "alias": "gobo-shake",
            "friendlyname": "Gobo Shake"
          }
        ]
      }
