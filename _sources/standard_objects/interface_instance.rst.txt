.. _standard-objects-interface-instance:

##################
Interface Instance
##################

An **interface instance** is a single addressable instance of a :doc:`interface_definition`.

**********
Attributes
**********

Instance attributes are per-interface-instance; they can vary between instances of the interface.

.. _standard-objects-interface-instance-class:

Class
=====

Indicates the :ref:`class<standard-objects-interface-definition-class>` of the defined interface of which
this is an instance.

.. _standard-objects-interface-instance-id:

Id
==

The **id** is a unique string identifying this interface instance. The string must be unique within
the definition containing the interface instance.

.. _standard-objects-interface-display-name:

Display Name
============

The **display name** attribute provides a string that should be used to identify an interface in a
software user interface.

********
Children
********

Interface instances can have the following children:

* :ref:`standard-objects-property-value`
* :ref:`standard-objects-interface-instance`

.. _standard-objects-interface-instance-markup:

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``interface``
    * Attributes:

      * ``class``: :ref:`standard-objects-interface-instance-class`
      * ``id``: :ref:`standard-objects-interface-instance-id`
      * ``displayname``: :ref:`standard-objects-interface-display-name`
    
    Example:

    .. code-block:: xml

      <interface class="org.esta.intensity.1/binary-dimmer" id="primary-dimmer" />
