.. _tutorial-mutual-exclusion:

################
Mutual Exclusion
################

:ref:`standard-objects-interface-constraint` objects within an interface definition can be members
of an **exclusive group**. Interface constraint objects that are members of the same exclusive
group indicate that their corresponding interfaces, when instantiated, can only be controlled "one
at a time".

For example, you may see an interface definition containing a number of interface constraint
objects which have similar "Exclusive Group" attributes:

.. tabs::

  .. code-tab:: xml

    <!-- Simplified... -->
    <interfacedef class="org.esta.wheel.1/wheel" name="Wheel" description="An indexable, rotating wheel">
      <interfaceconstraint class="org.esta.wheel.1/wheel-velocity" maximum="1" exclusivegroup="wheel-control" />
      <interfaceconstraint class="org.esta.wheel.1/wheel-position" maximum="1" exclusivegroup="wheel-control" />
    </interfacedef>

  .. code-tab:: json

    {
      "type": "interfacedef",
      "class": "org.esta.wheel.1/wheel",
      "name": "Wheel",
      "description": "An indexable, rotating wheel",
      "children": [
        {
          "type": "interfaceconstraint",
          "class": "org.esta.wheel.1/wheel-velocity",
          "maximum": 1,
          "exclusivegroup": "wheel-control"
        },
        {
          "type": "interfaceconstraint",
          "class": "org.esta.wheel.1/wheel-position",
          "maximum": 1,
          "exclusivegroup": "wheel-control"
        }
      ]
    }

The interface constraint objects are determined to be in the same exclusive group using a
case-sensitive string comparison of the ``exclusivegroup`` attribute.

This indicates to control software that any instances of ``wheel-velocity`` and ``wheel-position``
that appear underneath a ``wheel`` interface instance are mutually exclusive, and it doesn't make
sense to control them at the same time.

**************
Mode Selectors
**************

In the example given above, the two mutually exclusive interfaces are *implicitly* exclusive;
there's no concept of switching the device from one mode to the other. The exclusive group
information simply exists to inform control software that it doesn't make sense to control both of
those interfaces simultaneously.

Some devices have addressable properties that are used to switch between modes. This can happen
when the device needs to change something, e.g. mechanically or in its software, to accept data for
a different mode. In this case, a property can be designated as a *mode selector*. To expand on the
example from above:

.. tabs::

  .. code-tab:: xml

    <!-- Simplified... -->
    <interfacedef class="org.esta.wheel.1/wheel" name="Wheel" description="An indexable, rotating wheel">
      <property class="org.esta.core.1/interface-selector" alias="wheel-control" friendlyname="Wheel Mode" modeselector="wheel-control" access="readwrite" lifetime="runtime" />

      <interfaceconstraint class="org.esta.wheel.1/wheel-velocity" maximum="1" exclusivegroup="wheel-control" />
      <interfaceconstraint class="org.esta.wheel.1/wheel-position" maximum="1" exclusivegroup="wheel-control" />
    </interfacedef>

  .. code-tab:: json

    {
      "type": "interfacedef",
      "class": "org.esta.wheel.1/wheel",
      "name": "Wheel",
      "description": "An indexable, rotating wheel",
      "children": [
        {
          "type": "property",
          "class": "org.esta.core.1/interface-selector",
          "alias": "wheel-control",
          "friendlyname": "Wheel Mode",
          "modeselector": "wheel-control",
          "access": "readwrite"
          "lifetime": "runtime"
        },
        {
          "type": "interfaceconstraint",
          "class": "org.esta.wheel.1/wheel-velocity",
          "maximum": 1,
          "exclusivegroup": "wheel-control"
        },
        {
          "type": "interfaceconstraint",
          "class": "org.esta.wheel.1/wheel-position",
          "maximum": 1,
          "exclusivegroup": "wheel-control"
        }
      ]
    }

The ``wheel-control`` property has a ``modeselector`` attribute which is identical to the
``exclusivegroup`` attributes for the two child elements. This means that this property is used to
select between the child interfaces, wherever two or more such children exists in an instance of
the ``wheel`` interface.
