.class final Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $onboardingService:Lcom/android/settings/network/SimOnboardingService;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/SimOnboardingService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->$context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;-><init>(Landroid/content/Context;Lcom/android/settings/network/SimOnboardingService;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v3, v1, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SimOnboardingService"

    const-string v4, "userSelectedSubInfoList is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/settings/network/SimOnboardingService;->activeSubInfoList:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    new-instance v6, Landroid/telephony/SubscriptionInfo$Builder;

    invoke-direct {v6, v5}, Landroid/telephony/SubscriptionInfo$Builder;-><init>(Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v1, v5}, Lcom/android/settings/network/SimOnboardingService;->getSubscriptionInfoDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/telephony/SubscriptionInfo$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo$Builder;->build()Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    :goto_1
    new-instance v3, Lcom/android/settings/spa/network/PrimarySimRepository;

    iget-object v4, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/spa/network/PrimarySimRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/android/settings/spa/network/PrimarySimRepository;->getPrimarySimInfo(Ljava/util/List;)Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;

    move-result-object v1

    iput v2, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
