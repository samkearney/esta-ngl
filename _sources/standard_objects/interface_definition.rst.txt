.. _standard-objects-interface-definition:

####################
Interface Definition
####################

An interface describes a behavior contract for a feature of a device. An **interface definition**
provides information about how to interact with the interface and the contract the interface
defines. An interface definition defines several attributes about an interface.

**********
Attributes
**********

.. _standard-objects-interface-definition-class:

Class
=====

An interface's **class** is a string identifying an individual interface definition. This string
must be unique within the :ref:`standard-objects-library` that contains the interface definition.

.. _standard-objects-interface-definition-name:

Name
====

A string containing the human-readable name of the interface.

.. _standard-objects-interface-definition-description:

Description
===========

A string that describes the purpose of an interface in human-readable language.

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
      * ``description`: :ref:`standard-objects-interface-definition-description`
    
    Example:

    .. code-block:: xml

      <interfacedef
        class="binary-dimmer"
        name="Binary Dimmer"
        description="Represents non-dimming control of a light source">

        <property class="org.esta.intensity.1/binary-intensity" id="intensity" />

      </interfacedef>
