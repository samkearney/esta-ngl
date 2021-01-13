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

Class (Required)
================

Indicates the :ref:`class<standard-objects-interface-definition-class>` of the defined interface of which
this is an instance.

When more than one instance of the same class is used within a fixture definition, each instance must be
identified by including the ``!`` delimiter followed by a unique instance number. If multiple interface
instances are instantiated using the *count* attribute, each instance will be identified starting with
the initial instance number and incrementing by 1 for each instance.

.. _standard-objects-interface-instance-alias:

Alias (Required)
================

The **alias** is a unique string identifying this interface instance. The string must be unique within
the definition containing the interface instance. When an interface instance has been instatiated using the
count mechnisim, each instance will be identified with a unique alias followed by the ``!`` delimiter
and a unique instance number.

.. _standard-objects-interface-friendly-name:

Friendly Name
=============

The **friendly name** attribute provides a string that could be used to identify a particular instance
of an interface in a software user interface, in order to provide more context to a user. It is not
intended to uniquely identify the interface in a database.

.. _standard-objects-interface-instance-count:

Count
=====

The **count** attribute provides a mechanism for instantiating multiple interface instances of the same
type. When multiple instances are instantiated in this way, each instance is given an alias of that
provided followed by the ``!`` delimiter and an incrementing instance number (starting from 1).

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
      * ``count``: :ref:`standard-objects-interface-count`
    
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
      count         string     :ref:`standard-objects-interface-count`
      ============= ========== =======================================================
    
    Example:

    .. code-block:: json

      {
        "type": "interface",
        "class": "org.esta.intensity.1/binary-dimmer",
        "alias": "primary-dimmer",
        "friendlyname": "Primary Dimmer"
      }
