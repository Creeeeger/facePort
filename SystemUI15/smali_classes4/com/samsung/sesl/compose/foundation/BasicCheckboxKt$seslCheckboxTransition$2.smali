.class final Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;
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
.field final synthetic $checkColor:J

.field final synthetic $checked:Z

.field final synthetic $circleStrokeColor:J

.field final synthetic $enabled:Z


# direct methods
.method public constructor <init>(ZJJZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$enabled:Z

    iput-wide p2, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$circleStrokeColor:J

    iput-wide p4, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$checkColor:J

    iput-boolean p6, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$checked:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x4ee4f9db

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v3, 0x74cfa2a0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v3, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition;

    iget-boolean v4, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$checked:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x6af4718

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v3, 0x52b4004e

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v11, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v5, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v3, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v3, Landroidx/compose/runtime/MutableState;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v5, 0x52b40965

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    const v13, 0x3c23d70a    # 0.01f

    const/high16 v14, 0x3f800000    # 1.0f

    if-ne v5, v11, :cond_1

    invoke-static {v14, v13}, Landroidx/compose/animation/core/AnimatableKt;->Animatable(FF)Landroidx/compose/animation/core/Animatable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v7, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition$animateScale$1;

    const/4 v15, 0x0

    invoke-direct {v7, v4, v5, v3, v15}, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition$animateScale$1;-><init>(ZLandroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v6, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v3, v5, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x74cfb240

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v4, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition;

    iget-boolean v5, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$checked:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x2c9e39db

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v4, 0x2e122da8

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const/4 v10, 0x0

    if-eqz v5, :cond_2

    move v4, v14

    goto :goto_0

    :cond_2
    move v4, v10

    :goto_0
    if-eqz v5, :cond_3

    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    const/16 v7, 0x86

    const/16 v8, 0x95

    invoke-direct {v6, v7, v8, v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    :goto_1
    move-object v5, v6

    goto :goto_2

    :cond_3
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    const/16 v7, 0x12c

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8, v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    goto :goto_1

    :goto_2
    const/16 v9, 0xc00

    const/16 v16, 0x14

    const-string v6, ""

    const/4 v7, 0x0

    move-object v8, v2

    move v14, v10

    move/from16 v10, v16

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const v5, 0x75cb9fa7

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v5, 0x600b45ca

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v11, :cond_4

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v5, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v10, v5

    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x600b5606

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_5

    if-ne v7, v11, :cond_6

    :cond_5
    new-instance v7, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;

    invoke-direct {v7, v10, v4, v15}, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$animatePathData$1$1;-><init>(Landroidx/compose/runtime/MutableState;FLkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v5, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x74cfc13a

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v4, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$AlphaTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$AlphaTransition;

    iget-boolean v5, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$checked:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x7a48bc01

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-eqz v5, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    move v4, v14

    :goto_3
    if-eqz v5, :cond_8

    sget-object v5, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$AlphaTransition$animateAlpha$1;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$AlphaTransition$animateAlpha$1;

    invoke-static {v5}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v5

    goto :goto_4

    :cond_8
    sget-object v5, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$AlphaTransition$animateAlpha$2;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$AlphaTransition$animateAlpha$2;

    invoke-static {v5}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v5

    :goto_4
    const-string v6, ""

    const/4 v7, 0x0

    const/16 v9, 0xc00

    const/16 v16, 0x14

    move-object v8, v2

    move-object/from16 v27, v10

    move/from16 v10, v16

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v10

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x74cfcfff

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v4, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$PathDataTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$PathDataTransition;

    iget-boolean v5, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$checked:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x4c6ed8ae

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v4, -0x5ce6fa1b

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-eqz v5, :cond_9

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    move v4, v14

    :goto_5
    if-eqz v5, :cond_a

    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    const/16 v7, 0xda

    const/16 v8, 0x52

    invoke-direct {v6, v7, v8, v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    :goto_6
    move-object v5, v6

    goto :goto_7

    :cond_a
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    const/16 v7, 0x74

    const/16 v8, 0xb8

    invoke-direct {v6, v7, v8, v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    goto :goto_6

    :goto_7
    const/16 v9, 0xc00

    const/16 v16, 0x14

    const-string v6, ""

    const/4 v7, 0x0

    move-object v8, v2

    move-object/from16 v28, v10

    move/from16 v10, v16

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const v5, -0x188627fa

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v5, -0x63fd95e9

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v11, :cond_b

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v5, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const v7, -0x63fd85ad

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_c

    if-ne v8, v11, :cond_d

    :cond_c
    new-instance v8, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$PathDataTransition$animatePathData$1$1;

    invoke-direct {v8, v5, v4, v15}, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$PathDataTransition$animatePathData$1$1;-><init>(Landroidx/compose/runtime/MutableState;FLkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v6, v8}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x74cfdeb9

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v4, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition;

    iget-boolean v6, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$checked:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x63dc48ae

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v4, 0x101a2a7a

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v11, :cond_e

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v7, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v4, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v7, 0x101a3391

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v11, :cond_f

    invoke-static {v14, v13}, Landroidx/compose/animation/core/AnimatableKt;->Animatable(FF)Landroidx/compose/animation/core/Animatable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v7, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-instance v9, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition$animateAlpha$1;

    invoke-direct {v9, v6, v7, v4, v15}, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$LeftCheck$AlphaTransition$animateAlpha$1;-><init>(ZLandroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v8, v9}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v4, v7, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-boolean v6, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$enabled:Z

    if-eqz v6, :cond_10

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_10
    const v14, 0x3ecccccd    # 0.4f

    :goto_8
    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/draw/ScaleKt;->scale(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v3, 0x74d0002d

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget-wide v6, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$circleStrokeColor:J

    invoke-virtual {v2, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v3

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    or-int/2addr v3, v6

    iget-boolean v6, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$enabled:Z

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v6

    or-int/2addr v3, v6

    move-object/from16 v6, v27

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    iget-wide v7, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$checkColor:J

    invoke-virtual {v2, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v7

    or-int/2addr v3, v7

    move-object/from16 v7, v28

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    iget-wide v8, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$checkColor:J

    iget-wide v12, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$circleStrokeColor:J

    iget-boolean v0, v0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;->$enabled:Z

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_11

    if-ne v10, v11, :cond_12

    :cond_11
    new-instance v10, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;

    move-object/from16 v16, v10

    move-wide/from16 v17, v8

    move/from16 v19, v14

    move-wide/from16 v20, v12

    move/from16 v22, v0

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    invoke-direct/range {v16 .. v26}, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;-><init>(JFJZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v1, v10}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method
