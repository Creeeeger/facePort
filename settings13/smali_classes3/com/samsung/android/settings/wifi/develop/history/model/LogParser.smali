.class abstract Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;
.super Ljava/lang/Object;
.source "LogParser.java"


# instance fields
.field mHistoryLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->mHistoryLogs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected getAttributeFromLog(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;
    .locals 4

    .line 35
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getData()Ljava/lang/String;

    move-result-object p0

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 36
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    const-string v1, ""

    if-ge v0, p2, :cond_1

    aget-object v2, p0, v0

    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected getNthSpace(Ljava/lang/String;I)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge p0, p2, :cond_0

    const-string v1, " "

    .line 58
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected getSsid(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getData()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ssid=\""

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const-string v0, "\""

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 49
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 50
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method protected abstract parseLog(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;
.end method

.method public parseRawData(Ljava/lang/String;)Ljava/util/ArrayList;
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

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->parseLog(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    move-result-object v2

    .line 24
    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->NONE:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 25
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

    if-eqz v3, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->mHistoryLogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->mHistoryLogs:Ljava/util/ArrayList;

    return-object p0
.end method
