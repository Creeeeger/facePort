.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method


# virtual methods
.method public final insertMHSBigData(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "10"

    const-string v4, "9"

    const-string v6, "8"

    const-string v8, "7"

    const-string v10, "6"

    const-string v12, "5"

    const-string v13, "4"

    const-string v14, "3"

    const-string v15, "2"

    const-string v16, "1"

    const-string v3, "OFF"

    const-string v5, "ON"

    const/16 v17, 0x0

    const-string v9, ""

    const-string v11, "WifiApBigDataLogger"

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    if-ne v1, v7, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v7, v17

    :goto_0
    const-string v1, "MHS Wi-Fi Sharing Logging "

    invoke-static {v1, v11, v7}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "MHWS"

    if-eqz v7, :cond_1

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_2
    if-nez v1, :cond_2

    const-string v9, "NEVER TIMEOUT"

    goto :goto_1

    :cond_2
    if-ne v1, v7, :cond_3

    const-string v9, "5 MINS"

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const-string v9, "10 MINS"

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const-string v9, "20 MINS"

    goto :goto_1

    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const-string v9, "30 MINS"

    goto :goto_1

    :cond_6
    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    const-string v9, "60 MINS"

    :cond_7
    :goto_1
    const-string v1, "MHS TimeOut Logging "

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHTO"

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_3
    if-ne v1, v7, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v7, v17

    :goto_2
    const-string v1, "MHS Hidden SSID Logging "

    invoke-static {v1, v11, v7}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "MHHD"

    if-eqz v7, :cond_9

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_4
    if-nez v1, :cond_a

    const-string v2, "AUTO"

    goto :goto_3

    :cond_a
    if-ne v1, v7, :cond_b

    move-object/from16 v2, v16

    goto :goto_3

    :cond_b
    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    move-object v2, v15

    goto :goto_3

    :cond_c
    const/4 v3, 0x3

    if-ne v1, v3, :cond_d

    move-object v2, v14

    goto :goto_3

    :cond_d
    const/4 v3, 0x4

    if-ne v1, v3, :cond_e

    move-object v2, v13

    goto :goto_3

    :cond_e
    const/4 v3, 0x5

    if-ne v1, v3, :cond_f

    move-object v2, v12

    goto :goto_3

    :cond_f
    const/4 v3, 0x6

    if-ne v1, v3, :cond_10

    move-object v2, v10

    goto :goto_3

    :cond_10
    const/4 v3, 0x7

    if-ne v1, v3, :cond_11

    move-object v2, v8

    goto :goto_3

    :cond_11
    const/16 v3, 0x8

    if-ne v1, v3, :cond_12

    move-object v2, v6

    goto :goto_3

    :cond_12
    const/16 v3, 0x9

    if-ne v1, v3, :cond_13

    move-object v2, v4

    goto :goto_3

    :cond_13
    const/16 v3, 0xa

    if-ne v1, v3, :cond_14

    goto :goto_3

    :cond_14
    const/16 v2, 0xb

    if-ne v1, v2, :cond_15

    const-string v2, "11"

    goto :goto_3

    :cond_15
    const/16 v2, 0x95

    if-ne v1, v2, :cond_16

    const-string v2, "12"

    goto :goto_3

    :cond_16
    move-object v2, v9

    :goto_3
    const-string v1, "MHS Channel Logging "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHBC"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_5
    if-ne v1, v7, :cond_17

    move-object/from16 v2, v16

    goto :goto_4

    :cond_17
    const/4 v3, 0x2

    if-ne v1, v3, :cond_18

    move-object v2, v15

    goto :goto_4

    :cond_18
    const/4 v3, 0x3

    if-ne v1, v3, :cond_19

    move-object v2, v14

    goto :goto_4

    :cond_19
    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    move-object v2, v13

    goto :goto_4

    :cond_1a
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1b

    move-object v2, v12

    goto :goto_4

    :cond_1b
    const/4 v3, 0x6

    if-ne v1, v3, :cond_1c

    move-object v2, v10

    goto :goto_4

    :cond_1c
    const/4 v3, 0x7

    if-ne v1, v3, :cond_1d

    move-object v2, v8

    goto :goto_4

    :cond_1d
    const/16 v3, 0x8

    if-ne v1, v3, :cond_1e

    move-object v2, v6

    goto :goto_4

    :cond_1e
    const/16 v3, 0x9

    if-ne v1, v3, :cond_1f

    move-object v2, v4

    goto :goto_4

    :cond_1f
    const/16 v3, 0xa

    if-ne v1, v3, :cond_20

    goto :goto_4

    :cond_20
    move-object v2, v9

    :goto_4
    const-string v1, "MHS MaxClient Logging "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHMC"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_6
    if-nez v1, :cond_21

    const-string v9, "OPEN"

    goto :goto_6

    :cond_21
    if-eq v1, v7, :cond_24

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    goto :goto_5

    :cond_22
    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    const-string v9, "WPA3"

    goto :goto_6

    :cond_23
    const/4 v2, 0x4

    if-ne v1, v2, :cond_25

    const-string v9, "WPA3 TRANSITION"

    goto :goto_6

    :cond_24
    :goto_5
    const-string v9, "WPA2 PSK"

    :cond_25
    :goto_6
    const-string v1, "MHS Security Logging "

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHSC"

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_7
    const-string v1, "MHS Password Logging"

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHPW"

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_8
    const-string v0, "MHS SSID Logging"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
