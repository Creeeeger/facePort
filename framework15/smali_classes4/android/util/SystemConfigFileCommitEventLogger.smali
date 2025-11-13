.class public Landroid/util/SystemConfigFileCommitEventLogger;
.super Ljava/lang/Object;
.source "SystemConfigFileCommitEventLogger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mStartTime:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist onFinishWrite()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/util/SystemConfigFileCommitEventLogger;->writeLogRecord(J)V

    return-void
.end method

.method public blacklist onStartWrite()V
    .locals 4

    iget-wide v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    :cond_0
    return-void
.end method

.method public blacklist setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    return-void
.end method

.method public blacklist writeLogRecord(J)V
    .locals 1

    iget-object v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V

    return-void
.end method
