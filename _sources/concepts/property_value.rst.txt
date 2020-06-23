.. _concepts-property-value:

##############
Property Value
##############

A property value represents the global value of a static property. It is a way to assign values to
static properties defined in an :ref:`interface definition<concepts-interface-definition>` when
instantiating that interface.

**********
Attributes
**********

.. _concepts-property-value-id:

Id
==

The :ref:`id<concepts-property-instance-id>` of the property instance which is being assigned a
value.

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``propertyvalue``
    * Attributes:

      * ``id``: :ref:`concepts-property-value-id`

    Example:

    .. code-block:: xml

