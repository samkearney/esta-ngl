####################
Interface Definition
####################

An interface describes a behavior contract for a feature of a device. An **interface definition**
provides information about how to interact with the interface and the contract the interface
defines. An interface definition defines several attributes about an interface.

**********
Attributes
**********

Type
====

An interface's **type** is a unique string identifying an individual interface definition.

********
Children
********

Interface definitions can have the following children:

* Interface Instance
* Property Instance
* Tag

These children indicate the behavior contract prescribed by the interface.

.. tabs::

  .. tab:: XML

    * Tag name: ``interfacedef``
    * Attributes:

      * ``type``: Type
    
    Example:

    .. code-block:: xml

      <interfacedef type="esta.interface.1">
        <property type="esta.property.1" id="property" />
      </interfacedef>
