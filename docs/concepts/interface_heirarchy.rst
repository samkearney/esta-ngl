.. _concepts-interface-heirarchy:

#######################
Heirarchy of Interfaces
#######################

Interfaces can be instantiated in a heirarchy. The interface instance heirarchy present in a device
definition provides meaningful information about how features are organized in a device.

For example, consider the definition for a lighting fixture with a few individually-addressable
cells. The fixture may organize its cells into cell groups, each containing a master intensity that
controls all of the cells:

.. code-block:: xml

  <interfacedef class="cell-group">
    <property class="org.esta.intensity.1/intensity" id="intensity-master" />
    <child class="cell" minimum="1" />
  </interfacedef>

Note the :ref:`concepts-interface-child` element here. This element's job is to set rules for what
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
layout. Assuming the definitions above appear in a definition list with the class
"com.acme.definitions.1", the device might contain:

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

.. _concepts-interface-child:

*****
Child
*****

Interface definitions can contain child objects which set rules for which interface instances are
allowed as children of that interface.

Attributes
==========

.. _concepts-interface-child-class:

Class
-----

The class of an interface that is allowed as a child to this interface. This can be a
:ref:`concepts-identifiers-qualified-class` or a relative class.

.. _concepts-interface-child-minimum:

Minimum
-------

The minimum number of instances of the child interface that are allowed. If this attribute is
absent, the minimum is assumed to be 0.

.. _concepts-interface-child-maximum:

Maximum
-------

The maximum number of instances of the child interface that are allowed. If this attribute is
absent, the maximum is assumed to be infinite.

Markup
======

.. tabs::

  .. tab:: XML

    * Tag name: ``child``
    * Attributes:

      * ``class``: :ref:`concepts-interface-child-class`
      * ``minimum``: :ref:`concepts-interface-child-minimum`
      * ``maximum``: :ref:`concepts-interface-child-maximum`

    Example:

    .. code-block:: xml

      <child class="com.acme.definitions.1/cell" minimum="1" maximum="10" />
