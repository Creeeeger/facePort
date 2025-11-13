.class public final Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    invoke-virtual {p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1;->emit$1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit$1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;

    iget v1, v0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p1, v6, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v6, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz p1, :cond_4

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_4
    iput-object p0, v6, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput v3, v6, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;

    invoke-virtual {p1, v6}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->maybeHandleInsecurePowerGesture(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v4, Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;->RESET:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    const/4 p1, 0x0

    iput-object p1, v6, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput v2, v6, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor$listenForTransitionToCamera$1$1$emit$1;->label:I

    const-string v5, "keyguardInteractor.onCameraLaunchDetected"

    const/4 v7, 0x2

    const/4 v3, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->startTransitionTo$default(Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
