.class public final Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field public final mDexWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

.field public final mTransitionToTaskInfo:Ljava/util/Map;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    iput-object p5, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mDexWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

    sget-boolean p3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformComponents;->isFreeformEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    return-void
.end method

.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mDexWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->onTransitionFinished$1(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTransitionFinished$1(Landroid/os/IBinder;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    if-eq v4, v6, :cond_9

    if-eq v4, v5, :cond_8

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-interface {v7, v4, v5, p3, p4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    :cond_6
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-interface {v7, v4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-interface {v7, v4, v5, p3, p4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-interface {v7, v4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-interface {v7, v4, p3, p4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-interface {v7, v4, v5, p3, p4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    :cond_a
    :goto_1
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mDexWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

    invoke-virtual {v4, p1, v3}, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo$Change;)V

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v4, :cond_0

    invoke-interface {v7, p1, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo$Change;)V

    goto/16 :goto_0

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onTransitionStarting()V
    .locals 0

    return-void
.end method
