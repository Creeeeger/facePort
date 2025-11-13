.class public final Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $activeSubIds$inlined:Ljava/util/List;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Ljava/util/List;Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;->$activeSubIds$inlined:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;->this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2$1;-><init>(Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Unit;

    iget-object p1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;->$activeSubIds$inlined:Ljava/util/List;

    iget-object p2, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;->this$0:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eq v5, v2, :cond_4

    iget-object v6, p2, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->application:Landroid/app/Application;

    invoke-static {v6, v5}, Lcom/android/settings/network/telephony/TelephonyRepositoryKt;->telephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->isMobileDataPolicyEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move p2, v3

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p2, 0x0

    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v3, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$_init_$lambda$1$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
