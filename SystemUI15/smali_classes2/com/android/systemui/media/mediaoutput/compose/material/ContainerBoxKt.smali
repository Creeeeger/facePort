.class public abstract Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final ActionButton(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLandroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v2, p0

    move/from16 v6, p4

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/16 v3, 0xe

    move-object/from16 v4, p5

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x548bcc10

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v5, 0x1

    and-int/lit8 v7, p7, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v7, p6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, p6, 0xe

    if-nez v7, :cond_2

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    or-int v7, p6, v7

    goto :goto_1

    :cond_2
    move/from16 v7, p6

    :goto_1
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v7, v7, 0x10

    :cond_3
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_4

    or-int/lit16 v7, v7, 0x80

    :cond_4
    and-int/lit8 v8, p7, 0x8

    if-eqz v8, :cond_5

    or-int/lit16 v7, v7, 0x400

    :cond_5
    and-int/lit8 v9, p7, 0x10

    if-eqz v9, :cond_6

    or-int/lit16 v7, v7, 0x6000

    goto :goto_3

    :cond_6
    const v9, 0xe000

    and-int v9, p6, v9

    if-nez v9, :cond_8

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x4000

    goto :goto_2

    :cond_7
    const/16 v9, 0x2000

    :goto_2
    or-int/2addr v7, v9

    :cond_8
    :goto_3
    and-int/lit8 v9, p7, 0xe

    if-ne v9, v3, :cond_a

    const v3, 0xb6db

    and-int/2addr v3, v7

    const/16 v7, 0x2492

    if-ne v3, v7, :cond_a

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v5, p3

    goto/16 :goto_1a

    :cond_a
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v3, p6, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v3, :cond_c

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    goto/16 :goto_12

    :cond_c
    :goto_5
    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    const v7, 0x58ab7502

    if-eqz v0, :cond_12

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v9

    if-eqz v9, :cond_11

    instance-of v0, v9, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_d

    move-object v0, v9

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_6
    move-object v10, v0

    goto :goto_7

    :cond_d
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_6

    :goto_7
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    sget v11, Lkotlin/Result;->$r8$clinit:I

    new-instance v11, Lkotlin/Result$Failure;

    invoke-direct {v11, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v11

    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    instance-of v11, v0, Lkotlin/Result$Failure;

    if-eqz v11, :cond_f

    move-object v0, v14

    :cond_f
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_10

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_10
    const-class v11, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-static {v9, v11, v0, v10}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    move-object v9, v0

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v9, p1

    :goto_9
    if-eqz v1, :cond_18

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_17

    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_13

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_a
    move-object v10, v0

    goto :goto_b

    :cond_13
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_a

    :goto_b
    :try_start_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    sget v11, Lkotlin/Result;->$r8$clinit:I

    new-instance v11, Lkotlin/Result$Failure;

    invoke-direct {v11, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v11

    :goto_c
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    instance-of v11, v0, Lkotlin/Result$Failure;

    if-eqz v11, :cond_15

    move-object v0, v14

    :cond_15
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_16

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_16
    const-class v11, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    invoke-static {v1, v11, v0, v10}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    move-object v1, v0

    goto :goto_d

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object/from16 v1, p2

    :goto_d
    if-eqz v8, :cond_1e

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v7

    if-eqz v7, :cond_1d

    instance-of v0, v7, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_19

    move-object v0, v7

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_e
    move-object v3, v0

    goto :goto_f

    :cond_19
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_e

    :goto_f
    :try_start_2
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_10

    :catchall_2
    move-exception v0

    sget v8, Lkotlin/Result;->$r8$clinit:I

    new-instance v8, Lkotlin/Result$Failure;

    invoke-direct {v8, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    :goto_10
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    instance-of v8, v0, Lkotlin/Result$Failure;

    if-eqz v8, :cond_1b

    move-object v0, v14

    :cond_1b
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_1c

    invoke-static {v7}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_1c
    const-class v8, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {v7, v8, v0, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    move-object v3, v0

    :goto_11
    move-object v0, v9

    goto :goto_12

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move-object/from16 v3, p3

    goto :goto_11

    :goto_12
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iget-object v7, v3, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportMultipleMediaSession:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$3;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v12, 0x2

    const/4 v9, 0x0

    const/16 v11, 0x38

    move-object v10, v4

    invoke-static/range {v7 .. v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    const v8, -0x44bc70de

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v8, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->sessionControllers:Landroidx/lifecycle/CoroutineLiveData;

    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v8, v9, v4}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    goto :goto_13

    :cond_1f
    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v9, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v8, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v8

    :goto_13
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v9, -0x44bc7016

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean v9, v15, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    if-nez v9, :cond_20

    iget-object v9, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaDevices:Landroidx/lifecycle/CoroutineLiveData;

    sget-object v10, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v9, v10, v4}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    goto :goto_14

    :cond_20
    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v10, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v9, v10}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v9

    :goto_14
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v10, -0x44bc6f62

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v11, ""

    if-eqz v10, :cond_23

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v5, :cond_22

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_21

    goto :goto_15

    :cond_21
    move-object v8, v14

    goto :goto_18

    :cond_22
    :goto_15
    new-instance v8, Lkotlin/Pair;

    const-string v10, "Control other media"

    invoke-direct {v8, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :cond_23
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v5, :cond_24

    goto :goto_16

    :cond_24
    move-object v8, v14

    :goto_16
    if-nez v8, :cond_25

    move-object v8, v14

    goto :goto_17

    :cond_25
    const v8, 0x7f130421

    invoke-static {v8, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v8, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v10

    :goto_17
    if-nez v8, :cond_26

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    if-eqz v8, :cond_21

    new-instance v10, Lkotlin/Pair;

    iget-object v11, v8, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->artist:Ljava/lang/String;

    iget-object v8, v8, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->id:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v10

    :cond_26
    :goto_18
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v8, :cond_28

    if-nez v6, :cond_27

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_28

    :cond_27
    move v7, v5

    goto :goto_19

    :cond_28
    move v7, v13

    :goto_19
    const/4 v5, 0x3

    invoke-static {v14, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v10

    invoke-static {v14, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v5

    new-instance v11, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ActionButton$1;

    invoke-direct {v11, v8, v9, v2}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ActionButton$1;-><init>(Lkotlin/Pair;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;)V

    const v8, 0x48cae0e8

    invoke-static {v8, v4, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const/4 v8, 0x0

    const/4 v11, 0x0

    const v14, 0x30d80

    const/16 v15, 0x12

    move-object v9, v10

    move-object v10, v5

    move-object v13, v4

    invoke-static/range {v7 .. v15}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    :goto_1a
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_29

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ActionButton$2;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v4, v0

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ActionButton$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZII)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method

.method public static final ContainerBox(ZLcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    move/from16 v2, p0

    move-object/from16 v6, p4

    const/16 v1, 0xe

    move-object/from16 v3, p5

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x4974e231

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v0, p7, 0x1

    const/4 v5, 0x4

    const/4 v13, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 v0, p6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, p6, 0xe

    if-nez v0, :cond_2

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v13

    :goto_0
    or-int v0, p6, v0

    goto :goto_1

    :cond_2
    move/from16 v0, p6

    :goto_1
    and-int/lit8 v7, p7, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    and-int/lit8 v8, p7, 0x4

    if-eqz v8, :cond_4

    or-int/lit16 v0, v0, 0x80

    :cond_4
    and-int/lit8 v9, p7, 0x8

    if-eqz v9, :cond_5

    or-int/lit16 v0, v0, 0x400

    :cond_5
    and-int/lit8 v10, p7, 0x10

    if-eqz v10, :cond_7

    or-int/lit16 v0, v0, 0x6000

    :cond_6
    :goto_2
    move v10, v0

    goto :goto_4

    :cond_7
    const v10, 0xe000

    and-int v10, p6, v10

    if-nez v10, :cond_6

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_3

    :cond_8
    const/16 v10, 0x2000

    :goto_3
    or-int/2addr v0, v10

    goto :goto_2

    :goto_4
    and-int/lit8 v0, p7, 0xe

    if-ne v0, v1, :cond_a

    const v0, 0xb6db

    and-int/2addr v0, v10

    const/16 v11, 0x2492

    if-ne v0, v11, :cond_a

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    goto/16 :goto_2e

    :cond_a
    :goto_5
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, p6, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    if-eqz v7, :cond_c

    and-int/lit8 v10, v10, -0x71

    :cond_c
    if-eqz v8, :cond_d

    and-int/lit16 v10, v10, -0x381

    :cond_d
    if-eqz v9, :cond_e

    and-int/lit16 v10, v10, -0x1c01

    :cond_e
    move-object/from16 v1, p1

    move-object/from16 v5, p2

    :cond_f
    move-object/from16 v0, p3

    :goto_6
    move/from16 v16, v10

    goto/16 :goto_13

    :cond_10
    :goto_7
    const-string v11, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    const v12, 0x58ab7502

    if-eqz v7, :cond_16

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v7

    if-eqz v7, :cond_15

    instance-of v0, v7, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_11

    move-object v0, v7

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_8
    move-object v1, v0

    goto :goto_9

    :cond_11
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_8

    :goto_9
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    sget v16, Lkotlin/Result;->$r8$clinit:I

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    instance-of v5, v0, Lkotlin/Result$Failure;

    if-eqz v5, :cond_13

    const/4 v0, 0x0

    :cond_13
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_14

    invoke-static {v7}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_14
    const-class v5, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-static {v7, v5, v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    and-int/lit8 v10, v10, -0x71

    move-object v1, v0

    goto :goto_b

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move-object/from16 v1, p1

    :goto_b
    if-eqz v8, :cond_1c

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v5

    if-eqz v5, :cond_1b

    instance-of v0, v5, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_17

    move-object v0, v5

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_c
    move-object v7, v0

    goto :goto_d

    :cond_17
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_c

    :goto_d
    :try_start_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    sget v8, Lkotlin/Result;->$r8$clinit:I

    new-instance v8, Lkotlin/Result$Failure;

    invoke-direct {v8, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    :goto_e
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18
    instance-of v8, v0, Lkotlin/Result$Failure;

    if-eqz v8, :cond_19

    const/4 v0, 0x0

    :cond_19
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_1a

    invoke-static {v5}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_1a
    const-class v8, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    invoke-static {v5, v8, v0, v7}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    and-int/lit16 v5, v10, -0x381

    move v10, v5

    move-object v5, v0

    goto :goto_f

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move-object/from16 v5, p2

    :goto_f
    if-eqz v9, :cond_f

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v7

    if-eqz v7, :cond_21

    instance-of v0, v7, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_1d

    move-object v0, v7

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_10
    move-object v8, v0

    goto :goto_11

    :cond_1d
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_10

    :goto_11
    :try_start_2
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_12

    :catchall_2
    move-exception v0

    sget v9, Lkotlin/Result;->$r8$clinit:I

    new-instance v9, Lkotlin/Result$Failure;

    invoke-direct {v9, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v9

    :goto_12
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_1e

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1e
    instance-of v9, v0, Lkotlin/Result$Failure;

    if-eqz v9, :cond_1f

    const/4 v0, 0x0

    :cond_1f
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_20

    invoke-static {v7}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_20
    const-class v9, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {v7, v9, v0, v8}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    and-int/lit16 v10, v10, -0x1c01

    goto/16 :goto_6

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_13
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iget-object v7, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportMultipleMediaSession:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$3;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v17, 0x2

    const/4 v9, 0x0

    const/16 v11, 0x38

    move-object v10, v3

    move-object v14, v12

    move/from16 v12, v17

    invoke-static/range {v7 .. v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    const v8, -0x30a94116

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_22

    iget-object v8, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->sessionControllers:Landroidx/lifecycle/CoroutineLiveData;

    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v8, v9, v3}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    goto :goto_14

    :cond_22
    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v9, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v8, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v8

    :goto_14
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v9, -0x30a9404e

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean v9, v14, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    if-nez v9, :cond_24

    if-nez v2, :cond_23

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_24

    :cond_23
    iget-object v7, v5, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaDevices:Landroidx/lifecycle/CoroutineLiveData;

    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v7, v9, v3}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    goto :goto_15

    :cond_24
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v9, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v7, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v7

    :goto_15
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v11, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    iget v12, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v3, v10}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v15, v3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_3f

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 p1, v0

    iget-boolean v0, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_25

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_25
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_16
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v13, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    move-object/from16 p2, v1

    iget-boolean v1, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_26

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_26
    invoke-static {v12, v3, v12, v13}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_27
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalRootSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/DpSize;

    move-object v10, v5

    iget-wide v5, v2, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    iget-boolean v2, v14, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    const/4 v12, 0x0

    invoke-static {v2, v3, v12}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;->containerFraction(ZLandroidx/compose/runtime/Composer;I)Landroid/util/SizeF;

    move-result-object v2

    sget-object v12, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v14, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    move-object/from16 p3, v10

    const/16 v10, 0xa

    if-ne v12, v10, :cond_28

    goto :goto_17

    :cond_28
    iget-boolean v12, v14, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    if-nez v12, :cond_2a

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result v12

    if-eqz v12, :cond_29

    goto :goto_17

    :cond_29
    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isPortrait(Landroidx/compose/runtime/Composer;)Z

    move-result v12

    if-eqz v12, :cond_2b

    :cond_2a
    :goto_17
    const/4 v12, 0x0

    goto :goto_18

    :cond_2b
    const/16 v12, 0x18

    int-to-float v12, v12

    sget-object v19, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_19

    :goto_18
    int-to-float v10, v12

    sget-object v12, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move v12, v10

    :goto_19
    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result v10

    if-nez v10, :cond_2c

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    if-gt v8, v10, :cond_2d

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v10

    if-eqz v7, :cond_2c

    goto :goto_1a

    :cond_2c
    const/4 v7, 0x0

    goto :goto_1b

    :cond_2d
    :goto_1a
    const/16 v7, 0x3a

    int-to-float v7, v7

    goto :goto_1c

    :goto_1b
    int-to-float v8, v7

    move v7, v8

    :goto_1c
    iget-boolean v8, v14, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    if-nez v8, :cond_2f

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result v8

    if-eqz v8, :cond_2e

    goto :goto_1d

    :cond_2e
    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v8

    if-eqz v8, :cond_30

    :cond_2f
    :goto_1d
    const/4 v8, 0x0

    goto :goto_1e

    :cond_30
    const/16 v8, 0xf

    int-to-float v8, v8

    goto :goto_1f

    :goto_1e
    int-to-float v10, v8

    move v8, v10

    :goto_1f
    iget-boolean v10, v14, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    if-nez v10, :cond_32

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isPortrait(Landroidx/compose/runtime/Composer;)Z

    move-result v10

    if-eqz v10, :cond_31

    goto :goto_20

    :cond_31
    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result v10

    if-eqz v10, :cond_33

    :cond_32
    :goto_20
    move-object/from16 v19, v1

    const/4 v10, 0x0

    goto :goto_21

    :cond_33
    const/16 v10, 0xa

    int-to-float v10, v10

    move-object/from16 v19, v1

    goto :goto_22

    :goto_21
    int-to-float v1, v10

    move v10, v1

    :goto_22
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v1

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v20

    mul-float v20, v20, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v8, v1

    sub-float v8, v20, v8

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v17

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    mul-float v2, v2, v17

    sub-float/2addr v2, v12

    mul-float v17, v10, v1

    sub-float v2, v2, v17

    sub-float/2addr v2, v7

    invoke-static {v8, v2}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v23

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v2

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v7

    sub-float/2addr v2, v7

    div-float/2addr v2, v1

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isPortrait(Landroidx/compose/runtime/Composer;)Z

    move-result v7

    if-nez v7, :cond_35

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result v7

    if-eqz v7, :cond_34

    goto :goto_23

    :cond_34
    add-float/2addr v12, v10

    goto :goto_24

    :cond_35
    :goto_23
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v5

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v6

    sub-float/2addr v5, v6

    div-float v12, v5, v1

    :goto_24
    invoke-static {v2, v12}, Landroidx/compose/ui/unit/DpKt;->DpOffset-YgX7TsA(FF)J

    move-result-wide v21

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaOutputState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;->rememberEnterState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalTransitionInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/mediaoutput/compose/common/TransitionInfo;

    check-cast v5, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iget-object v5, v5, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->fromRect:Landroid/graphics/Rect;

    const v6, 0x7a2fb45b

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v5, :cond_36

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_25

    :cond_36
    const v6, 0x19bcd7c7

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/Density;

    new-instance v7, Landroidx/compose/ui/unit/DpRect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v26

    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v27

    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v28

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v6, v5}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v25, v7

    invoke-direct/range {v25 .. v30}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_25
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_37

    if-eqz v7, :cond_37

    goto :goto_26

    :cond_37
    new-instance v7, Landroidx/compose/ui/unit/DpRect;

    const/16 v25, 0x0

    move-object/from16 v20, v7

    invoke-direct/range {v20 .. v25}, Landroidx/compose/ui/unit/DpRect;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_26
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_38

    const v2, 0x3f666666    # 0.9f

    const/high16 v5, 0x43c80000    # 400.0f

    const/4 v6, 0x4

    const/4 v8, 0x0

    invoke-static {v2, v5, v8, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v2

    goto :goto_27

    :cond_38
    const/4 v6, 0x4

    const/4 v8, 0x0

    const v2, 0x3f4eec1e

    const/high16 v5, 0x43960000    # 300.0f

    invoke-static {v2, v5, v8, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v2

    :goto_27
    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ContainerBox$1$animateContentRect$2;

    invoke-direct {v5, v1}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ContainerBox$1$animateContentRect$2;-><init>(Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;)V

    invoke-static {v7, v2, v5, v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt;->animateDpRectAsState(Landroidx/compose/ui/unit/DpRect;Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/DpRect;

    iget v2, v2, Landroidx/compose/ui/unit/DpRect;->left:F

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/DpRect;

    iget v5, v5, Landroidx/compose/ui/unit/DpRect;->top:F

    invoke-static {v9, v2, v5}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v20

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/DpRect;

    iget v5, v2, Landroidx/compose/ui/unit/DpRect;->right:F

    iget v2, v2, Landroidx/compose/ui/unit/DpRect;->left:F

    sub-float v23, v5, v2

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/DpRect;

    iget v2, v1, Landroidx/compose/ui/unit/DpRect;->bottom:F

    iget v1, v1, Landroidx/compose/ui/unit/DpRect;->top:F

    sub-float v24, v2, v1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x3

    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-boolean v2, v14, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    :goto_28
    int-to-float v5, v2

    goto :goto_29

    :cond_39
    const/16 v2, 0x1a

    goto :goto_28

    :goto_29
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v5, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v3, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v15, :cond_3e

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_3a

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2a

    :cond_3a
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2a
    invoke-static {v3, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3, v6, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_3c

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_2c

    :cond_3b
    :goto_2b
    move-object/from16 v0, v19

    goto :goto_2d

    :cond_3c
    :goto_2c
    invoke-static {v5, v3, v5, v13}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    goto :goto_2b

    :goto_2d
    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v16, 0xc

    const/16 v1, 0xe

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, p4

    invoke-interface {v6, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v5, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    :goto_2e
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_3d

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ContainerBox$2;

    move-object v1, v10

    move/from16 v2, p0

    move-object v3, v0

    move-object/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ContainerBox$2;-><init>(ZLcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/jvm/functions/Function2;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3d
    return-void

    :cond_3e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v1, 0x0

    throw v1

    :cond_3f
    const/4 v1, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v1
.end method

.method public static final SettingButton(Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    move-object v2, p0

    move v3, p1

    const/4 v0, 0x2

    move-object/from16 v1, p3

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0xbad5d14

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v10, 0x1

    and-int/lit8 v4, p5, 0x1

    const/4 v5, 0x4

    if-eqz v4, :cond_0

    or-int/lit8 v4, p4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, p4, 0xe

    if-nez v4, :cond_2

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    or-int v4, p4, v4

    goto :goto_1

    :cond_2
    move/from16 v4, p4

    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, p4, 0x70

    if-nez v0, :cond_5

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v4, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_6

    or-int/lit16 v4, v4, 0x80

    :cond_6
    if-ne v0, v5, :cond_8

    and-int/lit16 v4, v4, 0x2db

    const/16 v5, 0x92

    if-ne v4, v5, :cond_8

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v4, p2

    goto/16 :goto_b

    :cond_8
    :goto_4
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, p4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :cond_a
    move-object/from16 v0, p2

    goto :goto_9

    :cond_b
    :goto_5
    if-eqz v0, :cond_a

    const v0, 0x58ab7502

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_10

    instance-of v0, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_c

    move-object v0, v4

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_6
    move-object v5, v0

    goto :goto_7

    :cond_c
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_6

    :goto_7
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    sget v6, Lkotlin/Result;->$r8$clinit:I

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    instance-of v6, v0, Lkotlin/Result$Failure;

    if-eqz v6, :cond_e

    move-object v0, v12

    :cond_e
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_f

    invoke-static {v4}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_f
    const-class v6, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {v4, v6, v0, v5}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    goto :goto_9

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_9
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iget-object v4, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportMultipleMediaSession:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$3;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x38

    move-object v7, v1

    invoke-static/range {v4 .. v9}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    iget-boolean v5, v13, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    if-nez v5, :cond_12

    if-nez v3, :cond_11

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    move v4, v10

    goto :goto_a

    :cond_12
    move v4, v11

    :goto_a
    const/4 v5, 0x3

    invoke-static {v12, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v6

    invoke-static {v12, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v7

    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$1;

    invoke-direct {v5, v13, p0}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$1;-><init>(Lcom/android/systemui/media/mediaoutput/compose/common/Feature;Lkotlin/jvm/functions/Function1;)V

    const v8, -0x4e593a3c

    invoke-static {v8, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v11, 0x30d80

    const/16 v12, 0x12

    move-object v10, v1

    invoke-static/range {v4 .. v12}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v0

    :goto_b
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$2;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public static final containerFraction(ZLandroidx/compose/runtime/Composer;I)Landroid/util/SizeF;
    .locals 3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x7caf1315

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p0, v0

    :cond_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    new-instance p0, Landroid/util/SizeF;

    invoke-direct {p0, p2, p2}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_1

    :cond_1
    new-instance p0, Landroid/util/SizeF;

    const v1, 0x464dada9

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v1, 0x464dadad

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v1, :cond_2

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_2
    const v1, 0x464dadc9

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v1, :cond_3

    const v1, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_3
    move v1, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isPortrait(Landroidx/compose/runtime/Composer;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const p2, 0x3f266666    # 0.65f

    :cond_5
    invoke-direct {p0, v1, p2}, Landroid/util/SizeF;-><init>(FF)V

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public static final containerWidth(Landroidx/compose/runtime/Composer;)F
    .locals 4

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0xa4ee9e4

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1e

    int-to-float v0, v0

    :goto_0
    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_2

    :cond_1
    :goto_1
    int-to-float v0, v1

    goto :goto_0

    :goto_2
    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalRootSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/DpSize;

    iget-wide v2, v2, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, p0, v3}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;->containerFraction(ZLandroidx/compose/runtime/Composer;I)Landroid/util/SizeF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v3, v0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return v3
.end method
