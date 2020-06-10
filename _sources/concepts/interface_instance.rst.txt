##################
Interface Instance
##################

An **interface instance** is a single addressable instance of a :doc:`interface_definition`.

**********
Attributes
**********

Instance attributes are per-interface-instance; they can vary between instances of the interface.

Id
==

The **id** is a unique string identifying this interface instance. The string must be unique within
a device definition.

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``interface``
    * Attributes:

      * ``type``: Type
      * ``id``: Id
    
    Example:

    .. code-block:: xml

      <interface type="esta.interface.1" id="my-interface-instance" />
