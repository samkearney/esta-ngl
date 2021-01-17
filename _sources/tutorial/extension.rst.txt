.. _tutorial-extension:

#########
Extension
#########

:ref:`standard-objects-interface-definition` and :ref:`standard-objects-property-definition` objects can
be extended to add additional functionality. Interface and property definitions using the **extends** attribute
adopt all of the child interfaces (and properties) of the definition being extended.

Interfaces are extended for the purpose of renaming and/or adding additional children, while properties
are extended for the purpose of renaming.

*****
Rules
*****

.. _tutorial-extension-order:

Order
=====

When adding additional :ref:`interface contraints<standard-objects-interface-constraint>` or
:ref:`properties<standard-objects-property-instance>` to a previously defined
:ref:`standard-objects-interface-definition` these objects are added in the order defined to the end of
existing definition. This is important, as
:ref:`ordering is meaningful<tutorial-interface-hierarchy-ordering>`.

.. _tutorial-extension-alias:

Alias
=====

When adding additional :ref:`interface constraints<standard-objects-interface-constraint>` or
:ref:`properties<standard-objects-property-instance>` to a previously defined
:ref:`standard-objects-interface-definition` the alias must be unique within the scope of the extended
definition.

******
Markup
******

The ``Status LED`` property appears after the intensity property in the extended definition, and has
a unique alias. 

.. tabs::

  .. code-tab:: xml

    <interfacedef class="my-dimmer" name="My Dimmer" extends="udr://org.esta.intensity.1/dimmer" description="A simple dimmer with status LED intensity control.">
      <property class="udr://org.esta.intensity.1/intensity" alias="led-intensity" friendlyname="Status LED" access="readwrite" lifetime="runtime" minimum="0" maximum="100" />
    </interfacedef>

  .. code-tab:: json

    {
      "type": "interfacedef",
      "class": "my-dimmer",
      "name": "My Dimmer",
      "extends": "udr://org.esta.intensity.1/dimmer",
      "description": "A simple dimmer with status LED intensity control.",
      "children": [
        {
          "type": "property",
          "class": "udr://org.esta.intensity.1/intensity",
          "alias": "led-interface",
          "friendlyname": "Status LED",
          "access": "readwrite",
          "lifetime": "runtime",
          "minimum": 0,
          "maximum": 100
        }
      ]
    }
