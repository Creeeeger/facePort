.class public abstract Landroidx/compose/material3/SliderKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ThumbSize:J

.field public static final ThumbTrackGapSize:F

.field public static final ThumbWidth:F

.field public static final TrackHeight:F

.field public static final TrackInsideCornerSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/tokens/SliderTokens;->InactiveTrackHeight:F

    sput v0, Landroidx/compose/material3/SliderKt;->TrackHeight:F

    sget v0, Landroidx/compose/material3/tokens/SliderTokens;->HandleWidth:F

    sput v0, Landroidx/compose/material3/SliderKt;->ThumbWidth:F

    sget v1, Landroidx/compose/material3/tokens/SliderTokens;->HandleHeight:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/SliderKt;->ThumbSize:J

    sget v0, Landroidx/compose/material3/tokens/SliderTokens;->ActiveHandleLeadingSpace:F

    sput v0, Landroidx/compose/material3/SliderKt;->ThumbTrackGapSize:F

    const/4 v0, 0x2

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Landroidx/compose/material3/SliderKt;->TrackInsideCornerSize:F

    return-void
.end method

.method public static final Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;III)V
    .locals 27

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v12, p12

    move/from16 v14, p14

    const/16 v0, 0x80

    const/16 v3, 0x100

    const/16 v4, 0x10

    const/16 v6, 0x20

    move-object/from16 v7, p11

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v8, 0x46ffd149

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v8, 0x1

    and-int/lit8 v9, v14, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x4

    if-eqz v9, :cond_0

    or-int/lit8 v9, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v12, 0x6

    if-nez v9, :cond_2

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v11

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    or-int/2addr v9, v12

    goto :goto_1

    :cond_2
    move v9, v12

    :goto_1
    and-int/lit8 v13, v14, 0x2

    if-eqz v13, :cond_3

    or-int/lit8 v9, v9, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v13, v12, 0x30

    if-nez v13, :cond_5

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v6

    goto :goto_2

    :cond_4
    move v13, v4

    :goto_2
    or-int/2addr v9, v13

    :cond_5
    :goto_3
    and-int/lit8 v13, v14, 0x4

    if-eqz v13, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move-object/from16 v15, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v15, v12, 0x180

    if-nez v15, :cond_6

    move-object/from16 v15, p2

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 v16, v3

    goto :goto_4

    :cond_8
    move/from16 v16, v0

    :goto_4
    or-int v9, v9, v16

    :goto_5
    and-int/lit8 v16, v14, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v9, v9, 0xc00

    :cond_9
    move/from16 v11, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v11, v12, 0xc00

    if-nez v11, :cond_9

    move/from16 v11, p3

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x800

    goto :goto_6

    :cond_b
    const/16 v17, 0x400

    :goto_6
    or-int v9, v9, v17

    :goto_7
    and-int/2addr v4, v14

    if-eqz v4, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move-object/from16 v8, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v8, v12, 0x6000

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x4000

    goto :goto_8

    :cond_e
    const/16 v18, 0x2000

    :goto_8
    or-int v9, v9, v18

    :goto_9
    const/high16 v18, 0x30000

    and-int v18, v12, v18

    if-nez v18, :cond_10

    and-int/lit8 v18, v14, 0x20

    move-object/from16 v6, p5

    if-nez v18, :cond_f

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v19, 0x10000

    :goto_a
    or-int v9, v9, v19

    goto :goto_b

    :cond_10
    move-object/from16 v6, p5

    :goto_b
    and-int/lit8 v19, v14, 0x40

    const/high16 v20, 0x180000

    if-eqz v19, :cond_11

    or-int v9, v9, v20

    move-object/from16 v10, p6

    goto :goto_d

    :cond_11
    and-int v20, v12, v20

    move-object/from16 v10, p6

    if-nez v20, :cond_13

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v21, 0x80000

    :goto_c
    or-int v9, v9, v21

    :cond_13
    :goto_d
    and-int/2addr v0, v14

    const/high16 v22, 0xc00000

    if-eqz v0, :cond_14

    or-int v9, v9, v22

    move/from16 v5, p7

    goto :goto_f

    :cond_14
    and-int v22, v12, v22

    move/from16 v5, p7

    if-nez v22, :cond_16

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v23

    if-eqz v23, :cond_15

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v23, 0x400000

    :goto_e
    or-int v9, v9, v23

    :cond_16
    :goto_f
    and-int/2addr v3, v14

    const/high16 v23, 0x6000000

    if-eqz v3, :cond_17

    or-int v9, v9, v23

    move-object/from16 v5, p8

    goto :goto_11

    :cond_17
    and-int v23, v12, v23

    move-object/from16 v5, p8

    if-nez v23, :cond_19

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    const/high16 v23, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v23, 0x2000000

    :goto_10
    or-int v9, v9, v23

    :cond_19
    :goto_11
    and-int/lit16 v5, v14, 0x200

    const/high16 v23, 0x30000000

    if-eqz v5, :cond_1a

    or-int v9, v9, v23

    move-object/from16 v6, p9

    goto :goto_13

    :cond_1a
    and-int v23, v12, v23

    move-object/from16 v6, p9

    if-nez v23, :cond_1c

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    const/high16 v23, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v23, 0x10000000

    :goto_12
    or-int v9, v9, v23

    :cond_1c
    :goto_13
    and-int/lit8 v23, p13, 0x6

    if-nez v23, :cond_1e

    const/16 v6, 0x400

    and-int/lit16 v8, v14, 0x400

    move-object/from16 v6, p10

    if-nez v8, :cond_1d

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    const/4 v8, 0x4

    goto :goto_14

    :cond_1d
    const/4 v8, 0x2

    :goto_14
    or-int v8, p13, v8

    goto :goto_15

    :cond_1e
    move-object/from16 v6, p10

    move/from16 v8, p13

    :goto_15
    const v23, 0x12492493

    and-int v6, v9, v23

    const v10, 0x12492492

    if-ne v6, v10, :cond_20

    and-int/lit8 v6, v8, 0x3

    const/4 v10, 0x2

    if-ne v6, v10, :cond_20

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move v4, v11

    move-object v3, v15

    move-object/from16 v11, p9

    move-object/from16 v15, p10

    goto/16 :goto_25

    :cond_20
    :goto_16
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v6, 0x1

    and-int/lit8 v10, v12, 0x1

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const v20, -0x70001

    const/16 v23, 0x0

    if-eqz v10, :cond_24

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_21

    goto :goto_18

    :cond_21
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x20

    and-int/2addr v0, v14

    if-eqz v0, :cond_22

    and-int v9, v9, v20

    :cond_22
    const/16 v0, 0x400

    and-int/2addr v0, v14

    if-eqz v0, :cond_23

    and-int/lit8 v8, v8, -0xf

    :cond_23
    move-object/from16 v4, p4

    move-object/from16 v13, p5

    move-object/from16 v6, p6

    move/from16 v0, p7

    move-object/from16 v3, p8

    move-object/from16 v5, p9

    move-object v10, v15

    :goto_17
    move-object/from16 v15, p10

    goto/16 :goto_22

    :cond_24
    :goto_18
    if-eqz v13, :cond_25

    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_25
    move-object v10, v15

    :goto_19
    if-eqz v16, :cond_26

    move v11, v6

    :cond_26
    if-eqz v4, :cond_27

    const/4 v4, 0x0

    :goto_1a
    const/16 v13, 0x20

    goto :goto_1b

    :cond_27
    move-object/from16 v4, p4

    goto :goto_1a

    :goto_1b
    and-int/2addr v13, v14

    if-eqz v13, :cond_28

    sget-object v13, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;

    move-result-object v13

    and-int v9, v9, v20

    goto :goto_1c

    :cond_28
    move-object/from16 v13, p5

    :goto_1c
    if-eqz v19, :cond_2a

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v15, v6, :cond_29

    invoke-static {v7}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v15

    :cond_29
    move-object v6, v15

    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_1d

    :cond_2a
    move-object/from16 v6, p6

    :goto_1d
    if-eqz v0, :cond_2b

    move/from16 v0, v23

    goto :goto_1e

    :cond_2b
    move/from16 v0, p7

    :goto_1e
    if-eqz v3, :cond_2c

    new-instance v3, Landroidx/compose/material3/SliderKt$Slider$6;

    invoke-direct {v3, v6, v13, v11}, Landroidx/compose/material3/SliderKt$Slider$6;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderColors;Z)V

    const v15, -0x68af69e7

    invoke-static {v15, v7, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    goto :goto_1f

    :cond_2c
    move-object/from16 v3, p8

    :goto_1f
    if-eqz v5, :cond_2d

    new-instance v5, Landroidx/compose/material3/SliderKt$Slider$7;

    invoke-direct {v5, v11, v13}, Landroidx/compose/material3/SliderKt$Slider$7;-><init>(ZLandroidx/compose/material3/SliderColors;)V

    const v15, 0x7c325d8e

    invoke-static {v15, v7, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    :goto_20
    const/16 v15, 0x400

    goto :goto_21

    :cond_2d
    move-object/from16 v5, p9

    goto :goto_20

    :goto_21
    and-int/2addr v15, v14

    if-eqz v15, :cond_2e

    new-instance v15, Lkotlin/ranges/ClosedFloatRange;

    move/from16 p2, v0

    const/4 v0, 0x0

    move-object/from16 p3, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v15, v0, v3}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    and-int/lit8 v8, v8, -0xf

    move/from16 v0, p2

    move-object/from16 v3, p3

    goto :goto_22

    :cond_2e
    move/from16 p2, v0

    move-object/from16 p3, v3

    goto/16 :goto_17

    :goto_22
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v18, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v18, 0x1c00000

    and-int v12, v9, v18

    move-object/from16 v18, v13

    const/high16 v13, 0x800000

    if-ne v12, v13, :cond_2f

    const/4 v12, 0x1

    goto :goto_23

    :cond_2f
    move/from16 v12, v23

    :goto_23
    and-int/lit8 v13, v8, 0xe

    xor-int/lit8 v13, v13, 0x6

    const/4 v14, 0x4

    if-le v13, v14, :cond_30

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_31

    :cond_30
    and-int/lit8 v8, v8, 0x6

    if-ne v8, v14, :cond_32

    :cond_31
    const/4 v8, 0x1

    goto :goto_24

    :cond_32
    move/from16 v8, v23

    :goto_24
    or-int/2addr v8, v12

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_33

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v8, :cond_34

    :cond_33
    new-instance v12, Landroidx/compose/material3/SliderState;

    invoke-direct {v12, v1, v0, v4, v15}, Landroidx/compose/material3/SliderState;-><init>(FILkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;)V

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_34
    move-object v8, v12

    check-cast v8, Landroidx/compose/material3/SliderState;

    iput-object v4, v8, Landroidx/compose/material3/SliderState;->onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iput-object v2, v8, Landroidx/compose/material3/SliderState;->onValueChange:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v1}, Landroidx/compose/material3/SliderState;->setValue(F)V

    shr-int/lit8 v12, v9, 0x3

    and-int/lit16 v12, v12, 0x3f0

    shr-int/lit8 v13, v9, 0x6

    const v14, 0xe000

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    shr-int/lit8 v9, v9, 0x9

    const/high16 v13, 0x70000

    and-int/2addr v13, v9

    or-int/2addr v12, v13

    const/high16 v13, 0x380000

    and-int/2addr v9, v13

    or-int/2addr v9, v12

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object/from16 p2, v8

    move-object/from16 p3, v10

    move/from16 p4, v11

    move-object/from16 p5, v13

    move-object/from16 p6, v6

    move-object/from16 p7, v3

    move-object/from16 p8, v5

    move-object/from16 p9, v7

    move/from16 p10, v9

    move/from16 p11, v12

    invoke-static/range {p2 .. p11}, Landroidx/compose/material3/SliderKt;->Slider(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move v9, v0

    move-object v8, v6

    move-object/from16 v6, v18

    move-object/from16 v25, v10

    move-object v10, v3

    move-object/from16 v3, v25

    move-object/from16 v26, v5

    move-object v5, v4

    move v4, v11

    move-object/from16 v11, v26

    :goto_25
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_35

    new-instance v13, Landroidx/compose/material3/SliderKt$Slider$8;

    move-object v0, v13

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v15

    move/from16 v12, p12

    move-object v15, v13

    move/from16 v13, p13

    move-object/from16 v24, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/SliderKt$Slider$8;-><init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/ranges/ClosedFloatingPointRange;III)V

    move-object/from16 v0, v24

    iput-object v15, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_35
    return-void
