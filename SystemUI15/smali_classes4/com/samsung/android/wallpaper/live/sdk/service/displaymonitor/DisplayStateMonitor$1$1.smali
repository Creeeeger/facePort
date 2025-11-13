.class public final Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mIsWaitingTriggered:Z

.field public final synthetic this$1:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

.field public final synthetic val$isFolded:Z

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->this$1:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    iput-wide p2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->val$startTime:J

    iput-boolean p4, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->val$isFolded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->mIsWaitingTriggered:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->val$startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->this$1:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    iget-object v2, v2, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    iget-object v2, v2, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkFoldUtils;->isFolded(Landroid/content/Context;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->val$isFolded:Z

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DisplayStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFoldStateChanged : LID state not updated yet. will dispatch later. which="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->this$1:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    iget-object v2, v2, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getCurrentWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", folded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->val$isFolded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->mIsWaitingTriggered:Z

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->this$1:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->mIsWaitingTriggered:Z

    if-eqz v2, :cond_3

    const-string v2, "DisplayStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onFoldStateChanged : waiting finished. which="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->this$1:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    iget-object v4, v4, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    invoke-virtual {v4}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getCurrentWhich()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", folded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->val$isFolded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", elapsed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->this$1:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    iget-boolean p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;->val$isFolded:Z

    iput-boolean p0, v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mIsFolded:Z

    const-string v1, "onFoldingStateChanged: which="

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "DisplayStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getCurrentWhich()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folded="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isMyDisplayDisabledByFoldState()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->OFF:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    goto :goto_2

    :cond_5
    if-nez p0, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getCurrentWhich()I

    move-result p0

    and-int/lit8 p0, p0, 0x3c

    const/4 v1, 0x4

    if-ne p0, v1, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->notifyDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    monitor-exit v0

    :goto_3
    return-void

    :goto_4
    monitor-exit v0

    throw p0
.end method
