.. _standard-objects-interface-constraint:

####################
Interface Constraint
####################

Interface definitions can contain *interface constraint* objects, which set rules for which
interface instances are allowed as children of the defined interface.

Attributes
==========

.. _standard-objects-interface-constraint-class:

Class
-----

The class of an interface that is allowed as a child to this interface. This can be a
:ref:`tutorial-identifiers-qualified-class` or a relative class. Classes can also be specified by a
`glob pattern`, using at most a single ``*`` character to represent any number of characters
(including none).

Some examples of classes with glob patterns:

* ``"*"``: Indicates that any interface class is allowed.
* ``"org.esta.*"``: Indicates that any interface class with ESTA's organization identifier is
  allowed.
* ``"org.esta.*/intensity"``: Indicates that any interface with a class starting with ``org.esta.``
  and ending with ``/intensity`` is allowed. For example, this would match:

  * ``org.esta.foo.1/intensity``
  * ``org.esta.bar.1/intensity``

.. _standard-objects-interface-constraint-minimum:

Minimum
-------

The minimum number of instances of the child interface that are allowed. If this attribute is
absent, the minimum is assumed to be 0.

.. _standard-objects-interface-constraint-maximum:

Maximum
-------

The maximum number of instances of the child interface that are allowed. If this attribute is
absent, the maximum is assumed to be infinite.

.. _standard-objects-interface-constraint-exclusive-group:

Exclusive Group
---------------

The name of an exclusive group that this child is a member of, if instantiated. See
:ref:`tutorial-mutual-exclusion`.

Markup
======

.. tabs::

  .. tab:: XML

    * Tag name: ``interfaceconstraint``
    * Attributes:

      * ``class``: :ref:`standard-objects-interface-constraint-class`
      * ``minimum``: :ref:`standard-objects-interface-constraint-minimum`
      * ``maximum``: :ref:`standard-objects-interface-constraint-maximum`
      * ``exclusivegroup``: :ref:`standard-objects-interface-constraint-exclusive-group`

    Example:

    .. code-block:: xml

      <interfaceconstraint class="com.acme.definitions.1/cell" minimum="1" maximum="10" />

  .. tab:: JSON

    * Type: ``interfaceconstraint``
    * Members:

      ============== ========== ============================================================
      Key            Value Type Represents
      ============== ========== ============================================================
      class          string     :ref:`standard-objects-interface-constraint-class`
      minimum        number     :ref:`standard-objects-interface-constraint-minimum`
      maximum        number     :ref:`standard-objects-interface-constraint-maximum`
      exclusivegroup string     :ref:`standard-objects-interface-constraint-exclusive-group`
      ============== ========== ============================================================

    Example:

    .. code-block:: json

      {
        "type": "interfaceconstraint",
        "class": "com.acme.definitions.1/cell",
        "minimum": 1,
        "maximum": 10
      }