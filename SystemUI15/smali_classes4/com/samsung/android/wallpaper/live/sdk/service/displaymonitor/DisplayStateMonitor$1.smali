.class public final Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1$1;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;JZ)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
