.class public final Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field mEnabled:Z

.field public final mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p4, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p5, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    new-instance p1, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->updateStatus()V

    return-void
.end method

.method public updateStatus()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mEnabled:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mEnabled:Z

    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mListener:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iput v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotation:I

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/window/DisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {v2}, Landroid/window/DisplayAreaAppearedInfo;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {v3}, Landroid/window/DisplayAreaAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->addDisplayAreaInfoAndLeashToMap(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->updateBoundsAndOffsets(Z)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayAreaMap:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->updateBoundsAndOffsets(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mListener:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    invoke-virtual {p0}, Landroid/window/DisplayAreaOrganizer;->unregisterOrganizer()V

    :goto_1
    return-void
.end method