.end method

.method public static final Slider(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    move-object/from16 v8, p0

    move/from16 v9, p8

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-object/from16 v10, p7

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x4db7b0d2

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p9, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v9, 0x6

    if-nez v5, :cond_2

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    or-int/2addr v5, v9

    goto :goto_1

    :cond_2
    move v5, v9

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move-object/from16 v6, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v9, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v1

    goto :goto_2

    :cond_5
    move v7, v0

    :goto_2
    or-int/2addr v5, v7

    :goto_3
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v9, 0x180

    if-nez v7, :cond_6

    move/from16 v7, p2

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v5, v11

    :goto_5
    and-int/lit16 v11, v9, 0xc00

    if-nez v11, :cond_b

    and-int/lit8 v11, p9, 0x8

    if-nez v11, :cond_9

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v11, p3

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v5, v12

    goto :goto_7

    :cond_b
    move-object/from16 v11, p3

    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move-object/from16 v12, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v12, v9, 0x6000

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_8

    :cond_e
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v5, v13

    :goto_9
    and-int/lit8 v1, p9, 0x20

    const/high16 v13, 0x30000

    if-eqz v1, :cond_10

    or-int/2addr v5, v13

    :cond_f
    move-object/from16 v13, p5

    goto :goto_b

    :cond_10
    and-int/2addr v13, v9

    if-nez v13, :cond_f

    move-object/from16 v13, p5

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v5, v14

    :goto_b
    and-int/lit8 v14, p9, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_13

    or-int/2addr v5, v15

    :cond_12
    move-object/from16 v15, p6

    goto :goto_d

    :cond_13
    and-int/2addr v15, v9

    if-nez v15, :cond_12

    move-object/from16 v15, p6

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v16, 0x80000

    :goto_c
    or-int v5, v5, v16

    :goto_d
    const v16, 0x92493

    and-int v4, v5, v16

    const v6, 0x92492

    if-ne v4, v6, :cond_16

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move v3, v7

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v15

    goto/16 :goto_13

    :cond_16
    :goto_e
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v4, 0x1

    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_19

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_18

    and-int/lit16 v5, v5, -0x1c01

    :cond_18
    move-object v14, v12

    move-object/from16 v16, v15

    move v12, v7

    move-object v15, v13

    move-object v13, v11

    move-object/from16 v11, p1

    goto/16 :goto_12

    :cond_19
    :goto_f
    if-eqz v2, :cond_1a

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_10

    :cond_1a
    move-object/from16 v2, p1

    :goto_10
    if-eqz v3, :cond_1b

    move v7, v4

    :cond_1b
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_1c

    sget-object v3, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;

    move-result-object v3

    and-int/lit16 v5, v5, -0x1c01

    move-object v11, v3

    :cond_1c
    if-eqz v0, :cond_1e

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v3, :cond_1d

    invoke-static {v10}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v0

    :cond_1d
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v12, v0

    :cond_1e
    if-eqz v1, :cond_1f

    new-instance v0, Landroidx/compose/material3/SliderKt$Slider$10;

    invoke-direct {v0, v12, v11, v7}, Landroidx/compose/material3/SliderKt$Slider$10;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderColors;Z)V

    const v1, 0x55032c5e

    invoke-static {v1, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object v13, v0

    :cond_1f
    if-eqz v14, :cond_20

    new-instance v0, Landroidx/compose/material3/SliderKt$Slider$11;

    invoke-direct {v0, v7, v11}, Landroidx/compose/material3/SliderKt$Slider$11;-><init>(ZLandroidx/compose/material3/SliderColors;)V

    const v1, 0x2264e809

    invoke-static {v1, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object/from16 v16, v0

    move-object v14, v12

    move-object v15, v13

    move v12, v7

    :goto_11
    move-object v13, v11

    move-object v11, v2

    goto :goto_12

    :cond_20
    move-object v14, v12

    move-object/from16 v16, v15

    move v12, v7

    move-object v15, v13

    goto :goto_11

    :goto_12
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v0, v8, Landroidx/compose/material3/SliderState;->steps:I

    if-ltz v0, :cond_22

    shr-int/lit8 v0, v5, 0x3

    and-int/lit8 v1, v0, 0xe

    shl-int/lit8 v2, v5, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    and-int/lit16 v2, v5, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x1c00

    or-int/2addr v1, v2

    const v2, 0xe000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, 0x70000

    and-int/2addr v0, v2

    or-int v7, v1, v0

    move-object v0, v11

    move-object/from16 v1, p0

    move v2, v12

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v10

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/SliderKt;->SliderImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    move-object v2, v11

    move v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    :goto_13
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_21

    new-instance v11, Landroidx/compose/material3/SliderKt$Slider$13;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SliderKt$Slider$13;-><init>(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;II)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "steps should be >= 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final SliderImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v0, p7

    move-object/from16 v10, p6

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x52e8d309    # 4.999865E11f

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v0, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v0

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    and-int/lit8 v3, v0, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    and-int/lit16 v3, v0, 0x180

    if-nez v3, :cond_5

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v2, v3

    :cond_5
    and-int/lit16 v3, v0, 0xc00

    if-nez v3, :cond_7

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x800

    goto :goto_4

    :cond_6
    const/16 v3, 0x400

    :goto_4
    or-int/2addr v2, v3

    :cond_7
    and-int/lit16 v3, v0, 0x6000

    if-nez v3, :cond_9

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x4000

    goto :goto_5

    :cond_8
    const/16 v3, 0x2000

    :goto_5
    or-int/2addr v2, v3

    :cond_9
    const/high16 v3, 0x30000

    and-int/2addr v3, v0

    if-nez v3, :cond_b

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v3, 0x10000

    :goto_6
    or-int/2addr v2, v3

    :cond_b
    move/from16 v16, v2

    const v2, 0x12493

    and-int v2, v16, v2

    const v3, 0x12492

    if-ne v2, v3, :cond_d

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v10

    move-object v6, v15

    goto/16 :goto_d

    :cond_d
    :goto_7
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v9, 0x0

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    move v2, v9

    :goto_8
    iput-boolean v2, v11, Landroidx/compose/material3/SliderState;->isRtl:Z

    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v6, 0x0

    if-eqz v12, :cond_f

    new-instance v2, Landroidx/compose/material3/SliderKt$sliderTapModifier$1;

    invoke-direct {v2, v11, v6}, Landroidx/compose/material3/SliderKt$sliderTapModifier$1;-><init>(Landroidx/compose/material3/SliderState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v11, v13, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v5, v2

    goto :goto_9

    :cond_f
    move-object v5, v7

    :goto_9
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v3, v11, Landroidx/compose/material3/SliderState;->isRtl:Z

    iget-object v2, v11, Landroidx/compose/material3/SliderState;->isDragging$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v2, :cond_10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v2, :cond_11

    :cond_10
    new-instance v8, Landroidx/compose/material3/SliderKt$SliderImpl$drag$1$1;

    invoke-direct {v8, v11, v6}, Landroidx/compose/material3/SliderKt$SliderImpl$drag$1$1;-><init>(Landroidx/compose/material3/SliderState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast v8, Lkotlin/jvm/functions/Function3;

    const/16 v19, 0x20

    move-object v2, v7

    move/from16 v20, v3

    move-object/from16 v3, p1

    move-object/from16 v21, v5

    move/from16 v5, p2

    move-object/from16 v22, v6

    move-object/from16 v6, p3

    move-object/from16 v23, v7

    move/from16 v7, v17

    move v0, v9

    move/from16 v9, v20

    move-object/from16 v24, v10

    move/from16 v10, v19

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v3, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v5, Landroidx/compose/material3/SliderKt;->ThumbWidth:F

    sget v6, Landroidx/compose/material3/SliderKt;->TrackHeight:F

    const/16 v9, 0xc

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/SizeKt;->requiredSizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v4, Landroidx/compose/material3/SliderKt$sliderSemantics$1;

    invoke-direct {v4, v12, v11}, Landroidx/compose/material3/SliderKt$sliderSemantics$1;-><init>(ZLandroidx/compose/material3/SliderState;)V

    invoke-static {v3, v0, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v11, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v4

    iget-object v5, v11, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v5, Lkotlin/ranges/ClosedFloatRange;

    iget v6, v5, Lkotlin/ranges/ClosedFloatRange;->_start:F

    new-instance v7, Lkotlin/ranges/ClosedFloatRange;

    iget v5, v5, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-direct {v7, v6, v5}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    iget v5, v11, Landroidx/compose/material3/SliderState;->steps:I

    invoke-static {v3, v4, v7, v5}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;FLkotlin/ranges/ClosedFloatRange;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v12, v13}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v7, v21

    invoke-interface {v3, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v3, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v4, :cond_13

    :cond_12
    new-instance v5, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;

    invoke-direct {v5, v11}, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;-><init>(Landroidx/compose/material3/SliderState;)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    check-cast v5, Landroidx/compose/ui/layout/MeasurePolicy;

    iget v4, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v3, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v8, v3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-eqz v8, :cond_22

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_14

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_14
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_a
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v10, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v10, :cond_15

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    invoke-static {v4, v3, v4, v6}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_16
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    move-object/from16 v4, v23

    invoke-static {v4, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentWidth$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v10, :cond_17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v10, :cond_18

    :cond_17
    new-instance v1, Landroidx/compose/material3/SliderKt$SliderImpl$1$1$1;

    invoke-direct {v1, v11}, Landroidx/compose/material3/SliderKt$SliderImpl$1$1$1;-><init>(Landroidx/compose/material3/SliderState;)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v1}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget v10, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v3, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v8, :cond_21

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v15, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v15, :cond_19

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_19
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_b
    invoke-static {v3, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3, v13, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v12, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_1a

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    :cond_1a
    invoke-static {v10, v3, v10, v6}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1b
    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v16, 0x3

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v10, v16, 0x9

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v11, v3, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v12, Landroidx/compose/material3/SliderComponents;->TRACK:Landroidx/compose/material3/SliderComponents;

    invoke-static {v4, v12}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v12, 0x0

    invoke-static {v2, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v12, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v3, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v8, :cond_20

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_1c

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_1c
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_c
    invoke-static {v3, v2, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3, v13, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_1d

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    invoke-static {v12, v3, v12, v6}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1e
    invoke-static {v3, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v16, 0xc

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, p5

    invoke-interface {v6, v11, v3, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_d
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1f

    new-instance v9, Landroidx/compose/material3/SliderKt$SliderImpl$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/SliderKt$SliderImpl$3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;I)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void

    :cond_20
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v22

    :cond_21
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v22

    :cond_22
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v22
.end method

.method public static final access$snapValueToTick(FFF[F)F
    .locals 6

    array-length v0, p3

    if-nez v0, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget v0, p3, v0

    array-length v1, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v3

    sub-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-direct {v4, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v1

    :cond_2
    :goto_0
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v2

    aget v2, p3, v2

    invoke-static {p1, p2, v2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v4

    sub-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-lez v5, :cond_2

    move v0, v2

    move v3, v4

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p1, p2, p0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    :cond_4
    return p0
.end method
