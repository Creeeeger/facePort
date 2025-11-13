.class public final Lcom/android/wm/shell/recents/TaskStackTransitionObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field public final taskStackTransitionObserverListeners:Landroid/util/ArrayMap;

.field public final transitionToTransitionChanges:Ljava/util/Map;

.field public final transitions:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lcom/android/wm/shell/sysui/ShellInit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver;->transitions:Ldagger/Lazy;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver;->transitionToTransitionChanges:Ljava/util/Map;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver;->taskStackTransitionObserverListeners:Landroid/util/ArrayMap;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$1;-><init>(Lcom/android/wm/shell/recents/TaskStackTransitionObserver;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver;->transitionToTransitionChanges:Ljava/util/Map;

    new-instance v1, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TransitionChanges;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TransitionChanges;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TransitionChanges;

    iget-object v0, v0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TransitionChanges;->taskInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver;->transitionToTransitionChanges:Ljava/util/Map;

    new-instance v4, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TransitionChanges;

    invoke-direct {v4, v2, v2, v3, v2}, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TransitionChanges;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v4}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TransitionChanges;

    iget-object v1, v1, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TransitionChanges;->transitionTypeList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver;->transitionToTransitionChanges:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver;->taskStackTransitionObserverListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TaskStackTransitionObserverListener;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$notifyTaskStackTransitionObserverListeners$1$1;

    invoke-direct {v6, v5, v3}, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$notifyTaskStackTransitionObserverListeners$1$1;-><init>(Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TaskStackTransitionObserverListener;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-static {}, Lcom/android/window/flags/Flags;->enableTaskStackObserverInShell()Z

    return-void
.end method

.method public final onTransitionStarting()V
    .locals 0

    return-void
.end method
