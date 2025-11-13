.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $configs$inlined:Ljava/util/List;

.field public final synthetic $flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

.field public final synthetic $position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;Ljava/util/List;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;->$configs$inlined:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$2;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$2;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;

    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;->$configs$inlined:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Ljava/util/List;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V

    invoke-static {v1, v0, v2, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
