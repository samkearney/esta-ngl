.. _standard-objects-translation:

###########
Translation
###########

:ref:`Libraries<standard-objects-library>` and
:ref:`Device Definitions<standard-objects-device-definition>` can contain
child *translation* objects which provide translation values for a
specified language/country code.

Codes must be compliant with :ref:`ISO 639-1<https://en.wikipedia.org/wiki/ISO_639-1>`

**********
Attributes
**********

.. _standard-objects-translation-code:

Code (Required)
===============

The language code, compliant with :ref:`ISO 639-1<https://en.wikipedia.org/wiki/ISO_639-1>`

Children
========

A translation object can have the following children:

* :ref:`standard-objects-key-group`
* :ref:`standard-objects-key`

.. _standard-objects-case-markup:

Markup
======

.. tabs::

  .. tab:: XML

    * Tag name: ``translation``
    * Attributes:

      * ``code``: :ref:`standard-objects-translation-code`

    Example:

    .. code-block:: xml

      <translation code="en-gb">
        <keygroup class="udr://org.esta.intensity.1">
          <key class="dimmer">dimmer</key>
          <key class="intensity">intensity</key>
        </keygroup>
      </translation>

      <translation code="de">
        <keygroup class="udr://org.esta.intensity.1">
          <key class="dimmer">dimmer</key>
          <key class="intensity">intensität</key>
        </keygroup>
      </translation>

  .. tab:: JSON

    * UDR Type: ``translation``
    * Members:

      ============== ========== ============================================================
      Key            Value Type Represents
      ============== ========== ============================================================
      code           string     :ref:`standard-objects-translation-code`
      ============== ========== ============================================================

    Example:

    .. code-block:: json

      {
        "udrtype": "translation",
        "code": "en-gb",
        "children": [
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
