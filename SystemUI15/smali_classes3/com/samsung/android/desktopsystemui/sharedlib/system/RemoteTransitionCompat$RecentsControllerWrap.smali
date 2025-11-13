.class Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;
.super Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

.field private mInfo:Landroid/window/TransitionInfo;

.field private mLeashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mOpeningLeashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mPausingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerToken;",
            ">;"
        }
    .end annotation
.end field

.field private mPipTask:Landroid/window/WindowContainerToken;

.field private mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field private mTransition:Landroid/os/IBinder;

.field private mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .locals 0

    return-void
.end method

.method public cleanupScreenshot()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->cleanupScreenshot()V

    :cond_0
    return-void
.end method

.method public detachNavigationBarFromApp(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->detachNavigationBarFromApp(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteTransitionCompat"

    const-string v0, "Failed to detach the navigation bar from app"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finish(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    const-string v1, "RemoteTransitionCompat"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string p1, "Duplicate call to finish"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    :cond_1
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_6

    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iget-object v5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v5, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v2, p1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    :cond_4
    const-string p1, "Change is null for PipTask"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    :cond_5
    move-object p1, v0

    :cond_6
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_7

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    invoke-virtual {p2, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-interface {v3, p1, p2}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v3, "Failed to call animation finish callback"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_4
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    return-void
.end method

.method public hideCurrentInputMethod()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->hideCurrentInputMethod()V

    return-void
.end method

.method public merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)Z
    .locals 9

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-eq v5, v0, :cond_0

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_2

    :cond_0
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    if-nez v2, :cond_4

    return v1

    :cond_4
    move v4, v1

    move v5, v4

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    if-lez v5, :cond_8

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne v5, p1, :cond_7

    return v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\"Concelling\" a recents transitions by unpausing "

    const-string p3, " apps after pausing "

    invoke-static {v5, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " apps."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v4, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-direct {v5, v6, v4, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;-><init>(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl;

    iget-object v8, v5, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v7}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v5, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {p3, v3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;->onTasksAppeared([Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;)V

    return v0
.end method

.method public removeTask(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->removeTask(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public screenshotTask(I)Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    :cond_0
    return-void
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->setDeferCancelUntilNextTransition(ZZ)V

    :cond_0
    return-void
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    :cond_0
    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setWillFinishToHome(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;->setWillFinishToHome(Z)V

    :cond_0
    return-void
.end method

.method public setup(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;Ljava/util/ArrayList;Landroid/window/WindowContainerToken;Landroid/util/ArrayMap;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;",
            "Landroid/window/TransitionInfo;",
            "Landroid/window/IRemoteTransitionFinishedCallback;",
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerToken;",
            ">;",
            "Landroid/window/WindowContainerToken;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    iput-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iput-object p7, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to run a new recents animation while recents is already active."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
