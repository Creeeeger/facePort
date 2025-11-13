.class public abstract Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SearchScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    const/4 v0, 0x2

    const/4 v1, 0x4

    const-string v2, "title"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x5f7b9c4

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v8, 0xe

    if-nez v2, :cond_2

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    or-int/2addr v2, v8

    goto :goto_1

    :cond_2
    move v2, v8

    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object/from16 v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v8, 0x70

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :goto_3
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v2, v2, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v8, 0x380

    if-nez v1, :cond_8

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_4

    :cond_7
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v2, v1

    :cond_8
    :goto_5
    and-int/lit16 v1, v2, 0x2db

    const/16 v4, 0x92

    if-ne v1, v4, :cond_a

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v3

    move-object v0, v15

    goto/16 :goto_9

    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$SearchScaffoldKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v24, v0

    goto :goto_7

    :cond_b
    move-object/from16 v24, v3

    :goto_7
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v0, v2, 0xe

    invoke-static {v6, v15, v0}, Lcom/android/settingslib/spa/widget/scaffold/SettingsScaffoldKt;->ActivityTitle(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/Object;

    sget-object v11, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$isSearchMode$2;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$isSearchMode$2;

    const/4 v14, 0x6

    const/4 v10, 0x0

    const/16 v13, 0xc08

    move-object v12, v15

    invoke-static/range {v9 .. v14}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/compose/runtime/MutableState;

    const v1, 0x671a9c9b

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_e

    instance-of v2, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    goto :goto_8

    :cond_c
    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_8
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2, v15}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v10, v1

    check-cast v10, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;

    invoke-static {v15}, Landroidx/compose/material3/TopAppBarDefaults;->exitUntilCollapsedScrollBehavior(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    move-result-object v3

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    iget-object v1, v3, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->nestedScrollConnection:Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v12, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;Landroidx/compose/runtime/MutableState;Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;)V

    const v0, -0x186aed78

    invoke-static {v0, v12, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->Companion:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-static {v15}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v2

    new-instance v3, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$2;

    invoke-direct {v3, v7, v9, v10}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$2;-><init>(Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/MutableState;Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;)V

    const v4, -0x93b13ad

    invoke-static {v4, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-wide v4, v1, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    iget-object v1, v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->safeDrawing:Landroidx/compose/foundation/layout/UnionInsets;

    const v22, 0x30000030

    const/16 v23, 0xbc

    move-object v9, v11

    move-object v10, v0

    move-object v11, v3

    move-object v0, v15

    move-wide v15, v4

    move-object/from16 v19, v1

    move-object/from16 v21, v0

    invoke-static/range {v9 .. v23}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v2, v24

    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_d

    new-instance v10, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$3;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final SearchTopAppBar(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v4, 0x4

    move-object/from16 v12, p4

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0x33779f03    # -7.15018E7f

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v13, 0x1

    and-int/lit8 v6, p6, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v5, 0xe

    if-nez v6, :cond_2

    invoke-virtual {v12, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v5, 0x70

    if-nez v0, :cond_5

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v6, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p6, 0x4

    const/16 v4, 0x100

    if-eqz v0, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v0, v5, 0x380

    if-nez v0, :cond_8

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    const/16 v0, 0x80

    :goto_4
    or-int/2addr v6, v0

    :cond_8
    :goto_5
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v7, p3

    :goto_6
    move v14, v6

    goto :goto_8

    :cond_a
    and-int/lit16 v7, v5, 0x1c00

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x800

    goto :goto_7

    :cond_b
    const/16 v8, 0x400

    :goto_7
    or-int/2addr v6, v8

    goto :goto_6

    :goto_8
    and-int/lit16 v6, v14, 0x16db

    const/16 v8, 0x492

    if-ne v6, v8, :cond_d

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, v7

    goto :goto_c

    :cond_d
    :goto_9
    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$SearchScaffoldKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_a

    :cond_e
    move-object v0, v7

    :goto_a
    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v6, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;)V

    const v7, -0x72bfc65e

    invoke-static {v7, v6, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    new-instance v7, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$2;

    invoke-direct {v7, v3}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    const v8, 0x634c20e3

    invoke-static {v8, v7, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    new-instance v8, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$3;

    invoke-direct {v8, p0, v2, v0}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$3;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V

    const v9, -0x1c6c3a34

    invoke-static {v9, v8, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const/16 v10, 0x1b6

    const/4 v11, 0x0

    move-object v9, v12

    invoke-static/range {v6 .. v11}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->CustomizedTopAppBar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const v6, -0x6907f34c

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v6, v14, 0x380

    const/4 v7, 0x0

    if-ne v6, v4, :cond_f

    move v4, v13

    goto :goto_b

    :cond_f
    move v4, v7

    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_10

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v4, :cond_11

    :cond_10
    new-instance v6, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$4$1;

    invoke-direct {v6, v3}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$4$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v7, v6, v12, v7, v13}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v0

    :goto_c
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v8, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$5;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchTopAppBar$5;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;II)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final access$SearchBox(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    move-object/from16 v15, p0

    move-object/from16 v7, p1

    move/from16 v5, p3

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x1fac0d80

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v5, 0xe

    if-nez v0, :cond_1

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v5

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    and-int/lit8 v1, v5, 0x70

    if-nez v1, :cond_3

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x5b

    const/16 v3, 0x12

    if-ne v1, v3, :cond_5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v2

    goto/16 :goto_5

    :cond_5
    :goto_3
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x5dd9e1de

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v14, :cond_6

    new-instance v1, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v1, Landroidx/compose/ui/focus/FocusRequester;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/Typography;

    iget-object v12, v3, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt;->hideKeyboardAction(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-static {v4, v1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchBox$1;

    invoke-direct {v4, v12}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchBox$1;-><init>(Landroidx/compose/ui/text/TextStyle;)V

    const v6, 0xf3fc4e5

    invoke-static {v6, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v29

    new-instance v11, Landroidx/compose/foundation/text/KeyboardOptions;

    const/4 v4, 0x3

    const/16 v6, 0x77

    invoke-direct {v11, v13, v4, v6}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(III)V

    const v4, 0x5dd9e49c

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_7

    if-ne v6, v14, :cond_8

    :cond_7
    new-instance v6, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchBox$2$1;

    invoke-direct {v6, v3}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchBox$2$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v10, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v3, 0x2f

    invoke-direct {v10, v3, v6}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(ILkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    sget-wide v22, Landroidx/compose/ui/graphics/Color;->Transparent:J

    move-wide/from16 v16, v22

    move-wide/from16 v18, v22

    move-wide/from16 v20, v22

    move-object/from16 v24, v2

    invoke-static/range {v16 .. v24}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJLandroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v22

    const/high16 v3, 0xc00000

    and-int/lit8 v4, v0, 0xe

    or-int/2addr v3, v4

    and-int/lit8 v0, v0, 0x70

    or-int v24, v3, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v23, v11

    move-object v11, v0

    move-object/from16 v30, v12

    move-object v12, v0

    const/4 v0, 0x0

    move v13, v0

    const/4 v0, 0x0

    move-object/from16 v31, v14

    move-object v14, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/high16 v25, 0xc30000

    const/16 v26, 0x0

    const v27, 0x3c7f58

    move-object/from16 v0, p0

    move-object/from16 v32, v1

    move-object/from16 v1, p1

    move-object/from16 p2, v2

    move-object/from16 v2, v28

    move-object/from16 v5, v30

    move-object/from16 v7, v29

    move-object/from16 v15, v23

    move-object/from16 v23, p2

    invoke-static/range {v0 .. v27}, Landroidx/compose/material3/TextFieldKt;->TextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    const v0, 0x5dd9e612

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v31

    if-ne v0, v2, :cond_9

    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchBox$3$1;

    const/4 v2, 0x0

    move-object/from16 v3, v32

    invoke-direct {v0, v3, v2}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchBox$3$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    move-object/from16 v3, v32

    :goto_4
    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v1, v3, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :goto_5
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchBox$4;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchBox$4;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final access$SearchableTopAppBar(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TopAppBarScrollBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p8

    move-object/from16 v0, p7

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x1a5931e7

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v14

    goto :goto_1

    :cond_1
    move v2, v14

    :goto_1
    and-int/lit8 v3, v14, 0x70

    if-nez v3, :cond_3

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    and-int/lit16 v3, v14, 0x380

    if-nez v3, :cond_5

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v2, v3

    :cond_5
    and-int/lit16 v3, v14, 0x1c00

    if-nez v3, :cond_7

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x800

    goto :goto_4

    :cond_6
    const/16 v3, 0x400

    :goto_4
    or-int/2addr v2, v3

    :cond_7
    const v3, 0xe000

    and-int v4, v14, v3

    const/16 v5, 0x4000

    if-nez v4, :cond_9

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    goto :goto_5

    :cond_8
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v2, v4

    :cond_9
    const/high16 v4, 0x70000

    and-int/2addr v4, v14

    move-object/from16 v15, p5

    if-nez v4, :cond_b

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x10000

    :goto_6
    or-int/2addr v2, v4

    :cond_b
    const/high16 v4, 0x380000

    and-int/2addr v4, v14

    if-nez v4, :cond_d

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/high16 v4, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v4, 0x80000

    :goto_7
    or-int/2addr v2, v4

    :cond_d
    const v4, 0x2db6db

    and-int/2addr v4, v2

    const v6, 0x92492

    if-ne v4, v6, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_a

    :cond_f
    :goto_8
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v8, 0x0

    if-eqz v11, :cond_13

    const v4, -0x5bf20657

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v4, -0x5bf205de

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/2addr v3, v2

    if-ne v3, v5, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    move v3, v8

    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_11

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v3, :cond_12

    :cond_11
    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchableTopAppBar$1$1;

    invoke-direct {v4, v12}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchableTopAppBar$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shr-int/lit8 v3, v2, 0xf

    and-int/lit8 v3, v3, 0x7e

    shl-int/lit8 v2, v2, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int v7, v3, v2

    const/16 v16, 0x0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v5, p1

    move-object v6, v0

    move v11, v8

    move/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt;->SearchTopAppBar(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_a

    :cond_13
    move v11, v8

    const v3, -0x5bf20581

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v3, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchableTopAppBar$2;

    invoke-direct {v3, v10, v13, v12, v9}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchableTopAppBar$2;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V

    const v4, 0x2685197a

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    and-int/lit8 v4, v2, 0xe

    or-int/lit16 v4, v4, 0x180

    shr-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v2, v4

    invoke-static {v1, v10, v3, v0, v2}, Lcom/android/settingslib/spa/widget/scaffold/SettingsTopAppBarKt;->SettingsTopAppBar(Ljava/lang/String;Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_14

    new-instance v8, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchableTopAppBar$3;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v9, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchableTopAppBar$3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TopAppBarScrollBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;I)V

    iput-object v9, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
