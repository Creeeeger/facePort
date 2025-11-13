.class public final Lcom/android/systemui/communal/ui/compose/CommunalContent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final ambientStatusBarSection:Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;

.field public final dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;

.field public final interactionHandler:Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;

.field public final lockSection:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;

.field public final viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Lcom/android/systemui/keyguard/ui/composable/section/LockSection;Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContent;->viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContent;->interactionHandler:Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalContent;->dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalContent;->lockSection:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalContent;->ambientStatusBarSection:Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;

    return-void
.end method


# virtual methods
.method public final Content(Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p3

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x55f5ec43

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v8, 0x1

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v15, p2

    :goto_0
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v15, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget v4, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v0, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_1

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    sget-object v12, Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1;

    invoke-static {v0, v12, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v5, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v13, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v13, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    invoke-static {v4, v0, v4, v5}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_3
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v14, v2}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v13, 0x0

    invoke-static {v3, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v10, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_4

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    invoke-static {v0, v3, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v8, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-static {v10, v0, v10, v5}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_6
    invoke-static {v0, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const v2, -0x25acc694

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v14, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    and-int/lit8 v8, p4, 0xe

    or-int/lit8 v6, v8, 0x30

    const/4 v7, 0x0

    iget-object v2, v1, Lcom/android/systemui/communal/ui/compose/CommunalContent;->ambientStatusBarSection:Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;

    move-object/from16 v3, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;->AmbientStatusBar(Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v2, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Communal$Elements;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->Grid:Lcom/android/compose/animation/scene/ElementKey;

    invoke-interface {v9, v14, v2}, Lcom/android/compose/animation/scene/SceneScope;->element(Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/ElementKey;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/4 v2, 0x0

    const/16 v16, 0x0

    iget-object v11, v1, Lcom/android/systemui/communal/ui/compose/CommunalContent;->viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    iget-object v12, v1, Lcom/android/systemui/communal/ui/compose/CommunalContent;->interactionHandler:Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;

    iget-object v3, v1, Lcom/android/systemui/communal/ui/compose/CommunalContent;->dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;

    const/4 v4, 0x0

    const/16 v18, 0x1240

    const/16 v19, 0x70

    move v7, v13

    move-object v13, v3

    move-object v3, v14

    move-object v14, v4

    move-object/from16 v20, v15

    move-object v15, v2

    move-object/from16 v17, v0

    invoke-static/range {v10 .. v19}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->CommunalHub(Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, -0x60e92687

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v2, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/theme/AndroidColorScheme;

    iget-wide v4, v2, Lcom/android/compose/theme/AndroidColorScheme;->onPrimaryContainer:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    sget-object v2, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->LockIcon:Lcom/android/compose/animation/scene/ElementKey;

    invoke-interface {v9, v3, v2}, Lcom/android/compose/animation/scene/SceneScope;->element(Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/ElementKey;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    or-int/lit16 v8, v8, 0x1000

    const/4 v11, 0x0

    iget-object v2, v1, Lcom/android/systemui/communal/ui/compose/CommunalContent;->lockSection:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;

    move-object/from16 v3, p1

    move-object v6, v0

    move v12, v7

    move v7, v8

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->LockIcon-BAq54LU(Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v7, Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$3;-><init>(Lcom/android/systemui/communal/ui/compose/CommunalContent;Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/Modifier;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_9
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0
.end method
