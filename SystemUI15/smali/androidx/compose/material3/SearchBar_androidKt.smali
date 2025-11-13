.class public abstract Landroidx/compose/material3/SearchBar_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AnimationEnterFloatSpec:Landroidx/compose/animation/core/TweenSpec;

.field public static final AnimationEnterSizeSpec:Landroidx/compose/animation/core/TweenSpec;

.field public static final AnimationExitFloatSpec:Landroidx/compose/animation/core/TweenSpec;

.field public static final AnimationExitSizeSpec:Landroidx/compose/animation/core/TweenSpec;

.field public static final AnimationPredictiveBackExitFloatSpec:Landroidx/compose/animation/core/TweenSpec;

.field public static final SearchBarCornerRadius:F

.field public static final SearchBarIconOffsetX:F

.field public static final SearchBarMaxWidth:F

.field public static final SearchBarMinWidth:F

.field public static final SearchBarPredictiveBackMaxOffsetY:F

.field public static final SearchBarPredictiveBackMinMargin:F

.field public static final SearchBarVerticalPadding:F

.field public static final UnspecifiedTextFieldColors:Landroidx/compose/material3/TextFieldColors;


# direct methods
.method static constructor <clinit>()V
    .locals 88

    new-instance v87, Landroidx/compose/material3/TextFieldColors;

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v84, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    new-instance v21, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    const/4 v6, 0x0

    move-object/from16 v1, v21

    move-wide/from16 v2, v84

    move-wide/from16 v4, v84

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v86, 0x0

    move-object/from16 v0, v87

    move-wide/from16 v1, v84

    move-wide/from16 v3, v84

    move-wide/from16 v5, v84

    move-wide/from16 v7, v84

    move-wide/from16 v9, v84

    move-wide/from16 v11, v84

    move-wide/from16 v13, v84

    move-wide/from16 v15, v84

    move-wide/from16 v17, v84

    move-wide/from16 v19, v84

    move-wide/from16 v22, v84

    move-wide/from16 v24, v84

    move-wide/from16 v26, v84

    move-wide/from16 v28, v84

    move-wide/from16 v30, v84

    move-wide/from16 v32, v84

    move-wide/from16 v34, v84

    move-wide/from16 v36, v84

    move-wide/from16 v38, v84

    move-wide/from16 v40, v84

    move-wide/from16 v42, v84

    move-wide/from16 v44, v84

    move-wide/from16 v46, v84

    move-wide/from16 v48, v84

    move-wide/from16 v50, v84

    move-wide/from16 v52, v84

    move-wide/from16 v54, v84

    move-wide/from16 v56, v84

    move-wide/from16 v58, v84

    move-wide/from16 v60, v84

    move-wide/from16 v62, v84

    move-wide/from16 v64, v84

    move-wide/from16 v66, v84

    move-wide/from16 v68, v84

    move-wide/from16 v70, v84

    move-wide/from16 v72, v84

    move-wide/from16 v74, v84

    move-wide/from16 v76, v84

    move-wide/from16 v78, v84

    move-wide/from16 v80, v84

    move-wide/from16 v82, v84

    invoke-direct/range {v0 .. v86}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v87, Landroidx/compose/material3/SearchBar_androidKt;->UnspecifiedTextFieldColors:Landroidx/compose/material3/TextFieldColors;

    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/SearchBarDefaults;->InputFieldHeight:F

    const/4 v1, 0x2

    int-to-float v2, v1

    div-float/2addr v0, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarCornerRadius:F

    const/16 v0, 0x168

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarMinWidth:F

    const/16 v0, 0x2d0

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarMaxWidth:F

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarVerticalPadding:F

    const/4 v2, 0x4

    int-to-float v2, v2

    sput v2, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarIconOffsetX:F

    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarPredictiveBackMinMargin:F

    const/16 v0, 0x18

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarPredictiveBackMaxOffsetY:F

    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/MotionTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingEmphasizedDecelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v2, Landroidx/compose/animation/core/CubicBezierEasing;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v3, Landroidx/compose/animation/core/TweenSpec;

    const/16 v4, 0x258

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5, v0}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    sput-object v3, Landroidx/compose/material3/SearchBar_androidKt;->AnimationEnterFloatSpec:Landroidx/compose/animation/core/TweenSpec;

    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    const/16 v7, 0x15e

    invoke-direct {v6, v7, v5, v2}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    sput-object v6, Landroidx/compose/material3/SearchBar_androidKt;->AnimationExitFloatSpec:Landroidx/compose/animation/core/TweenSpec;

    const/4 v8, 0x0

    invoke-static {v7, v8, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v8

    sput-object v8, Landroidx/compose/material3/SearchBar_androidKt;->AnimationPredictiveBackExitFloatSpec:Landroidx/compose/animation/core/TweenSpec;

    new-instance v8, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v8, v4, v5, v0}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v0, v7, v5, v2}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-static {v3, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-static {v8, v3, v3, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically$default(Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/ui/BiasAlignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    invoke-static {v6, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v1

    invoke-static {v0, v3, v3, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/ui/BiasAlignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransitionImpl;

    return-void
.end method

.method public static final SearchBar-WuY5d9Q(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 39

    move/from16 v15, p18

    move/from16 v14, p19

    move/from16 v13, p20

    const/16 v2, 0x80

    const/16 v3, 0x100

    const/16 v4, 0x10

    const/16 v5, 0x20

    const/16 v9, 0x180

    move-object/from16 v10, p17

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v11, 0x3bb1de91

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v11, 0x1

    and-int/lit8 v12, v13, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x4

    if-eqz v12, :cond_0

    or-int/lit8 v12, v15, 0x6

    move/from16 v18, v12

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v12, v15, 0x6

    if-nez v12, :cond_2

    move-object/from16 v12, p0

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    move/from16 v18, v17

    goto :goto_0

    :cond_1
    move/from16 v18, v16

    :goto_0
    or-int v18, v15, v18

    goto :goto_1

    :cond_2
    move-object/from16 v12, p0

    move/from16 v18, v15

    :goto_1
    and-int/lit8 v19, v13, 0x2

    if-eqz v19, :cond_4

    or-int/lit8 v18, v18, 0x30

    move-object/from16 v0, p1

    :cond_3
    :goto_2
    move/from16 v11, v18

    goto :goto_4

    :cond_4
    and-int/lit8 v19, v15, 0x30

    move-object/from16 v0, p1

    if-nez v19, :cond_3

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move/from16 v20, v5

    goto :goto_3

    :cond_5
    move/from16 v20, v4

    :goto_3
    or-int v18, v18, v20

    goto :goto_2

    :goto_4
    and-int/lit8 v18, v13, 0x4

    if-eqz v18, :cond_7

    or-int/2addr v11, v9

    :cond_6
    move-object/from16 v6, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v6, v15, 0x180

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    move/from16 v20, v3

    goto :goto_5

    :cond_8
    move/from16 v20, v2

    :goto_5
    or-int v11, v11, v20

    :goto_6
    and-int/lit8 v20, v13, 0x8

    if-eqz v20, :cond_a

    or-int/lit16 v11, v11, 0xc00

    :cond_9
    move/from16 v1, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v1, v15, 0xc00

    if-nez v1, :cond_9

    move/from16 v1, p3

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v21, 0x800

    goto :goto_7

    :cond_b
    const/16 v21, 0x400

    :goto_7
    or-int v11, v11, v21

    :goto_8
    and-int/lit8 v21, v13, 0x10

    if-eqz v21, :cond_d

    or-int/lit16 v11, v11, 0x6000

    :cond_c
    move-object/from16 v4, p4

    goto :goto_a

    :cond_d
    and-int/lit16 v4, v15, 0x6000

    if-nez v4, :cond_c

    move-object/from16 v4, p4

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v22, 0x4000

    goto :goto_9

    :cond_e
    const/16 v22, 0x2000

    :goto_9
    or-int v11, v11, v22

    :goto_a
    and-int/lit8 v22, v13, 0x20

    const/high16 v23, 0x20000

    const/high16 v24, 0x10000

    const/high16 v25, 0x30000

    if-eqz v22, :cond_f

    or-int v11, v11, v25

    move-object/from16 v5, p5

    goto :goto_c

    :cond_f
    and-int v26, v15, v25

    move-object/from16 v5, p5

    if-nez v26, :cond_11

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    move/from16 v27, v23

    goto :goto_b

    :cond_10
    move/from16 v27, v24

    :goto_b
    or-int v11, v11, v27

    :cond_11
    :goto_c
    and-int/lit8 v27, v13, 0x40

    const/high16 v28, 0x80000

    const/high16 v29, 0x100000

    const/high16 v30, 0x180000

    if-eqz v27, :cond_12

    or-int v11, v11, v30

    move/from16 v9, p6

    goto :goto_e

    :cond_12
    and-int v31, v15, v30

    move/from16 v9, p6

    if-nez v31, :cond_14

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_13

    move/from16 v32, v29

    goto :goto_d

    :cond_13
    move/from16 v32, v28

    :goto_d
    or-int v11, v11, v32

    :cond_14
    :goto_e
    and-int/lit16 v8, v13, 0x80

    const/high16 v33, 0xc00000

    if-eqz v8, :cond_15

    or-int v11, v11, v33

    move-object/from16 v2, p7

    goto :goto_10

    :cond_15
    and-int v33, v15, v33

    move-object/from16 v2, p7

    if-nez v33, :cond_17

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    const/high16 v34, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v34, 0x400000

    :goto_f
    or-int v11, v11, v34

    :cond_17
    :goto_10
    and-int/lit16 v7, v13, 0x100

    const/high16 v35, 0x6000000

    if-eqz v7, :cond_18

    or-int v11, v11, v35

    move-object/from16 v3, p8

    goto :goto_12

    :cond_18
    and-int v35, v15, v35

    move-object/from16 v3, p8

    if-nez v35, :cond_1a

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_19

    const/high16 v36, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v36, 0x2000000

    :goto_11
    or-int v11, v11, v36

    :cond_1a
    :goto_12
    and-int/lit16 v0, v13, 0x200

    const/high16 v36, 0x30000000

    if-eqz v0, :cond_1b

    or-int v11, v11, v36

    move-object/from16 v1, p9

    goto :goto_14

    :cond_1b
    and-int v36, v15, v36

    move-object/from16 v1, p9

    if-nez v36, :cond_1d

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1c

    const/high16 v36, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v36, 0x10000000

    :goto_13
    or-int v11, v11, v36

    :cond_1d
    :goto_14
    and-int/lit8 v36, v14, 0x6

    if-nez v36, :cond_1f

    const/16 v1, 0x400

    and-int/lit16 v2, v13, 0x400

    move-object/from16 v1, p10

    if-nez v2, :cond_1e

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move/from16 v16, v17

    :cond_1e
    or-int v2, v14, v16

    goto :goto_15

    :cond_1f
    move-object/from16 v1, p10

    move v2, v14

    :goto_15
    and-int/lit8 v16, v14, 0x30

    if-nez v16, :cond_21

    const/16 v1, 0x800

    and-int/lit16 v3, v13, 0x800

    move-object/from16 v1, p11

    if-nez v3, :cond_20

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v21, 0x20

    goto :goto_16

    :cond_20
    const/16 v21, 0x10

    :goto_16
    or-int v2, v2, v21

    goto :goto_17

    :cond_21
    move-object/from16 v1, p11

    :goto_17
    and-int/lit16 v3, v13, 0x1000

    const/16 v1, 0x180

    if-eqz v3, :cond_23

    or-int/2addr v2, v1

    :cond_22
    :goto_18
    const/16 v4, 0x2000

    goto :goto_1a

    :cond_23
    and-int/lit16 v4, v14, 0x180

    move/from16 v1, p12

    if-nez v4, :cond_22

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v4

    if-eqz v4, :cond_24

    const/16 v33, 0x100

    goto :goto_19

    :cond_24
    const/16 v33, 0x80

    :goto_19
    or-int v2, v2, v33

    goto :goto_18

    :goto_1a
    and-int/lit16 v1, v13, 0x2000

    if-eqz v1, :cond_25

    or-int/lit16 v2, v2, 0xc00

    goto :goto_1c

    :cond_25
    and-int/lit16 v4, v14, 0xc00

    if-nez v4, :cond_27

    move/from16 v4, p13

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_26

    const/16 v16, 0x800

    goto :goto_1b

    :cond_26
    const/16 v16, 0x400

    :goto_1b
    or-int v2, v2, v16

    goto :goto_1c

    :cond_27
    move/from16 v4, p13

    :goto_1c
    and-int/lit16 v4, v14, 0x6000

    if-nez v4, :cond_29

    const/16 v4, 0x4000

    and-int/lit16 v5, v13, 0x4000

    move-object/from16 v4, p14

    if-nez v5, :cond_28

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v20, 0x4000

    goto :goto_1d

    :cond_28
    const/16 v20, 0x2000

    :goto_1d
    or-int v2, v2, v20

    goto :goto_1e

    :cond_29
    move-object/from16 v4, p14

    :goto_1e
    const v5, 0x8000

    and-int/2addr v5, v13

    if-eqz v5, :cond_2a

    or-int v2, v2, v25

    move-object/from16 v4, p15

    goto :goto_20

    :cond_2a
    and-int v16, v14, v25

    move-object/from16 v4, p15

    if-nez v16, :cond_2c

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    goto :goto_1f

    :cond_2b
    move/from16 v23, v24

    :goto_1f
    or-int v2, v2, v23

    :cond_2c
    :goto_20
    and-int v16, v13, v24

    if-eqz v16, :cond_2d

    or-int v2, v2, v30

    move-object/from16 v14, p16

    goto :goto_21

    :cond_2d
    and-int v16, v14, v30

    move-object/from16 v14, p16

    if-nez v16, :cond_2f

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2e

    move/from16 v28, v29

    :cond_2e
    or-int v2, v2, v28

    :cond_2f
    :goto_21
    const v16, 0x12492493

    and-int v4, v11, v16

    const v6, 0x12492492

    if-ne v4, v6, :cond_31

    const v4, 0x92493

    and-int/2addr v4, v2

    const v6, 0x92492

    if-ne v4, v6, :cond_31

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_22

    :cond_30
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move-object/from16 v19, p14

    move-object/from16 v30, p15

    move v7, v9

    move-object/from16 v9, p8

    goto/16 :goto_33

    :cond_31
    :goto_22
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v4, 0x1

    and-int/lit8 v6, v15, 0x1

    if-eqz v6, :cond_36

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_23

    :cond_32
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x400

    and-int/2addr v0, v13

    if-eqz v0, :cond_33

    and-int/lit8 v2, v2, -0xf

    :cond_33
    const/16 v0, 0x800

    and-int/2addr v0, v13

    if-eqz v0, :cond_34

    and-int/lit8 v2, v2, -0x71

    :cond_34
    const/16 v0, 0x4000

    and-int/2addr v0, v13

    if-eqz v0, :cond_35

    const v0, -0xe001

    and-int/2addr v2, v0

    :cond_35
    move-object/from16 v0, p5

    move-object/from16 v8, p7

    move-object/from16 v1, p8

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v30, p15

    move/from16 v16, v2

    move-object/from16 v2, p9

    goto/16 :goto_32

    :cond_36
    :goto_23
    if-eqz v22, :cond_37

    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_24

    :cond_37
    move-object/from16 v6, p5

    :goto_24
    if-eqz v27, :cond_38

    goto :goto_25

    :cond_38
    move v4, v9

    :goto_25
    if-eqz v8, :cond_39

    const/4 v8, 0x0

    goto :goto_26

    :cond_39
    move-object/from16 v8, p7

    :goto_26
    if-eqz v7, :cond_3a

    const/4 v7, 0x0

    goto :goto_27

    :cond_3a
    move-object/from16 v7, p8

    :goto_27
    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    :goto_28
    const/16 v9, 0x400

    goto :goto_29

    :cond_3b
    move-object/from16 v0, p9

    goto :goto_28

    :goto_29
    and-int/2addr v9, v13

    if-eqz v9, :cond_3c

    sget-object v9, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v9

    and-int/lit8 v2, v2, -0xf

    :goto_2a
    move-object/from16 p6, v0

    const/16 v0, 0x800

    goto :goto_2b

    :cond_3c
    move-object/from16 v9, p10

    goto :goto_2a

    :goto_2b
    and-int/2addr v0, v13

    if-eqz v0, :cond_3d

    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p17, v6

    move-object/from16 p7, v7

    const-wide/16 v6, 0x0

    const/4 v0, 0x3

    move/from16 v16, v4

    const/16 v4, 0x180

    invoke-static {v6, v7, v10, v4, v0}, Landroidx/compose/material3/SearchBarDefaults;->colors-dgg9oW8(JLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v0

    and-int/lit8 v2, v2, -0x71

    goto :goto_2c

    :cond_3d
    move/from16 v16, v4

    move-object/from16 p17, v6

    move-object/from16 p7, v7

    move-object/from16 v0, p11

    :goto_2c
    if-eqz v3, :cond_3e

    sget-object v3, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/material3/SearchBarDefaults;->TonalElevation:F

    goto :goto_2d

    :cond_3e
    move/from16 v3, p12

    :goto_2d
    if-eqz v1, :cond_3f

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/SearchBarDefaults;->ShadowElevation:F

    :goto_2e
    const/16 v4, 0x4000

    goto :goto_2f

    :cond_3f
    move/from16 v1, p13

    goto :goto_2e

    :goto_2f
    and-int/2addr v4, v13

    if-eqz v4, :cond_40

    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    sget-object v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->Companion:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v4

    const v6, -0xe001

    and-int/2addr v2, v6

    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->statusBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    goto :goto_30

    :cond_40
    move-object/from16 v4, p14

    :goto_30
    if-eqz v5, :cond_41

    move v6, v1

    move v5, v3

    move-object v7, v4

    move-object v3, v9

    move/from16 v9, v16

    const/16 v30, 0x0

    :goto_31
    move-object/from16 v1, p7

    move-object v4, v0

    move/from16 v16, v2

    move-object/from16 v2, p6

    move-object/from16 v0, p17

    goto :goto_32

    :cond_41
    move-object/from16 v30, p15

    move v6, v1

    move v5, v3

    move-object v7, v4

    move-object v3, v9

    move/from16 v9, v16

    goto :goto_31

    :goto_32
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v17, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v12, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$4;

    move-object/from16 v18, v12

    move-object/from16 v19, v4

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move/from16 v23, p3

    move-object/from16 v24, p4

    move/from16 v25, v9

    move-object/from16 v26, v8

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v30

    invoke-direct/range {v18 .. v29}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$4;-><init>(Landroidx/compose/material3/SearchBarColors;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    move-object/from16 p5, v1

    const v1, -0x4507604f

    invoke-static {v1, v10, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    shr-int/lit8 v11, v11, 0x6

    and-int/lit8 v12, v11, 0x70

    or-int/lit8 v12, v12, 0x6

    move-object/from16 p6, v2

    and-int/lit16 v2, v11, 0x380

    or-int/2addr v2, v12

    and-int/lit16 v11, v11, 0x1c00

    or-int/2addr v2, v11

    shl-int/lit8 v11, v16, 0xc

    const v12, 0xe000

    and-int/2addr v12, v11

    or-int/2addr v2, v12

    const/high16 v12, 0x70000

    and-int/2addr v12, v11

    or-int/2addr v2, v12

    const/high16 v12, 0x380000

    and-int/2addr v12, v11

    or-int/2addr v2, v12

    const/high16 v12, 0x1c00000

    and-int/2addr v12, v11

    or-int/2addr v2, v12

    const/high16 v12, 0xe000000

    and-int/2addr v11, v12

    or-int/2addr v2, v11

    shl-int/lit8 v11, v16, 0x9

    const/high16 v12, 0x70000000

    and-int/2addr v11, v12

    or-int v27, v2, v11

    const/16 v28, 0x0

    move-object/from16 v16, v1

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, p16

    move-object/from16 v26, v10

    invoke-static/range {v16 .. v28}, Landroidx/compose/material3/SearchBar_androidKt;->SearchBar-Y92LkZI(Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, p6

    move-object v12, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move v7, v9

    move-object/from16 v9, p5

    move-object v6, v0

    :goto_33
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_42

    new-instance v5, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$5;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v37, v5

    move-object/from16 v5, p4

    move-object/from16 v38, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v30

    move-object/from16 v17, p16

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$5;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v37

    move-object/from16 v0, v38

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_42
    return-void
.end method

.method public static final SearchBar-Y92LkZI(Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 36

    move/from16 v7, p1

    move/from16 v11, p11

    move/from16 v12, p12

    const/16 v0, 0x80

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x180

    const/16 v9, 0x100

    const/16 v4, 0x10

    const/16 v5, 0x20

    move-object/from16 v10, p10

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x561b9ac9

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v13, 0x1

    and-int/lit8 v6, v12, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v11, 0x6

    move-object/from16 v15, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v11, 0x6

    move-object/from16 v15, p0

    if-nez v6, :cond_2

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    or-int/2addr v6, v11

    goto :goto_1

    :cond_2
    move v6, v11

    :goto_1
    and-int/2addr v1, v12

    if-eqz v1, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v11, 0x30

    if-nez v1, :cond_5

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    or-int/2addr v6, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_6

    or-int/2addr v6, v3

    move-object/from16 v14, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v11, 0x180

    move-object/from16 v14, p2

    if-nez v1, :cond_8

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v9

    goto :goto_4

    :cond_7
    move v1, v0

    :goto_4
    or-int/2addr v6, v1

    :cond_8
    :goto_5
    and-int/lit8 v1, v12, 0x8

    if-eqz v1, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v2, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v2, v11, 0xc00

    if-nez v2, :cond_9

    move-object/from16 v2, p3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v6, v6, v16

    :goto_7
    and-int/lit16 v3, v11, 0x6000

    if-nez v3, :cond_e

    and-int/lit8 v3, v12, 0x10

    if-nez v3, :cond_c

    move-object/from16 v3, p4

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v3, p4

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v6, v6, v17

    goto :goto_9

    :cond_e
    move-object/from16 v3, p4

    :goto_9
    const/high16 v17, 0x30000

    and-int v17, v11, v17

    if-nez v17, :cond_10

    and-int/lit8 v17, v12, 0x20

    move-object/from16 v8, p5

    if-nez v17, :cond_f

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v17, 0x10000

    :goto_a
    or-int v6, v6, v17

    goto :goto_b

    :cond_10
    move-object/from16 v8, p5

    :goto_b
    and-int/lit8 v17, v12, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_11

    or-int v6, v6, v18

    move/from16 v5, p6

    goto :goto_d

    :cond_11
    and-int v18, v11, v18

    move/from16 v5, p6

    if-nez v18, :cond_13

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v19, 0x80000

    :goto_c
    or-int v6, v6, v19

    :cond_13
    :goto_d
    and-int/2addr v0, v12

    const/high16 v19, 0xc00000

    if-eqz v0, :cond_14

    or-int v6, v6, v19

    move/from16 v4, p7

    goto :goto_f

    :cond_14
    and-int v19, v11, v19

    move/from16 v4, p7

    if-nez v19, :cond_16

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v20, 0x400000

    :goto_e
    or-int v6, v6, v20

    :cond_16
    :goto_f
    const/high16 v20, 0x6000000

    and-int v20, v11, v20

    if-nez v20, :cond_19

    and-int/lit16 v13, v12, 0x100

    if-nez v13, :cond_17

    move-object/from16 v13, p8

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_17
    move-object/from16 v13, p8

    :cond_18
    const/high16 v20, 0x2000000

    :goto_10
    or-int v6, v6, v20

    goto :goto_11

    :cond_19
    move-object/from16 v13, p8

    :goto_11
    and-int/lit16 v9, v12, 0x200

    const/high16 v21, 0x30000000

    if-eqz v9, :cond_1b

    or-int v6, v6, v21

    :cond_1a
    move-object/from16 v9, p9

    goto :goto_13

    :cond_1b
    and-int v9, v11, v21

    if-nez v9, :cond_1a

    move-object/from16 v9, p9

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    const/high16 v21, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v21, 0x10000000

    :goto_12
    or-int v6, v6, v21

    :goto_13
    const v21, 0x12492493

    and-int v2, v6, v21

    const v3, 0x12492492

    if-ne v2, v3, :cond_1e

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_14

    :cond_1d
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v31, v5

    move-object v6, v8

    move-object v9, v13

    move-object/from16 v5, p4

    move v8, v4

    move-object/from16 v4, p3

    goto/16 :goto_24

    :cond_1e
    :goto_14
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/16 v21, 0x1

    and-int/lit8 v2, v11, 0x1

    const v3, -0xe000001

    const v22, -0x70001

    const v23, -0xe001

    if-eqz v2, :cond_23

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x10

    and-int/2addr v0, v12

    if-eqz v0, :cond_20

    and-int v6, v6, v23

    :cond_20
    const/16 v0, 0x20

    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_21

    and-int v6, v6, v22

    :cond_21
    const/16 v0, 0x100

    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_22

    and-int/2addr v6, v3

    :cond_22
    move-object/from16 v29, p4

    move/from16 v32, v4

    move/from16 v31, v5

    move-object/from16 v30, v8

    move-object/from16 v33, v13

    move-object/from16 v8, p3

    :goto_15
    move v13, v6

    goto/16 :goto_1e

    :cond_23
    :goto_16
    if-eqz v1, :cond_24

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_17
    const/16 v2, 0x10

    goto :goto_18

    :cond_24
    move-object/from16 v1, p3

    goto :goto_17

    :goto_18
    and-int/2addr v2, v12

    if-eqz v2, :cond_25

    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int v6, v6, v23

    :goto_19
    const/16 v18, 0x20

    goto :goto_1a

    :cond_25
    move-object/from16 v2, p4

    goto :goto_19

    :goto_1a
    and-int/lit8 v19, v12, 0x20

    if-eqz v19, :cond_26

    sget-object v8, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    move-object/from16 p3, v1

    const/4 v1, 0x3

    const/16 v8, 0x180

    invoke-static {v3, v4, v10, v8, v1}, Landroidx/compose/material3/SearchBarDefaults;->colors-dgg9oW8(JLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v3

    and-int v1, v6, v22

    move v6, v1

    goto :goto_1b

    :cond_26
    move-object/from16 p3, v1

    move-object v3, v8

    :goto_1b
    if-eqz v17, :cond_27

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/SearchBarDefaults;->TonalElevation:F

    move v5, v1

    :cond_27
    if-eqz v0, :cond_28

    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/SearchBarDefaults;->ShadowElevation:F

    :goto_1c
    const/16 v1, 0x100

    goto :goto_1d

    :cond_28
    move/from16 v0, p7

    goto :goto_1c

    :goto_1d
    and-int/lit16 v4, v12, 0x100

    if-eqz v4, :cond_29

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    sget-object v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->Companion:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v1

    const v4, -0xe000001

    and-int/2addr v6, v4

    iget-object v1, v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->statusBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-object/from16 v8, p3

    move/from16 v32, v0

    move-object/from16 v33, v1

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move/from16 v31, v5

    goto :goto_15

    :cond_29
    move-object/from16 v8, p3

    move/from16 v32, v0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move/from16 v31, v5

    move-object/from16 v33, v13

    goto/16 :goto_15

    :goto_1e
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v6, :cond_2b

    if-eqz v7, :cond_2a

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1f

    :cond_2a
    const/4 v0, 0x0

    :goto_1f
    const v1, 0x3c23d70a    # 0.01f

    invoke-static {v0, v1}, Landroidx/compose/animation/core/AnimatableKt;->Animatable(FF)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    move-object v5, v0

    check-cast v5, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_2c

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2c
    move-object/from16 v25, v0

    check-cast v25, Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, v6, :cond_2d

    sget-object v0, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2d
    move-object/from16 v26, v0

    check-cast v26, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_2e

    sget-object v0, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2e
    move-object/from16 v27, v0

    check-cast v27, Landroidx/compose/runtime/MutableState;

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v1, v13, 0x70

    const/4 v3, 0x0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2f

    move/from16 v1, v21

    goto :goto_20

    :cond_2f
    move v1, v3

    :goto_20
    or-int/2addr v0, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_31

    if-ne v1, v6, :cond_30

    goto :goto_21

    :cond_30
    move-object/from16 v35, v4

    move-object v9, v5

    move-object v11, v6

    goto :goto_22

    :cond_31
    :goto_21
    new-instance v2, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$1$1;

    const/16 v16, 0x0

    move-object v0, v2

    move-object v1, v5

    move-object/from16 v34, v2

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v35, v4

    move-object/from16 v4, v26

    move-object v9, v5

    move-object/from16 v5, v27

    move-object v11, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$1$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_22
    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x3

    shr-int/lit8 v2, v13, 0x3

    and-int/lit8 v0, v2, 0xe

    move-object/from16 v2, v35

    invoke-static {v10, v2, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_32

    new-instance v1, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {v1}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_32
    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/foundation/MutatorMutex;

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit16 v2, v13, 0x380

    const/16 v3, 0x100

    if-ne v2, v3, :cond_33

    goto :goto_23

    :cond_33
    const/16 v21, 0x0

    :goto_23
    or-int v1, v1, v21

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_34

    if-ne v2, v11, :cond_35

    :cond_34
    new-instance v2, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1;

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v25

    move-object/from16 v19, v9

    move-object/from16 v20, p2

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    invoke-direct/range {v16 .. v23}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1;-><init>(Landroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_35
    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    invoke-static {v7, v2, v10, v0, v1}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x3

    shl-int/lit8 v0, v13, 0x3

    const v1, 0xe000

    and-int/2addr v0, v1

    const/16 v1, 0xdb8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v13, 0xf

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v13, 0x6

    const/high16 v2, 0x380000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v13, 0x18

    and-int/lit8 v1, v1, 0x7e

    const/16 v28, 0x0

    move-object v13, v9

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    move-object/from16 v17, v8

    move-object/from16 v18, p0

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move/from16 v21, v31

    move/from16 v22, v32

    move-object/from16 v23, v33

    move-object/from16 v24, p9

    move-object/from16 v25, v10

    move/from16 v26, v0

    move/from16 v27, v1

    invoke-static/range {v13 .. v28}, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarImpl-j1jLAyQ(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    move-object v4, v8

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move/from16 v8, v32

    move-object/from16 v9, v33

    :goto_24
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_36

    new-instance v14, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v7, v31

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$3;-><init>(Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_36
    return-void
.end method

.method public static final SearchBarImpl-j1jLAyQ(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 29

    move-object/from16 v11, p0

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v15, p15

    const/16 v1, 0x100

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/16 v4, 0x180

    const/16 v6, 0x80

    move-object/from16 v14, p12

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x1a3ef4c1

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v15, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eqz v8, :cond_0

    or-int/lit8 v8, v13, 0x6

    goto :goto_2

    :cond_0
    and-int/lit8 v8, v13, 0x6

    if-nez v8, :cond_3

    and-int/lit8 v8, v13, 0x8

    if-nez v8, :cond_1

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_0

    :cond_1
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    :goto_0
    if-eqz v8, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    or-int/2addr v8, v13

    goto :goto_2

    :cond_3
    move v8, v13

    :goto_2
    and-int/lit8 v16, v15, 0x2

    if-eqz v16, :cond_4

    or-int/lit8 v8, v8, 0x30

    move-object/from16 v7, p1

    goto :goto_4

    :cond_4
    and-int/lit8 v16, v13, 0x30

    move-object/from16 v7, p1

    if-nez v16, :cond_6

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 v16, v3

    goto :goto_3

    :cond_5
    move/from16 v16, v2

    :goto_3
    or-int v8, v8, v16

    :cond_6
    :goto_4
    and-int/lit8 v16, v15, 0x4

    if-eqz v16, :cond_8

    or-int/2addr v8, v4

    :cond_7
    move-object/from16 v9, p2

    goto :goto_6

    :cond_8
    and-int/lit16 v9, v13, 0x180

    if-nez v9, :cond_7

    move-object/from16 v9, p2

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    move/from16 v17, v1

    goto :goto_5

    :cond_9
    move/from16 v17, v6

    :goto_5
    or-int v8, v8, v17

    :goto_6
    and-int/lit8 v17, v15, 0x8

    if-eqz v17, :cond_b

    or-int/lit16 v8, v8, 0xc00

    :cond_a
    move-object/from16 v10, p3

    goto :goto_8

    :cond_b
    and-int/lit16 v10, v13, 0xc00

    if-nez v10, :cond_a

    move-object/from16 v10, p3

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x800

    goto :goto_7

    :cond_c
    const/16 v18, 0x400

    :goto_7
    or-int v8, v8, v18

    :goto_8
    and-int/lit8 v18, v15, 0x10

    if-eqz v18, :cond_e

    or-int/lit16 v8, v8, 0x6000

    :cond_d
    move-object/from16 v2, p4

    goto :goto_a

    :cond_e
    and-int/lit16 v2, v13, 0x6000

    if-nez v2, :cond_d

    move-object/from16 v2, p4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x4000

    goto :goto_9

    :cond_f
    const/16 v20, 0x2000

    :goto_9
    or-int v8, v8, v20

    :goto_a
    and-int/lit8 v20, v15, 0x20

    const/high16 v21, 0x30000

    if-eqz v20, :cond_10

    or-int v8, v8, v21

    move-object/from16 v4, p5

    goto :goto_c

    :cond_10
    and-int v20, v13, v21

    move-object/from16 v4, p5

    if-nez v20, :cond_12

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    const/high16 v21, 0x20000

    goto :goto_b

    :cond_11
    const/high16 v21, 0x10000

    :goto_b
    or-int v8, v8, v21

    :cond_12
    :goto_c
    const/high16 v21, 0x180000

    and-int v22, v13, v21

    if-nez v22, :cond_14

    and-int/lit8 v22, v15, 0x40

    move-object/from16 v3, p6

    if-nez v22, :cond_13

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    const/high16 v23, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v23, 0x80000

    :goto_d
    or-int v8, v8, v23

    goto :goto_e

    :cond_14
    move-object/from16 v3, p6

    :goto_e
    const/high16 v23, 0xc00000

    and-int v23, v13, v23

    if-nez v23, :cond_17

    and-int/lit16 v0, v15, 0x80

    if-nez v0, :cond_15

    move-object/from16 v0, p7

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    const/high16 v24, 0x800000

    goto :goto_f

    :cond_15
    move-object/from16 v0, p7

    :cond_16
    const/high16 v24, 0x400000

    :goto_f
    or-int v8, v8, v24

    goto :goto_10

    :cond_17
    move-object/from16 v0, p7

    :goto_10
    and-int/2addr v1, v15

    const/high16 v24, 0x6000000

    if-eqz v1, :cond_18

    or-int v8, v8, v24

    move/from16 v6, p8

    goto :goto_12

    :cond_18
    and-int v24, v13, v24

    move/from16 v6, p8

    if-nez v24, :cond_1a

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_19

    const/high16 v25, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v25, 0x2000000

    :goto_11
    or-int v8, v8, v25

    :cond_1a
    :goto_12
    and-int/lit16 v5, v15, 0x200

    const/high16 v26, 0x30000000

    if-eqz v5, :cond_1b

    or-int v8, v8, v26

    move/from16 v0, p9

    goto :goto_14

    :cond_1b
    and-int v26, v13, v26

    move/from16 v0, p9

    if-nez v26, :cond_1d

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_1c

    const/high16 v26, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v26, 0x10000000

    :goto_13
    or-int v8, v8, v26

    :cond_1d
    :goto_14
    and-int/lit8 v26, p14, 0x6

    if-nez v26, :cond_1f

    const/16 v0, 0x400

    and-int/lit16 v2, v15, 0x400

    move-object/from16 v0, p10

    if-nez v2, :cond_1e

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v16, 0x4

    goto :goto_15

    :cond_1e
    const/16 v16, 0x2

    :goto_15
    or-int v2, p14, v16

    :goto_16
    const/16 v0, 0x800

    goto :goto_17

    :cond_1f
    move-object/from16 v0, p10

    move/from16 v2, p14

    goto :goto_16

    :goto_17
    and-int/2addr v0, v15

    if-eqz v0, :cond_20

    or-int/lit8 v2, v2, 0x30

    goto :goto_19

    :cond_20
    and-int/lit8 v0, p14, 0x30

    if-nez v0, :cond_22

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v19, 0x20

    goto :goto_18

    :cond_21
    const/16 v19, 0x10

    :goto_18
    or-int v2, v2, v19

    :cond_22
    :goto_19
    const v0, 0x12492493

    and-int/2addr v0, v8

    const v3, 0x12492492

    if-ne v0, v3, :cond_24

    and-int/lit8 v0, v2, 0x13

    const/16 v3, 0x12

    if-ne v0, v3, :cond_24

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_1a

    :cond_23
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v18, p10

    move v9, v6

    goto/16 :goto_28

    :cond_24
    :goto_1a
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v0, 0x1

    and-int/lit8 v3, v13, 0x1

    const v16, -0x1c00001

    const v17, -0x380001

    if-eqz v3, :cond_29

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_1b

    :cond_25
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v1, v15, 0x40

    if-eqz v1, :cond_26

    and-int v8, v8, v17

    :cond_26
    const/16 v1, 0x80

    and-int/2addr v1, v15

    if-eqz v1, :cond_27

    and-int v8, v8, v16

    :cond_27
    const/16 v1, 0x400

    and-int/2addr v1, v15

    if-eqz v1, :cond_28

    and-int/lit8 v2, v2, -0xf

    :cond_28
    move-object/from16 v16, p4

    move/from16 v4, p9

    move-object/from16 v18, p10

    move v5, v6

    move v0, v8

    move-object/from16 v8, p6

    move-object/from16 v6, p7

    goto/16 :goto_23

    :cond_29
    :goto_1b
    if-eqz v18, :cond_2a

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1c

    :cond_2a
    move-object/from16 v3, p4

    :goto_1c
    and-int/lit8 v18, v15, 0x40

    if-eqz v18, :cond_2b

    sget-object v18, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v18

    and-int v8, v8, v17

    :goto_1d
    const/16 v0, 0x80

    goto :goto_1e

    :cond_2b
    move-object/from16 v18, p6

    goto :goto_1d

    :goto_1e
    and-int/2addr v0, v15

    if-eqz v0, :cond_2c

    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p4, v3

    const-wide/16 v3, 0x0

    const/4 v0, 0x3

    const/16 v6, 0x180

    invoke-static {v3, v4, v14, v6, v0}, Landroidx/compose/material3/SearchBarDefaults;->colors-dgg9oW8(JLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v3

    and-int v0, v8, v16

    move v8, v0

    goto :goto_1f

    :cond_2c
    move-object/from16 p4, v3

    move-object/from16 v3, p7

    :goto_1f
    if-eqz v1, :cond_2d

    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/SearchBarDefaults;->TonalElevation:F

    goto :goto_20

    :cond_2d
    move/from16 v0, p8

    :goto_20
    if-eqz v5, :cond_2e

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/SearchBarDefaults;->ShadowElevation:F

    :goto_21
    const/16 v4, 0x400

    goto :goto_22

    :cond_2e
    move/from16 v1, p9

    goto :goto_21

    :goto_22
    and-int/2addr v4, v15

    if-eqz v4, :cond_2f

    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    sget-object v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->Companion:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v4

    and-int/lit8 v2, v2, -0xf

    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->statusBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-object/from16 v16, p4

    move v5, v0

    move-object v6, v3

    move v0, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v4

    move v4, v1

    goto :goto_23

    :cond_2f
    move-object/from16 v16, p4

    move v5, v0

    move v4, v1

    move-object v6, v3

    move v0, v8

    move-object/from16 v8, v18

    move-object/from16 v18, p10

    :goto_23
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    sget-object v3, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    sget-object v19, Landroidx/compose/material3/tokens/SearchViewTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchViewTokens;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/material3/tokens/SearchViewTokens;->FullScreenContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v7, v14}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    move-object/from16 p4, v7

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v9, :cond_30

    sget-object v7, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    new-instance v10, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$useFullScreenShape$2$1;

    invoke-direct {v10, v11}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$useFullScreenShape$2$1;-><init>(Landroidx/compose/animation/core/Animatable;)V

    invoke-static {v7, v10}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v7, Landroidx/compose/runtime/State;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    const/high16 v19, 0x380000

    and-int v20, v0, v19

    xor-int v13, v20, v21

    const/high16 v15, 0x100000

    if-le v13, v15, :cond_31

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_32

    :cond_31
    and-int v13, v0, v21

    if-ne v13, v15, :cond_33

    :cond_32
    const/4 v13, 0x1

    goto :goto_24

    :cond_33
    const/4 v13, 0x0

    :goto_24
    or-int/2addr v10, v13

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_34

    if-ne v13, v9, :cond_37

    :cond_34
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    new-instance v7, Landroidx/compose/foundation/shape/GenericShape;

    new-instance v3, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$animatedShape$1$1;

    invoke-direct {v3, v1, v11}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$animatedShape$1$1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/Animatable;)V

    invoke-direct {v7, v3}, Landroidx/compose/foundation/shape/GenericShape;-><init>(Lkotlin/jvm/functions/Function3;)V

    goto :goto_25

    :cond_35
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_36

    move-object/from16 v7, p4

    goto :goto_25

    :cond_36
    move-object v7, v8

    :goto_25
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v13, v7

    :cond_37
    check-cast v13, Landroidx/compose/ui/graphics/Shape;

    new-instance v1, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;

    invoke-direct {v1, v13, v6, v5, v4}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FF)V

    const v3, -0xa2a2596

    invoke-static {v3, v14, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_38

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    new-instance v3, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$showContent$2$1;

    invoke-direct {v3, v11}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$showContent$2$1;-><init>(Landroidx/compose/animation/core/Animatable;)V

    invoke-static {v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_38
    check-cast v1, Landroidx/compose/runtime/State;

    const v3, -0x5d6a58ca

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$wrappedContent$1;

    invoke-direct {v1, v11, v6, v12}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$wrappedContent$1;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/SearchBarColors;Lkotlin/jvm/functions/Function3;)V

    const v3, 0x8cfeaec

    invoke-static {v3, v14, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    :goto_26
    move-object v9, v1

    const/4 v1, 0x0

    goto :goto_27

    :cond_39
    const/4 v1, 0x0

    goto :goto_26

    :goto_27
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit8 v1, v0, 0xe

    const v3, 0xc00008

    or-int/2addr v1, v3

    and-int/lit8 v3, v0, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x1c00

    or-int/2addr v1, v3

    const v3, 0xe000

    and-int/2addr v3, v0

    or-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0xf

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x3

    shl-int/2addr v0, v2

    and-int v0, v0, v19

    or-int v10, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v13, v4

    move-object/from16 v4, v16

    move v15, v5

    move-object/from16 v5, v18

    move-object/from16 v17, v6

    move-object/from16 v6, p5

    move-object/from16 v19, v8

    move-object v8, v9

    move-object v9, v14

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarLayout(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move v10, v13

    move v9, v15

    move-object/from16 v5, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v19

    :goto_28
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_3a

    new-instance v14, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v11, v18

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object/from16 v27, v14

    move/from16 v14, p14

    move-object/from16 v28, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$1;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v27

    move-object/from16 v0, v28

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3a
    return-void
.end method

.method public static final SearchBarLayout(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p10

    move-object/from16 v13, p9

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x42c90fc

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v12, 0x6

    if-nez v0, :cond_2

    and-int/lit8 v0, v12, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v12

    goto :goto_2

    :cond_2
    move v0, v12

    :goto_2
    and-int/lit8 v2, v12, 0x30

    move-object/from16 v14, p1

    if-nez v2, :cond_4

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_3

    :cond_3
    const/16 v2, 0x10

    :goto_3
    or-int/2addr v0, v2

    :cond_4
    and-int/lit16 v2, v12, 0x180

    move-object/from16 v15, p2

    if-nez v2, :cond_6

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_4

    :cond_5
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v0, v2

    :cond_6
    and-int/lit16 v2, v12, 0xc00

    if-nez v2, :cond_8

    move-object/from16 v2, p3

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x800

    goto :goto_5

    :cond_7
    const/16 v16, 0x400

    :goto_5
    or-int v0, v0, v16

    goto :goto_6

    :cond_8
    move-object/from16 v2, p3

    :goto_6
    and-int/lit16 v4, v12, 0x6000

    if-nez v4, :cond_a

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x4000

    goto :goto_7

    :cond_9
    const/16 v4, 0x2000

    :goto_7
    or-int/2addr v0, v4

    :cond_a
    const/high16 v4, 0x30000

    and-int/2addr v4, v12

    if-nez v4, :cond_c

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x20000

    goto :goto_8

    :cond_b
    const/high16 v4, 0x10000

    :goto_8
    or-int/2addr v0, v4

    :cond_c
    const/high16 v4, 0x180000

    and-int/2addr v4, v12

    if-nez v4, :cond_e

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/high16 v4, 0x100000

    goto :goto_9

    :cond_d
    const/high16 v4, 0x80000

    :goto_9
    or-int/2addr v0, v4

    :cond_e
    const/high16 v4, 0xc00000

    and-int/2addr v4, v12

    if-nez v4, :cond_10

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/high16 v4, 0x800000

    goto :goto_a

    :cond_f
    const/high16 v4, 0x400000

    :goto_a
    or-int/2addr v0, v4

    :cond_10
    const/high16 v4, 0x6000000

    and-int/2addr v4, v12

    if-nez v4, :cond_12

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/high16 v4, 0x4000000

    goto :goto_b

    :cond_11
    const/high16 v4, 0x2000000

    :goto_b
    or-int/2addr v0, v4

    :cond_12
    move v4, v0

    const v0, 0x2492493

    and-int/2addr v0, v4

    const v5, 0x2492492

    if-ne v0, v5, :cond_14

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1a

    :cond_14
    :goto_c
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v5, :cond_15

    new-instance v0, Landroidx/compose/material3/internal/MutableWindowInsets;

    invoke-direct {v0, v1, v3, v1}, Landroidx/compose/material3/internal/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v0, Landroidx/compose/material3/internal/MutableWindowInsets;

    new-instance v1, Landroidx/compose/ui/ZIndexElement;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3}, Landroidx/compose/ui/ZIndexElement;-><init>(F)V

    invoke-interface {v7, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v3, 0x70000

    and-int/2addr v3, v4

    const/high16 v7, 0x20000

    if-ne v3, v7, :cond_16

    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_17

    if-ne v7, v5, :cond_18

    :cond_17
    new-instance v7, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$1$1;

    invoke-direct {v7, v0, v8}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$1$1;-><init>(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    and-int/lit8 v1, v4, 0xe

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1a

    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_19

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_e

    :cond_19
    const/4 v1, 0x0

    goto :goto_f

    :cond_1a
    :goto_e
    const/4 v1, 0x1

    :goto_f
    and-int/lit16 v3, v4, 0x1c00

    move-object/from16 v18, v0

    const/16 v0, 0x800

    if-ne v3, v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_10

    :cond_1b
    const/4 v0, 0x0

    :goto_10
    or-int/2addr v0, v1

    and-int/lit8 v1, v4, 0x70

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1c

    const/4 v1, 0x1

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    :goto_11
    or-int/2addr v0, v1

    and-int/lit16 v1, v4, 0x380

    const/16 v3, 0x100

    if-ne v1, v3, :cond_1d

    const/4 v1, 0x1

    goto :goto_12

    :cond_1d
    const/4 v1, 0x0

    :goto_12
    or-int/2addr v0, v1

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1f

    if-ne v1, v5, :cond_1e

    goto :goto_13

    :cond_1e
    move/from16 v17, v4

    const/16 v16, 0x0

    goto :goto_14

    :cond_1f
    :goto_13
    new-instance v5, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;

    move-object/from16 v3, v18

    move-object v0, v5

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    const/4 v6, 0x1

    move-object/from16 v3, p3

    move/from16 v17, v4

    move-object/from16 v4, p1

    move-object v6, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v6

    :goto_14
    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    iget v0, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v13, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v5, v13, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_31

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_20

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_20
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_15
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_21

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    :cond_21
    invoke-static {v0, v13, v0, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_22
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v7, "Surface"

    invoke-static {v3, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v12, 0x1

    invoke-static {v8, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    iget v12, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v13, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v5, :cond_30

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_23

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_23
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_16
    invoke-static {v13, v14, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v11, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v11, :cond_24

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25

    :cond_24
    invoke-static {v12, v13, v12, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_25
    invoke-static {v13, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v7, v17, 0x15

    and-int/lit8 v7, v7, 0xe

    const/4 v11, 0x1

    invoke-static {v7, v10, v13, v11}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    const-string v7, "InputField"

    invoke-static {v3, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v8, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget v11, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v13, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v5, :cond_2f

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v15, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v15, :cond_26

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    :cond_26
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_17
    invoke-static {v13, v12, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v14, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v12, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_27

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    :cond_27
    invoke-static {v11, v13, v11, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_28
    invoke-static {v13, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v7, v17, 0x12

    and-int/lit8 v7, v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v13, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v11, -0x41ff0f61

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v11, p8

    if-nez v11, :cond_29

    move v0, v7

    const/4 v1, 0x0

    goto :goto_19

    :cond_29
    const-string v12, "Content"

    invoke-static {v3, v12}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    iget v7, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v13, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v5, :cond_2e

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_2a

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    :cond_2a
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_18
    invoke-static {v13, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_2b

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    :cond_2b
    invoke-static {v7, v13, v7, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2c
    invoke-static {v13, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v11, v13, v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_19
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1a
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_2d

    new-instance v13, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$4;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$4;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void

    :cond_2e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_2f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_30
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_31
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16
.end method
