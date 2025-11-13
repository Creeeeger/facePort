.class public final Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;
.super Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static parseConnectingLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getSsid(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->ssid:Ljava/lang/String;

    const-string v1, "pairwise="

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getAttributeFromLog(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->pairwiseCipher:Ljava/lang/String;

    const-string v1, "group="

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getAttributeFromLog(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->groupCipher:Ljava/lang/String;

    const-string v1, "akm="

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getAttributeFromLog(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->akmSuite:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final parseLog(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;
    .locals 4

    const/4 p0, 0x2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getNthSpace(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    const-string v3, "]"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    const-string p0, " "

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->getLogType(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v1

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-direct {p1, v0, v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;-><init>(Ljava/time/LocalDateTime;Lcom/samsung/android/settings/wifi/develop/history/model/LogType;Ljava/lang/String;)V

    return-object p1
.end method
