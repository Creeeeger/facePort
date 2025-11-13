.class public final Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final application:Landroid/app/Application;

.field public final carrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final metricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final updateChannel:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 4

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->application:Landroid/app/Application;

    invoke-static {p1}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->requireSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->metricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v2, v3}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->updateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->subscriptionsChangedFlow(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$special$$inlined$flatMapLatest$1;-><init>(Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$2;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$2;-><init>(Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final access$updateCrossSimCalling(Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;

    iget v1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;-><init>(Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p0, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->Z$0:Z

    iget-object p1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object p2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p0, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->Z$0:Z

    iget-object p1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$3:Ljava/lang/Object;

    iget-object p2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v5, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p2

    move p2, p0

    move-object p0, v5

    move-object v5, p3

    :goto_1
    move-object p3, v8

    goto :goto_3

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->application:Landroid/app/Application;

    const/16 v2, 0x720

    iget-object v5, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->metricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v5, p3, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p3

    move v8, p2

    move-object p2, p1

    move p1, v8

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iput-object p0, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$3:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->Z$0:Z

    iput v4, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->label:I

    invoke-virtual {p0, v5, v0}, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->crossSimAvailable(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object v8, p2

    move p2, p1

    move-object p1, p3

    goto :goto_1

    :goto_3
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move p1, p2

    move-object p2, p3

    goto :goto_2

    :cond_6
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v8, p2

    move-object p2, p0

    move p0, p1

    move-object p1, v8

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object v4, p2, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->application:Landroid/app/Application;

    new-instance v5, Landroid/telephony/ims/ImsManager;

    invoke-direct {v5, v4}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p3}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v5

    const-string v6, "getImsMmTelManager(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->L$3:Ljava/lang/Object;

    iput-boolean p0, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->Z$0:Z

    iput v3, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$updateCrossSimCalling$1;->label:I

    const-string v4, "ImsMmTelRepository"

    const-string v6, "["

    :try_start_0
    invoke-virtual {v5, p0}, Landroid/telephony/ims/ImsMmTelManager;->setCrossSimCallingEnabled(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] setCrossSimCallingEnabled: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] failed setCrossSimCallingEnabled to "

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    if-ne v2, v1, :cond_7

    goto :goto_6

    :cond_8
    move-object v1, v2

    :goto_6
    return-object v1
.end method


# virtual methods
.method public final crossSimAvailable(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;

    iget v1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;-><init>(Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;->I$0:I

    iget-object p0, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;

    iget-object v2, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->application:Landroid/app/Application;

    invoke-direct {p2, v2, p1}, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;-><init>(Landroid/content/Context;I)V

    iput-object p0, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;->I$0:I

    iput v3, v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel$crossSimAvailable$1;->label:I

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v4, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$isWifiCallingSupported$2;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$isWifiCallingSupported$2;-><init>(Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const-string p2, "carrier_cross_sim_ims_available_bool"

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/android/settings/network/telephony/CarrierConfigManagerExtKt;->safeGetConfig(Landroid/telephony/CarrierConfigManager;Ljava/util/List;I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
