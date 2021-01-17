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
      <property class="org.esta.intensity.1/intensity" alias="intensity-master" friendlyname="Intensity Master" access="readwrite" lifetime="runtime" minimum="0" maximum="100" />
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
          "friendlyname": "Intensity Master",
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
      <property class="org.esta.intensity.1/intensity" alias="intensity" friendlyname="Cell Intensity" access="readwrite" lifetime="runtime" minimum="0" maximum="100"/>
      <property class="org.esta.color.1/rgb" alias="color" friendlyname="Cell Color" access="readwrite" lifetime="runtime" minimum="0" maximum="100"/>
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
          "friendlyname": "Cell Intensity",
          "access": "readwrite",
          "lifetime": "runtime",
          "minimum": 0,
          "maximum": 100
        },
        {
          "type": "property",
          "class": "org.esta.color.1/rgb",
          "alias": "color",
          "friendlyname": "Cell Color",
          "access": "readwrite",
          "lifetime": "runtime",
          "minimum": 0,
          "maximum": 100
        }
      ]
    }

The cell has individual intensity and color properties.

Note that object definitions and instances within the same :ref:`standard-objects-library` as their parent
do not require the fully qualified class id which includes the :ref:`tutorial-identifiers-organization-id`,
but can instantiated using the ``$`` root identifier which indicates the definition is within the root of
the same library.

These interface definitions give this device the tools to communicate information about its cell
layout. Assuming the definitions above appear in a library with the class ``com.acme.definitions.1``,
the device might contain:

.. tabs::

  .. code-tab:: xml

    <!-- A group of 4 cells -->
    <interface class="com.acme.definitions.1/cell-group" alias="cell-group-1" friendlyname="4x Cells">
      <interface class="$/cell" alias="1" friendlyname="Top Cell" />
      <interface class="$/cell" alias="2" friendlyname="Right Cell" />
      <interface class="$/cell" alias="3" friendlyname="Bottom Cell" />
      <interface class="$/cell" alias="4" friendlyname="Left Cell" />
    </interface>

    <!-- A group of 4 cells (shorthand version) -->
    <interface class="com.acme.definitions.1/cell-group" alias="cell-group-1" friendlyname="4x Cells">
      <interface class="$/cell" alias="cell!1" count="4" />
    </interface>

  .. code-tab:: json

    {
      "type": "interface",
      "class": "com.acme.definitions.1/cell-group",
      "alias": "cell-group-1",
      "friendlyname": "4x Cells",
      "children": [
        {
          "type": "interface",
          "class": "$/cell!1",
          "alias": "1",
          "friendlyname": "Top Cell"
        },
        {
          "type": "interface",
          "class": "$/cell!2",
          "alias": "2",
          "friendlyname": "Right Cell"
        },
        {
          "type": "interface",
          "class": "$/cell!3",
          "alias": "3",
          "friendlyname": "Bottom Cell"
        },
        {
          "type": "interface",
          "class": "$/cell!4",
          "alias": "4",
          "friendlyname": "Left Cell"
        }
      ]
    }

    {
      "type": "interface",
      "class": "com.acme.definitions.1/cell-group",
      "alias": "cell-group-1",
      "friendlyname": "4x Cells",
      "children": [
        {
          "type": "interface",
          "class": "$/cell",
          "alias": "cell!1",
          "count": 4
        }
      ]
    }

To address the intensity property of cell 2, you would use the qualified ID
``udr://cell-group-1/2/intensity`` or for the shorthand version ``udr://cell-group-1/cell!2/intensity``

.. _tutorial-interface-hierarchy-ordering:

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

    <!-- 2 groups of 4 cells -->

    <interface class="com.acme.definitions.1/cell-group" alias="cell-group-1" friendlyname="4x Cells">
      <interface class="$/cell" alias="4" friendlyname="Top Cell" />
      <interface class="$/cell" alias="3" friendlyname="Right Cell" />
      <interface class="$/cell" alias="1" friendlyname="Bottom Cell" />
      <interface class="$/cell" alias="2" friendlyname="Left Cell" />
    </interface>

    <interface class="com.acme.definitions.1/cell-group" alias="cell-group-2" friendlyname="4x Cells">
      <interface class="$/cell" alias="3" friendlyname="Right Cell" />
      <interface class="$/cell" alias="4" friendlyname="Top Cell" />
      <interface class="$/cell" alias="1" friendlyname="Bottom Cell" />
      <interface class="$/cell" alias="2" friendlyname="Left Cell" />
    </interface>

    <!-- 2 group of 4 cells (shorthand version) -->
    <interface class="com.acme.definitions.1/cell-group" alias="cell-group!1" count="2">
      <interface class="$/cell" alias="cell!1" count="4" />
    </interface>

  .. code-tab:: json

    {
      "type": "interface",
      "class": "com.acme.definitions.1/cell-group",
      "alias": "cell-group-1",
      "friendlyname": "4x Cells",
      "children": [
        {
          "type": "interface",
          "class": "$/cell",
          "alias": "4",
          "friendlyname": "Left Cell"
        },
                {
          "type": "interface",
          "class": "$/cell",
          "alias": "3",
          "friendlyname": "Right Cell"
        },
        {
          "type": "interface",
          "class": "$/cell",
          "alias": "1",
          "friendlyname": "Bottom Cell"
        },
        {
          "type": "interface",
          "class": "$/cell",
          "alias": "2",
          "friendlyname": "Left Cell"
        }
      ]
    }

    {
      "type": "interface",
      "class": "com.acme.definitions.1/cell-group",
      "alias": "cell-group-2",
      "friendlyname": "4x Cells",
      "children": [
        {
          "type": "interface",
          "class": "$/cell",
          "alias": "3",
          "friendlyname": "Right Cell"
        },
                {
          "type": "interface",
          "class": "$/cell",
          "alias": "4",
          "friendlyname": "Top Cell"
        },
        {
          "type": "interface",
          "class": "$/cell",
          "alias": "1",
          "friendlyname": "Bottom Cell"
        },
        {
          "type": "interface",
          "class": "$/cell",
          "alias": "2",
          "friendlyname": "Left Cell"
        }
      ]
    }

Notice that the alias strings contain numbers that are out of order. In this example, the first
interface that appears in the markup should always be considered the first cell, and
implementations should not parse or attempt to assign meaning to the alias strings.
