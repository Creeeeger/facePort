.class public Lcom/samsung/android/speech/CommandLanguage;
.super Ljava/lang/Object;
.source "CommandLanguage.java"


# static fields
.field public static final blacklist ALARM:[[Ljava/lang/String;

.field public static final blacklist CALL:[[Ljava/lang/String;

.field public static final blacklist CALL_PDT:[[Ljava/lang/String;

.field public static final blacklist CAMERA:[[Ljava/lang/String;

.field public static final blacklist CANCEL:[[Ljava/lang/String;

.field public static final blacklist MUSIC:[[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 44

    const-string v0, "\uc218\uc2e0"

    const-string v1, "\uac70\uc808"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v15, "Answer"

    const-string v3, "Reject"

    filled-new-array {v15, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v14, "\u63a5\u542c"

    const-string v13, "\u62d2\u7edd"

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v5

    const-string v12, "Responder"

    const-string v11, "Rechazar"

    filled-new-array {v12, v11}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "R\u00e9pondre"

    const-string v9, "Refuser"

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Antworten"

    move-object/from16 v17, v0

    const-string v0, "Abweisen"

    filled-new-array {v8, v0}, [Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v0

    const-string v0, "Rispondi"

    move-object/from16 v19, v1

    const-string v1, "Rifiuta"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v8

    const-string v8, "\u62d2\u5426"

    move-object/from16 v22, v0

    const-string v0, "\u5fdc\u7b54"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v23

    const-string v8, "\u041e\u0442\u0432\u0435\u0442\u0438\u0442\u044c"

    move-object/from16 v24, v9

    const-string v9, "\u041e\u0442\u043a\u043b\u043e\u043d\u0438\u0442\u044c"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v25

    const-string v8, "Atender"

    const-string v9, "Recusar"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v26

    filled-new-array {v15, v3}, [Ljava/lang/String;

    move-result-object v27

    filled-new-array {v12, v11}, [Ljava/lang/String;

    move-result-object v28

    const-string v3, "\u63a5\u901a"

    const-string v8, "\u639b\u65b7"

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v29

    const-string v3, "\u807d\u96fb\u8a71"

    const-string v8, "\u5514\u807d"

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v30

    const-string v3, "\u542c\u7535\u8bdd"

    const-string v8, "\u5514\u542c"

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v31

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v16

    move-object/from16 v9, v21

    move-object/from16 v8, v20

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object v1, v9

    move-object/from16 v0, v24

    move-object/from16 v9, v23

    move-object/from16 v23, v1

    move-object v1, v10

    move-object/from16 v10, v25

    move-object v0, v11

    move-object/from16 v11, v26

    move-object/from16 v25, v1

    move-object v1, v12

    move-object/from16 v12, v27

    move-object/from16 v26, v0

    move-object v0, v13

    move-object/from16 v13, v28

    move-object/from16 v27, v1

    move-object v1, v14

    move-object/from16 v14, v29

    move-object/from16 v28, v0

    move-object v0, v15

    move-object/from16 v15, v30

    move-object/from16 v16, v31

    filled-new-array/range {v2 .. v16}, [[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/speech/CommandLanguage;->CALL:[[Ljava/lang/String;

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v29

    const-string v2, "Decline"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v2, v28

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v31

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v32

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v33

    move-object/from16 v4, v18

    move-object/from16 v3, v23

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v34

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v35

    const-string v3, "\u62d2\u5426"

    move-object/from16 v4, v20

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v36

    const-string v3, "\u041e\u0442\u0432\u0435\u0442\u0438\u0442\u044c"

    const-string v4, "\u041e\u0442\u043a\u043b\u043e\u043d\u0438\u0442\u044c"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v37

    const-string v3, "Atender"

    const-string v4, "Recusar"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v38

    const-string v3, "Decline"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v39

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v40

    const-string v0, "\u63a5\u901a"

    const-string v1, "\u639b\u65b7"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v41

    const-string v0, "\u807d\u96fb\u8a71"

    const-string v1, "\u5514\u807d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v42

    const-string v0, "\u542c\u7535\u8bdd"

    const-string v1, "\u5514\u542c"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v43

    filled-new-array/range {v29 .. v43}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/CommandLanguage;->CALL_PDT:[[Ljava/lang/String;

    const-string v0, "\uc911\uc9c0"

    const-string v1, "\ub2e4\uc2dc \uc54c\ub9bc"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "Snooze"

    const-string v1, "Stop"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "\u505c\u6b62"

    const-string v4, "\u91cd\u54cd"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "Parar"

    const-string v5, "Repetir"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "Arr\u00eater"

    const-string v6, "R\u00e9p\u00e9ter"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "Stopp"

    const-string v7, "Erinnern"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "Dopo"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "\u30b9\u30c8\u30c3\u30d7"

    const-string v9, "\u30b9\u30cc\u30fc\u30ba"

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c"

    const-string v10, "\u041e\u0442\u043b\u043e\u0436\u0438\u0442\u044c"

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "Soneca"

    const-string v11, "Pr\u00f3xima"

    filled-new-array {v0, v11}, [Ljava/lang/String;

    move-result-object v11

    const-string v0, "Snooze"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v12

    const-string v0, "Parar"

    const-string v1, "Repetir"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v13

    const-string v0, "\u95dc\u9589"

    const-string v1, "\u8caa\u7761"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v14

    const-string v0, "\u95dc\u9589"

    const-string v1, "\u97ff\u591a\u6b21"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v0, "\u5173\u95ed"

    const-string v1, "\u54cd\u591a\u6b21"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/CommandLanguage;->ALARM:[[Ljava/lang/String;

    const-string v5, "\uc18c\ub9ac \ud06c\uac8c"

    const-string v6, "\uc18c\ub9ac \uc791\uac8c"

    const-string v1, "\ub2e4\uc74c"

    const-string v2, "\uc774\uc804"

    const-string v3, "\uc77c\uc2dc \uc815\uc9c0"

    const-string v4, "\uc7ac\uc0dd"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v7

    const-string v4, "Volume Up"

    const-string v5, "Volume Down"

    const-string v0, "Next"

    const-string v1, "Previous"

    const-string v2, "Pause"

    const-string v3, "Play"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v8

    const-string v4, "\u589e\u5927\u97f3\u91cf"

    const-string v5, "\u51cf\u5c0f\u97f3\u91cf"

    const-string v0, "\u4e0b\u4e00\u9996"

    const-string v1, "\u4e0a\u4e00\u9996"

    const-string v2, "\u6682\u505c"

    const-string v3, "\u64ad\u653e"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v9

    const-string v4, "Subir Volumen"

    const-string v5, "Bajar Volumen"

    const-string v0, "Siguiente"

    const-string v1, "Anterior"

    const-string v2, "Pausa"

    const-string v3, "Reproducir"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v4, "Augmenter le Volume"

    const-string v5, "Baisser le Volume"

    const-string v0, "Suivant"

    const-string v1, "Pr\u00e9c\u00e9dent"

    const-string v2, "Pause"

    const-string v3, "Lire"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v11

    const-string v4, "Lauter"

    const-string v5, "Leiser"

    const-string v0, "Weiter"

    const-string v1, "Vorherige"

    const-string v2, "Pause"

    const-string v3, "Wiedergabe"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v12

    const-string v4, "Aumenta Volume"

    const-string v5, "Abbassa Volume"

    const-string v0, "Successivo"

    const-string v1, "Precedente"

    const-string v2, "Pausa"

    const-string v3, "Riproduci"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v13

    const-string v4, "\u97f3\u91cf\u30a2\u30c3\u30d7"

    const-string v5, "\u97f3\u91cf\u30c0\u30a6\u30f3"

    const-string v0, "\u6b21"

    const-string v1, "\u524d"

    const-string v2, "\u4e00\u6642\u505c\u6b62"

    const-string v3, "\u518d\u751f"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v14

    const-string v4, "\u0413\u0440\u043e\u043c\u0447\u0435"

    const-string v5, "\u0422\u0438\u0448\u0435"

    const-string v0, "\u0412\u043f\u0435\u0440\u0435\u0434"

    const-string v1, "\u041d\u0430\u0437\u0430\u0434"

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "\u0418\u0433\u0440\u0430\u0442\u044c"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v15

    const-string v4, "Aumentar Volume"

    const-string v5, "Diminuir Volume"

    const-string v0, "Pr\u00f3xima"

    const-string v1, "Anterior"

    const-string v2, "Pausar"

    const-string v3, "Reproduzir"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v4, "Volume Up"

    const-string v5, "Volume Down"

    const-string v0, "Next"

    const-string v1, "Previous"

    const-string v2, "Pause"

    const-string v3, "Play"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v4, "Subir Volumen"

    const-string v5, "Bajar Volumen"

    const-string v0, "Siguiente"

    const-string v1, "Anterior"

    const-string v2, "Pausa"

    const-string v3, "Reproducir"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v4, "\u653e\u5927"

    const-string v5, "\u6e1b\u8f15"

    const-string v0, "\u4e0b\u9996"

    const-string v1, "\u4e0a\u9996"

    const-string v2, "\u66ab\u505c"

    const-string v3, "\u958b\u59cb"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v4, "\u5927\u8072"

    const-string v5, "\u7d30\u8072"

    const-string v0, "\u4e0b\u4e00\u9996"

    const-string v1, "\u4e0a\u4e00\u9996"

    const-string v2, "\u66ab\u505c"

    const-string v3, "\u64ad\u653e"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v20

    const-string v4, "\u5927\u58f0"

    const-string v5, "\u7ec6\u58f0"

    const-string v0, "\u4e0b\u4e00\u9996"

    const-string v1, "\u4e0a\u4e00\u9996"

    const-string v2, "\u6682\u505c"

    const-string v3, "\u64ad\u653e"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v21

    filled-new-array/range {v7 .. v21}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/CommandLanguage;->MUSIC:[[Ljava/lang/String;

    const-string v0, "\ucc30\uce75"

    const-string v1, "\ub3d9\uc601\uc0c1 \ucd2c\uc601"

    const-string v2, "\uc2a4\ub9c8\uc77c"

    const-string v3, "\uae40\uce58"

    const-string v4, "\ucd2c\uc601"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "Shoot"

    const-string v1, "Record Video"

    const-string v2, "Smile"

    const-string v3, "Cheese"

    const-string v4, "Capture"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "\u62cd\u7167"

    const-string v1, "\u5f55\u5236\u89c6\u9891"

    const-string v2, "\u5fae\u7b11"

    const-string v7, "\u8304\u5b50"

    const-string v8, "\u62cd\u6444"

    filled-new-array {v2, v7, v8, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "Grabar v\u00eddeo"

    const-string v1, "Sonrisa"

    const-string v2, "Patata"

    const-string v8, "Capturar"

    const-string v9, "Disparar"

    filled-new-array {v1, v2, v8, v9, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shooter"

    const-string v2, "Enregistrer une vid\u00e9o"

    const-string v10, "Sourire"

    filled-new-array {v10, v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Aufnahme"

    const-string v10, "Video aufnehmen"

    const-string v11, "L\u00e4cheln"

    const-string v12, "Bitte L\u00e4cheln"

    const-string v13, "Klick"

    filled-new-array {v11, v12, v13, v2, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v2, "Scatta"

    const-string v11, "Registra"

    const-string v12, "Sorriso"

    const-string v13, "Cattura"

    filled-new-array {v12, v3, v13, v2, v11}, [Ljava/lang/String;

    move-result-object v11

    const-string v2, "\u306f\u3044\u30c1\u30fc\u30ba"

    const-string v12, "\u9332\u753b"

    const-string v13, "\u30b9\u30de\u30a4\u30eb"

    const-string v14, "\u30c1\u30fc\u30ba"

    const-string v15, "\u64ae\u5f71"

    filled-new-array {v13, v14, v15, v2, v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v2, "\u0421\u043d\u0438\u043c\u0430\u044e"

    const-string v13, "\u0417\u0430\u043f\u0438\u0441\u044c \u0432\u0438\u0434\u0435\u043e"

    const-string v14, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    const-string v15, "\u0421\u043d\u044f\u0442\u044c"

    move-object/from16 v16, v12

    const-string v12, "\u0423\u043b\u044b\u0431\u043d\u0438\u0442\u0435\u0441\u044c"

    filled-new-array {v14, v15, v12, v2, v13}, [Ljava/lang/String;

    move-result-object v13

    const-string v2, "Diga xis"

    const-string v12, "Gravar V\u00eddeo"

    const-string v14, "Sorria"

    filled-new-array {v14, v2, v8, v9, v12}, [Ljava/lang/String;

    move-result-object v14

    const-string v2, "Shoot"

    const-string v12, "Record Video"

    const-string v15, "Smile"

    filled-new-array {v15, v3, v4, v2, v12}, [Ljava/lang/String;

    move-result-object v15

    const-string v2, "Patata"

    const-string v4, "Grabar Video"

    const-string v12, "Sonrisa"

    filled-new-array {v12, v2, v8, v9, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u7167\u76f8"

    const-string v8, "\u9304\u88fd\u5f71\u7247"

    const-string v9, "\u7b11\u4e00\u500b"

    const-string v12, "\u651d\u5f71"

    filled-new-array {v9, v3, v12, v4, v8}, [Ljava/lang/String;

    move-result-object v17

    const-string v4, "\u5f71\u76f8"

    const-string v8, "\u9304\u5f71"

    const-string v9, "\u7b11\u4e00\u7b11"

    const-string v12, "\u651d\u5f71"

    filled-new-array {v9, v3, v12, v4, v8}, [Ljava/lang/String;

    move-result-object v18

    const-string v4, "\u5f71\u76f8"

    const-string v8, "\u5f55\u5f71"

    const-string v9, "\u7b11\u4e00\u7b11"

    const-string v12, "\u6444\u5f71"

    filled-new-array {v9, v3, v12, v4, v8}, [Ljava/lang/String;

    move-result-object v19

    move-object v8, v0

    move-object v9, v1

    move-object/from16 v12, v16

    move-object/from16 v16, v2

    filled-new-array/range {v5 .. v19}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    const-string v0, "\ucde8\uc18c"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const-string v0, "Cancel"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u53d6\u6d88"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cancelar"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "Annuler"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Abbrechen"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Annulla"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u041e\u0442\u043c\u0435\u043d\u0430"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "Cancel"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v13

    const-string v4, "\u9000\u51fa"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v15

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v0

    filled-new-array/range {v1 .. v15}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/CommandLanguage;->CANCEL:[[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
