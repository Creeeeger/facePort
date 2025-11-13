.class public final Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2$1;

    iget v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "RouteDeviceController"

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/RoutingSessionInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "before - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-object v8, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_1e

    invoke-virtual {v8, v4}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getAvailableSession(Ljava/util/List;)Landroid/media/RoutingSessionInfo;

    move-result-object v4

    if-eqz v4, :cond_1e

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "after - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v11, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-gt v11, v5, :cond_8

    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v5

    if-eqz v11, :cond_7

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    move v11, v5

    :goto_5
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v12

    if-nez v12, :cond_9

    move/from16 v19, v5

    goto :goto_6

    :cond_9
    const/16 v19, 0x0

    :goto_6
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/media/MediaRouter2Manager;->getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/MediaRoute2Info;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "\tselected - "

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroid/media/MediaRoute2Info;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v14, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v13}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    iget-object v12, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    const/16 v17, 0x0

    move-object v5, v15

    move v15, v11

    move/from16 v18, v19

    invoke-virtual/range {v12 .. v18}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->createRouteDevice(Landroid/media/MediaRoute2Info;Lcom/android/systemui/media/mediaoutput/entity/State;ZZZZ)Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v5

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    move-object v5, v15

    new-instance v6, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$lambda$31$lambda$27$$inlined$sortedBy$1;

    invoke-direct {v6, v5}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$lambda$31$lambda$27$$inlined$sortedBy$1;-><init>(Ljava/util/List;)V

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v9, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v12}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/MediaRouter2Manager;->getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaRoute2Info;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\tselectable - "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroid/media/MediaRoute2Info;

    iget-object v14, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Ljava/util/Set;

    invoke-virtual {v13}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/16 v13, 0x22

    if-eqz v12, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaRoute2Info;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v14, v8, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->isSupportForTransferDuringRouting:Z

    invoke-static {v8, v12, v11, v14, v13}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->createRouteDevice$default(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Landroid/media/MediaRoute2Info;ZZI)Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_10
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v9, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v11}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_11
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/MediaRoute2Info;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "\ttransferable - "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/media/MediaRoute2Info;

    iget-object v12, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/util/Set;

    invoke-virtual {v11}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRoute2Info;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v8, v7, v12, v11, v13}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->createRouteDevice$default(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Landroid/media/MediaRoute2Info;ZZI)Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_15
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v9, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v7}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_16
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v1

    iget-boolean v6, v8, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->isSupportTransferableRoutesWhileConnecting:Z

    if-eqz v6, :cond_17

    goto :goto_12

    :cond_17
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_19

    invoke-virtual {v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_19

    check-cast v1, Ljava/lang/Iterable;

    new-instance v6, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v6, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v1, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$15;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$15;

    invoke-static {v6, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    new-instance v6, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$16;

    invoke-direct {v6, v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$16;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;)V

    invoke-static {v1, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    sget-object v6, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$17;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$17;

    invoke-static {v1, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->onEach(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v1

    new-instance v6, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$18;

    invoke-direct {v6, v10}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$18;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v1, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    new-instance v6, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$19;

    invoke-direct {v6, v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$19;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;)V

    invoke-static {v1, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_19

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v9, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v6}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_18
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v10, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1c

    move-object v6, v1

    goto :goto_15

    :cond_1c
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_1d

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->convertToListIfNotCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v4, v6}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->createGroupDevice(Landroid/media/RoutingSessionInfo;Ljava/util/List;)Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v9, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1d
    const/4 v1, 0x1

    goto/16 :goto_19

    :cond_1e
    invoke-virtual {v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/media/MediaRoute2Info;

    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/media/MediaRoute2Info;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8, v6}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->access$getFeatureAvailable(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Landroid/media/MediaRoute2Info;)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_22
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v5, 0x3e

    const/4 v6, 0x0

    invoke-static {v8, v4, v6, v6, v5}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->createRouteDevice$default(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Landroid/media/MediaRoute2Info;ZZI)Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :goto_19
    iput v1, v2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v9, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_23

    return-object v3

    :cond_23
    :goto_1a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
