.. _standard-objects-interface-instance:

##################
Interface Instance
##################

An **interface instance** is a single addressable instance of an :doc:`interface_definition`.

**********
Attributes
**********

Instance attributes are per-interface-instance; they can vary between instances of the interface.

.. _standard-objects-interface-instance-class:

Class
=====

Indicates the :ref:`class<standard-objects-interface-definition-class>` of the defined interface of which
this is an instance.

.. _standard-objects-interface-instance-alias:

Alias
=====

The **alias** is a unique string identifying this interface instance. The string must be unique within
the definition containing the interface instance.

.. _standard-objects-interface-friendly-name:

Friendly Name
=============

The **friendly name** attribute provides a string that could be used to identify a particular instance
of an interface in a software user interface, in order to provide more context to a user.

********
Children
********

Interface instances can have the following children:

* :ref:`standard-objects-interface-instance`
* :ref:`standard-objects-override`

.. _standard-objects-interface-instance-markup:

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``interface``
    * Attributes:

      * ``class``: :ref:`standard-objects-interface-instance-class`
      * ``alias``: :ref:`standard-objects-interface-instance-alias`
      * ``friendlyname``: :ref:`standard-objects-interface-friendly-name`
    
    Example:

    .. code-block:: xml

      <interface class="org.esta.intensity.1/binary-dimmer" alias="primary-dimmer" friendlyname="Primary Dimmer" />

  .. tab:: JSON

    * Type: ``interface``
    * Members

      ============= ========== =======================================================
      Key           Value Type Represents
      ============= ========== =======================================================
      class         string     :ref:`standard-objects-interface-instance-class`
      alias         string     :ref:`standard-objects-interface-instance-alias`
      friendlyname  string     :ref:`standard-objects-interface-friendly-name`
      ============= ========== =======================================================
    
    Example:

    .. code-block:: json

      {
        "type": "interface",
        "class": "org.esta.intensity.1/binary-dimmer",
        "alias": "primary-dimmer",
        "friendlyname": "Primary Dimmer"
      }
