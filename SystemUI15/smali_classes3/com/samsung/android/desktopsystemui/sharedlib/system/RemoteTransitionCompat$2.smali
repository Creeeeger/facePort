.class Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;
.super Landroid/window/IRemoteTransition$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;

.field final synthetic val$controller:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

.field final synthetic val$recents:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$controller:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$recents:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    new-instance p1, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    invoke-direct {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    invoke-interface {p4, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$recents:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    invoke-virtual {p1, p2, p3, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    invoke-interface {p5, p0, p0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteTransitionCompat"

    const-string p2, "Error merging transition."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;Z)V
    .locals 0

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 11

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    const/4 v8, 0x0

    invoke-static {p2, v8, p3, v6}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    move-result-object v9

    const/4 v0, 0x1

    invoke-static {p2, v0, p3, v6}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    move-result-object v10

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result p1

    const/4 v1, 0x0

    move-object v5, v1

    :goto_0
    if-ltz p1, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v7, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v2, v7, :cond_3

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v7

    sub-int/2addr v2, p1

    invoke-virtual {p3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v7

    sub-int/2addr v3, p1

    invoke-virtual {p3, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    array-length p1, v10

    sub-int/2addr p1, v0

    :goto_3
    if-ltz p1, :cond_5

    aget-object v0, v10, p1

    iget-object v0, v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$controller:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    iget-object v7, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    move-object v2, p2

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->setup(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;Ljava/util/ArrayList;Landroid/window/WindowContainerToken;Landroid/util/ArrayMap;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$recents:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v9

    move-object v3, v10

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;->onAnimationStart(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public takeOverAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;[Landroid/window/WindowAnimationState;)V
    .locals 0

    return-void
.end method
