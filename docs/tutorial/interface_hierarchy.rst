.. _tutorial-interface-hierarchy:

#######################
The Interface Hierarchy
#######################

Interfaces can be instantiated in a hierarchy. The interface instance hierarchy present in a device
definition provides meaningful information about how features are organized in a device.

For example, consider the definition for a lighting fixture with a few individually-addressable
cells. The fixture may organize its cells into cell groups, each containing a master intensity that
controls all of the cells:

.. code-block:: xml

  <interfacedef class="cell-group">
    <property class="org.esta.intensity.1/intensity" id="intensity-master" />
    <interfaceconstraint class="cell" minimum="1" />
  </interfacedef>

Note the :ref:`standard-objects-interface-constraint` element here. This element's job is to set rules for what
children are allowed when the interface is instantiated. This particular one says that a cell-group
interface instance must have at least one cell child.

The cell interface might look like:

.. code-block:: xml

  <interfacedef class="cell">
    <property class="org.esta.intensity.1/intensity" id="intensity" />
    <property class="org.esta.color.1/rgb" id="color" />
  </interfacedef>

The cell has individual intensity and color properties.

These interface definitions give this device the tools to communicate information about its cell
layout. Assuming the definitions above appear in a library with the class ``com.acme.definitions.1``,
the device might contain:

.. code-block:: xml

  <!-- A group of 4 cells -->
  <interface class="com.acme.definitions.1/cell-group" id="cell-group-1">
    <interface class="com.acme.definitions.1/cell" id="1" />
    <interface class="com.acme.definitions.1/cell" id="2" />
    <interface class="com.acme.definitions.1/cell" id="3" />
    <interface class="com.acme.definitions.1/cell" id="4" />
  </interface>

To address the intensity property of cell 2, you would use the qualified ID
``cell-group-1/2/intensity``.

*******************
Order Is Meaningful
*******************

The order in which interfaces appear at the same level in the hierarchy is meaningful; similar or
identical items that appear in a certain order in an interface hierarchy should be presented in the
same order in any corresponding user interface elements. By contrast, text contained in the 
:ref:`standard-objects-interface-instance-id` attribute of an interface instance has no meaning attached to
it. To modify the above example:

.. code-block:: xml

  <!-- A group of 4 cells -->
  <interface class="com.acme.definitions.1/cell-group" id="cell-group-1">
    <interface class="com.acme.definitions.1/cell" id="4" />
    <interface class="com.acme.definitions.1/cell" id="1" />
    <interface class="com.acme.definitions.1/cell" id="3" />
    <interface class="com.acme.definitions.1/cell" id="2" />
  </interface>

Notice that the ID strings contain numbers that are out of order. In this example, the first
interface that appears in the markup should always be considered the first cell, and
implementations should not parse or attempt to assign meaning to the ID strings.
