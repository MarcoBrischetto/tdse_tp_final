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
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "statechart_temperature Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    out event EV_SET_UP_02_NUEVA_TEMPERATURA\n    \ninternal: \n    var DEL_SYS_03_ESPERA_CONVERSION: integer = 20000\n    var tick: integer = 0\n    var flag_conversion1: integer = 1\n    var flag_conversion2: integer = 1"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 20,
          "y": -170
        },
        "size": {
          "height": 380,
          "width": 1060
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "aa33014f-c077-4e69-acba-e126aad9405d",
        "z": 16,
        "embeds": [
          "e9bcc8a2-15a4-42de-8aa1-e9f697160969",
          "cc2557e9-3c4a-453a-a61e-6bf18b29ac47",
          "901720b3-6a63-467e-9588-fc9a58ac9cbf",
          "b1ea87a4-9797-454e-afe9-1bc980a3cd9b",
          "2034c8cc-0a0d-4e03-bb0b-423290880fd5",
          "6913a96c-dd30-4f26-8699-529c65df94eb",
          "c4a90fc8-60ab-41af-b7cc-747964b8aceb",
          "6377325a-b574-463f-b4f7-45ee6de0fd75"
        ],
        "attrs": {
          "priority": {
            "text": 1
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 350,
          "y": 50
        },
        "size": {
          "height": 70,
          "width": 160
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "2034c8cc-0a0d-4e03-bb0b-423290880fd5",
        "z": 17,
        "parent": "aa33014f-c077-4e69-acba-e126aad9405d",
        "attrs": {
          "name": {
            "text": "ST_SYS_03_STANDBY",
            "fill": "#555555",
            "fontSize": 12
          },
          "specification": {
            "text": "[tick > 0]/tick--"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 100,
          "y": -110
        },
        "size": {
          "height": 60,
          "width": 187.06597900390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "6913a96c-dd30-4f26-8699-529c65df94eb",
        "z": 18,
        "parent": "aa33014f-c077-4e69-acba-e126aad9405d",
        "attrs": {
          "name": {
            "text": "ST_SYS_03_INICIAR_MEDICION",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 550,
          "y": -110
        },
        "size": {
          "height": 60,
          "width": 187.06597900390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c4a90fc8-60ab-41af-b7cc-747964b8aceb",
        "z": 19,
        "parent": "aa33014f-c077-4e69-acba-e126aad9405d",
        "attrs": {
          "name": {
            "text": "ST_SYS_03_ESPERAR_MEDICION",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "6913a96c-dd30-4f26-8699-529c65df94eb"
        },
        "target": {
          "id": "c4a90fc8-60ab-41af-b7cc-747964b8aceb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20.032989501953125,
              "dy": 36.111114501953125,
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
        "id": "b1ea87a4-9797-454e-afe9-1bc980a3cd9b",
        "z": 20,
        "parent": "aa33014f-c077-4e69-acba-e126aad9405d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "2034c8cc-0a0d-4e03-bb0b-423290880fd5"
        },
        "target": {
          "id": "6913a96c-dd30-4f26-8699-529c65df94eb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90.03298759460449,
              "dy": 56.111114501953125,
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
                "text": "[tick == 0]"
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
        "id": "901720b3-6a63-467e-9588-fc9a58ac9cbf",
        "z": 22,
        "parent": "aa33014f-c077-4e69-acba-e126aad9405d",
        "vertices": [
          {
            "x": 230,
            "y": 85
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": 49.999996185302734,
          "y": -87.5
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "6377325a-b574-463f-b4f7-45ee6de0fd75",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 23,
        "parent": "aa33014f-c077-4e69-acba-e126aad9405d",
        "embeds": [
          "503a7d7b-b0ba-4ebe-9b56-d261fe9cd138"
        ],
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
          "x": 49.999996185302734,
          "y": -72.5
        },
        "id": "503a7d7b-b0ba-4ebe-9b56-d261fe9cd138",
        "z": 24,
        "parent": "6377325a-b574-463f-b4f7-45ee6de0fd75",
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
          "id": "6377325a-b574-463f-b4f7-45ee6de0fd75"
        },
        "target": {
          "id": "6913a96c-dd30-4f26-8699-529c65df94eb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 10.032989501953125,
              "dy": 36.111114501953125,
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
        "id": "cc2557e9-3c4a-453a-a61e-6bf18b29ac47",
        "z": 25,
        "parent": "aa33014f-c077-4e69-acba-e126aad9405d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c4a90fc8-60ab-41af-b7cc-747964b8aceb"
        },
        "target": {
          "id": "2034c8cc-0a0d-4e03-bb0b-423290880fd5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 160,
              "dy": 46.11111068725586,
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
                "text": "[flag_conversion1 == 1 && flag_conversion2 == 0]\n/tick = DEL_SYS_03_ESPERA_CONVERSION;\nraise EV_SET_UP_02_NUEVA_TEMPERATURA"
              }
            },
            "position": {
              "distance": 0.2608521696542485,
              "offset": -194.99920654296875,
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
        "id": "e9bcc8a2-15a4-42de-8aa1-e9f697160969",
        "z": 26,
        "parent": "aa33014f-c077-4e69-acba-e126aad9405d",
        "vertices": [
          {
            "x": 650,
            "y": 80
          },
          {
            "x": 530,
            "y": 80
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
          "moduleName": "StatechartTemperature",
          "statemachinePrefix": "statechartTemperature",
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