.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"


# static fields
.field public static final greylist-max-o LOGTAG:I = 0x80004

.field public static final greylist-max-o VIEW_UNKNOWN:I

.field private static greylist-max-o sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static greylist-max-o action(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 188
    return-void
.end method

.method public static greylist-max-o action(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 194
    return-void
.end method

.method public static greylist-max-o action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 212
    return-void
.end method

.method public static greylist-max-o action(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 200
    return-void
.end method

.method public static greylist-max-o action(Landroid/metrics/LogMaker;)V
    .locals 1
    .param p0, "content"    # Landroid/metrics/LogMaker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 206
    return-void
.end method

.method public static greylist-max-o count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method private static greylist-max-o getLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static greylist-max-o hidden(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 168
    return-void
.end method

.method public static greylist-max-o histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 230
    return-void
.end method

.method public static greylist-max-o visibility(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 182
    return-void
.end method

.method public static greylist-max-o visibility(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 175
    return-void
.end method

.method public static greylist-max-o visible(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 162
    return-void
.end method


# virtual methods
.method public greylist-max-o action(I)V
    .locals 2
    .param p1, "category"    # I

    .line 131
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 132
    return-void
.end method

.method public greylist-max-o action(II)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "value"    # I

    .line 138
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 139
    return-void
.end method

.method public greylist-max-o action(ILjava/lang/String;)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 152
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    :goto_0
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 156
    return-void
.end method

.method public greylist-max-o action(IZ)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "value"    # Z

    .line 145
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 146
    return-void
.end method

.method public greylist-max-o count(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 72
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x323

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 73
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 75
    return-void
.end method

.method public greylist-max-o hidden(I)V
    .locals 2
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 101
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    :goto_0
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 105
    return-void
.end method

.method public greylist-max-o histogram(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .line 80
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x324

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterBucket(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 84
    return-void
.end method

.method protected blacklist saveLog(Landroid/metrics/LogMaker;)V
    .locals 1
    .param p1, "log"    # Landroid/metrics/LogMaker;

    .line 55
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiMultiAction([Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public greylist-max-o visibility(II)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 125
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 126
    return-void
.end method

.method public greylist-max-o visibility(IZ)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 112
    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 117
    :goto_0
    return-void
.end method

.method public greylist-max-o visible(I)V
    .locals 2
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 92
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    :goto_0
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 96
    return-void
.end method

.method public greylist-max-r write(Landroid/metrics/LogMaker;)V
    .locals 1
    .param p1, "content"    # Landroid/metrics/LogMaker;

    .line 64
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 68
    return-void
.end method
