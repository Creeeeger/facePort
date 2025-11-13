.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Unocclude animation cancelled."

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 9

    const-string p1, "KeyguardViewMediator"

    if-eqz p2, :cond_16

    array-length p4, p2

    if-nez p4, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 p4, 0x0

    aget-object v0, p2, p4

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-static {p4, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_4

    :cond_2
    invoke-static {p4, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastOccludedApp:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v3, p4

    goto :goto_2

    :cond_6
    :goto_1
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "/"

    invoke-static {v5, v6, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isScreenOn()Z

    move-result v5

    const-string v6, "UnoccluedAnimationRunner app="

    const-string v7, " keepLeash="

    const-string v8, ", isScreenOn()="

    invoke-static {v6, v0, v7, v8, v3}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastOccludedApp:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p4, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    invoke-static {p4, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_4

    :cond_8
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_9

    invoke-static {p4, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    move v0, p4

    :goto_5
    invoke-static {p4, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/RemoteAnimationTarget;

    if-eqz v4, :cond_b

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    move-object v5, v1

    :goto_6
    iget-object v5, v5, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setRemoteAnimationTarget:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unoccludeAnimationRunner: isDream="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    move-object p1, v1

    :goto_7
    iget-object p1, p1, Lcom/android/systemui/keyguard/ViewMediatorProvider;->initAlphaForAnimationTargets:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->dreamViewModelLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->startTransitionFromDream()V

    if-eqz p5, :cond_e

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_d

    move-object v1, p0

    :cond_d
    iget-object p0, v1, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setUnoccludeFinishedCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void

    :cond_f
    invoke-static {p4, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/RemoteAnimationTarget;

    if-eqz p1, :cond_10

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    :cond_10
    if-eqz v1, :cond_14

    if-nez p5, :cond_11

    goto :goto_9

    :cond_11
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-nez v3, :cond_12

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isScreenOn()Z

    move-result p2

    if-nez p2, :cond_12

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p2, v1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_12
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz p2, :cond_13

    check-cast p2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean p2, p2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    if-ne p2, v2, :cond_13

    const-wide/16 p2, 0xfa

    goto :goto_8

    :cond_13
    const-wide/16 p2, 0x32

    :goto_8
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "keepSurfaceDuration="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    new-instance p4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1$onAnimationStart$5;

    invoke-direct {p4, p5, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1$onAnimationStart$5;-><init>(Landroid/view/IRemoteAnimationFinishedCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_14
    :goto_9
    if-eqz p5, :cond_15

    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_15
    return-void

    :cond_16
    :goto_a
    const-string p0, "No apps provided to unocclude runner; skipping animation and unoccluding."

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_17

    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_17
    return-void
.end method
