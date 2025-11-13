.class public Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;
.super Ljava/lang/Object;
.source "HistoryLog.java"


# instance fields
.field private data:Ljava/lang/String;

.field private mLogData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/time/LocalDateTime;

.field private type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;


# direct methods
.method public static synthetic $r8$lambda$BRbttbZx-CEkDogh46ayK68hw1s(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/time/LocalDateTime;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->lambda$getSortedLog$0(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->mLogData:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/time/LocalDateTime;Lcom/samsung/android/settings/wifi/develop/history/model/LogType;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->time:Ljava/time/LocalDateTime;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    .line 23
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->data:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$getSortedLog$0(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Ljava/time/LocalDateTime;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->time:Ljava/time/LocalDateTime;

    return-object p0
.end method


# virtual methods
.method public addLog(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->mLogData:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getSortedLog()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->mLogData:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 32
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->mLogData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTime()Ljava/time/LocalDateTime;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->time:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->mLogData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->time:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->data:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
