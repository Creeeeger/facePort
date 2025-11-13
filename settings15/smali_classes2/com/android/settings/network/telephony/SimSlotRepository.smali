.class public final Lcom/android/settings/network/telephony/SimSlotRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/SimSlotRepository;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->requireSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/SimSlotRepository;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final subIdInSimSlotFlow(I)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/SimSlotRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->subscriptionsChangedFlow(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/SimSlotRepository$subIdInSimSlotFlow$$inlined$map$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/settings/network/telephony/SimSlotRepository$subIdInSimSlotFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/network/telephony/SimSlotRepository;I)V

    const/4 p0, -0x1

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/SimSlotRepository$subIdInSimSlotFlow$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/network/telephony/SimSlotRepository$subIdInSimSlotFlow$2;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
