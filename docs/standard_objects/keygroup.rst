.. _standard-objects-key-group:

#########
Key Group
#########

:ref:`Translations<standard-objects-translation>` can contain child *keygroup*
objects which in turn contain other keygroups, or translation
:ref:`keys<standard-object-key>` for a particular class URI.

**********
Attributes
**********

.. _standard-objects-key-group-class:

Class (Required)
================

Indicates the :ref:`class<standard-objects-interface-definition-class>` of the defined
interface which this group provides translation keys for child interfaces and
properties.

Children
========

A key group object can have the following children:

* :ref:`standard-objects-key-group`
* :ref:`standard-objects-key`

.. _standard-objects-key-group-markup:

Markup
======

.. tabs::

  .. tab:: XML

    * Tag name: ``keygroup``
    * Attributes:

      * ``class``: :ref:`standard-objects-key-group-class`

    Example:

    .. code-block:: xml

      <!-- simplified example, green is a property defined within an RGB interface -->
      <translation code="en-gb">
        <keygroup class="udr://org.esta.color.1">
          <keygroup class="rgb">
            <key class="red">red</key>
            <key class="green">green</key>
            <key class="blue">blue</key>
          </keygroup>
        </keygroup>
      </translation>

      <!-- simplified example, green is a property defined within an RGB interface -->
      <translation code="de">
        <keygroup class="udr://org.esta.color.1">
          <keygroup class="rgb">
            <key class="red">rot</key>
            <key class="green">grün</key>
            <key class="blue">blau</key>
          </keygroup>
        </keygroup>
      </translation>

  .. tab:: JSON

    * UDR Type: ``keygroup``
    * Members:

      ============== ========== ============================================================
      Key            Value Type Represents
      ============== ========== ============================================================
      class          string     :ref:`standard-objects-key-group-class`
      ============== ========== ============================================================

    Example:

    .. code-block:: json

      {
        "udrtype": "translation",
        "code": "en-gb",
        "children": [
          {
            "udrtype": "keygroup",
            "class": "udr://org.esta.color.1",
            "children": [
              {
                "udrtype": "keygroup",
                "class": "rgb",
                "children": [
                  {
                    "udrtype": "key",
                    "class": "red",
                    "value": "red"
                  },
                  {
                    "udrtype": "key",
                    "class": "green",
                    "value": "green"
                  },
                  {
                    "udrtype": "key",
                    "class": "blue",
                    "value": "blue"
                  }
                ]
              }
            ]
          }
        ]
      }

      {
        "udrtype": "translation",
        "code": "de",
        "children": [
          {
            "udrtype": "keygroup",
            "class": "udr://org.esta.color.1",
            "children": [
              {
                "udrtype": "keygroup",
                "class": "rgb",
                "children": [
                  {
                    "udrtype": "key",
                    "class": "red",
                    "value": "rot"
                  },
                  {
                    "udrtype": "key",
                    "class": "green",
                    "value": "grün"
                  },
                  {
                    "udrtype": "key",
                    "class": "blue",
                    "value": "blau"
                  }
                ]
              }
            ]
          }
        ]
      }
