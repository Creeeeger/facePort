.class public Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;
.super Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;
.source "IssueDetectorLogParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;-><init>()V

    return-void
.end method

.method private getSecurity(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;
    .locals 1

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getData()Ljava/lang/String;

    move-result-object p0

    const-string p1, "configKey=\""

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const-string v0, "\""

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 125
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const-string v0, " "

    .line 126
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 127
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected parseLog(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;
    .locals 4

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getNthSpace(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getNthSpace(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "time="

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 38
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getNthSpace(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getNthSpace(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->getLogType(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v1

    .line 41
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getNthSpace(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 43
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-direct {p1, v0, v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;-><init>(Ljava/time/LocalDateTime;Lcom/samsung/android/settings/wifi/develop/history/model/LogType;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic parseRawData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->parseRawData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public parseRawDataWithoutTryToConnect(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
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

    const-string v0, "\n"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 14
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;->parseLog(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    move-result-object v2

    .line 23
    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->NONE:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 24
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getData()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->TRY_TO_CONNECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 25
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->mHistoryLogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->mHistoryLogs:Ljava/util/ArrayList;

    return-object p0
.end method

.method parseTryToConnectLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;
    .locals 2

    .line 114
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;-><init>(Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getSsid(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->ssid:Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;->getSecurity(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->security:Ljava/lang/String;

    return-object v0
.end method
