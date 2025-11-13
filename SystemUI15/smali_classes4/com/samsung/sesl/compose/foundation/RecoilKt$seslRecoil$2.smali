.class final Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;
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
.field final synthetic $enabled:Z

.field final synthetic $feedbackAboveShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $feedbackBehindShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $feedbackColor:J

.field final synthetic $scaleRatio:F


# direct methods
.method public constructor <init>(ZFJLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$enabled:Z

    iput p2, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$scaleRatio:F

    iput-wide p3, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$feedbackColor:J

    iput-object p5, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$feedbackBehindShape:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$feedbackAboveShape:Landroidx/compose/ui/graphics/Shape;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0xa9dccd1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/compose/ui/unit/Density;

    const v4, -0x53e2e1b5

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v12, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v4, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    move-object v13, v4

    check-cast v13, Landroidx/compose/runtime/MutableState;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$enabled:Z

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$scaleRatio:F

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->SCALE_ANIMATION_DOWN_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->SCALE_ANIMATION_UP_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

    :goto_1
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/16 v16, 0x64

    if-eqz v6, :cond_3

    move/from16 v6, v16

    goto :goto_2

    :cond_3
    const/16 v6, 0x23

    :goto_2
    const/4 v10, 0x2

    invoke-static {v6, v14, v5, v10}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    const/16 v9, 0xc00

    const/16 v17, 0x14

    const-string v6, "scale animation"

    const/4 v7, 0x0

    move-object v8, v2

    move v15, v10

    move/from16 v10, v17

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v10

    const v4, -0x53e2a791

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget-wide v4, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$feedbackColor:J

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x1cf851b3

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-static {v2}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-wide v4, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->FEEDBACK_ANIMATION_DOWN_TARGET_DARK:J

    goto :goto_3

    :cond_4
    sget-wide v4, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->FEEDBACK_ANIMATION_DOWN_TARGET_LIGHT:J

    :goto_3
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_5
    iget-wide v4, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$feedbackColor:J

    :goto_4
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$enabled:Z

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Transparent:J

    :goto_5
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->FEEDBACK_ANIMATION_DOWN_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

    goto :goto_6

    :cond_7
    sget-object v6, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->FEEDBACK_ANIMATION_UP_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

    :goto_6
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    move/from16 v7, v16

    goto :goto_7

    :cond_8
    const/16 v7, 0x23

    :goto_7
    invoke-static {v7, v14, v6, v15}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    const/16 v9, 0x180

    const/16 v15, 0x8

    const-string v7, "feedback opacity value"

    move-object v8, v2

    move-object/from16 v18, v10

    move v10, v15

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    iget-boolean v4, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$enabled:Z

    if-eqz v4, :cond_c

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v5, -0x53e257fc

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v12, :cond_9

    new-instance v5, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$1$1;

    const/4 v6, 0x0

    invoke-direct {v5, v13, v6}, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v1, v4, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v4, -0x53e2319a

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget-object v4, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$feedbackBehindShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v9, v18

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v5, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$feedbackAboveShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v5, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$feedbackBehindShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v10, v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;->$feedbackAboveShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_a

    if-ne v0, v12, :cond_b

    :cond_a
    new-instance v0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;

    move-object v4, v0

    move-object v6, v3

    move-object v7, v11

    invoke-direct/range {v4 .. v10}, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/Shape;)V

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v1, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :cond_c
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method
