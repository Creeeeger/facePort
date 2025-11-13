.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldStateProvider;


# instance fields
.field public final activityTypeProvider:Lcom/android/systemui/unfold/util/CurrentActivityTypeProvider;

.field public final context:Landroid/content/Context;

.field public final foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

.field public final foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

.field public final halfOpenedTimeoutMillis:I

.field public final hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

.field public final hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

.field public isFolded:Z

.field public isScreenOn:Z

.field public isStarted:Z

.field public isUnfoldHandled:Z

.field public lastFoldUpdate:Ljava/lang/Integer;

.field public lastHingeAngle:F

.field public lastHingeAngleBeforeTransition:F

.field public final outputListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final progressExecutor:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$progressExecutor$1;

.field public final progressHandler:Landroid/os/Handler;

.field public final rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

.field public final rotationListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldRotationListener;

.field public final screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

.field public final screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

.field public final timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;

.field public final unfoldKeyguardVisibilityProvider:Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Landroid/content/Context;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Lcom/android/systemui/unfold/util/CurrentActivityTypeProvider;Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityProvider;Lcom/android/systemui/unfold/updates/FoldProvider;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/RotationChangeProvider;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    iput-object p4, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->activityTypeProvider:Lcom/android/systemui/unfold/util/CurrentActivityTypeProvider;

    iput-object p5, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->unfoldKeyguardVisibilityProvider:Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityProvider;

    iput-object p6, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

    iput-object p7, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    iput-object p8, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    iput-object p9, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->progressHandler:Landroid/os/Handler;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;

    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldRotationListener;

    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldRotationListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rotationListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldRotationListener;

    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$progressExecutor$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$progressExecutor$1;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->progressExecutor:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$progressExecutor$1;

    check-cast p1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object p1, p1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->halfFoldedTimeoutMillis$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->halfOpenedTimeoutMillis:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isUnfoldHandled:Z

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final assertInProgressThread$2()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->progressHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "should be called from the progress thread.\n                progressThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\n                Thread.currentThread()="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isTransitionInProgress()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1
.end method

.method public final notifyFoldUpdate(FI)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->name(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceFoldProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    invoke-interface {v2, p2}, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;->onFoldUpdate(I)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    move-result p2

    if-eq v0, p2, :cond_2

    iput p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngleBeforeTransition:F

    :cond_2
    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final start()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    iget-object v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->progressExecutor:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$progressExecutor$1;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/unfold/updates/FoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    check-cast v0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rotationListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldRotationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;-><init>(Lcom/android/systemui/unfold/updates/RotationChangeProvider;Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationListener;)V

    iget-object v0, v0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->bgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->activityTypeProvider:Lcom/android/systemui/unfold/util/CurrentActivityTypeProvider;

    check-cast v0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    iget-object v1, v0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->activityManager:Landroid/app/ActivityManager;

    :try_start_0
    const-string v2, "isOnHomeActivity"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_2

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iput-object v1, v0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->_isHomeActivity:Ljava/lang/Boolean;

    sget-object v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v0, v0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->taskStackChangeListener:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider$taskStackChangeListener$1;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iput-boolean v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isStarted:Z

    return-void

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
