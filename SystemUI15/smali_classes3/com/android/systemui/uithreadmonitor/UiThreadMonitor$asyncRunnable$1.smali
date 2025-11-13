.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    sget-boolean v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "UiThreadMonitor"

    const-string v1, "handleAsyncMsg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    iget-boolean v0, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->asyncRunnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
