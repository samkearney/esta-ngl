.. _tutorial-interface-hierarchy:

#######################
The Interface Hierarchy
#######################

Interfaces can be instantiated in a hierarchy. The interface instance hierarchy present in a device
definition provides meaningful information about how features are organized in a device.

For example, consider the definition for a lighting fixture with a few individually-addressable
cells. The fixture may organize its cells into cell groups, each containing a master intensity that
controls all of the cells:

.. tabs::

  .. code-tab:: xml

    <interfacedef class="cell-group" name="Cell Group" description="A group of cells">
      <property class="org.esta.intensity.1/intensity" alias="intensity-master" access="readwrite" lifetime="runtime" minimum="0" maximum="100" />
      <interfaceconstraint class="cell" minimum="1" />
    </interfacedef>

  .. code-tab:: json

    {
      "type": "interfacedef",
      "class": "cell-group",
      "name": "Cell Group",
      "description": "A group of cells",
      "children": [
        {
          "type": "property",
          "class": "org.esta.intensity.1/intensity",
          "alias": "intensity-master",
          "access": "readwrite",
          "lifetime": "runtime",
          "minimum": 0,
          "maximum": 100
        },
        {
          "type": "interfaceconstraint",
          "class": "cell",
          "minimum": 1
        }
      ]
    }

Note the :ref:`standard-objects-interface-constraint` element here. This element's job is to set rules for what
children are allowed when the interface is instantiated. This particular one says that a cell-group
interface instance must have at least one cell child.

The cell interface might look like:

.. tabs::

  .. code-tab:: xml

    <interfacedef class="cell" name="Cell" description="An intensity and RGB cell">
      <property class="org.esta.intensity.1/intensity" alias="intensity" access="readwrite" lifetime="runtime" minimum="0" maximum="100"/>
      <property class="org.esta.color.1/rgb" alias="color" access="readwrite" lifetime="runtime" minimum="0" maximum="100"/>
    </interfacedef>

  .. code-tab:: json

    {
      "type": "interfacedef",
      "class": "cell",
      "name": "Cell",
      "description": "An intensity and RGB cell",
      "children": [
        {
          "type": "property",
          "class": "org.esta.intensity.1/intensity",
          "alias": "intensity",
          "access": "readwrite",
          "lifetime": "runtime",
          "minimum": 0,
          "maximum": 100
        },
        {
          "type": "property",
          "class": "org.esta.color.1/rgb",
          "alias": "color",
          "access": "readwrite",
          "lifetime": "runtime",
          "minimum": 0,
          "maximum": 100
        }
      ]
    }

The cell has individual intensity and color properties.

Note that interface and property definitions within the same :ref:`standard-objects-library` do not require
the fully qualified class id which includes the :ref:`tutorial-identifiers-organization-id`.

These interface definitions give this device the tools to communicate information about its cell
layout. Assuming the definitions above appear in a library with the class ``com.acme.definitions.1``,
the device might contain:

.. tabs::

  .. code-tab:: xml

    <!-- A group of 4 cells -->
    <interface class="com.acme.definitions.1/cell-group" alias="cell-group-1">
      <interface class="com.acme.definitions.1/cell" alias="1" />
      <interface class="com.acme.definitions.1/cell" alias="2" />
      <interface class="com.acme.definitions.1/cell" alias="3" />
      <interface class="com.acme.definitions.1/cell" alias="4" />
    </interface>

  .. code-tab:: json

    {
      "type": "interface",
      "class": "com.acme.definitions.1/cell-group",
      "alias": "cell-group-1",
      "children": [
        {
          "type": "interface",
          "class": "com.acme.definitions.1/cell",
          "alias": "1"
        },
        {
          "type": "interface",
          "class": "com.acme.definitions.1/cell",
          "alias": "2"
        },
        {
          "type": "interface",
          "class": "com.acme.definitions.1/cell",
          "alias": "3"
        },
        {
          "type": "interface",
          "class": "com.acme.definitions.1/cell",
          "alias": "4"
        },
      ]
    }

To address the intensity property of cell 2, you would use the qualified ID
``cell-group-1/2/intensity``.

*******************
Order Is Meaningful
*******************

The order in which interfaces appear at the same level in the hierarchy is meaningful; similar or
identical items that appear in a certain order in an interface hierarchy should be presented in the
same order in any corresponding user interface elements. By contrast, text contained in the 
:ref:`standard-objects-interface-instance-alias` attribute of an interface instance has no meaning attached to
it. To modify the above example:

.. tabs::

  .. code-tab:: xml

    <!-- A group of 4 cells -->
    <interface class="com.acme.definitions.1/cell-group" alias="cell-group-1">
      <interface class="com.acme.definitions.1/cell" alias="4" />
      <interface class="com.acme.definitions.1/cell" alias="1" />
      <interface class="com.acme.definitions.1/cell" alias="3" />
      <interface class="com.acme.definitions.1/cell" alias="2" />
    </interface>

  .. code-tab:: json

    {
      "type": "interface",
      "class": "com.acme.definitions.1/cell-group",
      "alias": "cell-group-1",
      "children": [
        {
          "type": "interface",
          "class": "com.acme.definitions.1/cell",
          "alias": "4"
        },
        {
          "type": "interface",
          "class": "com.acme.definitions.1/cell",
          "alias": "1"
        },
        {
          "type": "interface",
          "class": "com.acme.definitions.1/cell",
          "alias": "3"
        },
        {
          "type": "interface",
          "class": "com.acme.definitions.1/cell",
          "alias": "2"
        },
      ]
    }

Notice that the alias strings contain numbers that are out of order. In this example, the first
interface that appears in the markup should always be considered the first cell, and
implementations should not parse or attempt to assign meaning to the alias strings.
