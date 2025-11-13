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
    .locals 24

    .line 7
    const/16 v0, 0xf

    new-array v1, v0, [[Ljava/lang/String;

    const-string/jumbo v2, "\uc218\uc2e0"

    const-string/jumbo v3, "\uac70\uc808"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Answer"

    const-string v4, "Reject"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string/jumbo v4, "\u63a5\u542c"

    const-string/jumbo v6, "\u62d2\u7edd"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const-string v4, "Responder"

    const-string v7, "Rechazar"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v1, v9

    const-string v8, "R\u00e9pondre"

    const-string v10, "Refuser"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v1, v10

    const-string v8, "Antworten"

    const-string v11, "Abweisen"

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x5

    aput-object v8, v1, v11

    const-string v8, "Rispondi"

    const-string v12, "Rifiuta"

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v1, v12

    const-string/jumbo v8, "\u5fdc\u7b54"

    const-string/jumbo v13, "\u62d2\u5426"

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v1, v13

    const-string/jumbo v8, "\u041e\u0442\u0432\u0435\u0442\u0438\u0442\u044c"

    const-string/jumbo v14, "\u041e\u0442\u043a\u043b\u043e\u043d\u0438\u0442\u044c"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0x8

    aput-object v8, v1, v14

    const-string v8, "Atender"

    const-string v15, "Recusar"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x9

    aput-object v8, v1, v15

    const-string v8, "Reject"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0xa

    aput-object v8, v1, v16

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0xb

    aput-object v8, v1, v17

    const-string/jumbo v8, "\u63a5\u901a"

    const-string/jumbo v15, "\u639b\u65b7"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xc

    aput-object v8, v1, v15

    const-string/jumbo v8, "\u807d\u96fb\u8a71"

    const-string/jumbo v15, "\u5514\u807d"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xd

    aput-object v8, v1, v15

    const-string/jumbo v8, "\u542c\u7535\u8bdd"

    const-string/jumbo v15, "\u5514\u542c"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xe

    aput-object v8, v1, v15

    sput-object v1, Lcom/samsung/android/speech/CommandLanguage;->CALL:[[Ljava/lang/String;

    .line 25
    new-array v1, v0, [[Ljava/lang/String;

    const-string/jumbo v8, "\uc218\uc2e0"

    const-string/jumbo v0, "\uac70\uc808"

    filled-new-array {v8, v0}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Decline"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string/jumbo v0, "\u63a5\u542c"

    const-string/jumbo v8, "\u62d2\u7edd"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v0, "R\u00e9pondre"

    const-string v8, "Refuser"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const-string v0, "Antworten"

    const-string v8, "Abweisen"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    const-string v0, "Rispondi"

    const-string v8, "Rifiuta"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v12

    const-string/jumbo v0, "\u5fdc\u7b54"

    const-string/jumbo v8, "\u62d2\u5426"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    const-string/jumbo v0, "\u041e\u0442\u0432\u0435\u0442\u0438\u0442\u044c"

    const-string/jumbo v8, "\u041e\u0442\u043a\u043b\u043e\u043d\u0438\u0442\u044c"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v14

    const-string v0, "Atender"

    const-string v8, "Recusar"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x9

    aput-object v0, v1, v8

    const-string v0, "Decline"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v16

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v17

    const-string/jumbo v0, "\u63a5\u901a"

    const-string/jumbo v2, "\u639b\u65b7"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string/jumbo v0, "\u807d\u96fb\u8a71"

    const-string/jumbo v2, "\u5514\u807d"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string/jumbo v0, "\u542c\u7535\u8bdd"

    const-string/jumbo v2, "\u5514\u542c"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v15

    sput-object v1, Lcom/samsung/android/speech/CommandLanguage;->CALL_PDT:[[Ljava/lang/String;

    .line 44
    const/16 v0, 0xf

    new-array v1, v0, [[Ljava/lang/String;

    const-string/jumbo v0, "\uc911\uc9c0"

    const-string/jumbo v2, "\ub2e4\uc2dc \uc54c\ub9bc"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Stop"

    const-string v2, "Snooze"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u505c\u6b62"

    const-string/jumbo v4, "\u91cd\u54cd"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Parar"

    const-string v4, "Repetir"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "Arr\u00eater"

    const-string v4, "R\u00e9p\u00e9ter"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "Stopp"

    const-string v4, "Erinnern"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Dopo"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const-string/jumbo v2, "\u30b9\u30c8\u30c3\u30d7"

    const-string/jumbo v4, "\u30b9\u30cc\u30fc\u30ba"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    const-string/jumbo v2, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c"

    const-string/jumbo v4, "\u041e\u0442\u043b\u043e\u0436\u0438\u0442\u044c"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "Soneca"

    const-string v4, "Pr\u00f3xima"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v1, v4

    const-string v2, "Snooze"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v16

    const-string v0, "Parar"

    const-string v2, "Repetir"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v17

    const-string/jumbo v0, "\u95dc\u9589"

    const-string/jumbo v2, "\u8caa\u7761"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string/jumbo v0, "\u95dc\u9589"

    const-string/jumbo v2, "\u97ff\u591a\u6b21"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string/jumbo v0, "\u5173\u95ed"

    const-string/jumbo v2, "\u54cd\u591a\u6b21"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v15

    sput-object v1, Lcom/samsung/android/speech/CommandLanguage;->ALARM:[[Ljava/lang/String;

    .line 62
    const/16 v0, 0xf

    new-array v1, v0, [[Ljava/lang/String;

    const-string/jumbo v18, "\ub2e4\uc74c"

    const-string/jumbo v19, "\uc774\uc804"

    const-string/jumbo v20, "\uc77c\uc2dc \uc815\uc9c0"

    const-string/jumbo v21, "\uc7ac\uc0dd"

    const-string/jumbo v22, "\uc18c\ub9ac \ud06c\uac8c"

    const-string/jumbo v23, "\uc18c\ub9ac \uc791\uac8c"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v18, "Next"

    const-string v19, "Previous"

    const-string v20, "Pause"

    const-string v21, "Play"

    const-string v22, "Volume Up"

    const-string v23, "Volume Down"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string/jumbo v18, "\u4e0b\u4e00\u9996"

    const-string/jumbo v19, "\u4e0a\u4e00\u9996"

    const-string/jumbo v20, "\u6682\u505c"

    const-string/jumbo v21, "\u64ad\u653e"

    const-string/jumbo v22, "\u589e\u5927\u97f3\u91cf"

    const-string/jumbo v23, "\u51cf\u5c0f\u97f3\u91cf"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v18, "Siguiente"

    const-string v19, "Anterior"

    const-string v20, "Pausa"

    const-string v21, "Reproducir"

    const-string v22, "Subir Volumen"

    const-string v23, "Bajar Volumen"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v18, "Suivant"

    const-string v19, "Pr\u00e9c\u00e9dent"

    const-string v20, "Pause"

    const-string v21, "Lire"

    const-string v22, "Augmenter le Volume"

    const-string v23, "Baisser le Volume"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const-string v18, "Weiter"

    const-string v19, "Vorherige"

    const-string v20, "Pause"

    const-string v21, "Wiedergabe"

    const-string v22, "Lauter"

    const-string v23, "Leiser"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    const-string v18, "Successivo"

    const-string v19, "Precedente"

    const-string v20, "Pausa"

    const-string v21, "Riproduci"

    const-string v22, "Aumenta Volume"

    const-string v23, "Abbassa Volume"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v12

    const-string/jumbo v18, "\u6b21"

    const-string/jumbo v19, "\u524d"

    const-string/jumbo v20, "\u4e00\u6642\u505c\u6b62"

    const-string/jumbo v21, "\u518d\u751f"

    const-string/jumbo v22, "\u97f3\u91cf\u30a2\u30c3\u30d7"

    const-string/jumbo v23, "\u97f3\u91cf\u30c0\u30a6\u30f3"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    const-string/jumbo v18, "\u0412\u043f\u0435\u0440\u0435\u0434"

    const-string/jumbo v19, "\u041d\u0430\u0437\u0430\u0434"

    const-string/jumbo v20, "\u041f\u0430\u0443\u0437\u0430"

    const-string/jumbo v21, "\u0418\u0433\u0440\u0430\u0442\u044c"

    const-string/jumbo v22, "\u0413\u0440\u043e\u043c\u0447\u0435"

    const-string/jumbo v23, "\u0422\u0438\u0448\u0435"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v14

    const-string v18, "Pr\u00f3xima"

    const-string v19, "Anterior"

    const-string v20, "Pausar"

    const-string v21, "Reproduzir"

    const-string v22, "Aumentar Volume"

    const-string v23, "Diminuir Volume"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const-string v18, "Next"

    const-string v19, "Previous"

    const-string v20, "Pause"

    const-string v21, "Play"

    const-string v22, "Volume Up"

    const-string v23, "Volume Down"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v16

    const-string v18, "Siguiente"

    const-string v19, "Anterior"

    const-string v20, "Pausa"

    const-string v21, "Reproducir"

    const-string v22, "Subir Volumen"

    const-string v23, "Bajar Volumen"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v17

    const-string/jumbo v18, "\u4e0b\u9996"

    const-string/jumbo v19, "\u4e0a\u9996"

    const-string/jumbo v20, "\u66ab\u505c"

    const-string/jumbo v21, "\u958b\u59cb"

    const-string/jumbo v22, "\u653e\u5927"

    const-string/jumbo v23, "\u6e1b\u8f15"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string/jumbo v18, "\u4e0b\u4e00\u9996"

    const-string/jumbo v19, "\u4e0a\u4e00\u9996"

    const-string/jumbo v20, "\u66ab\u505c"

    const-string/jumbo v21, "\u64ad\u653e"

    const-string/jumbo v22, "\u5927\u8072"

    const-string/jumbo v23, "\u7d30\u8072"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string/jumbo v18, "\u4e0b\u4e00\u9996"

    const-string/jumbo v19, "\u4e0a\u4e00\u9996"

    const-string/jumbo v20, "\u6682\u505c"

    const-string/jumbo v21, "\u64ad\u653e"

    const-string/jumbo v22, "\u5927\u58f0"

    const-string/jumbo v23, "\u7ec6\u58f0"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v15

    sput-object v1, Lcom/samsung/android/speech/CommandLanguage;->MUSIC:[[Ljava/lang/String;

    .line 80
    const/16 v0, 0xf

    new-array v1, v0, [[Ljava/lang/String;

    const-string/jumbo v0, "\uc2a4\ub9c8\uc77c"

    const-string/jumbo v2, "\uae40\uce58"

    const-string/jumbo v4, "\ucd2c\uc601"

    const-string/jumbo v7, "\ucc30\uce75"

    const-string/jumbo v8, "\ub3d9\uc601\uc0c1 \ucd2c\uc601"

    filled-new-array {v0, v2, v4, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Smile"

    const-string v2, "Cheese"

    const-string v4, "Capture"

    const-string v7, "Shoot"

    const-string v8, "Record Video"

    filled-new-array {v0, v2, v4, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string/jumbo v0, "\u5fae\u7b11"

    const-string/jumbo v7, "\u8304\u5b50"

    const-string/jumbo v8, "\u62cd\u6444"

    const-string/jumbo v5, "\u62cd\u7167"

    const-string/jumbo v3, "\u5f55\u5236\u89c6\u9891"

    filled-new-array {v0, v7, v8, v5, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "Sonrisa"

    const-string v3, "Patata"

    const-string v5, "Capturar"

    const-string v7, "Disparar"

    const-string v8, "Grabar v\u00eddeo"

    filled-new-array {v0, v3, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v0, "Sourire"

    const-string v3, "Shooter"

    const-string v5, "Enregistrer une vid\u00e9o"

    filled-new-array {v0, v2, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const-string v0, "L\u00e4cheln"

    const-string v3, "Bitte L\u00e4cheln"

    const-string v5, "Klick"

    const-string v7, "Aufnahme"

    const-string v8, "Video aufnehmen"

    filled-new-array {v0, v3, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    const-string v0, "Sorriso"

    const-string v3, "Cattura"

    const-string v5, "Scatta"

    const-string v7, "Registra"

    filled-new-array {v0, v2, v3, v5, v7}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v12

    const-string/jumbo v0, "\u30b9\u30de\u30a4\u30eb"

    const-string/jumbo v3, "\u30c1\u30fc\u30ba"

    const-string/jumbo v5, "\u64ae\u5f71"

    const-string/jumbo v7, "\u306f\u3044\u30c1\u30fc\u30ba"

    const-string/jumbo v8, "\u9332\u753b"

    filled-new-array {v0, v3, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    const-string/jumbo v0, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    const-string/jumbo v3, "\u0421\u043d\u044f\u0442\u044c"

    const-string/jumbo v5, "\u0423\u043b\u044b\u0431\u043d\u0438\u0442\u0435\u0441\u044c"

    const-string/jumbo v7, "\u0421\u043d\u0438\u043c\u0430\u044e"

    const-string/jumbo v8, "\u0417\u0430\u043f\u0438\u0441\u044c \u0432\u0438\u0434\u0435\u043e"

    filled-new-array {v0, v3, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v14

    const-string v0, "Sorria"

    const-string v3, "Diga xis"

    const-string v5, "Capturar"

    const-string v7, "Disparar"

    const-string v8, "Gravar V\u00eddeo"

    filled-new-array {v0, v3, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v1, v3

    const-string v0, "Smile"

    const-string v3, "Shoot"

    const-string v5, "Record Video"

    filled-new-array {v0, v2, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v16

    const-string v0, "Sonrisa"

    const-string v3, "Patata"

    const-string v4, "Capturar"

    const-string v5, "Disparar"

    const-string v7, "Grabar Video"

    filled-new-array {v0, v3, v4, v5, v7}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v17

    const-string/jumbo v0, "\u7b11\u4e00\u500b"

    const-string/jumbo v3, "\u651d\u5f71"

    const-string/jumbo v4, "\u7167\u76f8"

    const-string/jumbo v5, "\u9304\u88fd\u5f71\u7247"

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v1, v3

    const-string/jumbo v0, "\u7b11\u4e00\u7b11"

    const-string/jumbo v3, "\u651d\u5f71"

    const-string/jumbo v4, "\u5f71\u76f8"

    const-string/jumbo v5, "\u9304\u5f71"

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    aput-object v0, v1, v3

    const-string/jumbo v0, "\u7b11\u4e00\u7b11"

    const-string/jumbo v3, "\u6444\u5f71"

    const-string/jumbo v4, "\u5f71\u76f8"

    const-string/jumbo v5, "\u5f55\u5f71"

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v15

    sput-object v1, Lcom/samsung/android/speech/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    .line 98
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    const-string/jumbo v1, "\ucde8\uc18c"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Cancel"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u53d6\u6d88"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Cancelar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "Annuler"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "Abbrechen"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "Annulla"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-string/jumbo v1, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    const-string/jumbo v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    const-string v1, "Cancelar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Cancel"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v16

    const-string v1, "Cancelar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v17

    const-string/jumbo v1, "\u9000\u51fa"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u53d6\u6d88"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u53d6\u6d88"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v15

    sput-object v0, Lcom/samsung/android/speech/CommandLanguage;->CANCEL:[[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
