.class public final Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/ui/composable/ComposeVolumePanelUiComponent;


# instance fields
.field public final viewModel:Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent;->viewModel:Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;

    return-void
.end method


# virtual methods
.method public final Content(Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x65fd9c6f

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent;->viewModel:Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;

    iget-object v5, v4, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;->sliderViewModels:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v5, v13}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent$Content$1;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent$Content$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent;Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;Landroidx/compose/ui/Modifier;I)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void

    :cond_1
    iget-object v6, v1, Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;->state:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelState;

    iget-boolean v6, v6, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelState;->isLargeScreen:Z

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-eqz v6, :cond_2

    const v4, -0x34bf08aa    # -1.264623E7f

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/android/compose/PlatformSliderDefaults;->INSTANCE:Lcom/android/compose/PlatformSliderDefaults;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/compose/PlatformSliderDefaults;->defaultPlatformSliderColors(Landroidx/compose/runtime/Composer;)Lcom/android/compose/PlatformSliderColors;

    move-result-object v5

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v7, v13

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt;->GridVolumeSliders(Ljava/util/List;Lcom/android/compose/PlatformSliderColors;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_2

    :cond_2
    const v6, -0x34bf07b4

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v6, v1, Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;->state:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelState;

    iget v6, v6, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelState;->orientation:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    iget-object v6, v4, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/AudioVolumeComponentViewModel;->portraitExpandable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Fixed;->INSTANCE:Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Fixed;

    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v9, v6}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    move-object v6, v9

    :goto_0
    sget-object v9, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Unavailable;->INSTANCE:Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Unavailable;

    const/16 v10, 0x38

    invoke-static {v6, v9, v13, v10}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel;

    instance-of v9, v9, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Unavailable;

    if-eqz v9, :cond_5

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent$Content$2;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent$Content$2;-><init>(Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent;Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;Landroidx/compose/ui/Modifier;I)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :cond_5
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel;

    instance-of v10, v9, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Expandable;

    if-eqz v10, :cond_6

    check-cast v9, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Expandable;

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_7

    iget-boolean v8, v9, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Expandable;->isExpanded:Z

    :cond_7
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v9, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent$Content$3;

    invoke-direct {v9, v4}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent$Content$3;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lcom/android/compose/PlatformSliderDefaults;->INSTANCE:Lcom/android/compose/PlatformSliderDefaults;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/compose/PlatformSliderDefaults;->defaultPlatformSliderColors(Landroidx/compose/runtime/Composer;)Lcom/android/compose/PlatformSliderColors;

    move-result-object v10

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel;

    instance-of v11, v4, Lcom/android/systemui/volume/panel/component/volume/ui/viewmodel/SlidersExpandableViewModel$Expandable;

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v4, v5

    move v5, v8

    move-object v6, v9

    move-object v7, v10

    move v8, v11

    move-object v9, v12

    move-object v10, v13

    move v11, v15

    move/from16 v12, v16

    invoke-static/range {v4 .. v12}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt;->ColumnVolumeSliders(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lcom/android/compose/PlatformSliderColors;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v5, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent$Content$4;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent$Content$4;-><init>(Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSlidersComponent;Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;Landroidx/compose/ui/Modifier;I)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method
