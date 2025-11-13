.class public abstract Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser;
.super Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static parseOnOffLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->data:Ljava/lang/String;

    const-string v2, "callBy="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "wifiState="

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogParser;->getAttributeFromLog(Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;->wifiState:Ljava/lang/String;

    return-object v0
.end method
