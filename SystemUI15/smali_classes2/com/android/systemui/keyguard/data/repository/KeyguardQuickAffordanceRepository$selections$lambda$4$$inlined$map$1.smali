.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
