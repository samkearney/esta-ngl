.. _concepts-interface-instance:

##################
Interface Instance
##################

An **interface instance** is a single addressable instance of a :doc:`interface_definition`.

**********
Attributes
**********

Instance attributes are per-interface-instance; they can vary between instances of the interface.

.. _concepts-interface-instance-class:

Class
=====

Indicates the :ref:`class<concepts-interface-definition-class>` of the defined interface of which
this is an instance.

.. _concepts-interface-instance-id:

Id
==

The **id** is a unique string identifying this interface instance. The string must be unique within
the definition containing the interface instance.

********
Children
********

Interface instances can have the following children:

* :ref:`concepts-property-value`
* :ref:`concepts-interface-instance`

.. _concepts-interface-instance-markup:

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``interface``
    * Attributes:

      * ``class``: :ref:`concepts-interface-instance-class`
      * ``id``: :ref:`concepts-interface-instance-id`
    
    Example:

    .. code-block:: xml

      <interface class="org.esta.intensity.1/binary-dimmer" id="primary-dimmer" />
