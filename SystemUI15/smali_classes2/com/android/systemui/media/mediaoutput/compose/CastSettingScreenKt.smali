.class public abstract Lcom/android/systemui/media/mediaoutput/compose/CastSettingScreenKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final CastSettingScreen(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x6

    move-object/from16 v9, p3

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x7aadf412

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, p4, 0x6

    move-object/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, p4, 0xe

    move-object/from16 v10, p0

    if-nez v3, :cond_2

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int v3, p4, v3

    goto :goto_1

    :cond_2
    move/from16 v3, p4

    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v3, v3, 0x10

    :cond_3
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_4

    or-int/lit16 v3, v3, 0x80

    :cond_4
    and-int/lit8 v4, p5, 0x6

    if-ne v4, v2, :cond_6

    and-int/lit16 v2, v3, 0x2db

    const/16 v4, 0x92

    if-ne v2, v4, :cond_6

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    goto/16 :goto_c

    :cond_6
    :goto_2
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, p4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    if-eqz v0, :cond_8

    and-int/lit8 v3, v3, -0x71

    :cond_8
    if-eqz v1, :cond_9

    and-int/lit16 v3, v3, -0x381

    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v2, v3

    goto/16 :goto_b

    :cond_a
    :goto_3
    const-string v2, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    const v4, 0x58ab7502

    if-eqz v0, :cond_10

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v5

    if-eqz v5, :cond_f

    instance-of v0, v5, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_b

    move-object v0, v5

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_4
    move-object v6, v0

    goto :goto_5

    :cond_b
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_4

    :goto_5
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    sget v7, Lkotlin/Result;->$r8$clinit:I

    new-instance v7, Lkotlin/Result$Failure;

    invoke-direct {v7, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v7

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    instance-of v7, v0, Lkotlin/Result$Failure;

    if-eqz v7, :cond_d

    move-object v0, v12

    :cond_d
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_e

    invoke-static {v5}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_e
    const-class v7, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    invoke-static {v5, v7, v0, v6}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    and-int/lit8 v3, v3, -0x71

    move v5, v3

    move-object v3, v0

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move v5, v3

    move-object/from16 v3, p1

    :goto_7
    if-eqz v1, :cond_16

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_15

    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_11

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_8
    move-object v2, v0

    goto :goto_9

    :cond_11
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_8

    :goto_9
    :try_start_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    sget v4, Lkotlin/Result;->$r8$clinit:I

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-eqz v4, :cond_13

    move-object v0, v12

    :cond_13
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_14

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_14
    const-class v4, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {v1, v4, v0, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    and-int/lit16 v1, v5, -0x381

    move v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_b

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move-object/from16 v1, p2

    move-object v0, v3

    move v2, v5

    :goto_b
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportSpotifyChromecast:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$8;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x2

    move-object v6, v9

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    const v3, 0x3b8e5254

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_17

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_17
    move-object v15, v3

    check-cast v15, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x7f13035e

    invoke-static {v3, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/CastSettingScreenKt$CastSettingScreen$1;

    invoke-direct {v3, v0, v15}, Lcom/android/systemui/media/mediaoutput/compose/CastSettingScreenKt$CastSettingScreen$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Landroidx/compose/runtime/MutableState;)V

    const v5, 0x33fd5519

    invoke-static {v5, v9, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v7, v2, 0x180

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v6, v9

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt;->SecTitle(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/CastSettingScreenKt$CastSettingScreen$2;

    invoke-direct {v3, v13, v14, v15, v12}, Lcom/android/systemui/media/mediaoutput/compose/CastSettingScreenKt$CastSettingScreen$2;-><init>(Landroid/content/Context;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v9, v2, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object v3, v0

    move-object v4, v1

    :goto_c
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/CastSettingScreenKt$CastSettingScreen$3;

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/CastSettingScreenKt$CastSettingScreen$3;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method
