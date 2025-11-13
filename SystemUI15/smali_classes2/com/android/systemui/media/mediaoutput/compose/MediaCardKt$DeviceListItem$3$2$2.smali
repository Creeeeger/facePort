.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

.field final synthetic $volume$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableFloatState;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;->$volume$delegate:Landroidx/compose/runtime/MutableFloatState;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x57bba7dc

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;->$volume$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_0

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v2, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    move-object v8, v3

    check-cast v8, Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    const v3, -0x57bba79a

    invoke-static {v1, v2, v3}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object v10, v3

    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v3, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iget-object v9, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;->$volume$delegate:Landroidx/compose/runtime/MutableFloatState;

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v4, v5, v1, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    iget v4, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v12, v1, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_7

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_2

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v5, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-static {v4, v1, v4, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_4
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/16 v2, 0x8

    int-to-float v2, v2

    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_5
    move-object v2, v9

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v2

    :goto_1
    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$1;

    invoke-direct {v4, v6, v3, v10, v8}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const/16 v5, 0x16

    int-to-float v5, v5

    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v11, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;

    move-object v5, v11

    move-object v7, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v3}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getVolumeMax()I

    move-result v5

    int-to-float v5, v5

    new-instance v10, Lkotlin/ranges/ClosedFloatRange;

    const/4 v6, 0x0

    invoke-direct {v10, v6, v5}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    invoke-interface {v3}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getNeedEarProtect()Z

    move-result v5

    const/4 v15, 0x1

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v5

    sub-int/2addr v5, v15

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    :goto_2
    move v12, v5

    goto :goto_3

    :cond_6
    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_2

    :goto_3
    invoke-interface {v3}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/systemui/media/mediaoutput/compose/ext/CharSequenceExtKt;->text(Ljava/lang/CharSequence;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x7f131448

    invoke-static {v5, v3, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x180

    const/16 v16, 0x68

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, v2

    move-object v5, v0

    move-object v7, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v1

    move v0, v15

    move/from16 v15, v16

    invoke-static/range {v3 .. v15}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt;->MoSlider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/ranges/ClosedFloatingPointRange;FLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_7
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method
