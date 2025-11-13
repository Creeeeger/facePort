.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $configs$inlined:Ljava/util/List;

.field final synthetic $position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Ljava/util/List;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$configs$inlined:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$configs$inlined:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    invoke-direct {v0, p3, v1, v2, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Ljava/util/List;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->label:I

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v3, :cond_3

    aget-object v6, v2, v4

    instance-of v6, v6, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_1
    if-eq v4, v5, :cond_4

    aget-object v2, v2, v4

    check-cast v2, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$configs$inlined:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    invoke-interface {v3}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Visible;

    iget-object v5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    iget-object v6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    invoke-virtual {v6}, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->toSlotId()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->$r8$clinit:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;->icon:Lcom/android/systemui/common/shared/model/Icon;

    iget-object v2, v2, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;->activationState:Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;

    invoke-direct {v4, v3, v5, v2}, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Visible;-><init>(Ljava/lang/String;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;)V

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;->INSTANCE:Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;

    :goto_2
    iput v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->label:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
