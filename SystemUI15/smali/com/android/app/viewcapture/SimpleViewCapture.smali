.class public final Lcom/android/app/viewcapture/SimpleViewCapture;
.super Lcom/android/app/viewcapture/ViewCapture;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x2

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/app/viewcapture/LooperExecutor;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/app/viewcapture/LooperExecutor;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0x7d0

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1, p1}, Lcom/android/app/viewcapture/ViewCapture;-><init>(IILjava/util/concurrent/Executor;)V

    return-void
.end method
