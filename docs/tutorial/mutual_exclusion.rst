.. _tutorial-mutual-exclusion:

################
Mutual Exclusion
################

It is common to require only a single interface to be 'selected' from some number of interfaces
at any point. UDR achieves this using the :ref:`standard-objects-condition` mechanism with a Type
of *exclusive*. Any child interface is considered mutually exclusive to other child interfaces.
This means each can only be controlled "one at a time".

:ref:`standard-objects-interface-constraint` objects within an interface definition can be members
of an **exclusive group**. Interface constraint objects that are members of the same exclusive
group indicate that their corresponding interfaces, when instantiated, can only be controlled "one
at a time".

**************
Mode Selectors
**************

In the example below, the 2 interfaces that are children of the condition are mutually exclusive. The
condition is identified by an alias which provides controllers with an identifier that could be used
by a controller to generate a virtual selector.

.. tabs::

  .. tab:: XML

    .. code-block:: xml

      <!-- simplified example -->
      <interface class="udr://org.esta.wheel.1/wheel" alias="wheel">
        <condition type="exclusive" alias="wheel-control">
          <interface class="../wheel-velocity" alias="velocity" friendlyname="Wheel Speed">
          <interface class="../wheel-index" alias="index" friendlyname="Wheel Index">
        </condition>
      </interface>

  .. tab:: JSON

    .. code-block:: json

      {
        "udrtype": "interface",
        "class": "udr://org.esta.wheel.1/wheel",
        "alias": "wheel",
        "children": [
          {
            "udrtype": "condition",
            "type": "exclusive",
            "alias": "wheel-control",
            "children": [
              {
                "udrtype": "interface",
                "class": "../wheel-velocity",
                "alias": "velocity",
                "friendlyname": "Wheel Speed"
              },
              {
                "udrtype": "interface",
                "class": "../wheel-index",
                "alias": "index",
                "friendlyname": "Wheel Index"
              }
            ]
          }
        ]
      }

In the example given above, the two mutually exclusive interfaces are *implicitly* exclusive;
there's no concept of switching the device from one mode to the other. The exclusive condition
simply exists to inform control software that it doesn't make sense to control both of
those interfaces simultaneously.

Some devices have addressable properties that are used to switch between modes. This can happen
when the device needs to change something, e.g. mechanically or in its software, to accept data for
a different mode. In this case, a property with a data type of enum can be designated as a
*mode selector*. Each index of the property will select the child interface at the same index.
To expand on the example from above:

.. tabs::

  .. tab:: XML

    .. code-block:: xml

      <!-- simplified definition  -->
      <interfacedef class="udr://org.esta.wheel.1/wheel" name="Wheel">
        <property class="udr://org.esta.core.1/interface-selector" alias="interface-selector" access="readwrite" lifetime="runtime" />

        <interfaceconstraint class="../wheel-velocity" maximum="1" />
        <interfaceconstraint class="../wheel-index" maximum="1" />
      </interfacedef>

      <!-- simplified example (note the condition references the property) -->
      <interface class="udr://org.esta.wheel.1/wheel" alias="wheel">
        <condition type="exclusive" refalias="../interface-selector">
          <interface class="../wheel-velocity" alias="velocity" friendlyname="Wheel Speed">
          <interface class="../wheel-index" alias="index" friendlyname="Wheel Index">
        </condition>
      </interface>

  .. tab:: JSON

    .. code-block:: json

      {
        "udrtype": "interfacedef",
        "class": "udr://org.esta.wheel.1/wheel",
        "name": "Wheel",
        "children": [
          {
            "udrtype": "property",
            "class": "udr://org.esta.core.1/interface-selector",
            "alias": "interface-selector",
            "access": "readwrite"
            "lifetime": "runtime"
          },
          {
            "udrtype": "interfaceconstraint",
            "class": "../wheel-velocity",
            "maximum": 1
          },
          {
            "udrtype": "interfaceconstraint",
            "class": "../wheel-index",
            "maximum": 1
          }
        ]
      }

      {
        "udrtype": "interface",
        "class": "udr://org.esta.wheel.1/wheel",
        "alias": "wheel",
        "children": [
          {
            "udrtype": "condition",
            "type": "exclusive",
            "refalias": "../interface-selector",
            "children": [
              {
                "udrtype": "interface",
                "class": "../wheel-velocity",
                "alias": "velocity",
                "friendlyname": "Wheel Speed"
              },
              {
                "udrtype": "interface",
                "class": "../wheel-index",
                "alias": "index",
                "friendlyname": "Wheel Index"
              }
            ]
          }
        ]
      }

The ``interface-selector`` property is referenced by the condition. This means that this property
is used to select between the child interfaces, wherever two or more such children exist as children
of any condition referencing its alias.
