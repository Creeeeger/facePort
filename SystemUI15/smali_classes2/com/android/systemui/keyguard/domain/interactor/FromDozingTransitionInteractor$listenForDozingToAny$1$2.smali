.class public final Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/android/systemui/util/kotlin/Quint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;

    iget v1, v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p0, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->Z$3:Z

    iget-boolean p1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->Z$2:Z

    iget-boolean v1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->Z$1:Z

    iget-boolean v3, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->Z$0:Z

    iget-object v4, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, v3

    move v3, v1

    move-object v1, v4

    move v4, v8

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component4()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component5()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;

    iget-object v5, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->deviceEntryRepository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;

    iput-object p0, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->Z$0:Z

    iput-boolean v1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->Z$1:Z

    iput-boolean v4, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->Z$2:Z

    iput-boolean p1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->Z$3:Z

    iput v3, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->label:I

    check-cast v5, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;

    invoke-virtual {v5, v6}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;->isLockscreenEnabled(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4

    return-object v0

    :cond_4
    move v8, v1

    move-object v1, p0

    move p0, p1

    move p1, v4

    move v4, p2

    move-object p2, v3

    move v3, v8

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    goto :goto_3

    :cond_6
    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    goto :goto_3

    :cond_9
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    :goto_3
    const/4 p1, 0x0

    iput-object p1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput v2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->label:I

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->startTransitionTo$default(Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    return-object v0

    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/util/kotlin/Quint;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;->emit(Lcom/android/systemui/util/kotlin/Quint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
