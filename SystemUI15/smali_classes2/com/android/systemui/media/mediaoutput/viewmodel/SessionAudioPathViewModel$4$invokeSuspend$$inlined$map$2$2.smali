.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$launch$inlined:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2;->$$this$launch$inlined:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v5, 0x1

    instance-of v6, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2$1;

    if-eqz v6, :cond_0

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2$1;

    iget v7, v6, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2$1;->label:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2$1;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v6, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v8, v6, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2$1;->label:I

    if-eqz v8, :cond_2

    if-ne v8, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, [Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v8, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    array-length v8, v1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_6

    aget-object v11, v1, v10

    move-object v12, v11

    check-cast v12, Ljava/lang/Iterable;

    instance-of v13, v12, Ljava/util/Collection;

    if-eqz v13, :cond_3

    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v13, v13, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_5
    :goto_2
    add-int/2addr v10, v5

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_7

    check-cast v11, Ljava/util/Collection;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_4

    :cond_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v10, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    sget-object v11, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Bluetooth:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    filled-new-array {v11}, [Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v11}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->filteredByType([Ljava/util/List;[Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    array-length v11, v1

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_b

    aget-object v13, v1, v12

    move-object v14, v13

    check-cast v14, Ljava/lang/Iterable;

    instance-of v15, v14, Ljava/util/Collection;

    if-eqz v15, :cond_8

    move-object v15, v14

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v15, v15, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    if-eqz v15, :cond_9

    goto :goto_7

    :cond_a
    :goto_6
    add-int/2addr v12, v5

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_c

    check-cast v13, Ljava/util/Collection;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_8

    :cond_c
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v12, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    array-length v12, v1

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_10

    aget-object v14, v1, v13

    move-object v15, v14

    check-cast v15, Ljava/lang/Iterable;

    instance-of v3, v15, Ljava/util/Collection;

    if-eqz v3, :cond_d

    move-object v3, v15

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_a

    :cond_d
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v15, v15, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;

    if-eqz v15, :cond_e

    goto :goto_b

    :cond_f
    :goto_a
    add-int/2addr v13, v5

    goto :goto_9

    :cond_10
    const/4 v14, 0x0

    :goto_b
    if-eqz v14, :cond_11

    check-cast v14, Ljava/util/Collection;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c

    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v12, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    sget-object v13, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->MusicShare:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    filled-new-array {v13}, [Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v13}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->filteredByType([Ljava/util/List;[Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    array-length v13, v1

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v13, :cond_15

    aget-object v15, v1, v14

    move-object v4, v15

    check-cast v4, Ljava/lang/Iterable;

    instance-of v2, v4, Ljava/util/Collection;

    if-eqz v2, :cond_12

    move-object v2, v4

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_e

    :cond_12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v4, v4, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;

    if-eqz v4, :cond_13

    goto :goto_f

    :cond_14
    :goto_e
    add-int/2addr v14, v5

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    :goto_f
    if-eqz v15, :cond_16

    check-cast v15, Ljava/util/Collection;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_10

    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    array-length v4, v1

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v4, :cond_1a

    aget-object v14, v1, v13

    move-object v15, v14

    check-cast v15, Ljava/lang/Iterable;

    instance-of v5, v15, Ljava/util/Collection;

    if-eqz v5, :cond_18

    move-object v5, v15

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    const/4 v5, 0x1

    goto :goto_12

    :cond_18
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v15, v15, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;

    if-eqz v15, :cond_19

    goto :goto_13

    :goto_12
    add-int/2addr v13, v5

    goto :goto_11

    :cond_1a
    const/4 v14, 0x0

    :goto_13
    if-eqz v14, :cond_1b

    check-cast v14, Ljava/util/Collection;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_14

    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v5, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    array-length v5, v1

    const/4 v13, 0x0

    :goto_15
    if-ge v13, v5, :cond_1f

    aget-object v14, v1, v13

    move-object v15, v14

    check-cast v15, Ljava/lang/Iterable;

    move/from16 p1, v5

    instance-of v5, v15, Ljava/util/Collection;

    if-eqz v5, :cond_1d

    move-object v5, v15

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    const/4 v5, 0x1

    goto :goto_16

    :cond_1d
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v15, v15, Lcom/android/systemui/media/mediaoutput/entity/SmartMirroringDevice;

    if-eqz v15, :cond_1e

    goto :goto_17

    :goto_16
    add-int/2addr v13, v5

    move/from16 v5, p1

    goto :goto_15

    :cond_1f
    const/4 v14, 0x0

    :goto_17
    if-eqz v14, :cond_20

    check-cast v14, Ljava/util/Collection;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_18

    :cond_20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_18
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v13, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    array-length v13, v1

    const/4 v14, 0x0

    :goto_19
    if-ge v14, v13, :cond_24

    aget-object v15, v1, v14

    move-object/from16 p1, v5

    move-object v5, v15

    check-cast v5, Ljava/lang/Iterable;

    move/from16 p2, v13

    instance-of v13, v5, Ljava/util/Collection;

    if-eqz v13, :cond_22

    move-object v13, v5

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_22

    :cond_21
    const/4 v5, 0x1

    goto :goto_1a

    :cond_22
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v13, v13, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    if-eqz v13, :cond_23

    goto :goto_1b

    :goto_1a
    add-int/2addr v14, v5

    move-object/from16 v5, p1

    move/from16 v13, p2

    goto :goto_19

    :cond_24
    move-object/from16 p1, v5

    const/4 v15, 0x0

    :goto_1b
    if-eqz v15, :cond_25

    check-cast v15, Ljava/util/Collection;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1c

    :cond_25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1c
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v13, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    array-length v13, v1

    const/4 v14, 0x0

    :goto_1d
    if-ge v14, v13, :cond_29

    aget-object v15, v1, v14

    move-object/from16 p2, v1

    move-object v1, v15

    check-cast v1, Ljava/lang/Iterable;

    move/from16 v17, v13

    instance-of v13, v1, Ljava/util/Collection;

    if-eqz v13, :cond_27

    move-object v13, v1

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_27

    :cond_26
    const/4 v1, 0x1

    goto :goto_1e

    :cond_27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v13, v13, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;

    if-eqz v13, :cond_28

    goto :goto_1f

    :goto_1e
    add-int/2addr v14, v1

    move-object/from16 v1, p2

    move/from16 v13, v17

    goto :goto_1d

    :cond_29
    const/4 v15, 0x0

    :goto_1f
    if-eqz v15, :cond_2a

    check-cast v15, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_20

    :cond_2a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_20
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    iget-object v13, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    iget-boolean v14, v13, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->isSupportSpotifyChromecast:Z

    if-nez v14, :cond_2e

    iget-object v14, v13, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->packageName:Ljava/lang/String;

    const-string v15, "com.spotify.music"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2b

    goto :goto_21

    :cond_2b
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v17, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v15

    if-eqz v15, :cond_2c

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2d
    :goto_21
    invoke-interface {v11}, Ljava/util/List;->clear()V

    :cond_2e
    iget-object v14, v13, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_30

    invoke-static {v14}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2f

    goto :goto_22

    :cond_2f
    const/4 v14, 0x0

    :cond_30
    :goto_22
    if-eqz v14, :cond_31

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_27

    :cond_31
    iget-boolean v14, v13, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->isCastingPriority:Z

    if-nez v14, :cond_35

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_32

    goto :goto_23

    :cond_32
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_33
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_34

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v17, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v15

    if-eqz v15, :cond_33

    goto :goto_24

    :cond_34
    :goto_23
    const/4 v14, 0x0

    goto :goto_25

    :cond_35
    :goto_24
    iget-object v14, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2;->$$this$launch$inlined:Lkotlinx/coroutines/CoroutineScope;

    :goto_25
    if-eqz v14, :cond_36

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    if-eqz v14, :cond_36

    goto :goto_26

    :cond_36
    const/4 v11, 0x0

    :goto_26
    if-nez v11, :cond_37

    goto :goto_27

    :cond_37
    move-object v3, v11

    :goto_27
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_28
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p2, v14

    move-object v14, v15

    check-cast v14, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    move-object/from16 v17, v7

    instance-of v7, v14, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-nez v7, :cond_39

    instance-of v7, v14, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v7, :cond_38

    goto :goto_2a

    :cond_38
    :goto_29
    move-object/from16 v14, p2

    move-object/from16 v7, v17

    goto :goto_28

    :cond_39
    :goto_2a
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3a
    move-object/from16 v17, v7

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v14, v11, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v14, :cond_3c

    move-object v15, v11

    check-cast v15, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v15, v15, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v15, :cond_3b

    goto :goto_2c

    :cond_3b
    const/4 v15, 0x0

    :goto_2c
    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->getAllAddresses(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/util/List;

    move-result-object v15

    :goto_2d
    move-object/from16 p2, v7

    goto :goto_2e

    :cond_3c
    invoke-interface {v11}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    goto :goto_2d

    :goto_2e
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v18, v6

    const/16 v0, 0xa

    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_3d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v6

    move-object v6, v7

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    iget-object v6, v6, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz v6, :cond_3e

    goto :goto_31

    :cond_3e
    const/4 v6, 0x0

    :goto_31
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    move-object/from16 v6, v19

    goto :goto_30

    :cond_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_41

    goto :goto_32

    :cond_41
    const/4 v0, 0x0

    :goto_32
    if-eqz v0, :cond_46

    if-eqz v14, :cond_43

    check-cast v11, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v6, :cond_42

    iget-object v6, v6, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz v6, :cond_42

    goto :goto_33

    :cond_42
    const/4 v6, 0x0

    :goto_33
    iput-object v6, v11, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    goto :goto_35

    :cond_43
    instance-of v6, v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v6, :cond_45

    check-cast v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v6, :cond_44

    iget-object v6, v6, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz v6, :cond_44

    goto :goto_34

    :cond_44
    const/4 v6, 0x0

    :goto_34
    iput-object v6, v11, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    :cond_45
    :goto_35
    invoke-interface {v8, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_46
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v6, v18

    goto/16 :goto_2b

    :cond_47
    move-object/from16 v18, v6

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    new-instance v7, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$4$4$1;

    invoke-direct {v7, v6}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$4$4$1;-><init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {v10, v7}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v7, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$4$4$2;

    invoke-direct {v7, v6}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$4$4$2;-><init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {v5, v7}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_36

    :cond_48
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_37

    :cond_49
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_39

    :cond_4b
    :goto_37
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_38

    :cond_4c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v6

    if-eqz v6, :cond_4d

    goto :goto_39

    :cond_4e
    :goto_38
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    goto/16 :goto_3d

    :cond_4f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v6

    if-eqz v6, :cond_50

    :goto_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_51
    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v11, v7, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v11, :cond_51

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_53
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    sget-object v14, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v11

    if-eqz v11, :cond_53

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_54
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {v10, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    sget-object v23, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x77f

    move-object/from16 v19, v6

    invoke-static/range {v19 .. v25}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {v10, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_55
    :goto_3d
    iget-object v0, v13, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->auracastDeviceController:Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v6, :cond_56

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v6, :cond_56

    iget-object v6, v6, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    goto :goto_3e

    :cond_56
    const/4 v6, 0x0

    :goto_3e
    if-nez v6, :cond_57

    move-object/from16 v16, v1

    move-object/from16 v19, v9

    goto/16 :goto_61

    :cond_57
    iget-object v7, v6, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    if-nez v7, :cond_58

    new-instance v7, Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x1

    goto :goto_3f

    :cond_58
    const/4 v11, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    filled-new-array {v14, v15, v11}, [I

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v7

    :goto_3f
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v15

    if-eqz v11, :cond_59

    goto :goto_40

    :cond_59
    const/4 v7, 0x0

    :goto_40
    if-eqz v7, :cond_7b

    check-cast v7, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_5a
    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt;->isBroadcasting(Landroid/media/AudioManager;)Z

    move-result v0

    if-eqz v0, :cond_69

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5b
    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v14, v7, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v14, :cond_5b

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_5c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5d
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    sget-object v15, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v14

    if-eqz v14, :cond_5d

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_5e
    new-instance v0, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    move-object/from16 p2, v6

    const/16 v6, 0x17f

    move-object/from16 v16, v1

    move-object/from16 v19, v9

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v1, v9, v15, v6}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;I)Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->deepCopy$1(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v14, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p2

    move-object/from16 v1, v16

    move-object/from16 v9, v19

    goto :goto_44

    :cond_5f
    move-object/from16 v16, v1

    move-object/from16 v19, v9

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-interface {v8, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_61
    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v9}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_62
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_63
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v9, :cond_63

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_65
    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v9, v9, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v9, :cond_66

    goto :goto_49

    :cond_66
    move-object v9, v1

    :goto_49
    const/16 v11, 0x1a

    invoke-static {v9, v11}, Lcom/android/systemui/media/mediaoutput/ext/CachedBluetoothDeviceExtKt;->isActiveDeviceWithMembers(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z

    move-result v9

    if-eqz v9, :cond_65

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_67
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {v10, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;

    sget-object v11, Lcom/android/systemui/media/mediaoutput/icons/badge/AuracastKt;->Auracast$delegate:Lkotlin/Lazy;

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v22, v11

    check-cast v22, Landroidx/compose/ui/graphics/vector/ImageVector;

    sget-object v24, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x76f

    move-object/from16 v20, v7

    invoke-static/range {v20 .. v26}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_68
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {v10, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    goto :goto_4b

    :cond_69
    move-object/from16 v16, v1

    move-object/from16 v19, v9

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6a
    :goto_4c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v11, v9, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v11, :cond_6a

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_6b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6c
    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    sget-object v14, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v11

    if-eqz v11, :cond_6c

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_6d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6e
    :goto_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v11, v11, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v11, :cond_6f

    goto :goto_4f

    :cond_6f
    move-object v11, v1

    :goto_4f
    iget-object v11, v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v14, "LocalBluetoothLeBroadcastAssistant"

    const-string v15, "getAllSources()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v15, v6, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    if-nez v15, :cond_70

    const-string v11, "The BluetoothLeBroadcastAssistant is null"

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    goto :goto_50

    :cond_70
    invoke-virtual {v15, v11}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v11

    :goto_50
    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    const/4 v14, 0x1

    xor-int/2addr v11, v14

    if-eqz v11, :cond_6e

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_71
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {v10, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;

    sget-object v11, Lcom/android/systemui/media/mediaoutput/icons/badge/AuracastKt;->Auracast$delegate:Lkotlin/Lazy;

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v22, v11

    check-cast v22, Landroidx/compose/ui/graphics/vector/ImageVector;

    sget-object v24, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x76f

    move-object/from16 v20, v7

    invoke-static/range {v20 .. v26}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_72
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {v10, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    goto :goto_52

    :cond_73
    if-eqz v6, :cond_74

    move-object v0, v10

    goto :goto_53

    :cond_74
    move-object v0, v1

    :goto_53
    if-eqz v0, :cond_88

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_75
    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v9, :cond_75

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_77
    :goto_55
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-boolean v9, v9, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->selectable:Z

    if-eqz v9, :cond_77

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_78
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {v10, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x6ff

    move-object/from16 v20, v7

    invoke-static/range {v20 .. v26}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_79
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {v10, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    :cond_7a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_61

    :cond_7b
    move-object/from16 v16, v1

    move-object/from16 v19, v9

    const/4 v1, 0x0

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/controller/device/AuracastDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt;->isBroadcasting(Landroid/media/AudioManager;)Z

    move-result v6

    if-eqz v6, :cond_7c

    goto :goto_58

    :cond_7c
    move-object v0, v1

    :goto_58
    if-eqz v0, :cond_88

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7d
    :goto_59
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v9, :cond_7d

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_7e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7f
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    sget-object v11, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v9

    if-eqz v9, :cond_7f

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_80
    new-instance v0, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;

    sget-object v11, Lcom/android/systemui/media/mediaoutput/icons/badge/AuracastKt;->Auracast$delegate:Lkotlin/Lazy;

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/graphics/vector/ImageVector;

    sget-object v14, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    const/16 v15, 0x16f

    const/4 v1, 0x0

    invoke-static {v7, v11, v1, v14, v15}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;I)Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->deepCopy$1(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_5b

    :cond_81
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-interface {v8, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    :cond_82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_83
    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v7, :cond_83

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_85
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_86
    new-instance v0, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {v10, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v25, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x77f

    move-object/from16 v21, v6

    invoke-static/range {v21 .. v27}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v7, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    invoke-interface {v10, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_88
    :goto_61
    iget-object v0, v13, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->MusicShare:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    if-eqz v0, :cond_9c

    instance-of v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;

    if-eqz v1, :cond_89

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;

    goto :goto_62

    :cond_89
    const/4 v0, 0x0

    :goto_62
    if-eqz v0, :cond_9c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8a
    :goto_63
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v9, :cond_8a

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_8b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8c

    goto :goto_64

    :cond_8c
    const/4 v1, 0x0

    :goto_64
    if-eqz v1, :cond_8d

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_65

    :cond_8d
    const/4 v1, 0x0

    :goto_65
    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-nez v1, :cond_8e

    goto/16 :goto_6c

    :cond_8e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8f
    :goto_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_90

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v14, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isConnected(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v11

    if-eqz v11, :cond_8f

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_90
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_91
    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_92

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v11, v9, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-eqz v11, :cond_91

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_92
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_93

    goto :goto_68

    :cond_93
    const/4 v7, 0x0

    :goto_68
    if-eqz v7, :cond_94

    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_69

    :cond_94
    const/4 v6, 0x0

    :goto_69
    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    if-nez v6, :cond_95

    goto/16 :goto_6c

    :cond_95
    invoke-interface {v10, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v12, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    iget-boolean v11, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isSupportSelectableBudsTogether:Z

    if-nez v11, :cond_96

    iget-boolean v14, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isTriggeredBudsTogether:Z

    if-eqz v14, :cond_96

    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isTriggeredBudsTogether:Z

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->setAudioSharingEnabled(Z)V

    goto :goto_6a

    :cond_96
    const/4 v14, 0x0

    :goto_6a
    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/controller/device/MusicShareDeviceController;->isAudioSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v0

    if-nez v0, :cond_97

    invoke-static {v6}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v0

    if-eqz v0, :cond_98

    :cond_97
    const/4 v14, 0x1

    :cond_98
    if-eqz v14, :cond_99

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_6b

    :cond_99
    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    :goto_6b
    if-nez v14, :cond_9a

    iget-object v14, v1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    iput-object v14, v6, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    :cond_9a
    const/16 v24, 0x0

    const/16 v27, 0x67f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v1

    move-object/from16 v25, v0

    move/from16 v26, v11

    invoke-static/range {v21 .. v27}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {v10, v7, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v23, 0x0

    const/16 v26, 0x67f

    move-object/from16 v21, v6

    move-object/from16 v24, v0

    move/from16 v25, v11

    invoke-static/range {v21 .. v26}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->deepCopy$2(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {v12, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    :cond_9b
    const/16 v25, 0x0

    const/16 v27, 0x6ff

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v1

    move/from16 v26, v11

    invoke-static/range {v21 .. v27}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->deepCopy(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {v10, v7, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v24, 0x0

    const/16 v26, 0x6ff

    const/16 v23, 0x0

    move-object/from16 v21, v6

    move/from16 v25, v11

    invoke-static/range {v21 .. v26}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;ILcom/android/systemui/media/mediaoutput/entity/State;ZI)Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/media/mediaoutput/entity/MusicShareDevice;->deepCopy$2(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    invoke-interface {v12, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_6c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_9c
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_9d

    goto :goto_6d

    :cond_9d
    const/4 v0, 0x0

    :goto_6d
    if-nez v0, :cond_9e

    move-object/from16 v0, p1

    :cond_9e
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9f

    goto :goto_6f

    :cond_9f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    sget-object v4, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v2

    if-eqz v2, :cond_a0

    sget-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;

    invoke-static {v0, v3, v8, v10}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;->access$updateStateWithRouteDevices(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v10, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    :goto_6e
    move-object/from16 v6, v18

    const/4 v0, 0x1

    goto :goto_70

    :cond_a1
    :goto_6f
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_a3

    iget-boolean v0, v13, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->isSupportDisplayOnlyRemoteDevice:Z

    if-eqz v0, :cond_a2

    move-object/from16 v1, v16

    goto :goto_6e

    :cond_a2
    sget-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;

    invoke-static {v0, v8}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;->access$changeInActiveState(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v10}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;->access$changeInActiveState(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$Companion;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    goto :goto_6e

    :cond_a3
    invoke-static {v10, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v9, v19

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    goto :goto_6e

    :goto_70
    iput v0, v6, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2$1;->label:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$invokeSuspend$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, v6}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a4

    return-object v1

    :cond_a4
    :goto_71
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
