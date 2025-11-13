.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$flow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;

    iget v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/util/kotlin/Quint;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component3()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component4()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component5()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v6, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->KEYGUARD:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    if-ne v2, v6, :cond_5

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v5, p1, :cond_5

    cmpg-float p1, p2, v8

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const p1, 0x3f733333    # 0.95f

    invoke-static {v7, v8, p1, v8, p2}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(F)V

    iput v4, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;->label:I

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_5
    :goto_2
    cmpg-float p1, p2, v7

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    cmpg-float p1, p2, v8

    if-nez p1, :cond_7

    :goto_3
    new-instance p1, Ljava/lang/Float;

    invoke-direct {p1, v8}, Ljava/lang/Float;-><init>(F)V

    iput v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$special$$inlined$transform$1$1$1;->label:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
