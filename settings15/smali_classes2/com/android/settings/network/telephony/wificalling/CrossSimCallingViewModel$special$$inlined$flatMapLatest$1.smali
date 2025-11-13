.class public final Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"
    }
    d2 = {
        "T",
        "R",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "it",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;-><init>(Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/Unit;

    iget-object v1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    iget-object v1, v1, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    const-string v4, "getActiveSubscriptionIdList(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([I)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget-object v9, v4, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->application:Landroid/app/Application;

    invoke-static {v9, v7, v8}, Lcom/android/settings/network/MobileDataEnabledFlowKt;->mobileDataEnabledFlow(Landroid/content/Context;IZ)Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget v4, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->$r8$clinit:I

    new-instance v4, Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    sget-object v7, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v9, -0x2

    invoke-direct {v4, v6, v5, v9, v7}, Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;-><init>(Ljava/lang/Iterable;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    iget-object v5, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    iget-object v5, v5, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->updateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    const-string v6, "<this>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lkotlinx/coroutines/flow/ChannelAsFlow;

    invoke-direct {v6, v5, v8}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Z)V

    filled-new-array {v4, v6}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    iput v3, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->ensureActive(Lkotlinx/coroutines/flow/FlowCollector;)V

    new-instance v3, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;

    invoke-direct {v3, p1, v1, v5}, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Ljava/util/List;Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;)V

    invoke-virtual {v4, v3, p0}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-ne p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p0, v2

    :goto_2
    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    return-object v2
.end method
