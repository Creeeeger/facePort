.class public abstract Landroidx/compose/foundation/text/BasicTextFieldKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    int-to-float v0, v0

    invoke-static {v0, v0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    return-void
.end method

.method public static final BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 39

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p17

    move/from16 v12, p18

    move/from16 v11, p19

    const/16 v5, 0x80

    const/16 v6, 0x100

    const/16 v7, 0x10

    const/16 v8, 0x20

    move-object/from16 v10, p16

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v9, 0x6b8eb362

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v9, 0x1

    and-int/lit8 v16, v11, 0x1

    const/16 v17, 0x2

    const/4 v0, 0x4

    if-eqz v16, :cond_0

    or-int/lit8 v16, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v16, v13, 0x6

    if-nez v16, :cond_2

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move/from16 v16, v0

    goto :goto_0

    :cond_1
    move/from16 v16, v17

    :goto_0
    or-int v16, v13, v16

    goto :goto_1

    :cond_2
    move/from16 v16, v13

    :goto_1
    and-int/lit8 v19, v11, 0x2

    if-eqz v19, :cond_4

    or-int/lit8 v16, v16, 0x30

    :cond_3
    :goto_2
    move/from16 v9, v16

    goto :goto_4

    :cond_4
    and-int/lit8 v19, v13, 0x30

    if-nez v19, :cond_3

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move/from16 v19, v8

    goto :goto_3

    :cond_5
    move/from16 v19, v7

    :goto_3
    or-int v16, v16, v19

    goto :goto_2

    :goto_4
    and-int/lit8 v16, v11, 0x4

    if-eqz v16, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move-object/from16 v0, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v0, v13, 0x180

    if-nez v0, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    move/from16 v20, v6

    goto :goto_5

    :cond_8
    move/from16 v20, v5

    :goto_5
    or-int v9, v9, v20

    :goto_6
    and-int/lit8 v20, v11, 0x8

    if-eqz v20, :cond_a

    or-int/lit16 v9, v9, 0xc00

    :cond_9
    move/from16 v2, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v2, v13, 0xc00

    if-nez v2, :cond_9

    move/from16 v2, p3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v22, 0x800

    goto :goto_7

    :cond_b
    const/16 v22, 0x400

    :goto_7
    or-int v9, v9, v22

    :goto_8
    and-int/lit8 v22, v11, 0x10

    if-eqz v22, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move/from16 v7, p4

    goto :goto_a

    :cond_d
    and-int/lit16 v7, v13, 0x6000

    if-nez v7, :cond_c

    move/from16 v7, p4

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_e

    const/16 v24, 0x4000

    goto :goto_9

    :cond_e
    const/16 v24, 0x2000

    :goto_9
    or-int v9, v9, v24

    :goto_a
    and-int/lit8 v24, v11, 0x20

    const/high16 v25, 0x10000

    const/high16 v26, 0x20000

    const/high16 v27, 0x30000

    if-eqz v24, :cond_f

    or-int v9, v9, v27

    move-object/from16 v8, p5

    goto :goto_c

    :cond_f
    and-int v28, v13, v27

    move-object/from16 v8, p5

    if-nez v28, :cond_11

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    move/from16 v29, v26

    goto :goto_b

    :cond_10
    move/from16 v29, v25

    :goto_b
    or-int v9, v9, v29

    :cond_11
    :goto_c
    and-int/lit8 v29, v11, 0x40

    const/high16 v30, 0x180000

    if-eqz v29, :cond_12

    or-int v9, v9, v30

    move-object/from16 v1, p6

    goto :goto_e

    :cond_12
    and-int v30, v13, v30

    move-object/from16 v1, p6

    if-nez v30, :cond_14

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    const/high16 v31, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v31, 0x80000

    :goto_d
    or-int v9, v9, v31

    :cond_14
    :goto_e
    and-int/lit16 v4, v11, 0x80

    const/high16 v32, 0xc00000

    if-eqz v4, :cond_15

    or-int v9, v9, v32

    move-object/from16 v5, p7

    goto :goto_10

    :cond_15
    and-int v32, v13, v32

    move-object/from16 v5, p7

    if-nez v32, :cond_17

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/high16 v33, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v33, 0x400000

    :goto_f
    or-int v9, v9, v33

    :cond_17
    :goto_10
    and-int/lit16 v3, v11, 0x100

    const/high16 v34, 0x6000000

    if-eqz v3, :cond_18

    or-int v9, v9, v34

    move/from16 v6, p8

    goto :goto_12

    :cond_18
    and-int v34, v13, v34

    move/from16 v6, p8

    if-nez v34, :cond_1a

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v35

    if-eqz v35, :cond_19

    const/high16 v35, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v35, 0x2000000

    :goto_11
    or-int v9, v9, v35

    :cond_1a
    :goto_12
    const/high16 v35, 0x30000000

    and-int v35, v13, v35

    if-nez v35, :cond_1d

    and-int/lit16 v0, v11, 0x200

    if-nez v0, :cond_1b

    move/from16 v0, p9

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v35

    if-eqz v35, :cond_1c

    const/high16 v35, 0x20000000

    goto :goto_13

    :cond_1b
    move/from16 v0, p9

    :cond_1c
    const/high16 v35, 0x10000000

    :goto_13
    or-int v9, v9, v35

    :goto_14
    const/16 v0, 0x400

    goto :goto_15

    :cond_1d
    move/from16 v0, p9

    goto :goto_14

    :goto_15
    and-int/lit16 v1, v11, 0x400

    if-eqz v1, :cond_1e

    or-int/lit8 v17, v12, 0x6

    :goto_16
    const/16 v0, 0x800

    goto :goto_17

    :cond_1e
    and-int/lit8 v33, v12, 0x6

    move/from16 v0, p10

    if-nez v33, :cond_20

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v35

    if-eqz v35, :cond_1f

    const/16 v17, 0x4

    :cond_1f
    or-int v17, v12, v17

    goto :goto_16

    :cond_20
    move/from16 v17, v12

    goto :goto_16

    :goto_17
    and-int/lit16 v2, v11, 0x800

    if-eqz v2, :cond_22

    or-int/lit8 v17, v17, 0x30

    :cond_21
    :goto_18
    move/from16 v0, v17

    goto :goto_1a

    :cond_22
    and-int/lit8 v31, v12, 0x30

    move-object/from16 v0, p11

    if-nez v31, :cond_21

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_23

    const/16 v23, 0x20

    goto :goto_19

    :cond_23
    const/16 v23, 0x10

    :goto_19
    or-int v17, v17, v23

    goto :goto_18

    :goto_1a
    and-int/lit16 v5, v11, 0x1000

    if-eqz v5, :cond_24

    or-int/lit16 v0, v0, 0x180

    :goto_1b
    const/16 v6, 0x2000

    goto :goto_1d

    :cond_24
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_26

    move-object/from16 v6, p12

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    const/16 v32, 0x100

    goto :goto_1c

    :cond_25
    const/16 v32, 0x80

    :goto_1c
    or-int v0, v0, v32

    goto :goto_1b

    :cond_26
    move-object/from16 v6, p12

    goto :goto_1b

    :goto_1d
    and-int/lit16 v7, v11, 0x2000

    if-eqz v7, :cond_27

    or-int/lit16 v0, v0, 0xc00

    :goto_1e
    const/16 v6, 0x4000

    goto :goto_20

    :cond_27
    and-int/lit16 v6, v12, 0xc00

    if-nez v6, :cond_29

    move-object/from16 v6, p13

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28

    const/16 v31, 0x800

    goto :goto_1f

    :cond_28
    const/16 v31, 0x400

    :goto_1f
    or-int v0, v0, v31

    goto :goto_1e

    :cond_29
    move-object/from16 v6, p13

    goto :goto_1e

    :goto_20
    and-int/lit16 v8, v11, 0x4000

    if-eqz v8, :cond_2b

    or-int/lit16 v0, v0, 0x6000

    :cond_2a
    move-object/from16 v6, p14

    goto :goto_22

    :cond_2b
    and-int/lit16 v6, v12, 0x6000

    if-nez v6, :cond_2a

    move-object/from16 v6, p14

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c

    const/16 v30, 0x4000

    goto :goto_21

    :cond_2c
    const/16 v30, 0x2000

    :goto_21
    or-int v0, v0, v30

    :goto_22
    const v17, 0x8000

    and-int v17, v11, v17

    if-eqz v17, :cond_2d

    or-int v0, v0, v27

    move-object/from16 v6, p15

    goto :goto_23

    :cond_2d
    and-int v21, v12, v27

    move-object/from16 v6, p15

    if-nez v21, :cond_2f

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2e

    move/from16 v25, v26

    :cond_2e
    or-int v0, v0, v25

    :cond_2f
    :goto_23
    const v21, 0x12492493

    and-int v6, v9, v21

    const v12, 0x12492492

    if-ne v6, v12, :cond_31

    const v6, 0x12493

    and-int/2addr v6, v0

    const v12, 0x12492

    if-ne v6, v12, :cond_31

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_30

    goto :goto_24

    :cond_30
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v28, v10

    move/from16 v10, p9

    goto/16 :goto_3a

    :cond_31
    :goto_24
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v6, 0x1

    and-int/lit8 v12, v13, 0x1

    const v6, -0x70000001

    const/16 v21, 0x0

    if-eqz v12, :cond_34

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_32

    goto :goto_25

    :cond_32
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit16 v1, v11, 0x200

    if-eqz v1, :cond_33

    and-int/2addr v9, v6

    :cond_33
    move-object/from16 v20, p2

    move/from16 v22, p3

    move/from16 v23, p4

    move-object/from16 v24, p5

    move-object/from16 v12, p6

    move-object/from16 v25, p7

    move/from16 v26, p9

    move/from16 v27, p10

    move-object/from16 v29, p11

    move-object/from16 v30, p12

    move-object/from16 v31, p13

    move-object/from16 v32, p14

    move-object/from16 v33, p15

    move v2, v9

    move/from16 v9, p8

    goto/16 :goto_36

    :cond_34
    :goto_25
    if-eqz v16, :cond_35

    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_26

    :cond_35
    move-object/from16 v12, p2

    :goto_26
    if-eqz v20, :cond_36

    const/16 v16, 0x1

    goto :goto_27

    :cond_36
    move/from16 v16, p3

    :goto_27
    if-eqz v22, :cond_37

    move/from16 v20, v21

    goto :goto_28

    :cond_37
    move/from16 v20, p4

    :goto_28
    if-eqz v24, :cond_38

    sget-object v22, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    goto :goto_29

    :cond_38
    move-object/from16 v22, p5

    :goto_29
    if-eqz v29, :cond_39

    sget-object v23, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    goto :goto_2a

    :cond_39
    move-object/from16 v23, p6

    :goto_2a
    if-eqz v4, :cond_3a

    sget-object v4, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    goto :goto_2b

    :cond_3a
    move-object/from16 v4, p7

    :goto_2b
    if-eqz v3, :cond_3b

    move/from16 v3, v21

    goto :goto_2c

    :cond_3b
    move/from16 v3, p8

    :goto_2c
    and-int/lit16 v6, v11, 0x200

    if-eqz v6, :cond_3d

    if-eqz v3, :cond_3c

    const/4 v6, 0x1

    :goto_2d
    const v24, -0x70000001

    goto :goto_2e

    :cond_3c
    const v6, 0x7fffffff

    goto :goto_2d

    :goto_2e
    and-int v9, v9, v24

    goto :goto_2f

    :cond_3d
    move/from16 v6, p9

    :goto_2f
    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_30

    :cond_3e
    move/from16 v1, p10

    :goto_30
    if-eqz v2, :cond_3f

    sget-object v2, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    goto :goto_31

    :cond_3f
    move-object/from16 v2, p11

    :goto_31
    if-eqz v5, :cond_40

    sget-object v5, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$10;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$10;

    goto :goto_32

    :cond_40
    move-object/from16 v5, p12

    :goto_32
    if-eqz v7, :cond_41

    const/4 v7, 0x0

    goto :goto_33

    :cond_41
    move-object/from16 v7, p13

    :goto_33
    if-eqz v8, :cond_42

    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    move/from16 p2, v1

    move-object/from16 p3, v2

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v8, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    goto :goto_34

    :cond_42
    move/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 v8, p14

    :goto_34
    if-eqz v17, :cond_43

    sget-object v1, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 v27, p2

    move-object/from16 v29, p3

    move-object/from16 v33, v1

    :goto_35
    move-object/from16 v25, v4

    move-object/from16 v30, v5

    move/from16 v26, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move v2, v9

    move-object/from16 v24, v22

    move v9, v3

    move/from16 v22, v16

    move/from16 v38, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v23

    move/from16 v23, v38

    goto :goto_36

    :cond_43
    move/from16 v27, p2

    move-object/from16 v29, p3

    move-object/from16 v33, p15

    goto :goto_35

    :goto_36
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v12, v9}, Landroidx/compose/foundation/text/KeyboardOptions;->toImeOptions$foundation_release(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v16

    const/4 v6, 0x1

    xor-int/lit8 v8, v9, 0x1

    if-eqz v9, :cond_44

    move/from16 v34, v6

    goto :goto_37

    :cond_44
    move/from16 v34, v27

    :goto_37
    if-eqz v9, :cond_45

    move/from16 v35, v6

    goto :goto_38

    :cond_45
    move/from16 v35, v26

    :goto_38
    and-int/lit8 v1, v2, 0xe

    const/4 v3, 0x4

    if-ne v1, v3, :cond_46

    move v1, v6

    goto :goto_39

    :cond_46
    move/from16 v1, v21

    :goto_39
    and-int/lit8 v3, v2, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_47

    move/from16 v21, v6

    :cond_47
    or-int v1, v1, v21

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_48

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_49

    :cond_48
    new-instance v3, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$11$1;

    invoke-direct {v3, v15, v14}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$11$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_49
    move-object v1, v3

    check-cast v1, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v3, v2, 0x38e

    shr-int/lit8 v4, v2, 0x6

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0x9

    const v5, 0xe000

    and-int v6, v4, v5

    or-int/2addr v3, v6

    const/high16 v6, 0x70000

    and-int v7, v4, v6

    or-int/2addr v3, v7

    const/high16 v6, 0x380000

    and-int/2addr v6, v4

    or-int/2addr v3, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v4, v6

    or-int v17, v3, v4

    shr-int/lit8 v3, v2, 0xf

    and-int/lit16 v3, v3, 0x380

    and-int/lit16 v4, v2, 0x1c00

    or-int/2addr v3, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    const/high16 v3, 0x70000

    and-int/2addr v0, v3

    or-int v18, v2, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    move-object/from16 v7, v32

    move/from16 v21, v9

    move/from16 v9, v35

    move-object/from16 v28, v10

    move/from16 v10, v34

    move-object/from16 v11, v16

    move-object/from16 v34, v12

    move-object/from16 v12, v25

    move/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v15, v33

    move-object/from16 v16, v28

    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v20

    move/from16 v9, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v8, v25

    move/from16 v10, v26

    move/from16 v11, v27

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    move-object/from16 v15, v32

    move-object/from16 v16, v33

    move-object/from16 v7, v34

    :goto_3a
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_4a

    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$12;

    move-object v0, v1

    move-object/from16 v36, v1

    move-object/from16 v1, p0

    move-object/from16 v37, v2

    move-object/from16 v2, p1

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$12;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v36

    move-object/from16 v0, v37

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4a
    return-void
.end method

.method public static final BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v15, p17

    move/from16 v14, p18

    move/from16 v13, p19

    sget-object v4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    const/16 v9, 0x80

    const/16 v10, 0x100

    const/16 v11, 0x10

    const/16 v12, 0x20

    const/4 v0, 0x6

    move-object/from16 v3, p16

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x3857730f

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v19, v13, 0x1

    const/4 v6, 0x4

    const/16 v20, 0x2

    if-eqz v19, :cond_0

    or-int/lit8 v19, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v19, v15, 0x6

    if-nez v19, :cond_2

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    move/from16 v19, v6

    goto :goto_0

    :cond_1
    move/from16 v19, v20

    :goto_0
    or-int v19, v15, v19

    goto :goto_1

    :cond_2
    move/from16 v19, v15

    :goto_1
    and-int/lit8 v21, v13, 0x2

    if-eqz v21, :cond_4

    or-int/lit8 v19, v19, 0x30

    :cond_3
    :goto_2
    move/from16 v5, v19

    goto :goto_4

    :cond_4
    and-int/lit8 v21, v15, 0x30

    if-nez v21, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    move/from16 v21, v12

    goto :goto_3

    :cond_5
    move/from16 v21, v11

    :goto_3
    or-int v19, v19, v21

    goto :goto_2

    :goto_4
    and-int/lit8 v19, v13, 0x4

    if-eqz v19, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v6, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v6, v15, 0x180

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    move/from16 v23, v10

    goto :goto_5

    :cond_8
    move/from16 v23, v9

    :goto_5
    or-int v5, v5, v23

    :goto_6
    and-int/lit8 v23, v13, 0x8

    if-eqz v23, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move/from16 v8, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v8, v15, 0xc00

    if-nez v8, :cond_9

    move/from16 v8, p3

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_b

    const/16 v25, 0x800

    goto :goto_7

    :cond_b
    const/16 v25, 0x400

    :goto_7
    or-int v5, v5, v25

    :goto_8
    and-int/lit8 v25, v13, 0x10

    if-eqz v25, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move/from16 v11, p4

    goto :goto_a

    :cond_d
    and-int/lit16 v11, v15, 0x6000

    if-nez v11, :cond_c

    move/from16 v11, p4

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v27

    if-eqz v27, :cond_e

    const/16 v27, 0x4000

    goto :goto_9

    :cond_e
    const/16 v27, 0x2000

    :goto_9
    or-int v5, v5, v27

    :goto_a
    and-int/lit8 v27, v13, 0x20

    const/high16 v28, 0x10000

    const/high16 v29, 0x20000

    const/high16 v30, 0x30000

    if-eqz v27, :cond_f

    or-int v5, v5, v30

    move-object/from16 v12, p5

    goto :goto_c

    :cond_f
    and-int v31, v15, v30

    move-object/from16 v12, p5

    if-nez v31, :cond_11

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    move/from16 v32, v29

    goto :goto_b

    :cond_10
    move/from16 v32, v28

    :goto_b
    or-int v5, v5, v32

    :cond_11
    :goto_c
    and-int/lit8 v32, v13, 0x40

    const/high16 v33, 0x180000

    if-eqz v32, :cond_12

    or-int v5, v5, v33

    move-object/from16 v0, p6

    goto :goto_e

    :cond_12
    and-int v33, v15, v33

    move-object/from16 v0, p6

    if-nez v33, :cond_14

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    const/high16 v34, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v34, 0x80000

    :goto_d
    or-int v5, v5, v34

    :cond_14
    :goto_e
    and-int/lit16 v7, v13, 0x80

    const/high16 v35, 0xc00000

    if-eqz v7, :cond_15

    or-int v5, v5, v35

    move-object/from16 v9, p7

    goto :goto_10

    :cond_15
    and-int v35, v15, v35

    move-object/from16 v9, p7

    if-nez v35, :cond_17

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_16

    const/high16 v36, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v36, 0x400000

    :goto_f
    or-int v5, v5, v36

    :cond_17
    :goto_10
    and-int/lit16 v0, v13, 0x100

    const/high16 v36, 0x6000000

    if-eqz v0, :cond_18

    or-int v5, v5, v36

    move/from16 v10, p8

    goto :goto_12

    :cond_18
    and-int v36, v15, v36

    move/from16 v10, p8

    if-nez v36, :cond_1a

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v37

    if-eqz v37, :cond_19

    const/high16 v37, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v37, 0x2000000

    :goto_11
    or-int v5, v5, v37

    :cond_1a
    :goto_12
    const/high16 v37, 0x30000000

    and-int v37, v15, v37

    if-nez v37, :cond_1d

    and-int/lit16 v6, v13, 0x200

    if-nez v6, :cond_1b

    move/from16 v6, p9

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v37

    if-eqz v37, :cond_1c

    const/high16 v37, 0x20000000

    goto :goto_13

    :cond_1b
    move/from16 v6, p9

    :cond_1c
    const/high16 v37, 0x10000000

    :goto_13
    or-int v5, v5, v37

    :goto_14
    const/16 v6, 0x400

    goto :goto_15

    :cond_1d
    move/from16 v6, p9

    goto :goto_14

    :goto_15
    and-int/lit16 v8, v13, 0x400

    const/16 v33, 0x6

    if-eqz v8, :cond_1e

    or-int/lit8 v20, v14, 0x6

    :goto_16
    const/16 v6, 0x800

    goto :goto_17

    :cond_1e
    and-int/lit8 v34, v14, 0x6

    move/from16 v6, p10

    if-nez v34, :cond_20

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v37

    if-eqz v37, :cond_1f

    const/16 v20, 0x4

    :cond_1f
    or-int v20, v14, v20

    goto :goto_16

    :cond_20
    move/from16 v20, v14

    goto :goto_16

    :goto_17
    and-int/lit16 v9, v13, 0x800

    if-eqz v9, :cond_22

    or-int/lit8 v20, v20, 0x30

    :cond_21
    :goto_18
    move/from16 v6, v20

    goto :goto_1a

    :cond_22
    and-int/lit8 v24, v14, 0x30

    move-object/from16 v6, p11

    if-nez v24, :cond_21

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_23

    const/16 v26, 0x20

    goto :goto_19

    :cond_23
    const/16 v26, 0x10

    :goto_19
    or-int v20, v20, v26

    goto :goto_18

    :goto_1a
    and-int/lit16 v10, v13, 0x1000

    if-eqz v10, :cond_24

    or-int/lit16 v6, v6, 0x180

    :goto_1b
    const/16 v11, 0x2000

    goto :goto_1d

    :cond_24
    and-int/lit16 v11, v14, 0x180

    if-nez v11, :cond_26

    move-object/from16 v11, p12

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25

    const/16 v35, 0x100

    goto :goto_1c

    :cond_25
    const/16 v35, 0x80

    :goto_1c
    or-int v6, v6, v35

    goto :goto_1b

    :cond_26
    move-object/from16 v11, p12

    goto :goto_1b

    :goto_1d
    and-int/lit16 v12, v13, 0x2000

    if-eqz v12, :cond_27

    or-int/lit16 v6, v6, 0xc00

    :goto_1e
    const/16 v11, 0x4000

    goto :goto_20

    :cond_27
    and-int/lit16 v11, v14, 0xc00

    if-nez v11, :cond_29

    move-object/from16 v11, p13

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_28

    const/16 v34, 0x800

    goto :goto_1f

    :cond_28
    const/16 v34, 0x400

    :goto_1f
    or-int v6, v6, v34

    goto :goto_1e

    :cond_29
    move-object/from16 v11, p13

    goto :goto_1e

    :goto_20
    and-int/lit16 v2, v13, 0x4000

    if-eqz v2, :cond_2b

    or-int/lit16 v6, v6, 0x6000

    :cond_2a
    move-object/from16 v11, p14

    goto :goto_22

    :cond_2b
    and-int/lit16 v11, v14, 0x6000

    if-nez v11, :cond_2a

    move-object/from16 v11, p14

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2c

    const/16 v18, 0x4000

    goto :goto_21

    :cond_2c
    const/16 v18, 0x2000

    :goto_21
    or-int v6, v6, v18

    :goto_22
    const v18, 0x8000

    and-int v18, v13, v18

    if-eqz v18, :cond_2d

    or-int v6, v6, v30

    move-object/from16 v11, p15

    goto :goto_23

    :cond_2d
    and-int v20, v14, v30

    move-object/from16 v11, p15

    if-nez v20, :cond_2f

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2e

    move/from16 v28, v29

    :cond_2e
    or-int v6, v6, v28

    :cond_2f
    :goto_23
    const v20, 0x12492493

    and-int v11, v5, v20

    const v14, 0x12492492

    if-ne v11, v14, :cond_31

    const v11, 0x12493

    and-int/2addr v11, v6

    const v14, 0x12492

    if-ne v11, v14, :cond_31

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_30

    goto :goto_24

    :cond_30
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v37, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    goto/16 :goto_3e

    :cond_31
    :goto_24
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v11, 0x1

    and-int/lit8 v14, v15, 0x1

    const/16 v21, 0x0

    if-eqz v14, :cond_34

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v14

    if-eqz v14, :cond_32

    goto :goto_25

    :cond_32
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit16 v0, v13, 0x200

    if-eqz v0, :cond_33

    const v0, -0x70000001

    and-int/2addr v5, v0

    :cond_33
    move-object/from16 v14, p2

    move/from16 v0, p3

    move/from16 v2, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    move/from16 p2, p10

    move-object/from16 v12, p11

    move-object/from16 v37, p12

    move-object/from16 v38, p13

    move-object/from16 v39, p14

    move-object/from16 v40, p15

    move v10, v5

    move-object/from16 v5, p5

    goto/16 :goto_36

    :cond_34
    :goto_25
    if-eqz v19, :cond_35

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_26

    :cond_35
    move-object/from16 v14, p2

    :goto_26
    if-eqz v23, :cond_36

    const/16 v19, 0x1

    goto :goto_27

    :cond_36
    move/from16 v19, p3

    :goto_27
    if-eqz v25, :cond_37

    move/from16 v23, v21

    goto :goto_28

    :cond_37
    move/from16 v23, p4

    :goto_28
    if-eqz v27, :cond_38

    sget-object v24, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    goto :goto_29

    :cond_38
    move-object/from16 v24, p5

    :goto_29
    if-eqz v32, :cond_39

    sget-object v25, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    goto :goto_2a

    :cond_39
    move-object/from16 v25, p6

    :goto_2a
    if-eqz v7, :cond_3a

    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    goto :goto_2b

    :cond_3a
    move-object/from16 v7, p7

    :goto_2b
    if-eqz v0, :cond_3b

    move/from16 v0, v21

    goto :goto_2c

    :cond_3b
    move/from16 v0, p8

    :goto_2c
    and-int/lit16 v11, v13, 0x200

    if-eqz v11, :cond_3d

    if-eqz v0, :cond_3c

    const/4 v11, 0x1

    :goto_2d
    const v20, -0x70000001

    goto :goto_2e

    :cond_3c
    const v11, 0x7fffffff

    goto :goto_2d

    :goto_2e
    and-int v5, v5, v20

    goto :goto_2f

    :cond_3d
    move/from16 v11, p9

    :goto_2f
    if-eqz v8, :cond_3e

    const/4 v8, 0x1

    goto :goto_30

    :cond_3e
    move/from16 v8, p10

    :goto_30
    if-eqz v9, :cond_3f

    sget-object v9, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    goto :goto_31

    :cond_3f
    move-object/from16 v9, p11

    :goto_31
    if-eqz v10, :cond_40

    sget-object v10, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;

    goto :goto_32

    :cond_40
    move-object/from16 v10, p12

    :goto_32
    if-eqz v12, :cond_41

    const/4 v12, 0x0

    goto :goto_33

    :cond_41
    move-object/from16 v12, p13

    :goto_33
    if-eqz v2, :cond_42

    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    move-object/from16 p2, v7

    move/from16 p3, v8

    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v2, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    goto :goto_34

    :cond_42
    move-object/from16 p2, v7

    move/from16 p3, v8

    move-object/from16 v2, p14

    :goto_34
    if-eqz v18, :cond_43

    sget-object v7, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v8, p2

    move/from16 p2, p3

    move-object/from16 v39, v2

    move-object/from16 v40, v7

    :goto_35
    move-object/from16 v37, v10

    move-object/from16 v38, v12

    move/from16 v2, v23

    move-object/from16 v7, v25

    move v10, v5

    move-object v12, v9

    move-object/from16 v5, v24

    move v9, v0

    move/from16 v0, v19

    goto :goto_36

    :cond_43
    move-object/from16 v8, p2

    move/from16 p2, p3

    move-object/from16 v40, p15

    move-object/from16 v39, v2

    goto :goto_35

    :goto_36
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v18, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move/from16 p3, v11

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v13, :cond_44

    new-instance v11, Landroidx/compose/ui/text/input/TextFieldValue;

    move-object/from16 p4, v14

    const-wide/16 v14, 0x0

    move/from16 p5, v2

    const/4 v2, 0x6

    invoke-direct {v11, v14, v15, v2, v1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(JILjava/lang/String;)V

    invoke-static {v11, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_37

    :cond_44
    move/from16 p5, v2

    move-object/from16 p4, v14

    :goto_37
    check-cast v11, Landroidx/compose/runtime/MutableState;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-wide v14, v2, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    move/from16 p6, v0

    new-instance v0, Landroidx/compose/ui/text/input/TextFieldValue;

    move-object/from16 p7, v8

    new-instance v8, Landroidx/compose/ui/text/AnnotatedString;

    move-object/from16 p9, v5

    move-object/from16 p8, v12

    const/4 v5, 0x6

    const/4 v12, 0x0

    invoke-direct {v8, v1, v12, v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    invoke-direct {v0, v8, v14, v15, v2}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_45

    if-ne v5, v13, :cond_46

    :cond_45
    new-instance v5, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$7$1;

    invoke-direct {v5, v0, v11}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$7$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_46
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v2, v10, 0xe

    const/4 v5, 0x4

    if-ne v2, v5, :cond_47

    const/4 v2, 0x1

    goto :goto_38

    :cond_47
    move/from16 v2, v21

    :goto_38
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_48

    if-ne v5, v13, :cond_49

    :cond_48
    invoke-static {v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_49
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7, v9}, Landroidx/compose/foundation/text/KeyboardOptions;->toImeOptions$foundation_release(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v28

    const/4 v2, 0x1

    xor-int/lit8 v25, v9, 0x1

    if-eqz v9, :cond_4a

    move/from16 v27, v2

    goto :goto_39

    :cond_4a
    move/from16 v27, p2

    :goto_39
    if-eqz v9, :cond_4b

    move/from16 v26, v2

    goto :goto_3a

    :cond_4b
    move/from16 v26, p3

    :goto_3a
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    and-int/lit8 v8, v10, 0x70

    const/16 v12, 0x20

    if-ne v8, v12, :cond_4c

    goto :goto_3b

    :cond_4c
    move/from16 v2, v21

    :goto_3b
    or-int/2addr v2, v4

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_4e

    if-ne v4, v13, :cond_4d

    goto :goto_3c

    :cond_4d
    move-object/from16 v2, p1

    goto :goto_3d

    :cond_4e
    :goto_3c
    new-instance v4, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;

    move-object/from16 v2, p1

    invoke-direct {v4, v2, v11, v5}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_3d
    move-object/from16 v18, v4

    check-cast v18, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v4, v10, 0x380

    const/4 v5, 0x6

    shr-int/lit8 v5, v10, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0x9

    const v8, 0xe000

    and-int v11, v5, v8

    or-int/2addr v4, v11

    const/high16 v8, 0x70000

    and-int v11, v5, v8

    or-int/2addr v4, v11

    const/high16 v8, 0x380000

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    const/high16 v8, 0x1c00000

    and-int/2addr v5, v8

    or-int v34, v4, v5

    shr-int/lit8 v4, v10, 0xf

    and-int/lit16 v4, v4, 0x380

    and-int/lit16 v5, v10, 0x1c00

    or-int/2addr v4, v5

    const v5, 0xe000

    and-int/2addr v5, v10

    or-int/2addr v4, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v6

    or-int v35, v4, v5

    const/16 v36, 0x0

    move-object/from16 v17, v0

    move-object/from16 v19, p4

    move-object/from16 v20, p9

    move-object/from16 v21, p8

    move-object/from16 v22, v37

    move-object/from16 v23, v38

    move-object/from16 v24, v39

    move-object/from16 v29, p7

    move/from16 v30, p6

    move/from16 v31, p5

    move-object/from16 v32, v40

    move-object/from16 v33, v3

    invoke-static/range {v17 .. v36}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    move/from16 v12, p2

    move/from16 v11, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v5, p6

    move-object/from16 v13, p8

    move-object v8, v7

    move v10, v9

    move-object/from16 v14, v38

    move-object/from16 v15, v39

    move-object/from16 v16, v40

    move-object/from16 v9, p7

    move-object/from16 v7, p9

    :goto_3e
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_4f

    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;

    move-object/from16 p2, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v41, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object/from16 v13, v37

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, p2

    move-object/from16 v0, v41

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4f
    return-void
.end method
