.class public abstract Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SettingHome(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 13

    move-object v3, p1

    const/16 v0, 0xc

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object/from16 v10, p4

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x7bf8de41

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, p5, 0x6

    move-object v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, p5, 0xe

    move-object v11, p0

    if-nez v4, :cond_2

    invoke-virtual {v10, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    or-int v4, p5, v4

    goto :goto_1

    :cond_2
    move/from16 v4, p5

    :goto_1
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v1, p5, 0x70

    if-nez v1, :cond_5

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto :goto_2

    :cond_4
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v4, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v4, v4, 0x80

    :cond_6
    and-int/lit8 v2, p6, 0x8

    if-eqz v2, :cond_7

    or-int/lit16 v4, v4, 0x400

    :cond_7
    and-int/lit8 v5, p6, 0xc

    if-ne v5, v0, :cond_9

    and-int/lit16 v0, v4, 0x16db

    const/16 v5, 0x492

    if-ne v0, v5, :cond_9

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, p2

    move-object/from16 v5, p3

    goto/16 :goto_f

    :cond_9
    :goto_4
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    if-eqz v1, :cond_b

    and-int/lit16 v4, v4, -0x381

    :cond_b
    if-eqz v2, :cond_c

    and-int/lit16 v4, v4, -0x1c01

    :cond_c
    move-object v1, p2

    :cond_d
    move-object/from16 v0, p3

    goto/16 :goto_e

    :cond_e
    :goto_5
    const/4 v5, 0x0

    const-string v6, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    const v7, 0x58ab7502

    const/4 v8, 0x0

    if-eqz v1, :cond_14

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_13

    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_f

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_6
    move-object v9, v0

    goto :goto_7

    :cond_f
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_6

    :goto_7
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    sget v12, Lkotlin/Result;->$r8$clinit:I

    new-instance v12, Lkotlin/Result$Failure;

    invoke-direct {v12, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v12

    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    instance-of v12, v0, Lkotlin/Result$Failure;

    if-eqz v12, :cond_11

    move-object v0, v8

    :cond_11
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_12

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_12
    const-class v12, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    invoke-static {v1, v12, v0, v9}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    and-int/lit16 v4, v4, -0x381

    move-object v1, v0

    goto :goto_9

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object v1, p2

    :goto_9
    if-eqz v2, :cond_d

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    if-eqz v2, :cond_19

    instance-of v0, v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_15

    move-object v0, v2

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_a
    move-object v6, v0

    goto :goto_b

    :cond_15
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_a

    :goto_b
    :try_start_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    sget v7, Lkotlin/Result;->$r8$clinit:I

    new-instance v7, Lkotlin/Result$Failure;

    invoke-direct {v7, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v7

    :goto_c
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    instance-of v7, v0, Lkotlin/Result$Failure;

    if-eqz v7, :cond_17

    goto :goto_d

    :cond_17
    move-object v8, v0

    :goto_d
    check-cast v8, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v8, :cond_18

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v8

    :cond_18
    const-class v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {v2, v0, v8, v6}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    and-int/lit16 v4, v4, -0x1c01

    goto :goto_e

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_e
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v2, 0x7f130bb7

    invoke-static {v2, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v5, 0x7f1311d6

    invoke-static {v5, v2, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/jvm/functions/Function1;)V

    const v6, -0x16152af8

    invoke-static {v6, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    and-int/lit8 v2, v4, 0xe

    or-int/lit16 v8, v2, 0x180

    const/4 v9, 0x0

    move-object v4, p0

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt;->SecTitle(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v5, v0

    move-object v4, v1

    :goto_f
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v8, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v8, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method
