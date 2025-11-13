.class final Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;
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
.field final synthetic $checked:Z

.field final synthetic $colors:Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;

.field final synthetic $enabled:Z


# direct methods
.method public constructor <init>(ZLcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$enabled:Z

    iput-object p2, p0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$colors:Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;

    iput-boolean p3, p0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$checked:Z

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

    const v3, -0x4f74b44a

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v3, 0x5859a4a0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v3, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;

    iget-boolean v4, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$checked:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x32830bc6

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v5, Landroidx/compose/animation/core/TweenSpec;

    sget-object v6, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;->easing:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v7, 0xe9

    const/4 v11, 0x0

    invoke-direct {v5, v7, v11, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    const-string v6, ""

    const/4 v7, 0x0

    const/16 v9, 0xc00

    const/16 v10, 0x14

    move-object v8, v2

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v15

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x5859b4e5

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v4, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ColorTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ColorTransition;

    iget-boolean v5, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$checked:Z

    iget-object v6, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$colors:Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;

    iget-wide v7, v6, Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;->checkedColor:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x21fd894f

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-eqz v5, :cond_1

    move-wide v6, v7

    goto :goto_1

    :cond_1
    iget-wide v6, v6, Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;->uncheckedColor:J

    :goto_1
    if-eqz v5, :cond_2

    new-instance v4, Landroidx/compose/animation/core/SnapSpec;

    const/16 v5, 0x74

    invoke-direct {v4, v5}, Landroidx/compose/animation/core/SnapSpec;-><init>(I)V

    :goto_2
    move-object v8, v4

    goto :goto_3

    :cond_2
    new-instance v4, Landroidx/compose/animation/core/SnapSpec;

    const/16 v5, 0xb7

    invoke-direct {v4, v5}, Landroidx/compose/animation/core/SnapSpec;-><init>(I)V

    goto :goto_2

    :goto_3
    const/16 v10, 0x8

    const-string v9, ""

    const/16 v12, 0x180

    move-wide v4, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v2

    move v9, v12

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v14

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x5859d3e1

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v4, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;

    iget-boolean v5, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$checked:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x3a2fc5ef

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v4, -0x15868dfd

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v12, :cond_3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v4, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, -0x158684e6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v12, :cond_4

    const v6, 0x3c23d70a    # 0.01f

    invoke-static {v3, v6}, Landroidx/compose/animation/core/AnimatableKt;->Animatable(FF)Landroidx/compose/animation/core/Animatable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v6, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    new-instance v8, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition$animateScale$1;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v6, v4, v9}, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition$animateScale$1;-><init>(ZLandroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v7, v8}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v13, v6, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x5859e448

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v4, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$StrokeTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$StrokeTransition;

    iget-boolean v5, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$checked:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x552b4c62

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-eqz v5, :cond_5

    const/high16 v4, 0x3d800000    # 0.0625f

    goto :goto_4

    :cond_5
    const/high16 v4, 0x3d400000    # 0.046875f

    :goto_4
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    const/16 v6, 0x12b

    const/4 v7, 0x2

    invoke-static {v6, v11, v5, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const/16 v9, 0xc00

    const/16 v10, 0x14

    move-object v8, v2

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-boolean v5, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$enabled:Z

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    const v3, 0x3ecccccd    # 0.4f

    :goto_5
    const v5, 0x585a0246

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$colors:Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2;->$colors:Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7

    if-ne v6, v12, :cond_8

    :cond_7
    new-instance v6, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;

    move-object v12, v6

    move-object v5, v14

    move v14, v3

    move-object v3, v15

    move-object v15, v5

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;-><init>(Landroidx/compose/runtime/State;FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v1, v6}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method
