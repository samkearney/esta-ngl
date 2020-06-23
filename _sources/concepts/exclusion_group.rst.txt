###############
Exclusion Group
###############

.. role:: under-construction

:under-construction:`This section is a work-in-progress and should not be referenced at this time.`

An **exclusion group** represents a group of interface instances, identified by their id, of which
only one can be used at a time.

Exclusion groups have no attributes. They have one or more children, which are elements which
identify an interface instance.

**************
Markup Example
**************

.. code-block:: xml

  <exclusiongroup>
    <interfaceref id="gobo-wheel-1-indexed" />
    <interfaceref id="gobo-wheel-1-continuous" />
  </exclusiongroup>
