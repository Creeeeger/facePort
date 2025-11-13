.class public Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;
.super Ljava/lang/Object;
.source "LogRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;,
        Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;
    }
.end annotation


# instance fields
.field private mLastConnectedSsid:Ljava/lang/String;

.field mLogBySsid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSupportConnectivityLog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    return-void
.end method

.method private convertAkmSuite(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "0x0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "0xfac12"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "0xfac11"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "0xfac10"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "0xfac0F"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string p0, "0xfac0E"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "0xfac0D"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "0xfac0C"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string p0, "0xfac0B"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_9
    const-string p0, "0xfac08"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_a
    const-string p0, "0xfac06"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_b
    const-string p0, "0xfac05"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_c
    const-string p0, "0xfac04"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_d
    const-string p0, "0xfac03"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_e
    const-string p0, "0xfac02"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_f
    const-string p0, "0xfac01"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private convertCipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "0x0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "0xfac0d"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "0xfac0c"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "0xfac0b"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "0xfac0a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string p0, "0xfac09"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "0xfac08"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "0xfac07"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string p0, "0xfac06"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_9
    const-string p0, "0xfac05"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_a
    const-string p0, "0xfac04"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_b
    const-string p0, "0xfac03"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_c
    const-string p0, "0xfac02"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_d
    const-string p0, "0xfac01"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_e
    const-string p0, "0xfac00"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private getDeviceLog(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;"
        }
    .end annotation

    const-string v0, "LogRepository"

    if-nez p1, :cond_0

    const-string p0, "Fail to get context"

    .line 118
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 122
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "sem_wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    if-nez p1, :cond_1

    const-string p0, "Fail to get semWifiManager"

    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    const/4 v0, 0x4

    const-string v2, "[CONN]"

    const-string v3, "[ROAM]"

    const-string v4, "[BTM]"

    const-string v5, "[EAPOL]"

    .line 130
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 131
    aget-object v5, v2, v4

    .line 132
    new-instance v6, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;

    invoke-direct {v6}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;-><init>()V

    invoke-virtual {p1, v5}, Lcom/samsung/android/wifi/SemWifiManager;->getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;->parseRawData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->addLog(Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    .line 137
    :goto_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    const/16 v0, 0xc8

    if-eqz p0, :cond_4

    .line 138
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;->parseRawDataWithoutTryToConnect(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->addLog(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 140
    :cond_4
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;->parseRawData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->addLog(Ljava/util/ArrayList;)V

    .line 142
    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getSortedLog()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;
    .locals 1

    .line 26
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkKey(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;
    .locals 4

    .line 100
    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, "("

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;-><init>()V

    .line 102
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;->parseConnectingLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;

    move-result-object p1

    .line 104
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->akmSuite:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->convertAkmSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 107
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;-><init>()V

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;->parseTryToConnectLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;

    move-result-object p0

    .line 110
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->ssid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v3

    .line 111
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->security:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3
.end method

.method private updateLogBySsid(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getNetworkKey(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getLastConnectedSsid()Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLastConnectedSsid:Ljava/lang/String;

    return-object p0
.end method

.method public getLogData()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;>;"
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    return-object p0
.end method

.method public getLogDataBySsid(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    .line 156
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getSecurityBy(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;
    .locals 4

    .line 182
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;-><init>()V

    .line 184
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    .line 187
    sget-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;-><init>()V

    .line 189
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;->parseConnectingLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;

    move-result-object p1

    .line 190
    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->pairwiseCipher:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->convertCipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->pairwiseCipher:Ljava/lang/String;

    .line 191
    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->groupCipher:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->convertCipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->groupCipher:Ljava/lang/String;

    .line 192
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->akmSuite:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->convertAkmSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->akmSuite:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getSsidList()[Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public updateLog(Landroid/content/Context;)V
    .locals 6

    const-string v0, "LogRepository"

    const-string v1, "updateLog()"

    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/Util;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getDeviceLog(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    .line 35
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 37
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 38
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 42
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 46
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "There is no enough log"

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 55
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 58
    :cond_5
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 63
    :cond_6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->DISCONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ASSOC_REJECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->L2_CONNECT_FAIL:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 67
    :cond_7
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->updateLogBySsid(Ljava/util/ArrayList;)V

    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_8
    const-string p1, ""

    .line 74
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLastConnectedSsid:Ljava/lang/String;

    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "tmp has more logs"

    .line 76
    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/develop/history/Util;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->updateLogBySsid(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getNetworkKey(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLastConnectedSsid:Ljava/lang/String;

    goto :goto_4

    :cond_a
    return-void
.end method
