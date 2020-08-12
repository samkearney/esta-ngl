.. _concepts-interface-definition:

####################
Interface Definition
####################

An interface describes a behavior contract for a feature of a device. An **interface definition**
provides information about how to interact with the interface and the contract the interface
defines. An interface definition defines several attributes about an interface.

**********
Attributes
**********

.. _concepts-interface-definition-class:

Class
=====

An interface's **class** is a string identifying an individual interface definition. This string
must be unique within the :ref:`concepts-general-definition-list` that contains the interface
definition.

.. _concepts-interface-definition-description:

Description
===========

A string that describes the purpose of an interface in human-readable language.

********
Children
********

Interface definitions can have the following children:

* :ref:`concepts-interface-definition`
* :ref:`concepts-interface-instance`
* :ref:`concepts-property-definition`
* :ref:`concepts-property-instance`
* :ref:`concepts-interface-child`

These children indicate the behavior contract prescribed by the interface.

.. _concepts-interface-definition-markup:

******
Markup
******

.. tabs::

  .. tab:: XML

    * Tag name: ``interfacedef``
    * Attributes:

      * ``class``: :ref:`concepts-interface-definition-class`
      * ``description`: :ref:`concepts-interface-definition-description`
    
    Example:

    .. code-block:: xml

      <interfacedef
        class="binary-dimmer"
        description="Represents non-dimming control of a light source">

        <property class="org.esta.intensity.1/binary-intensity" id="intensity" />

      </interfacedef>
