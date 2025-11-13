.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2$1;

    iget v3, v2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Landroid/net/NetworkCapabilities;

    const/4 v4, 0x0

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    new-instance v7, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;

    invoke-direct {v7, v4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;-><init>(Z)V

    new-instance v8, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;

    invoke-direct {v8, v4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;-><init>(Z)V

    new-instance v9, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;

    invoke-direct {v9, v4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;-><init>(Z)V

    new-instance v10, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;

    invoke-direct {v10, v4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;-><init>(Z)V

    new-instance v11, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$BTTether;

    invoke-direct {v11, v4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$BTTether;-><init>(Z)V

    const/4 v12, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$BTTether;Z)V

    goto/16 :goto_5

    :cond_3
    sget-object v6, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;

    iget-object v7, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;

    iget-object v7, v7, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;->getMainWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_8

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Network;

    invoke-virtual {v7, v9}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    if-eqz v9, :cond_7

    sget-object v10, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;->getMainWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    goto :goto_1

    :cond_7
    move-object v9, v8

    :goto_1
    if-eqz v9, :cond_6

    move-object v6, v9

    goto :goto_2

    :cond_8
    move-object v6, v8

    :goto_2
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    move v7, v4

    goto :goto_4

    :cond_a
    :goto_3
    move v7, v5

    :goto_4
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result v6

    if-ne v6, v5, :cond_b

    move v4, v5

    :cond_b
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v9

    const/16 v10, 0x10

    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v17

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;

    invoke-direct {v12, v7}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;-><init>(Z)V

    new-instance v13, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;

    invoke-direct {v13, v8}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;-><init>(Z)V

    new-instance v14, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;

    invoke-direct {v14, v4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;-><init>(Z)V

    new-instance v15, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;

    invoke-direct {v15, v6}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;-><init>(Z)V

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$BTTether;

    invoke-direct {v4, v9}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$BTTether;-><init>(Z)V

    move-object v11, v1

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$BTTether;Z)V

    :goto_5
    iput v5, v2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    return-object v3

    :cond_c
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
