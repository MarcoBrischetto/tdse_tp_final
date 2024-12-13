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
            "text": "system_normal Copy Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    \n    in event EV_SYS_01_BTN_INGRESO_DOWN\n    in event EV_SYS_01_BTN_EGRESO_DOWN\n    in event EV_SYS_01_PUERTA_EGRESO_ABIERTA\n    in event EV_SYS_01_PUERTA_EGRESO_CERRADA\n    in event EV_SYS_01_PUERTA_INGRESO_ABIERTA\n    in event EV_SYS_01_PUERTA_INGRESO_CERRADA\n    in event EV_SYS_01_BARRERA_ACTIVA\n    in event EV_SYS_01_BARRERA_INACTIVA\n    in event EV_SYS_01_BTN_CONFIG_DOWN\n    in event EV_SYS_01_CONFIG_FINALIZADA\n    \n    out event EV_LED_01_SEMAFORO_INGRESO_ON\n    out event EV_LED_01_SEMAFORO_INGRESO_OFF\n    \n    out event EV_LED_02_SEMAFORO_EGRESO_ON\n    out event EV_LED_02_SEMAFORO_EGRESO_OFF\n    \n    out event EV_LED_03_MOTOR_ABRIR_ON\n    out event EV_LED_03_MOTOR_ABRIR_OFF\n    \n    out event EV_LED_04_MOTOR_CERRAR_ON\n    out event EV_LED_04_MOTOR_CERRAR_OFF\n    \n    out event EV_LED_05_BUZZER_ON\n    out event EV_LED_05_BUZZER_OFF\n    \n    out event EV_SYS_02_BTN_CONF_ACTIVE\n    \n\ninternal:    \n    var tick:integer\n    const DEL_BTN_01_MAX:integer = 50\n    const DEL_ESPERA:integer = 100\n    const DEL_PERMANENCIA:integer = 500\n    "
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -200,
          "y": -320
        },
        "size": {
          "width": 3120,
          "height": 680
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 655,
        "id": "17f6a549-270d-4115-b636-67e19be06efb",
        "embeds": [
          "0bdc59a4-c327-4000-be97-15b6083a5e64",
          "9e349a1c-df96-45d1-8234-da87170d6d2f",
          "60b76b38-5f25-4467-9257-70251af5103d",
          "ed809903-9327-4eba-9776-6ebc54db0ea2",
          "266e3a8d-650a-4a8e-8c1d-e9dc8f2ee8e0",
          "349ce69b-2661-49fb-89d9-b1c683caa0ad",
          "287051d1-3e8a-4a3d-afec-2735062876bb",
          "2f063020-ccb3-4053-bc4b-9b3409c0ea04",
          "b4232359-b805-4344-b9a9-0f26482fc3f3",
          "1b3a5aeb-1e23-4ee7-b605-de666a67cd6c",
          "25447389-dede-42c0-b68a-25efd8504d31",
          "5df7bb55-8cba-456d-a1b8-d8159828095c",
          "36e9e201-7e05-4802-9c4a-f51a9655579d",
          "27f5ab1d-35b8-4689-8132-d475d0013637",
          "c8d29cc8-e1e2-47cb-8935-1b9dad2db06d",
          "a3bd093a-5c35-42b3-98bd-ba20cc61d512",
          "4b7b4b1e-ffb6-4a86-aae3-0ecdb6d344e2",
          "5c9bc452-69c1-4b3b-8127-5953b3b67074",
          "f541da4d-b430-49d7-a0f6-7ddf12952c47",
          "c58454e3-47f0-4291-ae52-4fbdf06dd497",
          "bef1d98e-149e-4694-9bd7-e124806b142a",
          "2d0b3238-8523-4b96-9b1c-6487c6f7da1f",
          "759ac0c2-2e3d-4832-9862-ea74c317af67",
          "b0693bb1-c7ac-4a53-bb4b-9292a3001e7f",
          "6ac29187-cb69-40f2-82f3-6e87e9674a0f",
          "bc9eb44b-d031-4be7-a3b3-80d2243855fc",
          "e5b41cca-26eb-4555-95cc-2b63b9142524",
          "e3910b4c-9e52-4847-9bbf-5ada4c52db57",
          "41723696-43c5-4c50-b711-2ff0aacd698e",
          "f1d324c1-4628-4d17-8578-92612d61b908"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "System Normal"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1070.0000305175781,
          "y": -160
        },
        "size": {
          "height": 60,
          "width": 194.25347900390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 656,
        "id": "5c9bc452-69c1-4b3b-8127-5953b3b67074",
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_ESPERANDO_INGRESO",
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
          "x": 1354.2535095214844,
          "y": -43.51215076446533
        },
        "size": {
          "height": 60,
          "width": 179.87847900390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 657,
        "id": "f541da4d-b430-49d7-a0f6-7ddf12952c47",
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_PERSONA_ADENTRO",
            "fill": "#555555",
            "fontSize": 12
          },
          "specification": {
            "text": "[tick > 0]/tick--"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 467.5,
          "y": -227.49999809265137
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 658,
        "id": "c58454e3-47f0-4291-ae52-4fbdf06dd497",
        "embeds": [
          "57628af1-28bd-4bf0-879f-d8e4a546dca0",
          "894d1055-2a62-4b8a-a319-9fdcb35dae2c"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -120,
          "y": -170
        },
        "size": {
          "height": 60,
          "width": 151.09375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 659,
        "id": "bef1d98e-149e-4694-9bd7-e124806b142a",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_DESACTIVADO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 205.06076049804688,
          "y": -160
        },
        "size": {
          "height": 60,
          "width": 179.87847900390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 660,
        "id": "2d0b3238-8523-4b96-9b1c-6487c6f7da1f",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_ESPERAR_INGRESO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 2190,
          "y": -39.27083206176758
        },
        "size": {
          "height": 60,
          "width": 190
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 661,
        "id": "759ac0c2-2e3d-4832-9862-ea74c317af67",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_ESPERANDO_EGRESO",
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
          "x": 1750,
          "y": -39.27083206176758
        },
        "size": {
          "height": 64.24131870269775,
          "width": 187.06597900390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 662,
        "id": "b0693bb1-c7ac-4a53-bb4b-9292a3001e7f",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_ABRIENDO_EGRESO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1354.2535095214844,
          "y": -249.99999809265137
        },
        "size": {
          "height": 60,
          "width": 179.87847900390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 663,
        "id": "6ac29187-cb69-40f2-82f3-6e87e9674a0f",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_TIEMPO_EXCEDIDO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 690,
          "y": -160
        },
        "size": {
          "height": 60,
          "width": 187.06597900390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 664,
        "id": "bc9eb44b-d031-4be7-a3b3-80d2243855fc",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_ABRIENDO_INGRESO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 570,
          "y": -20
        },
        "size": {
          "height": 60,
          "width": 237.43057250976562
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 665,
        "id": "e5b41cca-26eb-4555-95cc-2b63b9142524",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_CERRANDO_INGRESO_TIEMPO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1070.0000305175781,
          "y": 110
        },
        "size": {
          "height": 60,
          "width": 244.61807250976562
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 666,
        "id": "e3910b4c-9e52-4847-9bbf-5ada4c52db57",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_CERRANDO_INGRESO_PERSONA",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 2650,
          "y": -130
        },
        "size": {
          "height": 60,
          "width": 230.2257080078125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 667,
        "id": "41723696-43c5-4c50-b711-2ff0aacd698e",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_CERRANDO_EGRESO_TIEMPO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 2180,
          "y": 130
        },
        "size": {
          "height": 60,
          "width": 237.43057250976562
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 682,
        "id": "f1d324c1-4628-4d17-8578-92612d61b908",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_CERRANDO_EGRESO_PERSONA",
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
          "x": 467.5,
          "y": -212.49999809265137
        },
        "parent": "c58454e3-47f0-4291-ae52-4fbdf06dd497",
        "z": 686,
        "id": "57628af1-28bd-4bf0-879f-d8e4a546dca0",
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
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 467.5,
          "y": -212.49999809265137
        },
        "parent": "c58454e3-47f0-4291-ae52-4fbdf06dd497",
        "z": 687,
        "id": "894d1055-2a62-4b8a-a319-9fdcb35dae2c",
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
          "id": "6ac29187-cb69-40f2-82f3-6e87e9674a0f"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 80,
              "dy": 9.270832061767578
            },
            "name": "topLeft"
          },
          "id": "b0693bb1-c7ac-4a53-bb4b-9292a3001e7f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_BTN_EGRESO_DOWN/\nraise EV_LED_03_MOTOR_ABRIR_ON "
              }
            },
            "position": {
              "distance": 0.3096572060282647,
              "offset": -25,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [
          {
            "x": 1630,
            "y": -220
          }
        ],
        "z": 688,
        "id": "0bdc59a4-c327-4000-be97-15b6083a5e64",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b0693bb1-c7ac-4a53-bb4b-9292a3001e7f"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 0,
              "dy": 35.38194274902344
            },
            "name": "topLeft"
          },
          "id": "759ac0c2-2e3d-4832-9862-ea74c317af67",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_PUERTA_EGRESO_ABIERTA / \ntick = DEL_ESPERA; raise EV_LED_02_SEMAFORO_EGRESO_ON;\nraise EV_LED_03_MOTOR_ABRIR_OFF"
              }
            },
            "position": {
              "distance": 0.539536765823301,
              "offset": 65.00000061035156,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 688,
        "id": "27f5ab1d-35b8-4689-8132-d475d0013637",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "759ac0c2-2e3d-4832-9862-ea74c317af67"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 110.08642578125,
              "dy": 6.5250396728515625
            },
            "name": "topLeft"
          },
          "id": "f1d324c1-4628-4d17-8578-92612d61b908",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "  EV_SYS_01_BARRERA_INACTIVA/\n  raise EV_LED_02_SEMAFORO_EGRESO_OFF;\n  raise EV_LED_04_MOTOR_CERRAR_ON"
              }
            },
            "position": {
              "distance": 0.5915164076486641,
              "offset": -165.00008789062485,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [],
        "z": 688,
        "id": "9e349a1c-df96-45d1-8234-da87170d6d2f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "759ac0c2-2e3d-4832-9862-ea74c317af67"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 100.070068359375,
              "dy": 60
            },
            "name": "topLeft"
          },
          "id": "41723696-43c5-4c50-b711-2ff0aacd698e",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "  [tick == 0]/\n  raise EV_LED_02_SEMAFORO_EGRESO_OFF;\n  raise EV_LED_04_MOTOR_CERRAR_ON"
              }
            },
            "position": {
              "distance": 0.36225687942071794,
              "offset": -44.952441489207686,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [
          {
            "x": 2750,
            "y": -40
          }
        ],
        "z": 688,
        "id": "ed809903-9327-4eba-9776-6ebc54db0ea2",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 110.08642578125,
              "dy": 66.52503967285156
            },
            "name": "topLeft"
          },
          "id": "f1d324c1-4628-4d17-8578-92612d61b908",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 40.03923034667969,
              "dy": 56.111114501953125
            },
            "name": "topLeft"
          },
          "id": "2d0b3238-8523-4b96-9b1c-6487c6f7da1f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_PUERTA_EGRESO_CERRADA/\nraise EV_LED_04_MOTOR_CERRAR_OFF; raise EV_LED_05_BUZZER_OFF "
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [
          {
            "x": 2290.09,
            "y": 230
          },
          {
            "x": 1850,
            "y": 260
          }
        ],
        "z": 688,
        "id": "60b76b38-5f25-4467-9257-70251af5103d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "e5b41cca-26eb-4555-95cc-2b63b9142524"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 90.03923034667969,
              "dy": 66.11111068725586
            },
            "name": "topLeft"
          },
          "id": "2d0b3238-8523-4b96-9b1c-6487c6f7da1f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_PUERTA_INGRESO_CERRADA/\nraise EV_LED_04_MOTOR_CERRAR_OFF"
              }
            },
            "position": {
              "distance": 0.39496711509644583,
              "offset": -25,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 688,
        "id": "b4232359-b805-4344-b9a9-0f26482fc3f3",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "2d0b3238-8523-4b96-9b1c-6487c6f7da1f"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 10.032989501953125,
              "dy": 36.11111068725586
            },
            "name": "topLeft"
          },
          "id": "bc9eb44b-d031-4be7-a3b3-80d2243855fc",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_BTN_INGRESO_DOWN/\nraise EV_LED_03_MOTOR_ABRIR_ON"
              }
            },
            "position": {
              "distance": 0.483551253642391,
              "offset": -44.99999938964845,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 688,
        "id": "1b3a5aeb-1e23-4ee7-b605-de666a67cd6c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "2d0b3238-8523-4b96-9b1c-6487c6f7da1f"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 130.04690551757812,
              "dy": 26.11111068725586
            },
            "name": "topLeft"
          },
          "id": "bef1d98e-149e-4694-9bd7-e124806b142a",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_BTN_CONFIG_DOWN\n/ raise EV_SYS_02_BTN_CONF_ACTIVE"
              }
            },
            "position": {
              "distance": 0.6149622796629804,
              "offset": 44.99999938964844,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [],
        "z": 688,
        "id": "4b7b4b1e-ffb6-4a86-aae3-0ecdb6d344e2",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "bef1d98e-149e-4694-9bd7-e124806b142a"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 0.0392303466796875,
              "dy": 36.11111068725586
            },
            "name": "topLeft"
          },
          "id": "2d0b3238-8523-4b96-9b1c-6487c6f7da1f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_CONFIG_FINALIZADA"
              }
            },
            "position": {
              "distance": 0.4425188952522347,
              "offset": 45.00000061035156,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [],
        "z": 688,
        "id": "c8d29cc8-e1e2-47cb-8935-1b9dad2db06d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c58454e3-47f0-4291-ae52-4fbdf06dd497"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 90.11563110351562,
              "dy": 16
            },
            "name": "topLeft"
          },
          "id": "2d0b3238-8523-4b96-9b1c-6487c6f7da1f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 688,
        "id": "a3bd093a-5c35-42b3-98bd-ba20cc61d512",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "41723696-43c5-4c50-b711-2ff0aacd698e"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 155.78570556640625,
              "dy": 19.623260498046875
            },
            "name": "topLeft"
          },
          "id": "f541da4d-b430-49d7-a0f6-7ddf12952c47",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_PUERTA_EGRESO_CERRADA/\nraise EV_LED_04_MOTOR_CERRAR_OFF"
              }
            },
            "position": {
              "distance": 0.4492630486657108,
              "offset": 35,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [
          {
            "x": 2050,
            "y": -170
          },
          {
            "x": 1750,
            "y": -170
          },
          {
            "x": 1510.04,
            "y": -150
          }
        ],
        "z": 688,
        "id": "266e3a8d-650a-4a8e-8c1d-e9dc8f2ee8e0",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "e3910b4c-9e52-4847-9bbf-5ada4c52db57"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 85.78564453125,
              "dy": 49.623260498046875
            },
            "name": "topLeft"
          },
          "id": "f541da4d-b430-49d7-a0f6-7ddf12952c47",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_PUERTA_INGRESO_CERRADA/\nraise EV_LED_04_MOTOR_CERRAR_OFF;\ntick = DEL_PERMANENCIA"
              }
            },
            "position": {
              "distance": 0.7036477840275832,
              "offset": 145.61604310363296,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [
          {
            "x": 1360,
            "y": 130
          },
          {
            "x": 1440.04,
            "y": 110
          }
        ],
        "z": 688,
        "id": "287051d1-3e8a-4a3d-afec-2735062876bb",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f541da4d-b430-49d7-a0f6-7ddf12952c47"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 35.836669921875,
              "dy": 66.5250244140625
            },
            "name": "topLeft"
          },
          "id": "6ac29187-cb69-40f2-82f3-6e87e9674a0f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[tick == 0]/\nraise EV_LED_05_BUZZER_ON"
              }
            },
            "position": {
              "distance": 0.5000000392480999,
              "offset": -4.999973144531282,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 688,
        "id": "5df7bb55-8cba-456d-a1b8-d8159828095c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f541da4d-b430-49d7-a0f6-7ddf12952c47"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 0.032958984375,
              "dy": 39.623260498046875
            },
            "name": "topLeft"
          },
          "id": "b0693bb1-c7ac-4a53-bb4b-9292a3001e7f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_BTN_EGRESO_DOWN/\nraise EV_LED_03_MOTOR_ABRIR_ON "
              }
            },
            "position": {
              "distance": 0.5463239051570388,
              "offset": -55.000001525878915,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "z": 688,
        "id": "36e9e201-7e05-4802-9c4a-f51a9655579d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "bc9eb44b-d031-4be7-a3b3-80d2243855fc"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 10.026702880859375,
              "dy": 36.11111068725586
            },
            "name": "topLeft"
          },
          "id": "5c9bc452-69c1-4b3b-8127-5953b3b67074",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_01_PUERTA_INGRESO_ABIERTA / \ntick = DEL_ESPERA; raise EV_LED_01_SEMAFORO_INGRESO_ON;\nraise EV_LED_03_MOTOR_ABRIR_OFF"
              }
            },
            "position": {
              "distance": 0.8855043595521007,
              "offset": -75.00001464843751,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [],
        "z": 688,
        "id": "25447389-dede-42c0-b68a-25efd8504d31",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5c9bc452-69c1-4b3b-8127-5953b3b67074"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 99.99993896484375,
              "dy": 15.381942749023438
            },
            "name": "topLeft"
          },
          "id": "e5b41cca-26eb-4555-95cc-2b63b9142524",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "  [tick == 0]/\n  raise EV_LED_01_SEMAFORO_INGRESO_OFF;\n  raise EV_LED_04_MOTOR_CERRAR_ON"
              }
            },
            "position": {
              "distance": 0.7740140017441358,
              "offset": 53.9102805350664,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [
          {
            "x": 1110,
            "y": -30
          },
          {
            "x": 1060,
            "y": -4.6200000000000045
          }
        ],
        "z": 688,
        "id": "2f063020-ccb3-4053-bc4b-9b3409c0ea04",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5c9bc452-69c1-4b3b-8127-5953b3b67074"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 90,
              "dy": 0
            },
            "name": "topLeft"
          },
          "id": "e3910b4c-9e52-4847-9bbf-5ada4c52db57",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "  EV_SYS_01_BARRERA_ACTIVA/\n  raise EV_LED_01_SEMAFORO_INGRESO_OFF;\n  raise EV_LED_04_MOTOR_CERRAR_ON"
              }
            },
            "position": {
              "distance": 0.5945358350056326,
              "offset": -28.7369384765625,
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
        "parent": "17f6a549-270d-4115-b636-67e19be06efb",
        "vertices": [
          {
            "x": 1160,
            "y": 70
          }
        ],
        "z": 688,
        "id": "349ce69b-2661-49fb-89d9-b1c683caa0ad",
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
          "moduleName": "SystemNormalCopy",
          "statemachinePrefix": "systemNormalCopy",
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