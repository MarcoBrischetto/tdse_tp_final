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
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_SYS_02_BTN_CONF\n    in event EV_SYS_02_BTN_ENT\n    in event EV_SYS_02_BTN_NXT \n    in event EV_SYS_02_BTN_ESC\n\ninternal: \n    var option: integer = 1\n    var tiempo_puerta_opt: integer = 1\n    var tiempo_permanencia_opt: integer = 1"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -70,
          "y": -30
        },
        "size": {
          "height": 725,
          "width": 1413
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c099145b-0903-484e-9b30-93138ac64b44",
        "z": 209,
        "embeds": [
          "316f96b5-6873-440f-a5a8-63141f2450f7",
          "fd50b410-1545-4060-95e1-df61bab491d4",
          "7e4198ee-025f-463c-afe8-b1caa4c6098a",
          "6c77b2c1-a842-443a-a60c-5dd2ded3e672",
          "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
          "bff2ca31-4827-41f1-be21-147dc28064c0",
          "5a68a55a-b8ec-4c47-93cc-6e1f3fce1c35",
          "36b8548a-74b1-4925-ae23-291c03231ee6",
          "d00ac0f0-154c-4e82-af06-2c49a28bba49",
          "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
          "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9",
          "38814a6c-8d9b-44dd-b27e-0247e7304bbf"
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
          "x": 33,
          "y": 109
        },
        "size": {
          "width": 71.0078125,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 210,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "attrs": {
          "name": {
            "text": "Main",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 285,
          "y": 109
        },
        "size": {
          "width": 100.72917175292969,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d00ac0f0-154c-4e82-af06-2c49a28bba49",
        "z": 212,
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
        "z": 221,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 180,
            "y": 33
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
              "dx": 0,
              "dy": 38.08607482910156,
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
                "text": "EV_SYS_02_BTN_CONF "
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
                "text": "1"
              }
            }
          }
        ],
        "id": "5a68a55a-b8ec-4c47-93cc-6e1f3fce1c35",
        "z": 221,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [],
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
              "distance": 0.3834559717525622,
              "offset": -19,
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
        "z": 221,
        "parent": "d00ac0f0-154c-4e82-af06-2c49a28bba49",
        "vertices": [
          {
            "x": 310,
            "y": 200
          },
          {
            "x": 197,
            "y": 247
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -35,
          "y": 94
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
        "z": 227,
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
          "x": -35,
          "y": 109
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 228,
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
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
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
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 229,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 601.85546875,
          "y": 109
        },
        "size": {
          "width": 158.28125,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9",
        "z": 234,
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
        "z": 236,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 470,
            "y": 90
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
                "text": "EV_SYS_02_BTN_NXT / tiempo_puerta_opt = (tiempo_puerta_opt % 10) + 1"
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
        "z": 237,
        "parent": "5eaa7e7d-77dc-4c79-b916-03a0a3d14ea9",
        "vertices": [
          {
            "x": 839.85546875,
            "y": 69
          },
          {
            "x": 839.85546875,
            "y": 140
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 601.85546875,
          "y": 272
        },
        "size": {
          "width": 160,
          "height": 70
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "38814a6c-8d9b-44dd-b27e-0247e7304bbf",
        "z": 238,
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
                "text": "EV_SYS_02_BTN_NXT / tiempo_permanencia_opt = (tiempo_permanencia_opt % 100) + 10"
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
        "z": 239,
        "parent": "38814a6c-8d9b-44dd-b27e-0247e7304bbf",
        "vertices": [
          {
            "x": 838.3515014648438,
            "y": 313
          },
          {
            "x": 740,
            "y": 240
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
        "z": 240,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 530,
            "y": 326.11
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
        "z": 242,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 490,
            "y": 307
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
              "dx": -1.85546875,
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
        "z": 243,
        "parent": "c099145b-0903-484e-9b30-93138ac64b44",
        "vertices": [
          {
            "x": 560,
            "y": 140
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
          "moduleName": "InteractiveMenuStatechartExport",
          "statemachinePrefix": "interactiveMenuStatechartExport",
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