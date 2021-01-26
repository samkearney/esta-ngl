.. _standard-objects-key:

###
Key
###

:ref:`Translations<standard-objects-translation>` or
:ref:`Key Groups<standard-objects-key-group>` can contain child *key*
objects for a particular property class URI.

The value of the *key* is a translated string for the referenced class.

**********
Attributes
**********

.. _standard-objects-key-class:

Class (Required)
================

Indicates the :ref:`class<standard-objects-property-definition-class>` of the defined
property for which this key provides a translated value.

.. _standard-objects-key-value:

*****
Value
*****

The value of the string describing this property for the language this key is contained
within. The value shall be a lowercase string. This value is intended to be displayed
in graphical interfaces, so should be kept as short as possible.

.. _standard-objects-key-markup:

Markup
======

.. tabs::

  .. tab:: XML

    * Tag name: ``key``
    * Attributes:

      * ``class``: :ref:`standard-objects-key-class`

    Example:

    .. code-block:: xml

      <translation code="en-gb">
        <key class="udr://come.acme.definitions.1/my-interface/my-property">my property</key>
        <keygroup class="udr://org.esta.intensity.1">
          <key class="dimmer">dimmer</key>
          <key class="intensity">intensity</key>
        </keygroup>
      </translation>

      <translation code="de">
        <key class="udr://come.acme.definitions.1/my-interface/my-property">mein eigentum</key>
        <keygroup class="udr://org.esta.intensity.1">
          <key class="dimmer">dimmer</key>
          <key class="intensity">intensität</key>
        </keygroup>
      </translation>

  .. tab:: JSON

    * UDR Type: ``key``
    * Members:

      ============== ========== ============================================================
      Key            Value Type Represents
      ============== ========== ============================================================
      class          string     :ref:`standard-objects-key-class`
      value          string     :ref:`standard-objects-key-value`
      ============== ========== ============================================================

    Example:

    .. code-block:: json

      {
        "udrtype": "translation",
        "code": "en-gb",
        "children": [
          {
            "udrtype": "key",
            "class": "udr://come.acme.definitions.1/my-interface/my-property",
            "value": "my property"
          },
          {
            "udrtype": "keygroup",
            "class": "udr://org.esta.intensity.1",
            "children": [
              {
                "udrtype": "key",
                "class": "dimmer",
                "value": "dimmer"
              },
              {
                "udrtype": "key",
                "class": "intensity",
                "value": "intensity"
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
            "udrtype": "key",
            "class": "udr://come.acme.definitions.1/my-interface/my-property",
            "value": "mein eigentum"
          },
          {
            "udrtype": "keygroup",
            "class": "udr://org.esta.intensity.1",
            "children": [
              {
                "udrtype": "key",
                "class": "dimmer",
                "value": "dimmer"
              },
              {
                "udrtype": "key",
                "class": "intensity",
                "value": "intensität"
              }
            ]
          }
        ]
      }
