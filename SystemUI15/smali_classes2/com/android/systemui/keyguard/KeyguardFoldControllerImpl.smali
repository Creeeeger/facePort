.class public final Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController;


# instance fields
.field public final binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field public final context:Landroid/content/Context;

.field public final dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

.field public final foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

.field public final foldOpenModeListeners:Ljava/util/List;

.field public foldOpenState:I

.field public foldState:I

.field public handler:Landroid/os/Handler;

.field public final highRankedStateListeners:Ljava/util/List;

.field public volatile initShowTime:J

.field public final looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public final normalRankedStateListeners:Ljava/util/List;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final viewControllerLazy:Ldagger/Lazy;

.field public final viewMediator$delegate:Lkotlin/Lazy;

.field public final viewMediatorHelper$delegate:Lkotlin/Lazy;

.field public final viewMediatorLazy:Ldagger/Lazy;

.field public wakeReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;",
            "Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewControllerLazy:Ldagger/Lazy;

    iput-object p9, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorLazy:Ldagger/Lazy;

    iput-object p10, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$viewMediator$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$viewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediator$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$viewMediatorHelper$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$viewMediatorHelper$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldState:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->highRankedStateListeners:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->normalRankedStateListeners:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenModeListeners:Ljava/util/List;

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z
    .locals 3

    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->highRankedStateListeners:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->normalRankedStateListeners:Ljava/util/List;

    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/RankedStateListener;

    iget-object v2, v1, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    new-instance v0, Lcom/android/systemui/keyguard/RankedStateListener;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/keyguard/RankedStateListener;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_4

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$addCallback$lambda$9$$inlined$sortBy$1;

    invoke-direct {p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$addCallback$lambda$9$$inlined$sortBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    return p2
.end method

.method public final changeFoldState(Z)V
    .locals 14

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldState:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v0

    :goto_1
    if-ne v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    check-cast v6, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eq p1, v3, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const-string v0, ""

    goto :goto_3

    :cond_3
    const-string v0, "FOLD_OPEN"

    goto :goto_3

    :cond_4
    const-string v0, "FOLD_CLOSE"

    goto :goto_3

    :cond_5
    const-string v0, "FOLD_NONE"

    goto :goto_3

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "changeFoldState: foldState="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", changed="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "KeyguardFoldController"

    invoke-static {v3, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_e

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldState:I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x2

    const-wide/16 v6, 0xa

    const-wide/16 v8, 0x14

    const-wide/16 v10, 0xbb8

    invoke-virtual/range {v4 .. v13}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    const-wide/32 v7, 0xf4240

    div-long v6, v5, v7

    const-wide/16 v8, 0xbb8

    const/4 v5, 0x4

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring(IJJ)Z

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    if-nez v0, :cond_9

    move-object v0, v4

    :cond_9
    const/16 v5, 0x3eb

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    check-cast v6, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "notifyFoldStateChanged remove previous msg"

    invoke-static {v3, v6}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v5, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    if-nez v1, :cond_d

    if-eqz p1, :cond_d

    iget-wide v5, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->initShowTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v3, :cond_c

    move-object v4, v3

    :cond_c
    iget-object v3, v4, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetPendingLock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeShowMsg()V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->highRankedStateListeners:Ljava/util/List;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->onFoldStateChanged(Ljava/util/List;ZZZ)V

    :cond_e
    return-void
.end method

.method public final getFoldOpenModeStr(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "MODE_WAKE_UNLOCK"

    goto :goto_0

    :cond_1
    const-string p0, "MODE_UNLOCK"

    goto :goto_0

    :cond_2
    const-string p0, "MODE_BOUNCER"

    goto :goto_0

    :cond_3
    const-string p0, "MODE_RESET"

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediator$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object p0
.end method

.method public final isBouncerOnFoldOpened()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFoldOpened()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnlockOnFoldOpened()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onFoldStateChanged(Ljava/util/List;ZZZ)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/keyguard/RankedStateListener;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/RankedStateListener;->skipInitState:Z

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/keyguard/RankedStateListener;

    if-eqz p4, :cond_3

    iget v0, p3, Lcom/android/systemui/keyguard/RankedStateListener;->rank:I

    const-string v1, "onFoldStateChanged "

    const-string v2, " "

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;

    invoke-direct {v1, p3, p2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;-><init>(Lcom/android/systemui/keyguard/RankedStateListener;Z)V

    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    check-cast p3, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v2, "LooperSlow"

    const/16 v3, 0xa

    invoke-static {v1, v3, v2, v0, p3}, Lcom/android/systemui/util/LogUtil;->execTime(Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p3, p3, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    invoke-interface {p3, p2}, Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;->onFoldStateChanged(Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final resetFoldOpenState$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isEarlyWakeUp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "KeyguardFoldController"

    const-string/jumbo v0, "skip resetFoldOpenState"

    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    return-void
.end method

.method public final setFoldOpenState(I)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    const-string v1, "KeyguardFoldController"

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getFoldOpenModeStr(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "already "

    invoke-static {p1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getFoldOpenModeStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getFoldOpenModeStr(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "setFoldOpenState "

    const-string v5, " -> "

    invoke-static {v4, v0, v5, v3}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenModeListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;

    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "request stackScroller forceLayout"

    const-string v5, "StackScrollerController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHasDelayedForceLayout:Z

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mForceLayoutTimeOutRunnable:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;

    if-eqz v3, :cond_4

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v2, v5, v6}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const-string v3, "do stackScroller forceLayout"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v4}, Landroid/view/ViewGroup;->forceLayout()V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    iput v3, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->wakeReason:I

    :cond_6
    return-void
.end method
