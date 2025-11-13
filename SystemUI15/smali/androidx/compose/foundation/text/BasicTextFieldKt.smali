.class public abstract Landroidx/compose/foundation/text/BasicTextFieldKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x28

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v0, v0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    return-void
.end method

.method public static final BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v15, p17

    move/from16 v14, p18

    move/from16 v13, p19

    const/16 v8, 0x80

    const/16 v9, 0x100

    const/16 v10, 0x10

    const/16 v11, 0x20

    move-object/from16 v12, p16

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x3857730f

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v0, 0x1

    and-int/lit8 v17, v13, 0x1

    const/4 v3, 0x4

    const/16 v19, 0x2

    if-eqz v17, :cond_0

    or-int/lit8 v17, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v17, v15, 0x6

    if-nez v17, :cond_2

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move/from16 v17, v3

    goto :goto_0

    :cond_1
    move/from16 v17, v19

    :goto_0
    or-int v17, v15, v17

    goto :goto_1

    :cond_2
    move/from16 v17, v15

    :goto_1
    and-int/lit8 v20, v13, 0x2

    if-eqz v20, :cond_4

    or-int/lit8 v17, v17, 0x30

    :cond_3
    :goto_2
    move/from16 v0, v17

    goto :goto_4

    :cond_4
    and-int/lit8 v20, v15, 0x30

    if-nez v20, :cond_3

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move/from16 v20, v11

    goto :goto_3

    :cond_5
    move/from16 v20, v10

    :goto_3
    or-int v17, v17, v20

    goto :goto_2

    :goto_4
    and-int/lit8 v17, v13, 0x4

    if-eqz v17, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v3, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v3, v15, 0x180

    if-nez v3, :cond_6

    move-object/from16 v3, p2

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move/from16 v21, v9

    goto :goto_5

    :cond_8
    move/from16 v21, v8

    :goto_5
    or-int v0, v0, v21

    :goto_6
    and-int/lit8 v21, v13, 0x8

    if-eqz v21, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v5, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v5, v15, 0xc00

    if-nez v5, :cond_9

    move/from16 v5, p3

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_b

    const/16 v23, 0x800

    goto :goto_7

    :cond_b
    const/16 v23, 0x400

    :goto_7
    or-int v0, v0, v23

    :goto_8
    and-int/lit8 v23, v13, 0x10

    if-eqz v23, :cond_d

    or-int/lit16 v0, v0, 0x6000

    :cond_c
    move/from16 v10, p4

    goto :goto_a

    :cond_d
    and-int/lit16 v10, v15, 0x6000

    if-nez v10, :cond_c

    move/from16 v10, p4

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_e

    const/16 v25, 0x4000

    goto :goto_9

    :cond_e
    const/16 v25, 0x2000

    :goto_9
    or-int v0, v0, v25

    :goto_a
    and-int/lit8 v25, v13, 0x20

    const/high16 v26, 0x10000

    const/high16 v27, 0x20000

    const/high16 v28, 0x30000

    if-eqz v25, :cond_f

    or-int v0, v0, v28

    move-object/from16 v11, p5

    goto :goto_c

    :cond_f
    and-int v29, v15, v28

    move-object/from16 v11, p5

    if-nez v29, :cond_11

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    move/from16 v30, v27

    goto :goto_b

    :cond_10
    move/from16 v30, v26

    :goto_b
    or-int v0, v0, v30

    :cond_11
    :goto_c
    and-int/lit8 v30, v13, 0x40

    const/high16 v31, 0x180000

    if-eqz v30, :cond_12

    or-int v0, v0, v31

    move-object/from16 v4, p6

    goto :goto_e

    :cond_12
    and-int v31, v15, v31

    move-object/from16 v4, p6

    if-nez v31, :cond_14

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    const/high16 v32, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v32, 0x80000

    :goto_d
    or-int v0, v0, v32

    :cond_14
    :goto_e
    and-int/lit16 v7, v13, 0x80

    const/high16 v33, 0xc00000

    if-eqz v7, :cond_15

    or-int v0, v0, v33

    move-object/from16 v8, p7

    goto :goto_10

    :cond_15
    and-int v33, v15, v33

    move-object/from16 v8, p7

    if-nez v33, :cond_17

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    const/high16 v34, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v34, 0x400000

    :goto_f
    or-int v0, v0, v34

    :cond_17
    :goto_10
    and-int/lit16 v6, v13, 0x100

    const/high16 v35, 0x6000000

    if-eqz v6, :cond_18

    or-int v0, v0, v35

    move/from16 v9, p8

    goto :goto_12

    :cond_18
    and-int v35, v15, v35

    move/from16 v9, p8

    if-nez v35, :cond_1a

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v36

    if-eqz v36, :cond_19

    const/high16 v36, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v36, 0x2000000

    :goto_11
    or-int v0, v0, v36

    :cond_1a
    :goto_12
    const/high16 v36, 0x30000000

    and-int v36, v15, v36

    if-nez v36, :cond_1d

    and-int/lit16 v3, v13, 0x200

    if-nez v3, :cond_1b

    move/from16 v3, p9

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v36

    if-eqz v36, :cond_1c

    const/high16 v36, 0x20000000

    goto :goto_13

    :cond_1b
    move/from16 v3, p9

    :cond_1c
    const/high16 v36, 0x10000000

    :goto_13
    or-int v0, v0, v36

    :goto_14
    const/16 v3, 0x400

    goto :goto_15

    :cond_1d
    move/from16 v3, p9

    goto :goto_14

    :goto_15
    and-int/lit16 v4, v13, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v19, v14, 0x6

    :goto_16
    const/16 v3, 0x800

    goto :goto_17

    :cond_1e
    and-int/lit8 v34, v14, 0x6

    move/from16 v3, p10

    if-nez v34, :cond_20

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v36

    if-eqz v36, :cond_1f

    const/16 v19, 0x4

    :cond_1f
    or-int v19, v14, v19

    goto :goto_16

    :cond_20
    move/from16 v19, v14

    goto :goto_16

    :goto_17
    and-int/lit16 v5, v13, 0x800

    if-eqz v5, :cond_22

    or-int/lit8 v19, v19, 0x30

    :cond_21
    :goto_18
    move/from16 v3, v19

    goto :goto_1a

    :cond_22
    and-int/lit8 v32, v14, 0x30

    move-object/from16 v3, p11

    if-nez v32, :cond_21

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_23

    const/16 v24, 0x20

    goto :goto_19

    :cond_23
    const/16 v24, 0x10

    :goto_19
    or-int v19, v19, v24

    goto :goto_18

    :goto_1a
    and-int/lit16 v8, v13, 0x1000

    if-eqz v8, :cond_24

    or-int/lit16 v3, v3, 0x180

    :goto_1b
    const/16 v9, 0x2000

    goto :goto_1d

    :cond_24
    and-int/lit16 v9, v14, 0x180

    if-nez v9, :cond_26

    move-object/from16 v9, p12

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    const/16 v33, 0x100

    goto :goto_1c

    :cond_25
    const/16 v33, 0x80

    :goto_1c
    or-int v3, v3, v33

    goto :goto_1b

    :cond_26
    move-object/from16 v9, p12

    goto :goto_1b

    :goto_1d
    and-int/lit16 v10, v13, 0x2000

    if-eqz v10, :cond_27

    or-int/lit16 v3, v3, 0xc00

    :goto_1e
    const/16 v9, 0x4000

    goto :goto_20

    :cond_27
    and-int/lit16 v9, v14, 0xc00

    if-nez v9, :cond_29

    move-object/from16 v9, p13

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    const/16 v32, 0x800

    goto :goto_1f

    :cond_28
    const/16 v32, 0x400

    :goto_1f
    or-int v3, v3, v32

    goto :goto_1e

    :cond_29
    move-object/from16 v9, p13

    goto :goto_1e

    :goto_20
    and-int/lit16 v11, v13, 0x4000

    if-eqz v11, :cond_2b

    or-int/lit16 v3, v3, 0x6000

    :cond_2a
    move-object/from16 v9, p14

    goto :goto_22

    :cond_2b
    and-int/lit16 v9, v14, 0x6000

    if-nez v9, :cond_2a

    move-object/from16 v9, p14

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    const/16 v31, 0x4000

    goto :goto_21

    :cond_2c
    const/16 v31, 0x2000

    :goto_21
    or-int v3, v3, v31

    :goto_22
    const v19, 0x8000

    and-int v19, v13, v19

    if-eqz v19, :cond_2d

    or-int v3, v3, v28

    move-object/from16 v9, p15

    goto :goto_23

    :cond_2d
    and-int v22, v14, v28

    move-object/from16 v9, p15

    if-nez v22, :cond_2f

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    move/from16 v26, v27

    :cond_2e
    or-int v3, v3, v26

    :cond_2f
    :goto_23
    const v22, 0x12492493

    and-int v9, v0, v22

    const v14, 0x12492492

    if-ne v9, v14, :cond_31

    const v9, 0x12493

    and-int/2addr v9, v3

    const v14, 0x12492

    if-ne v9, v14, :cond_31

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_30

    goto :goto_24

    :cond_30
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v36, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    goto/16 :goto_42

    :cond_31
    :goto_24
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v9, 0x1

    and-int/lit8 v14, v15, 0x1

    if-eqz v14, :cond_34

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v14

    if-eqz v14, :cond_32

    goto :goto_25

    :cond_32
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit16 v4, v13, 0x200

    if-eqz v4, :cond_33

    const v4, -0x70000001

    and-int/2addr v0, v4

    :cond_33
    move-object/from16 v14, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v36, p11

    move-object/from16 v37, p12

    move-object/from16 v38, p13

    move-object/from16 v39, p14

    move-object/from16 v40, p15

    goto/16 :goto_36

    :cond_34
    :goto_25
    if-eqz v17, :cond_35

    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_26

    :cond_35
    move-object/from16 v14, p2

    :goto_26
    if-eqz v21, :cond_36

    const/16 v17, 0x1

    goto :goto_27

    :cond_36
    move/from16 v17, p3

    :goto_27
    if-eqz v23, :cond_37

    const/16 v21, 0x0

    goto :goto_28

    :cond_37
    move/from16 v21, p4

    :goto_28
    if-eqz v25, :cond_38

    sget-object v23, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v23, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    goto :goto_29

    :cond_38
    move-object/from16 v23, p5

    :goto_29
    if-eqz v30, :cond_39

    sget-object v25, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v25, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    goto :goto_2a

    :cond_39
    move-object/from16 v25, p6

    :goto_2a
    if-eqz v7, :cond_3a

    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    goto :goto_2b

    :cond_3a
    move-object/from16 v7, p7

    :goto_2b
    if-eqz v6, :cond_3b

    const/4 v6, 0x0

    goto :goto_2c

    :cond_3b
    move/from16 v6, p8

    :goto_2c
    and-int/lit16 v9, v13, 0x200

    if-eqz v9, :cond_3d

    if-eqz v6, :cond_3c

    const/4 v9, 0x1

    :goto_2d
    const v22, -0x70000001

    goto :goto_2e

    :cond_3c
    const v9, 0x7fffffff

    goto :goto_2d

    :goto_2e
    and-int v0, v0, v22

    goto :goto_2f

    :cond_3d
    move/from16 v9, p9

    :goto_2f
    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_30

    :cond_3e
    move/from16 v4, p10

    :goto_30
    if-eqz v5, :cond_3f

    sget-object v5, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    goto :goto_31

    :cond_3f
    move-object/from16 v5, p11

    :goto_31
    if-eqz v8, :cond_40

    sget-object v8, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;

    goto :goto_32

    :cond_40
    move-object/from16 v8, p12

    :goto_32
    if-eqz v10, :cond_41

    const/4 v10, 0x0

    goto :goto_33

    :cond_41
    move-object/from16 v10, p13

    :goto_33
    if-eqz v11, :cond_42

    new-instance v11, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v22, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p2, v4

    move-object/from16 p3, v5

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    move/from16 p4, v0

    const/4 v0, 0x0

    invoke-direct {v11, v4, v5, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_34

    :cond_42
    move/from16 p4, v0

    move/from16 p2, v4

    move-object/from16 p3, v5

    const/4 v0, 0x0

    move-object/from16 v11, p14

    :goto_34
    if-eqz v19, :cond_43

    sget-object v4, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v36, p3

    move/from16 v0, p4

    move-object/from16 v40, v4

    :goto_35
    move-object/from16 v37, v8

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move/from16 v4, v17

    move/from16 v5, v21

    move/from16 v11, p2

    move-object v8, v7

    move v10, v9

    move-object/from16 v7, v25

    move v9, v6

    move-object/from16 v6, v23

    goto :goto_36

    :cond_43
    move-object/from16 v36, p3

    move/from16 v0, p4

    move-object/from16 v40, p15

    goto :goto_35

    :goto_36
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v17, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move/from16 p11, v10

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p12, v11

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v11, :cond_44

    new-instance v10, Landroidx/compose/ui/text/input/TextFieldValue;

    const-wide/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x6

    const/16 v23, 0x0

    move-object/from16 p2, v10

    move-object/from16 p3, p0

    move-wide/from16 p4, v21

    move-object/from16 p6, v17

    move/from16 p7, v19

    move-object/from16 p8, v23

    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v13, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v10, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_44
    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/input/TextFieldValue;

    move/from16 p13, v4

    move/from16 p14, v5

    iget-wide v4, v13, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    new-instance v15, Landroidx/compose/ui/text/input/TextFieldValue;

    new-instance v17, Landroidx/compose/ui/text/AnnotatedString;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 p2, v17

    move-object/from16 p3, p0

    move-object/from16 p4, v19

    move-object/from16 p5, v21

    move/from16 p6, v22

    move-object/from16 p7, v23

    invoke-direct/range {p2 .. p7}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v13, v13, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    move-object/from16 p2, v15

    move-object/from16 p3, v17

    move-wide/from16 p4, v4

    move-object/from16 p6, v13

    move-object/from16 p7, v19

    invoke-direct/range {p2 .. p7}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_45

    if-ne v5, v11, :cond_46

    :cond_45
    new-instance v5, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$7$1;

    invoke-direct {v5, v15, v10}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$7$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_46
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v12}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v4, v0, 0xe

    const/4 v5, 0x4

    if-ne v4, v5, :cond_47

    const/4 v4, 0x1

    goto :goto_37

    :cond_47
    const/4 v4, 0x0

    :goto_37
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_48

    if-ne v5, v11, :cond_49

    :cond_48
    sget-object v4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_49
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v27, Landroidx/compose/ui/text/input/ImeOptions;

    iget v4, v7, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    invoke-static {v4}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->box-impl(I)Landroidx/compose/ui/text/input/KeyboardCapitalization;

    move-result-object v4

    sget-object v13, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Unspecified:I

    iget v1, v4, Landroidx/compose/ui/text/input/KeyboardCapitalization;->value:I

    invoke-static {v1, v13}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_38

    :cond_4a
    const/4 v4, 0x0

    :goto_38
    if-eqz v4, :cond_4b

    iget v1, v4, Landroidx/compose/ui/text/input/KeyboardCapitalization;->value:I

    goto :goto_39

    :cond_4b
    const/4 v1, 0x0

    :goto_39
    iget-object v4, v7, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrectEnabled:Ljava/lang/Boolean;

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_3a

    :cond_4c
    const/4 v4, 0x1

    :goto_3a
    iget v13, v7, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    invoke-static {v13}, Landroidx/compose/ui/text/input/KeyboardType;->box-impl(I)Landroidx/compose/ui/text/input/KeyboardType;

    move-result-object v13

    sget-object v17, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p15, v8

    iget v8, v13, Landroidx/compose/ui/text/input/KeyboardType;->value:I

    move-object/from16 p2, v13

    const/4 v13, 0x0

    invoke-static {v8, v13}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v8

    if-nez v8, :cond_4d

    move-object/from16 v8, p2

    goto :goto_3b

    :cond_4d
    const/4 v8, 0x0

    :goto_3b
    if-eqz v8, :cond_4e

    iget v8, v8, Landroidx/compose/ui/text/input/KeyboardType;->value:I

    goto :goto_3c

    :cond_4e
    sget v8, Landroidx/compose/ui/text/input/KeyboardType;->Text:I

    :goto_3c
    iget v13, v7, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    invoke-static {v13}, Landroidx/compose/ui/text/input/ImeAction;->box-impl(I)Landroidx/compose/ui/text/input/ImeAction;

    move-result-object v13

    sget-object v17, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v41, v6

    sget v6, Landroidx/compose/ui/text/input/ImeAction;->Unspecified:I

    move-object/from16 v42, v14

    iget v14, v13, Landroidx/compose/ui/text/input/ImeAction;->value:I

    invoke-static {v14, v6}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_3d

    :cond_4f
    const/4 v13, 0x0

    :goto_3d
    if-eqz v13, :cond_50

    iget v6, v13, Landroidx/compose/ui/text/input/ImeAction;->value:I

    goto :goto_3e

    :cond_50
    sget v6, Landroidx/compose/ui/text/input/ImeAction;->Default:I

    :goto_3e
    iget-object v13, v7, Landroidx/compose/foundation/text/KeyboardOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    if-nez v13, :cond_51

    sget-object v13, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    :cond_51
    iget-object v14, v7, Landroidx/compose/foundation/text/KeyboardOptions;->platformImeOptions:Landroidx/compose/ui/text/input/PlatformImeOptions;

    move-object/from16 p2, v27

    move/from16 p3, v9

    move/from16 p4, v1

    move/from16 p5, v4

    move/from16 p6, v8

    move/from16 p7, v6

    move-object/from16 p8, v14

    move-object/from16 p9, v13

    const/4 v1, 0x0

    move-object/from16 p10, v1

    invoke-direct/range {p2 .. p10}, Landroidx/compose/ui/text/input/ImeOptions;-><init>(ZIZIILandroidx/compose/ui/text/input/PlatformImeOptions;Landroidx/compose/ui/text/intl/LocaleList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    xor-int/lit8 v4, v9, 0x1

    if-eqz v9, :cond_52

    move/from16 v26, v1

    goto :goto_3f

    :cond_52
    move/from16 v26, p12

    :goto_3f
    if-eqz v9, :cond_53

    move/from16 v25, v1

    goto :goto_40

    :cond_53
    move/from16 v25, p11

    :goto_40
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    and-int/lit8 v8, v0, 0x70

    const/16 v13, 0x20

    if-ne v8, v13, :cond_54

    goto :goto_41

    :cond_54
    const/4 v1, 0x0

    :goto_41
    or-int/2addr v1, v6

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_55

    if-ne v6, v11, :cond_56

    :cond_55
    new-instance v6, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;

    invoke-direct {v6, v2, v10, v5}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_56
    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v1, v0, 0x380

    shr-int/lit8 v5, v0, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v1, v5

    shl-int/lit8 v5, v3, 0x9

    const v6, 0xe000

    and-int v8, v5, v6

    or-int/2addr v1, v8

    const/high16 v6, 0x70000

    and-int v8, v5, v6

    or-int/2addr v1, v8

    const/high16 v6, 0x380000

    and-int/2addr v6, v5

    or-int/2addr v1, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v5, v6

    or-int v33, v1, v5

    shr-int/lit8 v1, v0, 0xf

    and-int/lit16 v1, v1, 0x380

    and-int/lit16 v5, v0, 0x1c00

    or-int/2addr v1, v5

    const v5, 0xe000

    and-int/2addr v0, v5

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v3

    or-int v34, v0, v1

    const/16 v35, 0x0

    move-object/from16 v16, v15

    move-object/from16 v18, v42

    move-object/from16 v19, v41

    move-object/from16 v20, v36

    move-object/from16 v21, v37

    move-object/from16 v22, v38

    move-object/from16 v23, v39

    move/from16 v24, v4

    move-object/from16 v28, p15

    move/from16 v29, p13

    move/from16 v30, p14

    move-object/from16 v31, v40

    move-object/from16 v32, v12

    invoke-static/range {v16 .. v35}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move-object/from16 v8, p15

    move-object/from16 v13, v37

    move-object/from16 v14, v38

    move-object/from16 v15, v39

    move-object/from16 v16, v40

    move-object/from16 v6, v41

    move-object/from16 v3, v42

    :goto_42
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_57

    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;

    move-object v0, v1

    move-object/from16 v43, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v44, v12

    move-object/from16 v12, v36

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v43

    move-object/from16 v0, v44

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_57
    return-void
.end method
