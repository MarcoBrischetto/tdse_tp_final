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
            "text": "actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n\n    \n    //Eventos LED\n    in event EV_LED_01_OFF\n    in event EV_LED_01_ON\n    in event EV_LED_01_BLINK\n    in event EV_LED_01_PULSE\n\n    \ninternal:    \n    \n    var tick:integer\n    const DEL_LED_XX_BLI:integer = 5\n    const DEL_LED_XX_PUL:integer = 10\n    \n    \n    \n\n    \n    \n    \n    "
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 2266.4453125,
          "y": 360
        },
        "size": {
          "width": 1094,
          "height": 580
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 2153,
        "id": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "embeds": [
          "8c2f0b68-7b66-4e1f-b8dd-782fafa2167e",
          "02990247-f8fd-44ef-a49c-d36f31988cdd",
          "9536e482-5fe1-4dda-8172-b0fdd29a8504",
          "74b94359-9efc-407f-8a11-a651c7099a33",
          "a8339a8e-b9c8-47e1-b84c-bca783805128",
          "b9392c5b-ed3b-4ead-90f9-1c3f5b8bb921",
          "f154072a-e8b8-4f53-8cdb-9be9852c006a",
          "0846ea91-7d43-46f9-bb8e-531543ddfb88",
          "1d00c6ee-69d5-4ed5-bd36-e1e396f3acee",
          "f69480fe-48de-4dd7-8f09-083e4dfa4706",
          "b17c2596-a312-4f19-87f9-7d4e78d25f54",
          "ff937db8-35fa-4efd-bfb1-1298beb212a7",
          "020fff6c-4850-425f-8a04-dbf769ef09fc",
          "24e537e1-82fa-43e0-9ea9-b1e49988c90a",
          "6cd376a2-0903-42a0-936b-6146d085e92a",
          "c3f55811-8669-4435-bc1e-2772a6888a98",
          "cf8f91b2-e1be-4dfa-861a-0187008f9478"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "actuator"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 2914.2734375,
          "y": 635.7059640884399
        },
        "size": {
          "width": 150,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 2154,
        "id": "ff937db8-35fa-4efd-bfb1-1298beb212a7",
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {
          "name": {
            "text": "ST_LED_01_ON",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 2447.8515625,
          "y": 645.7059640884399
        },
        "size": {
          "width": 157.421875,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 2155,
        "id": "020fff6c-4850-425f-8a04-dbf769ef09fc",
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {
          "name": {
            "text": "ST_LED_01_OFF\n",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 2347.8515625,
          "y": 635.7059640884399
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "z": 2156,
        "id": "24e537e1-82fa-43e0-9ea9-b1e49988c90a",
        "embeds": [
          "d42e0235-d39f-4642-b713-cf69e2abfa98"
        ],
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 2447.8515625,
          "y": 400.5
        },
        "size": {
          "width": 243.84375,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 2157,
        "id": "6cd376a2-0903-42a0-936b-6146d085e92a",
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {
          "name": {
            "text": "ST_LED_01_BLINK_ON",
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
          "x": 2447.8515625,
          "y": 853
        },
        "size": {
          "width": 157.421875,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 2158,
        "id": "c3f55811-8669-4435-bc1e-2772a6888a98",
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {
          "name": {
            "text": "ST_LED_01_PULSE",
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
          "x": 3100.859375,
          "y": 400.5
        },
        "size": {
          "width": 243.84375,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 2159,
        "id": "cf8f91b2-e1be-4dfa-861a-0187008f9478",
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {
          "name": {
            "text": "ST_LED_01_BLINK_OFF",
            "fill": "#555555",
            "fontSize": 12
          },
          "specification": {
            "text": "[tick > 0]/tick--"
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
          "x": 2347.8515625,
          "y": 650.7059640884399
        },
        "parent": "24e537e1-82fa-43e0-9ea9-b1e49988c90a",
        "z": 2171,
        "id": "d42e0235-d39f-4642-b713-cf69e2abfa98",
        "attrs": {
          "label": {
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "cf8f91b2-e1be-4dfa-861a-0187008f9478"
        },
        "target": {
          "id": "6cd376a2-0903-42a0-936b-6146d085e92a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 230,
              "dy": 40,
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
                "text": "[tick == 0] / tick = DEL_LED_XX_BLI"
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
        "id": "a8339a8e-b9c8-47e1-b84c-bca783805128",
        "z": 2172,
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "6cd376a2-0903-42a0-936b-6146d085e92a"
        },
        "target": {
          "id": "cf8f91b2-e1be-4dfa-861a-0187008f9478",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 6.9921875,
              "dy": 25.8963623046875,
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
                "text": "[tick == 0] / tick = DEL_LED_XX_BLI"
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
        "id": "b9392c5b-ed3b-4ead-90f9-1c3f5b8bb921",
        "z": 2172,
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c3f55811-8669-4435-bc1e-2772a6888a98"
        },
        "target": {
          "id": "020fff6c-4850-425f-8a04-dbf769ef09fc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 130,
              "dy": 44.29400634765625,
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
                "text": "EV_LED_01_OFF"
              }
            },
            "position": {
              "distance": 0.7036799479343475,
              "offset": 55,
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
        "id": "8c2f0b68-7b66-4e1f-b8dd-782fafa2167e",
        "z": 2172,
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c3f55811-8669-4435-bc1e-2772a6888a98"
        },
        "target": {
          "id": "020fff6c-4850-425f-8a04-dbf769ef09fc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80,
              "dy": 54.79400634765625,
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
            "position": {
              "distance": 0.3642135890505127,
              "offset": -5,
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
        "id": "02990247-f8fd-44ef-a49c-d36f31988cdd",
        "z": 2172,
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "6cd376a2-0903-42a0-936b-6146d085e92a"
        },
        "target": {
          "id": "020fff6c-4850-425f-8a04-dbf769ef09fc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 60,
              "dy": 4.79400634765625,
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
                "text": "EV_LED_01_OFF"
              }
            },
            "position": {
              "distance": 0.44600712957588673,
              "offset": -55,
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
        "id": "9536e482-5fe1-4dda-8172-b0fdd29a8504",
        "z": 2172,
        "vertices": [
          {
            "x": 2507.8515625,
            "y": 630.5
          },
          {
            "x": 2507.85,
            "y": 630.5
          }
        ],
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cf8f91b2-e1be-4dfa-861a-0187008f9478"
        },
        "target": {
          "id": "020fff6c-4850-425f-8a04-dbf769ef09fc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 110,
              "dy": 4.79400634765625,
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
                "text": "EV_LED_01_OFF"
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
        "id": "74b94359-9efc-407f-8a11-a651c7099a33",
        "z": 2172,
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "vertices": [
          {
            "x": 2887.8515625,
            "y": 590.5
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "24e537e1-82fa-43e0-9ea9-b1e49988c90a"
        },
        "target": {
          "id": "020fff6c-4850-425f-8a04-dbf769ef09fc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 10,
              "dy": 44.79400634765625,
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
        "id": "1d00c6ee-69d5-4ed5-bd36-e1e396f3acee",
        "z": 2172,
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "020fff6c-4850-425f-8a04-dbf769ef09fc"
        },
        "target": {
          "id": "c3f55811-8669-4435-bc1e-2772a6888a98",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 30,
              "dy": 23.81549072265625,
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
                "text": "EV_LED_01_PULSE/\ntick = DEL_LED_XX_PUL"
              }
            },
            "position": {
              "distance": 0.4999998673959534,
              "offset": 95,
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
        "id": "f154072a-e8b8-4f53-8cdb-9be9852c006a",
        "z": 2172,
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "020fff6c-4850-425f-8a04-dbf769ef09fc"
        },
        "target": {
          "id": "6cd376a2-0903-42a0-936b-6146d085e92a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 30,
              "dy": 56.31549072265625,
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
                "text": "EV_LED_01_BLINK/ \ntick = DEL_LED_XX_BLI"
              }
            },
            "position": {
              "distance": 0.5539928704241133,
              "offset": -105,
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
        "id": "0846ea91-7d43-46f9-bb8e-531543ddfb88",
        "z": 2172,
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "020fff6c-4850-425f-8a04-dbf769ef09fc"
        },
        "target": {
          "id": "ff937db8-35fa-4efd-bfb1-1298beb212a7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 10,
              "dy": 20.6978759765625,
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
                "text": "EV_LED_01_ON"
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
        "id": "b17c2596-a312-4f19-87f9-7d4e78d25f54",
        "z": 2172,
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "ff937db8-35fa-4efd-bfb1-1298beb212a7"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 70,
              "dy": 36.3209228515625
            },
            "name": "topLeft"
          },
          "id": "020fff6c-4850-425f-8a04-dbf769ef09fc",
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
                "text": "EV_LED_01_OFF"
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
        "parent": "98a6352a-1cf1-45a1-855f-5eb3a0a5467d",
        "z": 2172,
        "id": "f69480fe-48de-4dd7-8f09-083e4dfa4706",
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
          "moduleName": "ActuatorStatechart",
          "statemachinePrefix": "actuatorStatechart",
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