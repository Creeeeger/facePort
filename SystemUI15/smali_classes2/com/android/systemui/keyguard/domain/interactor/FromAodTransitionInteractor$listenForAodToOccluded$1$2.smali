.class public final Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2;->emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of p1, p2, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;

    iget v0, p1, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;->label:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;->label:I

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p1, v5, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;->result:Ljava/lang/Object;

    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v5, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;->label:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v5, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v5, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput v2, v5, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    invoke-virtual {p1, v5}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->maybeHandleInsecurePowerGesture(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_4

    return-object p2

    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;->RESET:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    const/4 p1, 0x0

    iput-object p1, v5, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput v1, v5, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToOccluded$1$2$emit$1;->label:I

    const-string v4, "isOccluded = true"

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->startTransitionTo$default(Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_5

    return-object p2

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
