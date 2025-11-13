.class public abstract Lcom/airbnb/lottie/compose/LottieAnimationKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZLandroidx/compose/runtime/Composer;III)V
    .locals 33

    move-object/from16 v15, p0

    move/from16 v14, p15

    const-string v0, "progress"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, p12

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0xb092c35

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    and-int/lit8 v0, v14, 0x8

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    move/from16 v16, v10

    goto :goto_1

    :cond_1
    move/from16 v16, p3

    :goto_1
    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_2

    move/from16 v17, v10

    goto :goto_2

    :cond_2
    move/from16 v17, p4

    :goto_2
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_3

    move/from16 v18, v10

    goto :goto_3

    :cond_3
    move/from16 v18, p5

    :goto_3
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_4

    sget-object v0, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    move-object/from16 v19, v0

    goto :goto_4

    :cond_4
    move-object/from16 v19, p6

    :goto_4
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_5

    move/from16 v20, v10

    goto :goto_5

    :cond_5
    move/from16 v20, p7

    :goto_5
    and-int/lit16 v0, v14, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object/from16 v21, v1

    goto :goto_6

    :cond_6
    move-object/from16 v21, p8

    :goto_6
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_7

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v22, v0

    goto :goto_7

    :cond_7
    move-object/from16 v22, p9

    :goto_7
    and-int/lit16 v0, v14, 0x400

    if-eqz v0, :cond_8

    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    move-object/from16 v23, v0

    goto :goto_8

    :cond_8
    move-object/from16 v23, p10

    :goto_8
    and-int/lit16 v0, v14, 0x800

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move/from16 v24, v0

    goto :goto_9

    :cond_9
    move/from16 v24, p11

    :goto_9
    const v0, -0x384349

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_a

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v2}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v5, v2

    check-cast v5, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_b

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v4, v2

    check-cast v4, Landroid/graphics/Matrix;

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    sget-object v0, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v25, v0

    check-cast v25, Landroidx/compose/runtime/MutableState;

    const v0, 0xb092f12

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-eqz v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_e

    :cond_d
    move v0, v10

    move-object/from16 p2, v11

    move-object v14, v12

    goto/16 :goto_b

    :cond_e
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v0

    iget-object v1, v15, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget-object v2, v15, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {v11, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v9

    new-instance v8, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object v15, v8

    move-object/from16 v8, v21

    move-object/from16 v26, v9

    move/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 p2, v11

    move/from16 v11, v20

    move-object/from16 v27, v12

    move/from16 v12, v24

    move-object/from16 v13, p1

    move-object/from16 v14, v25

    invoke-direct/range {v0 .. v14}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/Alignment;Landroid/graphics/Matrix;Lcom/airbnb/lottie/LottieDrawable;ZLcom/airbnb/lottie/RenderMode;Lcom/airbnb/lottie/compose/LottieDynamicProperties;ZZZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v1, v26

    move-object/from16 v14, v27

    const/4 v0, 0x0

    invoke-static {v1, v15, v14, v0}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-nez v15, :cond_f

    goto :goto_a

    :cond_f
    new-instance v14, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move/from16 v12, v24

    move/from16 v13, p13

    move-object/from16 v28, v14

    move/from16 v14, p14

    move-object/from16 v29, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$3;-><init>(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZIII)V

    move-object/from16 v1, v28

    move-object/from16 v0, v29

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :goto_a
    return-void

    :goto_b
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-nez v15, :cond_10

    move-object/from16 v31, v14

    goto :goto_c

    :cond_10
    new-instance v13, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v30, v13

    move/from16 v13, p13

    move-object/from16 v31, v14

    move/from16 v14, p14

    move-object/from16 v32, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;-><init>(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZIII)V

    move-object/from16 v1, v30

    move-object/from16 v0, v32

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :goto_c
    shr-int/lit8 v0, p13, 0x6

    and-int/lit8 v0, v0, 0xe

    move-object/from16 v2, p2

    move-object/from16 v1, v31

    invoke-static {v2, v1, v0}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
