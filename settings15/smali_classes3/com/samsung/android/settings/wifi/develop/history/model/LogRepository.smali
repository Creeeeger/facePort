.class public final Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mConnectionLog:Ljava/util/HashMap;

.field public mLastConnectedSsid:Ljava/lang/String;

.field public mLogBySsid:Ljava/util/HashMap;

.field public mOnOffLog:Ljava/util/HashMap;

.field public mSupportConnectivityLog:Z


# direct methods
.method public static convertAkmSuite(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "0x0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "0xfac12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "0xfac11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "0xfac10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "0xfac0F"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "0xfac0E"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "0xfac0D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "0xfac0C"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "0xfac0B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_9
    const-string v1, "0xfac08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_a
    const-string v1, "0xfac06"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_b
    const-string v1, "0xfac05"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_c
    const-string v1, "0xfac04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_d
    const-string v1, "0xfac03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_e
    const-string v1, "0xfac02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_f
    const-string v1, "0xfac01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "Not found"

    return-object p0

    :pswitch_0
    const-string p0, "OPEN"

    return-object p0

    :pswitch_1
    const-string p0, "OWE"

    return-object p0

    :pswitch_2
    const-string p0, "FT_FILS_SHA384"

    return-object p0

    :pswitch_3
    const-string p0, "FT_FILS_SHA256"

    return-object p0

    :pswitch_4
    const-string p0, "FILS_SHA384"

    return-object p0

    :pswitch_5
    const-string p0, "FILS_SHA256"

    return-object p0

    :pswitch_6
    const-string p0, "FT_8021X_SHA384"

    return-object p0

    :pswitch_7
    const-string p0, "8021X_SUITE_B_192"

    return-object p0

    :pswitch_8
    const-string p0, "8021X_SUITE_B"

    return-object p0

    :pswitch_9
    const-string p0, "SAE_SHA256"

    return-object p0

    :pswitch_a
    const-string p0, "SHA256_PSK"

    return-object p0

    :pswitch_b
    const-string p0, "SHA256_1X"

    return-object p0

    :pswitch_c
    const-string p0, "FT_PSK"

    return-object p0

    :pswitch_d
    const-string p0, "FT_8021X"

    return-object p0

    :pswitch_e
    const-string p0, "PSK"

    return-object p0

    :pswitch_f
    const-string p0, "8021X"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x42446a3f -> :sswitch_f
        -0x42446a3e -> :sswitch_e
        -0x42446a3d -> :sswitch_d
        -0x42446a3c -> :sswitch_c
        -0x42446a3b -> :sswitch_b
        -0x42446a3a -> :sswitch_a
        -0x42446a38 -> :sswitch_9
        -0x42446a2e -> :sswitch_8
        -0x42446a2d -> :sswitch_7
        -0x42446a2c -> :sswitch_6
        -0x42446a2b -> :sswitch_5
        -0x42446a2a -> :sswitch_4
        -0x42446a21 -> :sswitch_3
        -0x42446a20 -> :sswitch_2
        -0x42446a1f -> :sswitch_1
        0xc2e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertCipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "0x0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "0xfac0d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "0xfac0c"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "0xfac0b"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "0xfac0a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "0xfac09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "0xfac08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "0xfac07"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "0xfac06"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_9
    const-string v1, "0xfac05"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_a
    const-string v1, "0xfac04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_b
    const-string v1, "0xfac03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_c
    const-string v1, "0xfac02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_d
    const-string v1, "0xfac01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_e
    const-string v1, "0xfac00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "Not found"

    return-object p0

    :pswitch_0
    const-string p0, "BIPCMAC256"

    return-object p0

    :pswitch_1
    const-string p0, "BIPGMAC256"

    return-object p0

    :pswitch_2
    const-string p0, "BIPGMAC128"

    return-object p0

    :pswitch_3
    const-string p0, "CCMP256"

    return-object p0

    :pswitch_4
    const-string p0, "GCMP256"

    return-object p0

    :pswitch_5
    const-string p0, "GCMP128"

    return-object p0

    :pswitch_6
    const-string p0, "Group addressed traffic not allowed"

    return-object p0

    :pswitch_7
    const-string p0, "BIPCMAC128"

    return-object p0

    :pswitch_8
    const-string p0, "WEP104"

    return-object p0

    :pswitch_9
    const-string p0, "CCMP128"

    return-object p0

    :pswitch_a
    const-string p0, "Reserved"

    return-object p0

    :pswitch_b
    const-string p0, "TKIP"

    return-object p0

    :pswitch_c
    const-string p0, "WEP40"

    return-object p0

    :pswitch_d
    const-string p0, "NONE"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x42446a40 -> :sswitch_e
        -0x42446a3f -> :sswitch_d
        -0x42446a3e -> :sswitch_c
        -0x42446a3d -> :sswitch_b
        -0x42446a3c -> :sswitch_a
        -0x42446a3b -> :sswitch_9
        -0x42446a3a -> :sswitch_8
        -0x42446a39 -> :sswitch_7
        -0x42446a38 -> :sswitch_6
        -0x42446a37 -> :sswitch_5
        -0x42446a0f -> :sswitch_4
        -0x42446a0e -> :sswitch_3
        -0x42446a0d -> :sswitch_2
        -0x42446a0c -> :sswitch_1
        0xc2e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public static getNetworkKey(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, "("

    const-string v3, ""

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;->parseConnectingLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;

    move-result-object p0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->akmSuite:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->convertAkmSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;->parseTryToConnectLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;

    move-result-object p0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->security:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3
.end method


# virtual methods
.method public final getDeviceLog(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7

    const-string v0, "LogRepository"

    if-nez p1, :cond_0

    const-string p0, "Fail to get context"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    if-nez p1, :cond_1

    const-string p0, "Fail to get semWifiManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "[BTM]"

    const-string v2, "[EAPOL]"

    const-string v3, "[CONN]"

    const-string v4, "[ROAM]"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    new-instance v5, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;

    invoke-direct {v5}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;-><init>()V

    invoke-virtual {p1, v4}, Lcom/samsung/android/wifi/SemWifiManager;->getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->parseRawData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    :goto_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    const/16 v0, 0xc8

    if-eqz p0, :cond_9

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_8

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;->parseLog(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->NONE:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "FAIL"

    iget-object v6, v3, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->data:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    sget-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->mHistoryLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->mHistoryLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_9
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->parseRawData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_4
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v1
.end method

.method public final updateLogBySsid(Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getNetworkKey(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateRouterHistoryLog(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getDeviceLog(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "LogRepository"

    const-string p1, "There is no enough log"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v3, v2, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->DISCONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ASSOC_REJECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->L2_CONNECT_FAIL:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->updateLogBySsid(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_8
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLastConnectedSsid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->updateLogBySsid(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getNetworkKey(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLastConnectedSsid:Ljava/lang/String;

    goto :goto_4

    :cond_a
    return-void
.end method
