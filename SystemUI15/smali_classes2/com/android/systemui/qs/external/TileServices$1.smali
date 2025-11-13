.class public final Lcom/android/systemui/qs/external/TileServices$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServices;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$1;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-ne v1, v0, :cond_2

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServices$1;->this$0:Lcom/android/systemui/qs/external/TileServices;

    sget-boolean v0, Lcom/android/systemui/qs/external/TileServices;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TileServices"

    const-string/jumbo v1, "unbindImmediate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/external/TileServiceManager;

    iput-boolean v2, v3, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    iget-object v4, v3, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Lcom/android/systemui/qs/external/TileServiceManager$2;

    iget-object v3, v3, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$1;->this$0:Lcom/android/systemui/qs/external/TileServices;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServices;->mIsDexStandAloneMode:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    const/4 p1, 0x2

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServices$1;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iget-boolean v0, p1, Lcom/android/systemui/qs/external/TileServices;->mIsDexStandAloneMode:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p1, Lcom/android/systemui/qs/external/TileServices;->mIsDexStandAloneMode:Z

    iget-object p1, p1, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/external/TileServices$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServices$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/external/TileServices$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method
