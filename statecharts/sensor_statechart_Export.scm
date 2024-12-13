{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 60,
          "y": 2
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
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_BTN_01_UP\n    in event EV_BTN_01_DOWN\n    out event EV_SYS_01_DOWN\n    out event EV_SYS_01_UP\ninternal:    \n    var tick:integer\n    const DEL_BTN_01_MAX:integer = 50\n"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -1290,
          "y": 360
        },
        "size": {
          "height": 680,
          "width": 1080
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "z": 880,
        "embeds": [
          "046d26a3-ef2e-47c6-a22b-191a16f1335b",
          "eaa97ddf-4362-47ab-8ffe-e94eb97c4305",
          "4f10922e-4bb8-481f-8317-14f74d645341",
          "57642bd1-587d-4dae-900e-da2356b0f1f4",
          "ec484ddd-6a1a-4d3d-b76e-dad3a1157232",
          "ab93c842-0c88-4b6b-9579-bbfc33c3ff52",
          "71c5a07e-4920-4f6a-9225-08dc1a2c7999",
          "36b8548a-74b1-4925-ae23-291c03231ee6",
          "deb2b993-1130-453e-8a6a-ae04fc472da1",
          "db372094-acc6-467b-b44d-495606208445",
          "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f",
          "17a2b4ad-0d3f-4853-8931-c8e90e667323"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "sensor"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -1120.703125,
          "y": 588.5
        },
        "size": {
          "height": 60,
          "width": 114
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 881,
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {
          "name": {
            "text": "ST_BTN_01_UP",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -1230,
          "y": 615
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "deb2b993-1130-453e-8a6a-ae04fc472da1",
        "z": 882,
        "embeds": [
          "d7eeda77-83da-4d68-8bec-3add03a87aa1"
        ],
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -501,
          "y": 603.75
        },
        "size": {
          "height": 67.5,
          "width": 125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 884,
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {
          "name": {
            "text": "ST_BTN_01_DOWN",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -850,
          "y": 830
        },
        "size": {
          "height": 60,
          "width": 143
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f",
        "z": 885,
        "embeds": [
          "f117d2c3-2157-4cc6-b41c-97a92fa6c780",
          "1e3da150-1907-4c19-8a52-2b15611f4657"
        ],
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {
          "name": {
            "text": "ST_BTN_01_RAISING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -866,
          "y": 440
        },
        "size": {
          "height": 60,
          "width": 159
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "17a2b4ad-0d3f-4853-8931-c8e90e667323",
        "z": 889,
        "embeds": [
          "70b343e7-4e67-4c38-9c9f-3bf4a512b8b5",
          "979ba3a1-9ccb-4905-9807-c3a673ad556c"
        ],
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {
          "name": {
            "text": "ST_BTN_01_FALLING",
            "fill": "#555555",
            "fontSize": 12
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
          "x": -1230,
          "y": 630
        },
        "id": "d7eeda77-83da-4d68-8bec-3add03a87aa1",
        "z": 893,
        "parent": "deb2b993-1130-453e-8a6a-ae04fc472da1",
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
          "id": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 64.0140609741211,
              "dy": 62,
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
                "text": "EV_BTN_01_DOWN [tick == 0]"
              }
            },
            "position": {
              "distance": 0.5616653652630433,
              "offset": 13.13840181890119,
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
        "id": "ec484ddd-6a1a-4d3d-b76e-dad3a1157232",
        "z": 894,
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "17a2b4ad-0d3f-4853-8931-c8e90e667323"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 59.014060974121094,
              "dy": 17,
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
                "text": "EV_BTN_01_DOWN [tick <= 0]"
              }
            },
            "position": {
              "distance": 0.41244883425437495,
              "offset": -16.63257273756525,
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
        "id": "4f10922e-4bb8-481f-8317-14f74d645341",
        "z": 894,
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 112,
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
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP / tick = DEL_BTN_01_MAX"
              }
            },
            "position": {
              "distance": 0.24975746874375268,
              "offset": -37.097412109375,
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
        "id": "57642bd1-587d-4dae-900e-da2356b0f1f4",
        "z": 894,
        "vertices": [
          {
            "x": -741.5,
            "y": 631
          },
          {
            "x": -741.5,
            "y": 720
          }
        ],
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "17a2b4ad-0d3f-4853-8931-c8e90e667323"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 110.703125,
              "dy": 31.5,
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
                "text": "EV_BTN_01_UP [tick == 0]"
              }
            },
            "position": {
              "distance": 0.678302344369737,
              "offset": 14.8563232421875,
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
        "id": "eaa97ddf-4362-47ab-8ffe-e94eb97c4305",
        "z": 894,
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "vertices": [
          {
            "x": -830,
            "y": 550
          },
          {
            "x": -890,
            "y": 620
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 54.703125,
              "dy": 57.5,
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
                "text": "EV_BTN_01_UP [tick <= 0]"
              }
            },
            "position": {
              "distance": 0.6639194859521135,
              "offset": -115.3544921875,
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
        "id": "ab93c842-0c88-4b6b-9579-bbfc33c3ff52",
        "z": 894,
        "vertices": [
          {
            "x": -1067,
            "y": 870
          },
          {
            "x": -1067,
            "y": 718
          }
        ],
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "deb2b993-1130-453e-8a6a-ae04fc472da1"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 16.703125,
              "dy": 36.5,
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
        "id": "71c5a07e-4920-4f6a-9225-08dc1a2c7999",
        "z": 894,
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "17a2b4ad-0d3f-4853-8931-c8e90e667323",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 22,
              "dy": 35,
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
                "text": "EV_BTN_01_DOWN / tick = DEL_BTN_01_MAX"
              }
            },
            "position": {
              "distance": 0.24500634283064376,
              "offset": -53.22104166237071,
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
        "id": "046d26a3-ef2e-47c6-a22b-191a16f1335b",
        "z": 894,
        "vertices": [
          {
            "x": -1061,
            "y": 560
          }
        ],
        "parent": "853e4e20-0833-4974-aba4-8f4f355680c4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f"
        },
        "target": {
          "id": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 109.5,
              "dy": 48,
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
                "text": "EV_BTN_01_UP [tick > 0]/ tick--"
              }
            },
            "position": {
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
        "id": "1e3da150-1907-4c19-8a52-2b15611f4657",
        "z": 894,
        "parent": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f",
        "vertices": [
          {
            "x": -768.5,
            "y": 928
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f"
        },
        "target": {
          "id": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 33.5,
              "dy": -3,
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
                "text": "EV_BTN_01_DOWN [tick > 0]/ tick--"
              }
            },
            "position": {
              "distance": 0.49999964876703207,
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
                "text": "4"
              }
            }
          }
        ],
        "id": "f117d2c3-2157-4cc6-b41c-97a92fa6c780",
        "z": 895,
        "parent": "fb56c1d3-65e0-44ce-85bb-5f46e0d9592f",
        "vertices": [
          {
            "x": -776.5,
            "y": 807
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "17a2b4ad-0d3f-4853-8931-c8e90e667323"
        },
        "target": {
          "id": "17a2b4ad-0d3f-4853-8931-c8e90e667323",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 16,
              "dy": 5,
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
                "text": "EV_BTN_01_DOWN [tick > 0] /tick--"
              }
            },
            "position": {
              "distance": 0.3971951729395996,
              "offset": 15.135521818624145,
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
        "id": "979ba3a1-9ccb-4905-9807-c3a673ad556c",
        "z": 896,
        "vertices": [
          {
            "x": -826,
            "y": 410
          }
        ],
        "parent": "17a2b4ad-0d3f-4853-8931-c8e90e667323",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "17a2b4ad-0d3f-4853-8931-c8e90e667323"
        },
        "target": {
          "id": "17a2b4ad-0d3f-4853-8931-c8e90e667323",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80,
              "dy": 60,
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
                "text": "EV_BTN_01_UP [tick > 0]/tick--"
              }
            },
            "position": {
              "distance": 0.21256791817513218,
              "offset": -46.350430474908414,
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
        "id": "70b343e7-4e67-4c38-9c9f-3bf4a512b8b5",
        "z": 897,
        "vertices": [
          {
            "x": -746,
            "y": 520
          },
          {
            "x": -766,
            "y": 520
          }
        ],
        "parent": "17a2b4ad-0d3f-4853-8931-c8e90e667323",
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
          "moduleName": "SensorStatechart",
          "statemachinePrefix": "sensorStatechart",
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