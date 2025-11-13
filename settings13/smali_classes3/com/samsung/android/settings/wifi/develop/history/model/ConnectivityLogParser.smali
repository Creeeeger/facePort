.class public Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;
.super Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;
.source "ConnectivityLogParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;-><init>()V

    return-void
.end method

.method private getNthBrace(Ljava/lang/String;I)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge p0, p2, :cond_0

    const-string v1, "]"

    .line 42
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method parseConnectingLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;
    .locals 2

    .line 31
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;-><init>(Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getSsid(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->ssid:Ljava/lang/String;

    const-string v1, "pairwise="

    .line 33
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getAttributeFromLog(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->pairwiseCipher:Ljava/lang/String;

    const-string v1, "group="

    .line 34
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getAttributeFromLog(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->groupCipher:Ljava/lang/String;

    const-string v1, "akm="

    .line 35
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getAttributeFromLog(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->akmSuite:Ljava/lang/String;

    return-object v0
.end method

.method protected parseLog(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;
    .locals 3

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getNthSpace(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 11
    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;->getNthBrace(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const-string v0, " "

    .line 14
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 15
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->getLogType(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;-><init>(Ljava/time/LocalDateTime;Lcom/samsung/android/settings/wifi/develop/history/model/LogType;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic parseRawData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->parseRawData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
