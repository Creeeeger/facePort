.class public final Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->getCurrentWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitor;->isMyDisplayDisabledByFoldState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor$1;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->isShowingAod()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/AbstractAodDisplayStateMonitor;->onAodShowStateChanged(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
