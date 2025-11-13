.class final Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;"
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
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/scan/NetworkScanRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/scan/NetworkScanRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;->this$0:Lcom/android/settings/network/telephony/scan/NetworkScanRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;

    iget-object p0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;->this$0:Lcom/android/settings/network/telephony/scan/NetworkScanRepository;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;-><init>(Lcom/android/settings/network/telephony/scan/NetworkScanRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v5, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;->ACTIVE:Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v6, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;

    invoke-direct {v6, v5, v4, v2}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v4, v0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;->this$0:Lcom/android/settings/network/telephony/scan/NetworkScanRepository;

    iget-object v5, v4, Lcom/android/settings/network/telephony/scan/NetworkScanRepository;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v7

    const-wide/32 v9, 0xdd387

    and-long/2addr v9, v7

    new-instance v11, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v11}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    const-wide/16 v12, 0x0

    cmp-long v9, v9, v12

    if-eqz v9, :cond_2

    const-wide/32 v14, 0x8003

    and-long/2addr v14, v7

    cmp-long v10, v14, v12

    if-eqz v10, :cond_3

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v10, 0x2

    if-eqz v9, :cond_4

    const-wide/32 v14, 0x14384

    and-long/2addr v14, v7

    cmp-long v14, v14, v12

    if-eqz v14, :cond_5

    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v9, :cond_6

    const-wide/32 v14, 0x41000

    and-long/2addr v14, v7

    cmp-long v14, v14, v12

    if-eqz v14, :cond_7

    :cond_6
    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v14, "NetworkScanRepository"

    if-eqz v9, :cond_8

    const-wide/32 v15, 0x80000

    and-long/2addr v7, v15

    cmp-long v7, v7, v12

    if-eqz v7, :cond_9

    iget-object v7, v4, Lcom/android/settings/network/telephony/scan/NetworkScanRepository;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v7

    const-string v8, "getPhoneCapability(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/telephony/PhoneCapability;->getDeviceNrCapabilities()[I

    move-result-object v7

    const-string v8, "getDeviceNrCapabilities(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v7}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    const-string v7, "radioAccessSpecifiers add NGRAN."

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v11}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "createNetworkScan: allowedNetworkTypes = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    :goto_0
    move-object v10, v7

    check-cast v10, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual {v10}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v10}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    new-instance v11, Landroid/telephony/RadioAccessSpecifier;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12, v12}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    new-array v7, v9, [Landroid/telephony/RadioAccessSpecifier;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, [Landroid/telephony/RadioAccessSpecifier;

    new-instance v7, Landroid/telephony/NetworkScanRequest;

    iget-object v4, v4, Lcom/android/settings/network/telephony/scan/NetworkScanRepository;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0b0016

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    const/4 v11, 0x5

    const/4 v13, 0x1

    const/4 v9, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v15}, Landroid/telephony/NetworkScanRequest;-><init>(I[Landroid/telephony/RadioAccessSpecifier;IIZILjava/util/ArrayList;)V

    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v4}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v5, v7, v4, v6}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object v4

    new-instance v5, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$1;

    invoke-direct {v5, v4}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$1;-><init>(Landroid/telephony/NetworkScan;)V

    iput v3, v0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1;->label:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_b

    return-object v1

    :cond_b
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
