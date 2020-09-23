.. _standard-objects-interface-definition:

####################
Interface Definition
####################

An interface describes a contract of behavior for a feature of a device. An **interface definition**
provides information about how to interact with the interface and the contract the interface
defines. An interface definition defines several attributes about an interface.

It is possible for an interface definition to extend a previously defined interface by using
the *extends* attribute. This indicates the newly defined interface adopts all of the interfaces
and properties contained by the interface referenced.

**********
Attributes
**********

.. _standard-objects-interface-definition-class:

Class
=====

An interface's **class** is a string identifying an individual interface definition. This string
must be unique within the :ref:`standard-objects-library` or interface defition that contains the interface definition.

.. _standard-objects-interface-definition-name:

Name
====

A string containing the human-readable name of the interface. This attribute could be used as the translation
key for interfaces of this class.

.. _standard-objects-interface-definition-description:

Description
===========

A string that describes the purpose of an interface in human-readable language.

.. _standard-objects-interface-extends:

Extends
=======

Indicates the :ref:`class<standard-objects-interface-definition-class>` of the interface definition
this definition extends.

********
Children
********

Interface definitions can have the following children:

* :ref:`standard-objects-interface-definition`
* :ref:`standard-objects-interface-instance`
* :ref:`standard-objects-property-definition`
* :ref:`standard-objects-property-instance`
* :ref:`standard-objects-interface-constraint`

These children indicate the behavior contract prescribed by the interface.

.. _standard-objects-interface-definition-markup:

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``interfacedef``
    * Attributes:

      * ``class``: :ref:`standard-objects-interface-definition-class`
      * ``name``: :ref:`standard-objects-interface-definition-name`
      * ``description``: :ref:`standard-objects-interface-definition-description`
    
    Example:

    .. code-block:: xml

      <interfacedef
        class="binary-dimmer"
        name="Binary Dimmer"
        description="Represents non-dimming control of a light source">

        <property class="org.esta.intensity.1/binary-intensity" alias="intensity" access="readwrite" lifetime="runtime" minimum="0" maximum="100" />

      </interfacedef>

  .. tab:: JSON

    * Type: ``interfacedef``
    * Members:

      =========== ========== =======================================================
      Key         Value Type Represents
      =========== ========== =======================================================
      class       string     :ref:`standard-objects-interface-definition-class`
      name        string     :ref:`standard-objects-interface-definition-name`
      description string     :ref:`standard-objects-interface-definition-description`
      =========== ========== =======================================================
    
    Example:

    .. code-block:: json

      {
        "type": "interfacedef",
        "class": "binary-dimmer",
        "name": "Binary Dimmer",
        "description": "Represents non-dimming control of a light source",
        "children": [
          {
            "type": "property",
            "class": "org.esta.intensity.1/intensity",
            "alias": "intensity",
            "access": "readwrite",
            "lifetime": "runtime",
            "minimum": 0,
            "maximum": 100
          }
        ]
      }
