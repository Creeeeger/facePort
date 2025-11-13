.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;
.super Ljava/lang/Object;
.source "WifiApBigDataLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApBigDataLogger"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method


# virtual methods
.method public insertMHSBigData(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "8"

    const-string v4, "7"

    const-string v6, "6"

    const-string v8, "5"

    const-string v10, "4"

    const-string v11, "ON"

    const-string v12, "OFF"

    const-string v13, "3"

    const-string v14, "2"

    const-string v16, "1"

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v7, 0x2

    const-string v9, ""

    const/4 v15, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    const-string v2, "MHWS"

    if-ne v1, v15, :cond_0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 119
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHS Wi-Fi Sharing Logging "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_1

    .line 121
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v2, v11}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 123
    :cond_1
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_2
    if-nez v1, :cond_2

    const-string v9, "NEVER TIMEOUT"

    goto :goto_1

    :cond_2
    if-ne v1, v15, :cond_3

    const-string v9, "5 MINS"

    goto :goto_1

    :cond_3
    if-ne v1, v7, :cond_4

    const-string v9, "10 MINS"

    goto :goto_1

    :cond_4
    if-ne v1, v5, :cond_5

    const-string v9, "20 MINS"

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_6

    const-string v9, "30 MINS"

    goto :goto_1

    :cond_6
    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    const-string v9, "60 MINS"

    .line 113
    :cond_7
    :goto_1
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHS TimeOut Logging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHTO"

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_3
    if-ne v1, v15, :cond_8

    goto :goto_2

    :cond_8
    const/4 v15, 0x0

    .line 91
    :goto_2
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHS Hidden SSID Logging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MHHD"

    if-eqz v15, :cond_9

    .line 93
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 95
    :cond_9
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_4
    if-nez v1, :cond_a

    const-string v2, "AUTO"

    goto :goto_3

    :cond_a
    if-ne v1, v15, :cond_b

    move-object/from16 v2, v16

    goto :goto_3

    :cond_b
    if-ne v1, v7, :cond_c

    move-object v2, v14

    goto :goto_3

    :cond_c
    if-ne v1, v5, :cond_d

    move-object v2, v13

    goto :goto_3

    :cond_d
    if-ne v1, v3, :cond_e

    move-object v2, v10

    goto :goto_3

    :cond_e
    const/4 v3, 0x5

    if-ne v1, v3, :cond_f

    move-object v2, v8

    goto :goto_3

    :cond_f
    const/4 v3, 0x6

    if-ne v1, v3, :cond_10

    move-object v2, v6

    goto :goto_3

    :cond_10
    const/4 v3, 0x7

    if-ne v1, v3, :cond_11

    move-object v2, v4

    goto :goto_3

    :cond_11
    const/16 v3, 0x8

    if-ne v1, v3, :cond_12

    goto :goto_3

    :cond_12
    const/16 v2, 0x9

    if-ne v1, v2, :cond_13

    const-string v2, "9"

    goto :goto_3

    :cond_13
    const/16 v2, 0xa

    if-ne v1, v2, :cond_14

    const-string v2, "10"

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

    .line 84
    :goto_3
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHS Channel Logging "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHBC"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_5
    if-ne v1, v15, :cond_17

    move-object/from16 v2, v16

    goto :goto_4

    :cond_17
    if-ne v1, v7, :cond_18

    move-object v2, v14

    goto :goto_4

    :cond_18
    if-ne v1, v5, :cond_19

    move-object v2, v13

    goto :goto_4

    :cond_19
    if-ne v1, v3, :cond_1a

    move-object v2, v10

    goto :goto_4

    :cond_1a
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1b

    move-object v2, v8

    goto :goto_4

    :cond_1b
    const/4 v3, 0x6

    if-ne v1, v3, :cond_1c

    move-object v2, v6

    goto :goto_4

    :cond_1c
    const/4 v3, 0x7

    if-ne v1, v3, :cond_1d

    move-object v2, v4

    goto :goto_4

    :cond_1d
    const/16 v3, 0x8

    if-ne v1, v3, :cond_1e

    goto :goto_4

    :cond_1e
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1f

    const-string v2, "9"

    goto :goto_4

    :cond_1f
    const/16 v2, 0xa

    if-ne v1, v2, :cond_20

    const-string v2, "10"

    goto :goto_4

    :cond_20
    move-object v2, v9

    .line 64
    :goto_4
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHS MaxClient Logging "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHMC"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_6
    if-nez v1, :cond_21

    const-string v9, "OPEN"

    goto :goto_6

    :cond_21
    if-eq v1, v15, :cond_24

    if-ne v1, v7, :cond_22

    goto :goto_5

    :cond_22
    if-ne v1, v5, :cond_23

    const-string v9, "WPA3"

    goto :goto_6

    :cond_23
    if-ne v1, v3, :cond_25

    const-string v9, "WPA3 TRANSITION"

    goto :goto_6

    :cond_24
    :goto_5
    const-string v9, "WPA2 PSK"

    .line 47
    :cond_25
    :goto_6
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHS Security Logging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHSC"

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 36
    :pswitch_7
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->TAG:Ljava/lang/String;

    const-string v2, "MHS Password Logging"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHPW"

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 33
    :pswitch_8
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->TAG:Ljava/lang/String;

    const-string v1, "MHS SSID Logging"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    nop

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
