.class public abstract Lcom/android/settings/spa/app/appinfo/AppButtonsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppButtons(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;Landroidx/compose/runtime/Composer;II)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "packageInfoPresenter"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isHibernationSwitchEnabledStateFlow"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p3

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x6a15aa93

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x4

    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;

    invoke-direct {v4}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;-><init>()V

    move-object v9, v4

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    :goto_0
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v4, -0x637ec313

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_1

    if-ne v5, v10, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->getUserPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settingslib/applications/AppUtils;->isMainlineModule(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v7, Lcom/android/settings/spa/app/appinfo/AppButtonsKt$AppButtons$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/app/appinfo/AppButtonsKt$AppButtons$2;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    const v4, -0x637ec2ac

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_5

    new-instance v4, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;

    invoke-direct {v4, v1, v2, v9}, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object v12, v4

    check-cast v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x1e3a7692

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object v4, v4, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->flow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 v13, 0x0

    const/16 v14, 0x38

    invoke-static {v4, v13, v0, v14}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_6

    move-object/from16 p3, v9

    move v1, v11

    goto/16 :goto_17

    :cond_6
    iget-object v15, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_2e

    const v4, -0x2197bec2

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v4, -0xabaf053

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    const-string v5, "featureFlags"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->archiving()Z

    move-result v4

    const/4 v8, 0x1

    const-string v7, "getString(...)"

    if-eqz v4, :cond_12

    iget-boolean v4, v15, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    const/16 v6, 0x48

    const-string v3, "userHandle"

    if-eqz v4, :cond_d

    const v4, -0xabaefe8

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appRestoreButton:Lcom/android/settings/spa/app/appinfo/AppRestoreButton;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, -0x4910767b

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v5, 0x48cc7969

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean v5, v4, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->broadcastReceiverIsCreated:Z

    if-nez v5, :cond_7

    new-instance v5, Landroid/content/IntentFilter;

    const-string v14, "com.android.settings.unarchive.action"

    invoke-direct {v5, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v14, v4, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->userHandle:Landroid/os/UserHandle;

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$1;

    invoke-direct {v3, v15, v4}, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$1;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/AppRestoreButton;)V

    invoke-static {v5, v14, v3, v0, v6}, Lcom/android/settingslib/spaprivileged/framework/compose/DisposableBroadcastReceiverAsUserKt;->DisposableBroadcastReceiverAsUser(Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    iput-boolean v8, v4, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->broadcastReceiverIsCreated:Z

    :cond_7
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_8

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, v0}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v3

    :cond_8
    check-cast v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v3, v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object v3, v4, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-boolean v3, v15, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    iget-object v5, v4, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->buttonTextIndexStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v3, :cond_9

    iget-object v3, v4, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->updateButtonTextJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport;->isActive$1()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v13, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_9
    new-instance v3, Lcom/android/settingslib/spa/widget/button/ActionButton;

    iget-object v6, v4, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->context:Landroid/content/Context;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v13, 0x38

    invoke-static {v5, v14, v0, v13}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v13, v4, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->buttonTexts:[I

    aget v5, v13, v5

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/material/icons/outlined/CloudDownloadKt;->_cloudDownload:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v6, :cond_a

    move-object v14, v9

    goto/16 :goto_1

    :cond_a
    new-instance v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v25, "Outlined.CloudDownload"

    const/high16 v26, 0x41c00000    # 24.0f

    const/high16 v27, 0x41c00000    # 24.0f

    const/high16 v28, 0x41c00000    # 24.0f

    const/high16 v29, 0x41c00000    # 24.0f

    const-wide/16 v30, 0x0

    const/16 v34, 0x60

    move-object/from16 v24, v6

    invoke-direct/range {v24 .. v34}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v13, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    move-object v14, v9

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v13, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v9, 0x4120a3d7    # 10.04f

    const v11, 0x419acccd    # 19.35f

    invoke-virtual {v8, v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v30, 0x41400000    # 12.0f

    const/high16 v31, 0x40800000    # 4.0f

    const v26, 0x41955c29    # 18.67f

    const v27, 0x40d2e148    # 6.59f

    const v28, 0x417a3d71    # 15.64f

    const/high16 v29, 0x40800000    # 4.0f

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v30, 0x40ab3333    # 5.35f

    const v31, 0x4100a3d7    # 8.04f

    const v26, 0x4111c28f    # 9.11f

    const/high16 v27, 0x40800000    # 4.0f

    const v28, 0x40d33333    # 6.6f

    const v29, 0x40b47ae1    # 5.64f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/16 v30, 0x0

    const/high16 v31, 0x41600000    # 14.0f

    const v26, 0x4015c28f    # 2.34f

    const v27, 0x4105c28f    # 8.36f

    const/16 v28, 0x0

    const v29, 0x412e8f5c    # 10.91f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v30, 0x40c00000    # 6.0f

    const/high16 v31, 0x40c00000    # 6.0f

    const/16 v26, 0x0

    const v27, 0x4053d70a    # 3.31f

    const v28, 0x402c28f6    # 2.69f

    const/high16 v29, 0x40c00000    # 6.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v30, 0x40a00000    # 5.0f

    const/high16 v31, -0x3f600000    # -5.0f

    const v26, 0x4030a3d7    # 2.76f

    const/16 v27, 0x0

    const/high16 v28, 0x40a00000    # 5.0f

    const v29, -0x3ff0a3d7    # -2.24f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v30, -0x3f6b3333    # -4.65f

    const v31, -0x3f6147ae    # -4.96f

    const/16 v26, 0x0

    const v27, -0x3fd70a3d    # -2.64f

    const v28, -0x3ffccccd    # -2.05f

    const v29, -0x3f670a3d    # -4.78f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v8, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-virtual {v8, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v30, -0x3f800000    # -4.0f

    const/high16 v31, -0x3f800000    # -4.0f

    const v26, -0x3ff28f5c    # -2.21f

    const/16 v27, 0x0

    const/high16 v28, -0x3f800000    # -4.0f

    const v29, -0x401ae148    # -1.79f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v30, 0x4063d70a    # 3.56f

    const v31, -0x3f81eb85    # -3.97f

    const/16 v26, 0x0

    const v27, -0x3ffccccd    # -2.05f

    const v28, 0x3fc3d70a    # 1.53f

    const v29, -0x3f8f5c29    # -3.76f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v9, -0x421eb852    # -0.11f

    const v11, 0x3f88f5c3    # 1.07f

    invoke-virtual {v8, v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v9, -0x408ccccd    # -0.95f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v8, v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v30, 0x41400000    # 12.0f

    const/high16 v31, 0x40c00000    # 6.0f

    const v26, 0x410147ae    # 8.08f

    const v27, 0x40e47ae1    # 7.14f

    const v28, 0x411f0a3d    # 9.94f

    const/high16 v29, 0x40c00000    # 6.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v30, 0x40ac7ae1    # 5.39f

    const v31, 0x408dc28f    # 4.43f

    const v26, 0x4027ae14    # 2.62f

    const/16 v27, 0x0

    const v28, 0x409c28f6    # 4.88f

    const v29, 0x3fee147b    # 1.86f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v9, 0x3fc00000    # 1.5f

    const v11, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v9, 0x3de147ae    # 0.11f

    const v11, 0x3fc3d70a    # 1.53f

    invoke-virtual {v8, v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v30, 0x4031eb85    # 2.78f

    const v31, 0x403d70a4    # 2.96f

    const v26, 0x3fc7ae14    # 1.56f

    const v27, 0x3dcccccd    # 0.1f

    const v28, 0x4031eb85    # 2.78f

    const v29, 0x3fb47ae1    # 1.41f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v30, -0x3fc00000    # -3.0f

    const/high16 v31, 0x40400000    # 3.0f

    const/16 v26, 0x0

    const v27, 0x3fd33333    # 1.65f

    const v28, -0x40533333    # -1.35f

    const/high16 v29, 0x40400000    # 3.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v9, 0x41573333    # 13.45f

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v8, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v9, -0x3fc66666    # -2.9f

    invoke-virtual {v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual {v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v11, 0x41500000    # 13.0f

    invoke-virtual {v8, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v8, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v11, -0x3f800000    # -4.0f

    invoke-virtual {v8, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v9, -0x3fdccccd    # -2.55f

    invoke-virtual {v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v8, v8, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v6, v8, v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    sput-object v6, Landroidx/compose/material/icons/outlined/CloudDownloadKt;->_cloudDownload:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_1
    iget-boolean v8, v15, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz v8, :cond_c

    iget-object v8, v4, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->updateButtonTextJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lkotlinx/coroutines/JobSupport;->isActive$1()Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    const/4 v8, 0x1

    goto :goto_2

    :cond_c
    const/4 v8, 0x0

    :goto_2
    new-instance v9, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$2;

    invoke-direct {v9, v15, v4}, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$2;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/AppRestoreButton;)V

    invoke-direct {v3, v5, v6, v8, v9}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v18, v3

    const/4 v3, 0x0

    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v11, 0x41800000    # 16.0f

    goto/16 :goto_6

    :cond_d
    move-object v14, v9

    const v4, -0xabaef9d

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appArchiveButton:Lcom/android/settings/spa/app/appinfo/AppArchiveButton;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, -0x128cffb

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v5, -0x60d05030

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean v5, v4, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->broadcastReceiverIsCreated:Z

    if-nez v5, :cond_e

    new-instance v5, Landroid/content/IntentFilter;

    const-string v8, "com.android.settings.archive.action"

    invoke-direct {v5, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->userHandle:Landroid/os/UserHandle;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$1;

    invoke-direct {v3, v15, v4}, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$1;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/AppArchiveButton;)V

    invoke-static {v5, v8, v3, v0, v6}, Lcom/android/settingslib/spaprivileged/framework/compose/DisposableBroadcastReceiverAsUserKt;->DisposableBroadcastReceiverAsUser(Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->broadcastReceiverIsCreated:Z

    :cond_e
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v3, v4, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->userPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, "getApplicationLabel(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v4, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->appLabel:Ljava/lang/CharSequence;

    iget-object v3, v4, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->context:Landroid/content/Context;

    const v5, 0x7f1403d9

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/material/icons/outlined/CloudUploadKt;->_cloudUpload:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v5, :cond_f

    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v11, 0x41800000    # 16.0f

    goto/16 :goto_3

    :cond_f
    new-instance v5, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-string v34, "Outlined.CloudUpload"

    const/high16 v35, 0x41c00000    # 24.0f

    const/high16 v36, 0x41c00000    # 24.0f

    const/high16 v37, 0x41c00000    # 24.0f

    const/high16 v38, 0x41c00000    # 24.0f

    const-wide/16 v39, 0x0

    const/16 v43, 0x60

    move-object/from16 v33, v5

    invoke-direct/range {v33 .. v43}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v6, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v9, 0x4120a3d7    # 10.04f

    const v11, 0x419acccd    # 19.35f

    invoke-virtual {v8, v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v28, 0x417a3d71    # 15.64f

    const/high16 v29, 0x40800000    # 4.0f

    const v26, 0x41955c29    # 18.67f

    const v27, 0x40d2e148    # 6.59f

    const/high16 v30, 0x41400000    # 12.0f

    const/high16 v31, 0x40800000    # 4.0f

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v28, 0x40d33333    # 6.6f

    const v29, 0x40b47ae1    # 5.64f

    const v26, 0x4111c28f    # 9.11f

    const/high16 v27, 0x40800000    # 4.0f

    const v30, 0x40ab3333    # 5.35f

    const v31, 0x4100a3d7    # 8.04f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/16 v28, 0x0

    const v29, 0x412e8f5c    # 10.91f

    const v26, 0x4015c28f    # 2.34f

    const v27, 0x4105c28f    # 8.36f

    const/16 v30, 0x0

    const/high16 v31, 0x41600000    # 14.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v28, 0x402c28f6    # 2.69f

    const/high16 v29, 0x40c00000    # 6.0f

    const/16 v26, 0x0

    const v27, 0x4053d70a    # 3.31f

    const/high16 v30, 0x40c00000    # 6.0f

    const/high16 v31, 0x40c00000    # 6.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v28, 0x40a00000    # 5.0f

    const v29, -0x3ff0a3d7    # -2.24f

    const v26, 0x4030a3d7    # 2.76f

    const/16 v27, 0x0

    const/high16 v30, 0x40a00000    # 5.0f

    const/high16 v31, -0x3f600000    # -5.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v28, -0x3ffccccd    # -2.05f

    const v29, -0x3f670a3d    # -4.78f

    const/16 v26, 0x0

    const v27, -0x3fd70a3d    # -2.64f

    const v30, -0x3f6b3333    # -4.65f

    const v31, -0x3f6147ae    # -4.96f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v8, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    const/high16 v28, -0x3f800000    # -4.0f

    const v29, -0x401ae148    # -1.79f

    const v26, -0x3ff28f5c    # -2.21f

    const/16 v27, 0x0

    const/high16 v30, -0x3f800000    # -4.0f

    const/high16 v31, -0x3f800000    # -4.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v28, 0x3fc3d70a    # 1.53f

    const v29, -0x3f8f5c29    # -3.76f

    const/16 v26, 0x0

    const v27, -0x3ffccccd    # -2.05f

    const v30, 0x4063d70a    # 3.56f

    const v31, -0x3f81eb85    # -3.97f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v11, -0x421eb852    # -0.11f

    const v13, 0x3f88f5c3    # 1.07f

    invoke-virtual {v8, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v11, -0x408ccccd    # -0.95f

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v8, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v28, 0x411f0a3d    # 9.94f

    const/high16 v29, 0x40c00000    # 6.0f

    const v26, 0x410147ae    # 8.08f

    const v27, 0x40e47ae1    # 7.14f

    const/high16 v30, 0x41400000    # 12.0f

    const/high16 v31, 0x40c00000    # 6.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v28, 0x409c28f6    # 4.88f

    const v29, 0x3fee147b    # 1.86f

    const v26, 0x4027ae14    # 2.62f

    const/16 v27, 0x0

    const v30, 0x40ac7ae1    # 5.39f

    const v31, 0x408dc28f    # 4.43f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v11, 0x3fc00000    # 1.5f

    const v13, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v11, 0x3de147ae    # 0.11f

    const v13, 0x3fc3d70a    # 1.53f

    invoke-virtual {v8, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v28, 0x4031eb85    # 2.78f

    const v29, 0x3fb47ae1    # 1.41f

    const v26, 0x3fc7ae14    # 1.56f

    const v27, 0x3dcccccd    # 0.1f

    const v30, 0x4031eb85    # 2.78f

    const v31, 0x403d70a4    # 2.96f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v28, -0x40533333    # -1.35f

    const/high16 v29, 0x40400000    # 3.0f

    const/16 v26, 0x0

    const v27, 0x3fd33333    # 1.65f

    const/high16 v30, -0x3fc00000    # -3.0f

    const/high16 v31, 0x40400000    # 3.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v13, 0x41500000    # 13.0f

    invoke-virtual {v8, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v11, 0x40233333    # 2.55f

    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v11, 0x40400000    # 3.0f

    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v11, 0x4039999a    # 2.9f

    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v11, -0x3fc00000    # -3.0f

    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    const/high16 v13, -0x3f800000    # -4.0f

    invoke-virtual {v8, v13, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v8, v8, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v5, v8, v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v5

    sput-object v5, Landroidx/compose/material/icons/outlined/CloudUploadKt;->_cloudUpload:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_3
    const v6, -0x60d04dbb

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_10

    if-ne v8, v10, :cond_11

    :cond_10
    iget-object v6, v4, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->isHibernationSwitchEnabledStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    new-instance v8, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$lambda$1$$inlined$map$1;

    invoke-direct {v8, v6, v4, v15}, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lcom/android/settings/spa/app/appinfo/AppArchiveButton;Landroid/content/pm/ApplicationInfo;)V

    sget-object v6, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v8, v6}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v13, 0x38

    invoke-static {v8, v6, v0, v13}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v8, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$3;

    invoke-direct {v8, v15, v4}, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$3;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/AppArchiveButton;)V

    new-instance v4, Lcom/android/settingslib/spa/widget/button/ActionButton;

    invoke-direct {v4, v3, v5, v6, v8}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v18, v4

    :goto_4
    const/4 v3, 0x0

    goto :goto_6

    :cond_12
    move-object v14, v9

    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v11, 0x41800000    # 16.0f

    iget-object v3, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appLaunchButton:Lcom/android/settings/spa/app/appinfo/AppLaunchButton;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/android/settings/spa/app/appinfo/AppLaunchButton;->userPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_13

    new-instance v5, Lcom/android/settingslib/spa/widget/button/ActionButton;

    iget-object v6, v3, Lcom/android/settings/spa/app/appinfo/AppLaunchButton;->context:Landroid/content/Context;

    const v8, 0x7f1414bd

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/material/icons/outlined/LaunchKt;->getLaunch()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v8

    new-instance v13, Lcom/android/settings/spa/app/appinfo/AppLaunchButton$launchButton$1;

    invoke-direct {v13, v3, v4, v15}, Lcom/android/settings/spa/app/appinfo/AppLaunchButton$launchButton$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppLaunchButton;Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;)V

    const/4 v3, 0x1

    invoke-direct {v5, v6, v8, v3, v13}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    move-object v3, v5

    goto :goto_5

    :cond_13
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v18, v3

    goto :goto_4

    :goto_6
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v3, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appInstallButton:Lcom/android/settings/spa/app/appinfo/AppInstallButton;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    if-nez v4, :cond_14

    const/high16 v5, 0x41300000    # 11.0f

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_9

    :cond_14
    iget-object v4, v3, Lcom/android/settings/spa/app/appinfo/AppInstallButton;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object v4, v4, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userContext$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iget-object v13, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/android/settings/applications/AppStoreUtil;->getInstallerPackageNameAndInstallSourceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v4, v8, v13}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_16

    new-instance v8, Lcom/android/settingslib/spa/widget/button/ActionButton;

    iget-object v13, v3, Lcom/android/settings/spa/app/appinfo/AppInstallButton;->context:Landroid/content/Context;

    const v9, 0x7f141233

    invoke-virtual {v13, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Landroidx/compose/material/icons/outlined/FileDownloadKt;->_fileDownload:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v13, :cond_15

    move-object/from16 v23, v12

    const/high16 v5, 0x41300000    # 11.0f

    goto/16 :goto_7

    :cond_15
    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/16 v39, 0x0

    const/16 v43, 0x60

    const-string v34, "Outlined.FileDownload"

    const/high16 v35, 0x41c00000    # 24.0f

    const/high16 v36, 0x41c00000    # 24.0f

    const/high16 v37, 0x41c00000    # 24.0f

    const/high16 v38, 0x41c00000    # 24.0f

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v33, v13

    invoke-direct/range {v33 .. v43}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v22, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    move-object/from16 v23, v12

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v6, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v12, 0x41700000    # 15.0f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v11, v5, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v12, 0x40400000    # 3.0f

    invoke-virtual {v11, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    const/high16 v5, -0x3fc00000    # -3.0f

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v11, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v30, 0x40000000    # 2.0f

    const/high16 v31, 0x40000000    # 2.0f

    const/16 v26, 0x0

    const v27, 0x3f8ccccd    # 1.1f

    const v28, 0x3f666666    # 0.9f

    const/high16 v29, 0x40000000    # 2.0f

    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v31, -0x40000000    # -2.0f

    const v26, 0x3f8ccccd    # 1.1f

    const/16 v27, 0x0

    const/high16 v28, 0x40000000    # 2.0f

    const v29, -0x4099999a    # -0.9f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v5, -0x3fc00000    # -3.0f

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v11, v5, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v5, -0x404b851f    # -1.41f

    invoke-virtual {v11, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v5, 0x4142b852    # 12.17f

    const/high16 v12, 0x41500000    # 13.0f

    invoke-virtual {v11, v12, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v5, 0x4102b852    # 8.17f

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v5, 0x41068f5c    # 8.41f

    const v12, 0x411970a4    # 9.59f

    invoke-virtual {v11, v5, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v11, v12, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-virtual {v11, v12, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v12, 0x41880000    # 17.0f

    invoke-virtual {v11, v12, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v11, v11, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v13, v11, v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v13

    sput-object v13, Landroidx/compose/material/icons/outlined/FileDownloadKt;->_fileDownload:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_7
    new-instance v6, Lcom/android/settings/spa/app/appinfo/AppInstallButton$installButton$1;

    invoke-direct {v6, v3, v4, v15}, Lcom/android/settings/spa/app/appinfo/AppInstallButton$installButton$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppInstallButton;Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;)V

    const/4 v11, 0x1

    invoke-direct {v8, v9, v13, v11, v6}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_16
    move-object/from16 v23, v12

    const/high16 v5, 0x41300000    # 11.0f

    const/4 v11, 0x1

    const/4 v8, 0x0

    :goto_8
    move-object v9, v8

    move-object/from16 v12, v23

    :goto_9
    iget-object v13, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appDisableButton:Lcom/android/settings/spa/app/appinfo/AppDisableButton;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0xcda84c5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    const/4 v6, 0x2

    const v11, 0x7f1408bf

    if-nez v3, :cond_17

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v11, v7

    const/16 v20, 0x0

    goto/16 :goto_11

    :cond_17
    iget-boolean v3, v15, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_18

    iget v3, v15, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_19

    :cond_18
    move-object v11, v7

    goto/16 :goto_e

    :cond_19
    const v3, -0x7c0f96ff

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v3, 0x5068c67d

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v3, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v4, 0x7f140365

    invoke-static {v0, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/spa/app/appinfo/AppDisableButton$confirmDialogPresenter$1;

    const-string v30, "disable()V"

    const/16 v31, 0x0

    const/16 v26, 0x0

    iget-object v8, v13, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const-class v28, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const-string v29, "disable"

    move-object/from16 v25, v5

    move-object/from16 v27, v8

    invoke-direct/range {v25 .. v31}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5, v6}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    new-instance v4, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    invoke-static {v0, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v11, 0x6

    invoke-direct {v4, v5, v8, v11}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    sget-object v8, Lcom/android/settings/spa/app/appinfo/ComposableSingletons$AppDisableButtonKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x0

    const/16 v16, 0x4

    const/4 v11, 0x0

    const v17, -0x404b851f    # -1.41f

    move/from16 v11, v17

    move-object v6, v8

    move-object v11, v7

    const/high16 v8, 0x41800000    # 16.0f

    move-object v7, v0

    const/4 v1, 0x1

    move/from16 v8, v16

    invoke-static/range {v3 .. v8}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v4, Lcom/android/settingslib/spa/widget/button/ActionButton;

    iget-object v5, v13, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->context:Landroid/content/Context;

    const v6, 0x7f140d09

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/material/icons/outlined/HideSourceKt;->_hideSource:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v6, :cond_1a

    goto/16 :goto_a

    :cond_1a
    new-instance v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/16 v39, 0x0

    const/16 v43, 0x60

    const-string v34, "Outlined.HideSource"

    const/high16 v35, 0x41c00000    # 24.0f

    const/high16 v36, 0x41c00000    # 24.0f

    const/high16 v37, 0x41c00000    # 24.0f

    const/high16 v38, 0x41c00000    # 24.0f

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v33, v6

    invoke-direct/range {v33 .. v43}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v7, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v2, 0x4033d70a    # 2.81f

    invoke-virtual {v1, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x3fb1eb85    # 1.39f

    const v2, 0x40870a3d    # 4.22f

    invoke-virtual {v1, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x401147ae    # 2.27f

    invoke-virtual {v1, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v30, 0x40000000    # 2.0f

    const/high16 v31, 0x41400000    # 12.0f

    const v26, 0x40270a3d    # 2.61f

    const v27, 0x41011eb8    # 8.07f

    const/high16 v28, 0x40000000    # 2.0f

    const v29, 0x411f5c29    # 9.96f

    move-object/from16 v25, v1

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v30, 0x41200000    # 10.0f

    const/high16 v31, 0x41200000    # 10.0f

    const/16 v26, 0x0

    const v27, 0x40b0a3d7    # 5.52f

    const v28, 0x408f5c29    # 4.48f

    const/high16 v29, 0x41200000    # 10.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v30, 0x40b051ec    # 5.51f

    const v31, -0x402b851f    # -1.66f

    const v26, 0x40028f5c    # 2.04f

    const/16 v27, 0x0

    const v28, 0x407b851f    # 3.93f

    const v29, -0x40e3d70a    # -0.61f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v1, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v2, 0x3fb47ae1    # 1.41f

    const v8, -0x404b851f    # -1.41f

    invoke-virtual {v1, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v2, 0x4033d70a    # 2.81f

    invoke-virtual {v1, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v1, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v30, -0x3f000000    # -8.0f

    const/high16 v31, -0x3f000000    # -8.0f

    const v26, -0x3f72e148    # -4.41f

    const/high16 v28, -0x3f000000    # -8.0f

    const v29, -0x3f9a3d71    # -3.59f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v30, 0x3f8f5c29    # 1.12f

    const v31, -0x3f7e147b    # -4.06f

    const/16 v26, 0x0

    const v27, -0x40428f5c    # -1.48f

    const v28, 0x3ed1eb85    # 0.41f

    const v29, -0x3fc8f5c3    # -2.86f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v2, 0x412f0a3d    # 10.94f

    invoke-virtual {v1, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v30, 0x41400000    # 12.0f

    const/high16 v31, 0x41a00000    # 20.0f

    const v26, 0x416dc28f    # 14.86f

    const v27, 0x419cb852    # 19.59f

    const v28, 0x4157ae14    # 13.48f

    const/high16 v29, 0x41a00000    # 20.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v2, 0x40fe147b    # 7.94f

    const v8, 0x40a3d70a    # 5.12f

    invoke-virtual {v1, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v2, 0x40cfae14    # 6.49f

    const v8, 0x406a3d71    # 3.66f

    invoke-virtual {v1, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v31, 0x40000000    # 2.0f

    const v26, 0x41011eb8    # 8.07f

    const v27, 0x40270a3d    # 2.61f

    const v28, 0x411f5c29    # 9.96f

    const/high16 v29, 0x40000000    # 2.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v30, 0x41200000    # 10.0f

    const/high16 v31, 0x41200000    # 10.0f

    const v26, 0x40b0a3d7    # 5.52f

    const/16 v27, 0x0

    const/high16 v28, 0x41200000    # 10.0f

    const v29, 0x408f5c29    # 4.48f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v30, -0x402b851f    # -1.66f

    const v31, 0x40b051ec    # 5.51f

    const/16 v26, 0x0

    const v27, 0x40028f5c    # 2.04f

    const v28, -0x40e3d70a    # -0.61f

    const v29, 0x407b851f    # 3.93f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v2, -0x40451eb8    # -1.46f

    invoke-virtual {v1, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v30, 0x41a00000    # 20.0f

    const/high16 v31, 0x41400000    # 12.0f

    const v26, 0x419cb852    # 19.59f

    const v27, 0x416dc28f    # 14.86f

    const/high16 v28, 0x41a00000    # 20.0f

    const v29, 0x4157ae14    # 13.48f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v30, -0x3f000000    # -8.0f

    const/high16 v31, -0x3f000000    # -8.0f

    const/16 v26, 0x0

    const v27, -0x3f72e148    # -4.41f

    const v28, -0x3f9a3d71    # -3.59f

    const/high16 v29, -0x3f000000    # -8.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v30, 0x40fe147b    # 7.94f

    const v31, 0x40a3d70a    # 5.12f

    const v26, 0x412851ec    # 10.52f

    const/high16 v27, 0x40800000    # 4.0f

    const v28, 0x41123d71    # 9.14f

    const v29, 0x408d1eb8    # 4.41f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v1, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v6, v1, v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    sput-object v6, Landroidx/compose/material/icons/outlined/HideSourceKt;->_hideSource:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_a
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_b
    const/4 v8, 0x0

    goto :goto_c

    :cond_1b
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isResourceOverlay()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_b

    :cond_1c
    iget-object v1, v13, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->applicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->getKeepEnabledPackages()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_b

    :cond_1d
    iget-object v1, v13, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->appButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    invoke-virtual {v1}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;->getHomePackageInfo()Lcom/android/settings/spa/app/appinfo/AppButtonRepository$HomePackages;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/spa/app/appinfo/AppButtonRepository$HomePackages;->homePackages:Ljava/util/Set;

    iget-object v7, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_b

    :cond_1e
    iget-object v2, v13, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->resources:Landroid/content/res/Resources;

    iget-object v7, v13, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v7, v8}, Lcom/android/settingslib/Utils;->isEssentialPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_b

    :cond_1f
    iget-object v2, v13, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->userManager:Landroid/os/UserManager;

    iget-object v7, v13, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v7, v8}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_b

    :cond_20
    invoke-virtual {v1, v15}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;->isDisallowControl(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_b

    :cond_21
    const/4 v8, 0x1

    :goto_c
    new-instance v1, Lcom/android/settings/spa/app/appinfo/AppDisableButton$disableButton$1;

    invoke-direct {v1, v13, v15, v3}, Lcom/android/settings/spa/app/appinfo/AppDisableButton$disableButton$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppDisableButton;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;)V

    invoke-direct {v4, v5, v6, v8, v1}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v1, v4

    :goto_d
    const/4 v2, 0x0

    goto/16 :goto_10

    :goto_e
    new-instance v1, Lcom/android/settingslib/spa/widget/button/ActionButton;

    iget-object v2, v13, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->context:Landroid/content/Context;

    const v3, 0x7f140df6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/material/icons/outlined/ArrowCircleDownKt;->_arrowCircleDown:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v3, :cond_22

    goto/16 :goto_f

    :cond_22
    new-instance v3, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/16 v39, 0x0

    const/16 v43, 0x60

    const-string v34, "Outlined.ArrowCircleDown"

    const/high16 v35, 0x41c00000    # 24.0f

    const/high16 v36, 0x41c00000    # 24.0f

    const/high16 v37, 0x41c00000    # 24.0f

    const/high16 v38, 0x41c00000    # 24.0f

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v33, v3

    invoke-direct/range {v33 .. v43}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v5, v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v30, 0x41000000    # 8.0f

    const/high16 v31, 0x41000000    # 8.0f

    const v26, 0x408d1eb8    # 4.41f

    const/16 v27, 0x0

    const/high16 v28, 0x41000000    # 8.0f

    const v29, 0x4065c28f    # 3.59f

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v6, -0x3f9a3d71    # -3.59f

    const/high16 v7, -0x3f000000    # -8.0f

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v5, v6, v8, v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    invoke-virtual {v5, v7, v6, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v6, 0x40f2e148    # 7.59f

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v5, v6, v7, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v8, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v30, 0x40000000    # 2.0f

    const/high16 v31, 0x41400000    # 12.0f

    const v26, 0x40cf5c29    # 6.48f

    const/high16 v27, 0x40000000    # 2.0f

    const/high16 v28, 0x40000000    # 2.0f

    const v29, 0x40cf5c29    # 6.48f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v30, 0x41200000    # 10.0f

    const/high16 v31, 0x41200000    # 10.0f

    const/16 v26, 0x0

    const v27, 0x40b0a3d7    # 5.52f

    const v28, 0x408f5c29    # 4.48f

    const/high16 v29, 0x41200000    # 10.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v31, -0x3ee00000    # -10.0f

    const v26, 0x40b0a3d7    # 5.52f

    const/16 v27, 0x0

    const/high16 v28, 0x41200000    # 10.0f

    const v29, -0x3f70a3d7    # -4.48f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v30, 0x41400000    # 12.0f

    const/high16 v31, 0x40000000    # 2.0f

    const/high16 v26, 0x41b00000    # 22.0f

    const v27, 0x40cf5c29    # 6.48f

    const v28, 0x418c28f6    # 17.52f

    const/high16 v29, 0x40000000    # 2.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v5, v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v6, -0x3f800000    # -4.0f

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v5, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v5, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v5, v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v5, v5, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v3, v5, v4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    sput-object v3, Landroidx/compose/material/icons/outlined/ArrowCircleDownKt;->_arrowCircleDown:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_f
    new-instance v4, Lcom/android/settings/spa/app/appinfo/AppDisableButton$enableButton$1;

    invoke-direct {v4, v13}, Lcom/android/settings/spa/app/appinfo/AppDisableButton$enableButton$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppDisableButton;)V

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    goto/16 :goto_d

    :goto_10
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v20, v1

    :goto_11
    iget-object v1, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appUninstallButton:Lcom/android/settings/spa/app/appinfo/AppUninstallButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x328fba7b

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_24
    const v2, 0x422e6d3b

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v1, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;->userManager:Landroid/os/UserManager;

    iget v3, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;->context:Landroid/content/Context;

    const v3, 0x7f140c1d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_25
    iget-object v2, v1, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;->context:Landroid/content/Context;

    const v3, 0x7f14302a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x7f0805e0

    invoke-static {v0, v3}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    const v4, 0x21948f4b

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_26

    if-ne v5, v10, :cond_27

    :cond_26
    new-instance v4, Lcom/android/settings/spa/app/appinfo/AppUninstallButton$uninstallButton$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v15, v5}, Lcom/android/settings/spa/app/appinfo/AppUninstallButton$uninstallButton$1$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppUninstallButton;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v5, v4}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v5, v4}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_27
    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v6, 0x38

    invoke-static {v5, v4, v0, v6}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v5, Lcom/android/settings/spa/app/appinfo/AppUninstallButton$uninstallButton$2;

    invoke-direct {v5, v1, v15}, Lcom/android/settings/spa/app/appinfo/AppUninstallButton$uninstallButton$2;-><init>(Lcom/android/settings/spa/app/appinfo/AppUninstallButton;Landroid/content/pm/ApplicationInfo;)V

    new-instance v1, Lcom/android/settingslib/spa/widget/button/ActionButton;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_14

    :goto_13
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v1, 0x0

    :goto_14
    iget-object v13, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appClearButton:Lcom/android/settings/spa/app/appinfo/AppClearButton;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x238a295b

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v22, 0x0

    goto/16 :goto_15

    :cond_28
    const v2, 0x853b416

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v2, -0xae64ba3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v3, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v2, 0x7f140952

    invoke-static {v0, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/spa/app/appinfo/AppClearButton$confirmDialogPresenter$1;

    const-string v30, "clearInstantApp()V"

    const/16 v31, 0x0

    const/16 v26, 0x0

    iget-object v6, v13, Lcom/android/settings/spa/app/appinfo/AppClearButton;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const-class v28, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const-string v29, "clearInstantApp"

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    invoke-direct/range {v25 .. v31}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v8, 0x2

    invoke-direct {v3, v4, v5, v8}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    new-instance v4, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v5, 0x7f1408bf

    invoke-static {v0, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x6

    invoke-direct {v4, v6, v5, v7}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    invoke-static {v0, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/spa/app/appinfo/ComposableSingletons$AppClearButtonKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v16, 0x0

    move-object v7, v0

    move/from16 v8, v16

    invoke-static/range {v3 .. v8}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v27

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v3, Lcom/android/settingslib/spa/widget/button/ActionButton;

    iget-object v4, v13, Lcom/android/settings/spa/app/appinfo/AppClearButton;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/material/icons/outlined/DeleteKt;->getDelete()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    new-instance v5, Lcom/android/settings/spa/app/appinfo/AppClearButton$clearButton$1;

    const-class v28, Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;

    const-string v29, "open"

    const/16 v26, 0x0

    const-string v30, "open()V"

    const/16 v31, 0x0

    move-object/from16 v25, v5

    invoke-direct/range {v25 .. v31}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x1

    invoke-direct {v3, v2, v4, v6, v5}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v22, v3

    :goto_15
    iget-object v2, v12, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appForceStopButton:Lcom/android/settings/spa/app/appinfo/AppForceStopButton;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x74676425

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v3, -0x20f1f623

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v3, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v4, 0x7f141b4c

    invoke-static {v0, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/spa/app/appinfo/AppForceStopButton$confirmDialogPresenter$1;

    const-class v27, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const-string v28, "forceStop"

    const/16 v25, 0x0

    iget-object v6, v2, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const-string v29, "forceStop()V"

    const/16 v30, 0x0

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    invoke-direct/range {v24 .. v30}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v11, 0x2

    invoke-direct {v3, v4, v5, v11}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    new-instance v4, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v5, 0x7f1408bf

    invoke-static {v0, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v5, 0x7f14100b

    invoke-static {v0, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/spa/app/appinfo/ComposableSingletons$AppForceStopButtonKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x7f141009

    invoke-static {v0, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/compose/material/icons/outlined/ReportKt;->_report:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v5, :cond_29

    move-object/from16 p3, v14

    goto/16 :goto_16

    :cond_29
    new-instance v5, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-string v34, "Outlined.Report"

    const/high16 v35, 0x41c00000    # 24.0f

    const/high16 v36, 0x41c00000    # 24.0f

    const/high16 v37, 0x41c00000    # 24.0f

    const/high16 v38, 0x41c00000    # 24.0f

    const-wide/16 v39, 0x0

    const/16 v43, 0x60

    move-object/from16 v33, v5

    invoke-direct/range {v33 .. v43}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v13, 0x417bae14    # 15.73f

    const/high16 v11, 0x40400000    # 3.0f

    invoke-virtual {v12, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v13, 0x410451ec    # 8.27f

    invoke-virtual {v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v12, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v11, 0x40eeb852    # 7.46f

    invoke-virtual {v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    move-object/from16 p3, v14

    const/high16 v14, 0x41a80000    # 21.0f

    invoke-virtual {v12, v13, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v11, 0x417bae14    # 15.73f

    invoke-virtual {v12, v14, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const/high16 v13, 0x40400000    # 3.0f

    invoke-virtual {v12, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v11, 0x416e6666    # 14.9f

    const/high16 v13, 0x41980000    # 19.0f

    invoke-virtual {v12, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v12, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x4111999a    # 9.1f

    invoke-virtual {v12, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v12, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    invoke-virtual {v12, v14, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v11, 0x40b9999a    # 5.8f

    invoke-virtual {v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v13, 0x41980000    # 19.0f

    invoke-virtual {v12, v13, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v11, v12, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v5, v11, v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0x20

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v14, 0x41800000    # 16.0f

    invoke-direct {v13, v12, v14}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    const/high16 v30, 0x40000000    # 2.0f

    const/16 v31, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v31}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    const/high16 v39, -0x40000000    # -2.0f

    const/16 v40, 0x0

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x1

    move-object/from16 v33, v12

    invoke-direct/range {v33 .. v40}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v11, v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    const/high16 v11, 0x40e00000    # 7.0f

    const/high16 v12, 0x41300000    # 11.0f

    invoke-direct {v8, v12, v11}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    const/high16 v12, 0x40000000    # 2.0f

    invoke-direct {v8, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    invoke-direct {v8, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    const/high16 v11, -0x40000000    # -2.0f

    invoke-direct {v8, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v7, v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v5

    sput-object v5, Landroidx/compose/material/icons/outlined/ReportKt;->_report:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_16
    const v6, -0x774cf13b

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_2a

    if-ne v7, v10, :cond_2b

    :cond_2a
    iget-object v6, v2, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;->appForceStopRepository:Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;

    iget-object v7, v6, Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object v7, v7, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->flow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v8, Lcom/android/settings/spa/app/appinfo/AppForceStopRepository$canForceStopFlow$$inlined$map$1;

    invoke-direct {v8, v7, v6}, Lcom/android/settings/spa/app/appinfo/AppForceStopRepository$canForceStopFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;)V

    const/4 v6, -0x1

    invoke-static {v8, v6}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    new-instance v7, Lcom/android/settings/spa/app/appinfo/AppForceStopRepository$canForceStopFlow$2;

    const/4 v8, 0x0

    const/4 v10, 0x2

    invoke-direct {v7, v10, v8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object v6

    sget-object v7, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    check-cast v7, Lkotlinx/coroutines/flow/Flow;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v8, 0x38

    invoke-static {v7, v6, v0, v8}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v7, Lcom/android/settings/spa/app/appinfo/AppForceStopButton$getActionButton$2;

    invoke-direct {v7, v2, v15, v3}, Lcom/android/settings/spa/app/appinfo/AppForceStopButton$getActionButton$2;-><init>(Lcom/android/settings/spa/app/appinfo/AppForceStopButton;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;)V

    new-instance v2, Lcom/android/settingslib/spa/widget/button/ActionButton;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v19, v9

    move-object/from16 v21, v1

    move-object/from16 v23, v2

    filled-new-array/range {v18 .. v23}, [Lcom/android/settingslib/spa/widget/button/ActionButton;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_17
    if-nez v13, :cond_2c

    sget-object v13, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2c
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v1, 0x8

    invoke-static {v13, v0, v1}, Lcom/android/settingslib/spa/widget/button/ActionButtonsKt;->ActionButtons(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_2d

    new-instance v7, Lcom/android/settings/spa/app/appinfo/AppButtonsKt$AppButtons$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/app/appinfo/AppButtonsKt$AppButtons$3;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
