{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "statechart_set_up Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_SYS_02_BTN_CONF\n    in event EV_SYS_02_BTN_ENT\n    in event EV_SYS_02_BTN_NXT \n    in event EV_SYS_02_BTN_ESC\n    \n    in event EV_SYS_02_BTN_CONF_ACTIVE\n    in event EV_SET_UP_02_NUEVA_TEMPERATURA\n\ninternal: \n    var option: integer = 1\n    var tiempo_puerta_opt: integer = 1\n    var tiempo_permanencia_opt: integer = 1"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -260,
          "y": -40
        },
        "size": {
          "width": 1570,
          "height": 530
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c099145b-0903-484e-9b30-93138ac64b44",
        "z": 270,
        "embeds": [
          "0fe1fef2-c81f-407a-870f-f11b6ff48fef",
          "5a68a55a-b8ec-4c47-93cc-6e1f3fce1c35",
          "f466e820-9e05-4c90-b54c-884a7649f9dc",
          "1ec4712d-365c-4516-ada0-6b1589484bba",
          "c4a10704-15a4-423d-8174-da51836fac04",
          "bff2ca31-4827-41f1-be21-147dc28064c0",
          "fd50b410-1545-4060-95e1-df61bab491d4",
          "316f96b5-6873-440f-a5a8-63141f2450f7",
          "7e4198ee-025f-463c-afe8-b1caa4c6098a",
          "6c77b2c1-a842-443a-a60c-5dd2ded3e672",
          "d00ac0f0-154c-4e82-af06-2c49a28bba49",
          "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9",
          "38814a6c-8d9b-44dd-b27e-0247e7304bbf",
          "36b8548a-74b1-4925-ae23-291c03231ee6",
          "30fa04d1-2aad-4cb1-9f7f-f8d2ce1bcc45",
          "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "interactive_menu"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 385,
          "y": 99
        },
        "size": {
          "height": 60,
          "width": 100.72917175292969
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49",
        "z": 271,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "embeds": [
          "232b607a-7eb7-4f38-8aab-a70ed4044505"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_02_MENU",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 701.85546875,
          "y": 99
        },
        "size": {
          "height": 60,
          "width": 158.28125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9",
        "z": 272,
        "embeds": [
          "42fbed77-3cba-4591-8799-cc0681f8f165"
        ],
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "attrs": {
          "name": {
            "text": "ST_SYS_02_PUERTA",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 701.85546875,
          "y": 262
        },
        "size": {
          "height": 70,
          "width": 160
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "38814a6c-8d9b-44dd-b27e-0247e7304bbf",
        "z": 274,
        "embeds": [
          "6e53d2dc-ee8a-446c-8ea8-e43a07387b42"
        ],
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "attrs": {
          "name": {
            "text": "ST_SYS_02_PERMANENCIA ",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 16.345481872558594,
          "y": 99
        },
        "size": {
          "height": 60,
          "width": 122.30903625488281
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 278,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "attrs": {
          "name": {
            "text": "ST_SYS_02_MAIN",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -148.0382080078125,
          "y": 240
        },
        "size": {
          "height": 67,
          "width": 233.0382080078125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "30fa04d1-2aad-4cb1-9f7f-f8d2ce1bcc45",
        "z": 280,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "attrs": {
          "name": {
            "text": "ST_SYS_02_UPDATE_TEMPERATURE",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 30,
          "y": 45.3498272895813
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 285,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ],
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 30,
          "y": 60.3498272895813
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 290,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 23.654518127441406,
              "dy": 1,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "0fe1fef2-c81f-407a-870f-f11b6ff48fef",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "30fa04d1-2aad-4cb1-9f7f-f8d2ce1bcc45",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 138.0382080078125,
              "dy": 5.769256591796875,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 63.654518127441406,
              "dy": 31,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "1ec4712d-365c-4516-ada0-6b1589484bba",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 30,
            "y": 180
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "30fa04d1-2aad-4cb1-9f7f-f8d2ce1bcc45",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 40,
              "dy": 5.769256591796875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SET_UP_02_NUEVA_TEMPERATURA"
              }
            },
            "position": {
              "distance": 0.5129713929900662,
              "offset": 16.665683445931474,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "c4a10704-15a4-423d-8174-da51836fac04",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": -80,
            "y": 129
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "38814a6c-8d9b-44dd-b27e-0247e7304bbf"
        },
        "target": {
          "id": "38814a6c-8d9b-44dd-b27e-0247e7304bbf",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 98.14453125,
              "dy": 4.111114501953125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_NXT / \ntiempo_permanencia_opt = (tiempo_permanencia_opt % 100) + 10"
              }
            },
            "position": {
              "distance": 0.4508904418675393,
              "offset": 133.46913580326353,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "6e53d2dc-ee8a-446c-8ea8-e43a07387b42",
        "z": 291,
        "parent": "38814a6c-8d9b-44dd-b27e-0247e7304bbf",
        "vertices": [
          {
            "x": 938.3515014648438,
            "y": 303
          },
          {
            "x": 840,
            "y": 230
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9"
        },
        "target": {
          "id": "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 158.14453125,
              "dy": 31,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_NXT / \ntiempo_puerta_opt = (tiempo_puerta_opt % 10) + 1"
              }
            },
            "position": {
              "distance": 0.5819582506761107,
              "offset": -87.15425694319397,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "42fbed77-3cba-4591-8799-cc0681f8f165",
        "z": 291,
        "parent": "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9",
        "vertices": [
          {
            "x": 939.85546875,
            "y": 59
          },
          {
            "x": 939.85546875,
            "y": 130
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "30fa04d1-2aad-4cb1-9f7f-f8d2ce1bcc45"
        },
        "target": {
          "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 5,
              "dy": 41,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_CONF_ACTIVE"
              }
            },
            "position": {
              "distance": 0.21197462116503887,
              "offset": -24.737805945748725,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "f466e820-9e05-4c90-b54c-884a7649f9dc",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 280,
            "y": 273.5
          },
          {
            "x": 280,
            "y": 200
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 5,
              "dy": 11,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_CONF_ACTIVE "
              }
            },
            "position": {
              "distance": 0.44474835561529635,
              "offset": -15.00000366210935,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "5a68a55a-b8ec-4c47-93cc-6e1f3fce1c35",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 340,
            "y": 110
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "38814a6c-8d9b-44dd-b27e-0247e7304bbf"
        },
        "target": {
          "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 85,
              "dy": 51,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_ESC"
              }
            },
            "position": {
              "distance": 0.33610612904732023,
              "offset": 25,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "fd50b410-1545-4060-95e1-df61bab491d4",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 590,
            "y": 297
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 28.14453125,
              "dy": 1,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 65,
              "dy": 21,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_ESC"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "6c77b2c1-a842-443a-a60c-5dd2ded3e672",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 570,
            "y": 80
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 63,
              "dy": 27,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_ESC"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "bff2ca31-4827-41f1-be21-147dc28064c0",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 290,
            "y": 23
          },
          {
            "x": 79.35,
            "y": 60
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49"
        },
        "target": {
          "id": "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 8,
              "dy": 37.52503967285156,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_NXT [option == 1]"
              }
            },
            "position": {
              "distance": 0.466606697785342,
              "offset": 15,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "id": "316f96b5-6873-440f-a5a8-63141f2450f7",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 660,
            "y": 130
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49"
        },
        "target": {
          "id": "38814a6c-8d9b-44dd-b27e-0247e7304bbf",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 8.14453125,
              "dy": 54.111114501953125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_NXT [option == 2]"
              }
            },
            "position": {
              "distance": 0.5714286583682715,
              "offset": 25,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4"
              }
            }
          }
        ],
        "id": "7e4198ee-025f-463c-afe8-b1caa4c6098a",
        "z": 291,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 630,
            "y": 316.11
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49"
        },
        "target": {
          "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 56,
              "dy": 49.08607482910156,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_02_BTN_NXT / option = (option % 2) + 1"
              }
            },
            "position": {
              "distance": 0.20840376849411882,
              "offset": -44.593929022379506,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "232b607a-7eb7-4f38-8aab-a70ed4044505",
        "z": 291,
        "parent": "d00ac0f0-154c-4e82-af06-2c49a28bba49",
        "vertices": [
          {
            "x": 410,
            "y": 190
          },
          {
            "x": 297,
            "y": 237
          }
        ],
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "StatechartSetUp",
          "statemachinePrefix": "statechartSetUp",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}