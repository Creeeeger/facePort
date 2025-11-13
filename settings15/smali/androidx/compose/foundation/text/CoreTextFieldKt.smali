.class public abstract Landroidx/compose/foundation/text/CoreTextFieldKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 71

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p17

    move/from16 v12, p18

    move/from16 v11, p19

    const/16 v6, 0x80

    const/16 v7, 0x100

    const/16 v8, 0x10

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/16 v9, 0x20

    const/16 v1, 0x180

    move-object/from16 v2, p16

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x3924b996

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v21, v11, 0x1

    const/16 v22, 0x2

    const/4 v4, 0x4

    if-eqz v21, :cond_0

    or-int/lit8 v21, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v21, v13, 0x6

    if-nez v21, :cond_2

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    move/from16 v21, v4

    goto :goto_0

    :cond_1
    move/from16 v21, v22

    :goto_0
    or-int v21, v13, v21

    goto :goto_1

    :cond_2
    move/from16 v21, v13

    :goto_1
    and-int/lit8 v23, v11, 0x2

    if-eqz v23, :cond_4

    or-int/lit8 v21, v21, 0x30

    :cond_3
    :goto_2
    move/from16 v3, v21

    goto :goto_4

    :cond_4
    and-int/lit8 v23, v13, 0x30

    if-nez v23, :cond_3

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    move/from16 v23, v9

    goto :goto_3

    :cond_5
    move/from16 v23, v8

    :goto_3
    or-int v21, v21, v23

    goto :goto_2

    :goto_4
    and-int/lit8 v21, v11, 0x4

    if-eqz v21, :cond_7

    or-int/2addr v3, v1

    :cond_6
    move-object/from16 v4, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v4, v13, 0x180

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    move/from16 v25, v7

    goto :goto_5

    :cond_8
    move/from16 v25, v6

    :goto_5
    or-int v3, v3, v25

    :goto_6
    and-int/lit8 v25, v11, 0x8

    if-eqz v25, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move-object/from16 v1, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v1, v13, 0xc00

    if-nez v1, :cond_9

    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    const/16 v27, 0x800

    goto :goto_7

    :cond_b
    const/16 v27, 0x400

    :goto_7
    or-int v3, v3, v27

    :goto_8
    and-int/lit8 v27, v11, 0x10

    if-eqz v27, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_c
    move-object/from16 v8, p4

    goto :goto_a

    :cond_d
    and-int/lit16 v8, v13, 0x6000

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    const/16 v29, 0x4000

    goto :goto_9

    :cond_e
    const/16 v29, 0x2000

    :goto_9
    or-int v3, v3, v29

    :goto_a
    and-int/lit8 v29, v11, 0x20

    const/high16 v30, 0x10000

    const/high16 v31, 0x20000

    const/high16 v32, 0x30000

    if-eqz v29, :cond_f

    or-int v3, v3, v32

    move-object/from16 v9, p5

    goto :goto_c

    :cond_f
    and-int v33, v13, v32

    move-object/from16 v9, p5

    if-nez v33, :cond_11

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    move/from16 v34, v31

    goto :goto_b

    :cond_10
    move/from16 v34, v30

    :goto_b
    or-int v3, v3, v34

    :cond_11
    :goto_c
    and-int/lit8 v34, v11, 0x40

    const/high16 v35, 0x180000

    if-eqz v34, :cond_12

    or-int v3, v3, v35

    move-object/from16 v0, p6

    goto :goto_e

    :cond_12
    and-int v35, v13, v35

    move-object/from16 v0, p6

    if-nez v35, :cond_14

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    const/high16 v36, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v36, 0x80000

    :goto_d
    or-int v3, v3, v36

    :cond_14
    :goto_e
    and-int/lit16 v5, v11, 0x80

    const/high16 v37, 0xc00000

    if-eqz v5, :cond_15

    or-int v3, v3, v37

    move-object/from16 v6, p7

    goto :goto_10

    :cond_15
    and-int v37, v13, v37

    move-object/from16 v6, p7

    if-nez v37, :cond_17

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_16

    const/high16 v38, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v38, 0x400000

    :goto_f
    or-int v3, v3, v38

    :cond_17
    :goto_10
    and-int/lit16 v0, v11, 0x100

    const/high16 v38, 0x6000000

    if-eqz v0, :cond_18

    or-int v3, v3, v38

    move/from16 v7, p8

    goto :goto_12

    :cond_18
    and-int v38, v13, v38

    move/from16 v7, p8

    if-nez v38, :cond_1a

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v39

    if-eqz v39, :cond_19

    const/high16 v39, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v39, 0x2000000

    :goto_11
    or-int v3, v3, v39

    :cond_1a
    :goto_12
    and-int/lit16 v1, v11, 0x200

    const/high16 v39, 0x30000000

    if-eqz v1, :cond_1c

    :goto_13
    or-int v3, v3, v39

    :cond_1b
    const/16 v4, 0x400

    goto :goto_14

    :cond_1c
    and-int v39, v13, v39

    move/from16 v4, p9

    if-nez v39, :cond_1b

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v39

    if-eqz v39, :cond_1d

    const/high16 v39, 0x20000000

    goto :goto_13

    :cond_1d
    const/high16 v39, 0x10000000

    goto :goto_13

    :goto_14
    and-int/lit16 v6, v11, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v22, v12, 0x6

    move/from16 v4, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v36, v12, 0x6

    move/from16 v4, p10

    if-nez v36, :cond_20

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v39

    if-eqz v39, :cond_1f

    const/16 v22, 0x4

    :cond_1f
    or-int v22, v12, v22

    goto :goto_15

    :cond_20
    move/from16 v22, v12

    :goto_15
    and-int/lit8 v39, v12, 0x30

    if-nez v39, :cond_22

    const/16 v4, 0x800

    and-int/lit16 v7, v11, 0x800

    move-object/from16 v4, p11

    if-nez v7, :cond_21

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    const/16 v28, 0x20

    goto :goto_16

    :cond_21
    const/16 v28, 0x10

    :goto_16
    or-int v22, v22, v28

    :goto_17
    move/from16 v7, v22

    goto :goto_18

    :cond_22
    move-object/from16 v4, p11

    goto :goto_17

    :goto_18
    and-int/lit16 v4, v11, 0x1000

    const/16 v8, 0x180

    if-eqz v4, :cond_23

    or-int/2addr v7, v8

    :goto_19
    const/16 v8, 0x2000

    goto :goto_1b

    :cond_23
    and-int/lit16 v9, v12, 0x180

    if-nez v9, :cond_25

    move-object/from16 v9, p12

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    const/16 v37, 0x100

    goto :goto_1a

    :cond_24
    const/16 v37, 0x80

    :goto_1a
    or-int v7, v7, v37

    goto :goto_19

    :cond_25
    move-object/from16 v9, p12

    goto :goto_19

    :goto_1b
    and-int/lit16 v9, v11, 0x2000

    if-eqz v9, :cond_26

    or-int/lit16 v7, v7, 0xc00

    :goto_1c
    move-object/from16 v22, v10

    const/16 v8, 0x4000

    goto :goto_1e

    :cond_26
    and-int/lit16 v8, v12, 0xc00

    if-nez v8, :cond_28

    move/from16 v8, p13

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_27

    const/16 v36, 0x800

    goto :goto_1d

    :cond_27
    const/16 v36, 0x400

    :goto_1d
    or-int v7, v7, v36

    goto :goto_1c

    :cond_28
    move/from16 v8, p13

    goto :goto_1c

    :goto_1e
    and-int/lit16 v10, v11, 0x4000

    if-eqz v10, :cond_2a

    or-int/lit16 v7, v7, 0x6000

    :cond_29
    move/from16 v8, p14

    goto :goto_20

    :cond_2a
    and-int/lit16 v8, v12, 0x6000

    if-nez v8, :cond_29

    move/from16 v8, p14

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_2b

    const/16 v23, 0x4000

    goto :goto_1f

    :cond_2b
    const/16 v23, 0x2000

    :goto_1f
    or-int v7, v7, v23

    :goto_20
    const v23, 0x8000

    and-int v23, v11, v23

    if-eqz v23, :cond_2c

    or-int v7, v7, v32

    move-object/from16 v8, p15

    goto :goto_21

    :cond_2c
    and-int v28, v12, v32

    move-object/from16 v8, p15

    if-nez v28, :cond_2e

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2d

    move/from16 v30, v31

    :cond_2d
    or-int v7, v7, v30

    :cond_2e
    :goto_21
    const v28, 0x12492493

    and-int v8, v3, v28

    const v12, 0x12492492

    if-ne v8, v12, :cond_30

    const v8, 0x12493

    and-int/2addr v8, v7

    const v12, 0x12492

    if-ne v8, v12, :cond_30

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_2f

    goto :goto_22

    :cond_2f
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object v1, v2

    goto/16 :goto_61

    :cond_30
    :goto_22
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v8, 0x1

    and-int/lit8 v12, v13, 0x1

    if-eqz v12, :cond_33

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v8

    if-eqz v8, :cond_31

    goto :goto_23

    :cond_31
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x800

    and-int/lit16 v1, v11, 0x800

    if-eqz v1, :cond_32

    and-int/lit8 v7, v7, -0x71

    :cond_32
    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v10, p4

    move-object/from16 v25, p5

    move-object/from16 v9, p6

    move-object/from16 v8, p7

    move/from16 v6, p9

    move/from16 v21, p10

    move-object/from16 v5, p11

    move-object/from16 v4, p12

    move/from16 v1, p13

    move/from16 v23, p14

    move-object/from16 v27, p15

    move v0, v7

    move/from16 v7, p8

    goto/16 :goto_33

    :cond_33
    :goto_23
    if-eqz v21, :cond_34

    move-object/from16 v8, v22

    goto :goto_24

    :cond_34
    move-object/from16 v8, p2

    :goto_24
    if-eqz v25, :cond_35

    sget-object v12, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    goto :goto_25

    :cond_35
    move-object/from16 v12, p3

    :goto_25
    if-eqz v27, :cond_36

    sget-object v21, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    goto :goto_26

    :cond_36
    move-object/from16 v21, p4

    :goto_26
    if-eqz v29, :cond_37

    sget-object v25, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$1;->INSTANCE:Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$1;

    goto :goto_27

    :cond_37
    move-object/from16 v25, p5

    :goto_27
    if-eqz v34, :cond_38

    const/16 v27, 0x0

    goto :goto_28

    :cond_38
    move-object/from16 v27, p6

    :goto_28
    if-eqz v5, :cond_39

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    move-object/from16 p2, v12

    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-direct {v5, v12, v13}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    goto :goto_29

    :cond_39
    move-object/from16 p2, v12

    move-object/from16 v5, p7

    :goto_29
    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_2a

    :cond_3a
    move/from16 v0, p8

    :goto_2a
    if-eqz v1, :cond_3b

    const v1, 0x7fffffff

    goto :goto_2b

    :cond_3b
    move/from16 v1, p9

    :goto_2b
    if-eqz v6, :cond_3c

    const/4 v6, 0x1

    :goto_2c
    const/16 v12, 0x800

    goto :goto_2d

    :cond_3c
    move/from16 v6, p10

    goto :goto_2c

    :goto_2d
    and-int/lit16 v13, v11, 0x800

    if-eqz v13, :cond_3d

    sget-object v12, Landroidx/compose/ui/text/input/ImeOptions;->Default:Landroidx/compose/ui/text/input/ImeOptions;

    and-int/lit8 v7, v7, -0x71

    goto :goto_2e

    :cond_3d
    move-object/from16 v12, p11

    :goto_2e
    if-eqz v4, :cond_3e

    sget-object v4, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    goto :goto_2f

    :cond_3e
    move-object/from16 v4, p12

    :goto_2f
    if-eqz v9, :cond_3f

    const/4 v9, 0x1

    goto :goto_30

    :cond_3f
    move/from16 v9, p13

    :goto_30
    if-eqz v10, :cond_40

    const/4 v10, 0x0

    goto :goto_31

    :cond_40
    move/from16 v10, p14

    :goto_31
    if-eqz v23, :cond_41

    sget-object v13, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 v23, v10

    move-object/from16 v10, v21

    move/from16 v21, v6

    move v6, v1

    move v1, v9

    move-object/from16 v9, v27

    move-object/from16 v27, v13

    move-object v13, v8

    move-object v8, v5

    move-object v5, v12

    move-object/from16 v12, p2

    :goto_32
    move/from16 v70, v7

    move v7, v0

    move/from16 v0, v70

    goto :goto_33

    :cond_41
    move-object v13, v8

    move/from16 v23, v10

    move-object/from16 v10, v21

    move-object v8, v5

    move/from16 v21, v6

    move-object v5, v12

    move-object/from16 v12, p2

    move v6, v1

    move v1, v9

    move-object/from16 v9, v27

    move-object/from16 v27, p15

    goto :goto_32

    :goto_33
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v28, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v28, v13

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v13, :cond_42

    new-instance v11, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v11}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_42
    check-cast v11, Landroidx/compose/ui/focus/FocusRequester;

    move-object/from16 v29, v8

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v13, :cond_43

    sget-object v8, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->inputMethodManagerFactory:Lkotlin/jvm/functions/Function1;

    new-instance v8, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_43
    check-cast v8, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;

    move-object/from16 v30, v9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v13, :cond_44

    new-instance v9, Landroidx/compose/ui/text/input/TextInputService;

    invoke-direct {v9, v8}, Landroidx/compose/ui/text/input/TextInputService;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_44
    check-cast v9, Landroidx/compose/ui/text/input/TextInputService;

    move-object/from16 p13, v8

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Density;

    move-object/from16 p14, v9

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move/from16 v31, v0

    sget-object v0, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move/from16 p15, v1

    iget-wide v0, v0, Landroidx/compose/foundation/text/selection/TextSelectionColors;->backgroundColor:J

    move-object/from16 v32, v11

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/focus/FocusManager;

    move-object/from16 v34, v11

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/platform/WindowInfo;

    move-object/from16 v36, v11

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-object/from16 v37, v4

    const/4 v4, 0x1

    if-ne v6, v4, :cond_45

    if-nez v7, :cond_45

    iget-boolean v4, v5, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    if-eqz v4, :cond_45

    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_34

    :cond_45
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_34
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v38

    sget-object v39, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->Saver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v40

    move/from16 v41, v6

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v40, :cond_46

    if-ne v6, v13, :cond_47

    :cond_46
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$scrollerPosition$1$1;

    invoke-direct {v6, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$scrollerPosition$1$1;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_47
    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    const/16 v40, 0x4

    move-object/from16 p2, v38

    move-object/from16 p3, v39

    move-object/from16 p4, v4

    move-object/from16 p5, v2

    move/from16 p6, v6

    move/from16 p7, v40

    invoke-static/range {p2 .. p7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    and-int/lit8 v4, v3, 0xe

    move-object/from16 v38, v6

    const/4 v6, 0x4

    if-ne v4, v6, :cond_48

    const/4 v6, 0x1

    goto :goto_35

    :cond_48
    const/4 v6, 0x0

    :goto_35
    const v39, 0xe000

    and-int v3, v3, v39

    move-object/from16 v40, v5

    const/16 v5, 0x4000

    if-ne v3, v5, :cond_49

    const/4 v3, 0x1

    goto :goto_36

    :cond_49
    const/4 v3, 0x0

    :goto_36
    or-int/2addr v3, v6

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_4b

    if-ne v5, v13, :cond_4a

    goto :goto_37

    :cond_4a
    move-wide/from16 v43, v0

    goto :goto_3a

    :cond_4b
    :goto_37
    iget-object v3, v15, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v10, v3}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->filterWithValidation(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v3

    iget-object v5, v15, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    if-eqz v5, :cond_4c

    iget-wide v5, v5, Landroidx/compose/ui/text/TextRange;->packedValue:J

    sget v42, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    move-wide/from16 v43, v0

    const/16 v33, 0x20

    shr-long v0, v5, v33

    long-to-int v0, v0

    iget-object v1, v3, Landroidx/compose/ui/text/input/TransformedText;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {v1, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    const-wide v45, 0xffffffffL

    and-long v5, v5, v45

    long-to-int v5, v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Builder;

    iget-object v3, v3, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    new-instance v3, Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 v45, v3

    sget-object v62, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    const-wide/16 v60, 0x0

    const/16 v63, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const v64, 0xefff

    invoke-direct/range {v45 .. v64}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    invoke-virtual {v5, v3, v6, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    new-instance v3, Landroidx/compose/ui/text/input/TransformedText;

    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    :goto_38
    move-object v5, v3

    goto :goto_39

    :cond_4c
    move-wide/from16 v43, v0

    goto :goto_38

    :goto_39
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_3a
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/text/input/TransformedText;

    iget-object v1, v0, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_98

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_4d

    if-ne v6, v13, :cond_4e

    :cond_4d
    new-instance v6, Landroidx/compose/foundation/text/LegacyTextFieldState;

    new-instance v5, Landroidx/compose/foundation/text/TextDelegate;

    sget-object v42, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const v45, 0x7fffffff

    const/16 v46, 0x1

    const/16 v47, 0x1

    move-object/from16 p2, v5

    move-object/from16 p3, v1

    move-object/from16 p4, v12

    move/from16 p5, v45

    move/from16 p6, v46

    move/from16 p7, v7

    move/from16 p8, v47

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v42

    invoke-direct/range {p2 .. p11}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V

    invoke-direct {v6, v5, v3, v11}, Landroidx/compose/foundation/text/LegacyTextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4e
    move-object v3, v6

    check-cast v3, Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v5, v15, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iput-object v14, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChangeOriginal:Lkotlin/jvm/functions/Function1;

    move-object/from16 v42, v10

    move-wide/from16 v10, v43

    iput-wide v10, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionBackgroundColor:J

    iget-object v6, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->keyboardActionRunner:Landroidx/compose/foundation/text/KeyboardActionRunner;

    move-object/from16 v10, v37

    iput-object v10, v6, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    move-object/from16 v11, v34

    iput-object v11, v6, Landroidx/compose/foundation/text/KeyboardActionRunner;->focusManager:Landroidx/compose/ui/focus/FocusManager;

    iput-object v5, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->untransformedText:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v5, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v37, v10

    iget-object v10, v5, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    iget-object v10, v5, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    iget-boolean v10, v5, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    if-ne v10, v7, :cond_4f

    iget v10, v5, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    const/4 v14, 0x1

    invoke-static {v10, v14}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_4f

    iget v10, v5, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    const v14, 0x7fffffff

    if-ne v10, v14, :cond_4f

    iget v10, v5, Landroidx/compose/foundation/text/TextDelegate;->minLines:I

    const/4 v14, 0x1

    if-ne v10, v14, :cond_4f

    iget-object v10, v5, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    iget-object v10, v5, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    iget-object v10, v5, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    if-eq v10, v9, :cond_50

    :cond_4f
    new-instance v5, Landroidx/compose/foundation/text/TextDelegate;

    move-object/from16 p2, v5

    move-object/from16 p3, v1

    move-object/from16 p4, v12

    const v1, 0x7fffffff

    move/from16 p5, v1

    const/4 v1, 0x1

    move/from16 p6, v1

    move/from16 p7, v7

    const/4 v1, 0x1

    move/from16 p8, v1

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v6

    invoke-direct/range {p2 .. p11}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V

    :cond_50
    iget-object v1, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    if-eq v1, v5, :cond_51

    const/4 v1, 0x1

    iput-boolean v1, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->isLayoutResultStale:Z

    :cond_51
    iput-object v5, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    iget-object v1, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    iget-object v5, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/compose/ui/text/input/EditProcessor;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v15, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    iget-object v9, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-virtual {v9}, Landroidx/compose/ui/text/input/EditingBuffer;->getComposition-MzsxiRA$ui_text_release()Landroidx/compose/ui/text/TextRange;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x1

    xor-int/2addr v6, v9

    iget-object v9, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v9, v9, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v10, v15, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    move v14, v7

    move-object/from16 v34, v8

    iget-wide v7, v15, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    if-nez v9, :cond_52

    new-instance v9, Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-direct {v9, v10, v7, v8}, Landroidx/compose/ui/text/input/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;J)V

    iput-object v9, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    const/4 v7, 0x1

    :goto_3b
    const/4 v8, 0x0

    goto :goto_3c

    :cond_52
    iget-object v9, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-wide v9, v9, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v9

    if-nez v9, :cond_53

    iget-object v9, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v10

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    invoke-virtual {v9, v10, v7}, Landroidx/compose/ui/text/input/EditingBuffer;->setSelection$ui_text_release(II)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_3c

    :cond_53
    const/4 v7, 0x0

    goto :goto_3b

    :goto_3c
    const/4 v9, -0x1

    iget-object v10, v15, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    if-nez v10, :cond_55

    iget-object v10, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    iput v9, v10, Landroidx/compose/ui/text/input/EditingBuffer;->compositionStart:I

    iput v9, v10, Landroidx/compose/ui/text/input/EditingBuffer;->compositionEnd:I

    :cond_54
    move-object/from16 v44, v12

    move/from16 v43, v14

    goto :goto_3d

    :cond_55
    iget-wide v9, v10, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v43

    if-nez v43, :cond_54

    move/from16 v43, v14

    iget-object v14, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    move-object/from16 v44, v12

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v12

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v9

    invoke-virtual {v14, v12, v9}, Landroidx/compose/ui/text/input/EditingBuffer;->setComposition$ui_text_release(II)V

    :goto_3d
    if-nez v7, :cond_57

    if-nez v8, :cond_56

    if-eqz v6, :cond_56

    goto :goto_3e

    :cond_56
    move-object v6, v15

    const-wide/16 v8, 0x0

    goto :goto_3f

    :cond_57
    :goto_3e
    iget-object v6, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    const/4 v7, -0x1

    iput v7, v6, Landroidx/compose/ui/text/input/EditingBuffer;->compositionStart:I

    iput v7, v6, Landroidx/compose/ui/text/input/EditingBuffer;->compositionEnd:I

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static {v15, v7, v8, v9, v6}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v6

    :goto_3f
    iget-object v7, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object v6, v5, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    if-eqz v1, :cond_58

    invoke-virtual {v1, v7, v6}, Landroidx/compose/ui/text/input/TextInputSession;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_58
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_59

    new-instance v1, Landroidx/compose/foundation/text/UndoManager;

    invoke-direct {v1}, Landroidx/compose/foundation/text/UndoManager;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_59
    check-cast v1, Landroidx/compose/foundation/text/UndoManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-boolean v7, v1, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    if-nez v7, :cond_5b

    iget-object v7, v1, Landroidx/compose/foundation/text/UndoManager;->lastSnapshot:Ljava/lang/Long;

    if-eqz v7, :cond_5a

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_40

    :cond_5a
    move-wide v7, v8

    :goto_40
    const/16 v9, 0x1388

    int-to-long v9, v9

    add-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-lez v7, :cond_5c

    :cond_5b
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Landroidx/compose/foundation/text/UndoManager;->lastSnapshot:Ljava/lang/Long;

    invoke-virtual {v1, v15}, Landroidx/compose/foundation/text/UndoManager;->makeSnapshot(Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_5c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v13, :cond_5d

    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v5, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5d
    move-object v14, v5

    check-cast v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v12, v0, Landroidx/compose/ui/text/input/TransformedText;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-object v12, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    move-object/from16 v10, v42

    iput-object v10, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v5, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object v5, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object v3, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v5, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboardManager:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/ClipboardManager;

    iput-object v5, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/AndroidTextToolbar;

    iput-object v5, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->textToolbar:Landroidx/compose/ui/platform/AndroidTextToolbar;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    iput-object v5, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    move-object/from16 v5, v32

    iput-object v5, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    const/4 v6, 0x1

    xor-int/lit8 v7, v23, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v8, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->editable$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v8, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v13, :cond_5e

    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v6, v2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v6

    invoke-static {v6, v2}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v6

    :cond_5e
    check-cast v6, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v6, v6, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v13, :cond_5f

    new-instance v8, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    invoke-direct {v8}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5f
    move-object v9, v8

    check-cast v9, Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v18, v1

    move-object/from16 v17, v11

    move/from16 v11, v31

    and-int/lit16 v1, v11, 0x1c00

    move/from16 v19, v7

    const/16 v7, 0x800

    if-ne v1, v7, :cond_60

    const/4 v7, 0x1

    goto :goto_41

    :cond_60
    const/4 v7, 0x0

    :goto_41
    or-int/2addr v7, v8

    and-int v8, v11, v39

    move-object/from16 v31, v0

    const/16 v0, 0x4000

    if-ne v8, v0, :cond_61

    const/4 v0, 0x1

    goto :goto_42

    :cond_61
    const/4 v0, 0x0

    :goto_42
    or-int/2addr v0, v7

    move-object/from16 v7, p14

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    or-int v0, v0, v32

    move-object/from16 v42, v10

    const/4 v10, 0x4

    if-ne v4, v10, :cond_62

    const/4 v10, 0x1

    goto :goto_43

    :cond_62
    const/4 v10, 0x0

    :goto_43
    or-int/2addr v0, v10

    and-int/lit8 v10, v11, 0x70

    xor-int/lit8 v10, v10, 0x30

    const/16 v15, 0x20

    if-le v10, v15, :cond_64

    move-object/from16 v15, v40

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_63

    :goto_44
    move/from16 p14, v4

    goto :goto_45

    :cond_63
    move/from16 v32, v1

    move/from16 p14, v4

    goto :goto_46

    :cond_64
    move-object/from16 v15, v40

    goto :goto_44

    :goto_45
    and-int/lit8 v4, v11, 0x30

    move/from16 v32, v1

    const/16 v1, 0x20

    if-ne v4, v1, :cond_65

    :goto_46
    const/4 v1, 0x1

    goto :goto_47

    :cond_65
    const/4 v1, 0x0

    :goto_47
    or-int/2addr v0, v1

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_66

    if-ne v1, v13, :cond_67

    :cond_66
    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1;

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move/from16 p4, p15

    move/from16 p5, v23

    move-object/from16 p6, v7

    move-object/from16 p7, p0

    move-object/from16 p8, v15

    move-object/from16 p9, v12

    move-object/from16 p10, v14

    move-object/from16 p11, v6

    move-object/from16 p12, v9

    invoke-direct/range {p2 .. p12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZZLandroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_67
    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4, v1}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move/from16 v4, p15

    move-object/from16 v6, v30

    invoke-static {v1, v4, v6}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v4, :cond_68

    if-nez v23, :cond_68

    move-object/from16 v22, v36

    check-cast v22, Landroidx/compose/ui/platform/WindowInfoImpl;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/platform/WindowInfoImpl;->isWindowFocused()Z

    move-result v22

    if-eqz v22, :cond_68

    move-object/from16 p15, v9

    const/16 v22, 0x1

    goto :goto_48

    :cond_68
    move-object/from16 p15, v9

    const/16 v22, 0x0

    :goto_48
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    move-object/from16 v22, v1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v30

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v39

    or-int v30, v30, v39

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v39

    or-int v30, v30, v39

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v39

    or-int v30, v30, v39

    move-object/from16 v39, v0

    const/16 v0, 0x20

    if-le v10, v0, :cond_69

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_6a

    :cond_69
    move/from16 v40, v10

    goto :goto_49

    :cond_6a
    move/from16 v40, v10

    goto :goto_4a

    :goto_49
    and-int/lit8 v10, v11, 0x30

    if-ne v10, v0, :cond_6b

    :goto_4a
    const/4 v0, 0x1

    goto :goto_4b

    :cond_6b
    const/4 v0, 0x0

    :goto_4b
    or-int v0, v30, v0

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_6c

    if-ne v10, v13, :cond_6d

    :cond_6c
    new-instance v10, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2$1;

    const/4 v0, 0x0

    move-object/from16 p2, v10

    move-object/from16 p3, v3

    move-object/from16 p4, v9

    move-object/from16 p5, v7

    move-object/from16 p6, v14

    move-object/from16 p7, v15

    move-object/from16 p8, v0

    invoke-direct/range {p2 .. p8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/runtime/State;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6d
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_6e

    if-ne v1, v13, :cond_6f

    :cond_6e
    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$1$1;

    invoke-direct {v1, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$1$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6f
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->updateSelectionTouchMode(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    const/16 v10, 0x4000

    if-ne v8, v10, :cond_70

    const/4 v10, 0x1

    goto :goto_4c

    :cond_70
    const/4 v10, 0x0

    :goto_4c
    or-int/2addr v1, v10

    move-object/from16 v30, v9

    move/from16 v10, v32

    const/16 v9, 0x800

    if-ne v10, v9, :cond_71

    const/4 v9, 0x1

    goto :goto_4d

    :cond_71
    const/4 v9, 0x0

    :goto_4d
    or-int/2addr v1, v9

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_72

    if-ne v9, v13, :cond_73

    :cond_72
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$2$1;

    move-object/from16 p2, v9

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move/from16 p5, v23

    move/from16 p6, v4

    move-object/from16 p7, v14

    move-object/from16 p8, v12

    invoke-direct/range {p2 .. p8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$2$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_73
    check-cast v9, Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_74

    new-instance v1, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1;

    invoke-direct {v1, v9, v6}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    sget-object v9, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_74
    iget-object v1, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->mouseSelectionObserver:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;

    iget-object v9, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->touchSelectionObserver:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;

    invoke-static {v0, v1, v9}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->selectionGestureInput(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->textPointerIcon:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/PointerIconKt;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/AndroidPointerIconType;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x4

    move-object/from16 v70, v0

    move/from16 v0, p14

    move-object/from16 p14, v70

    if-ne v0, v9, :cond_75

    const/4 v9, 0x1

    goto :goto_4e

    :cond_75
    const/4 v9, 0x0

    :goto_4e
    or-int/2addr v1, v9

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_77

    if-ne v9, v13, :cond_76

    goto :goto_4f

    :cond_76
    move-object/from16 v1, p0

    goto :goto_50

    :cond_77
    :goto_4f
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$drawModifier$1$1;

    move-object/from16 v1, p0

    invoke-direct {v9, v3, v1, v12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$drawModifier$1$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_50
    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v32, v6

    move-object/from16 v6, v39

    invoke-static {v6, v9}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v39

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v45, v7

    const/16 v7, 0x800

    if-ne v10, v7, :cond_78

    const/4 v7, 0x1

    goto :goto_51

    :cond_78
    const/4 v7, 0x0

    :goto_51
    or-int/2addr v7, v9

    move-object/from16 v9, v36

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v36

    or-int v7, v7, v36

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v36

    or-int v7, v7, v36

    const/4 v1, 0x4

    if-ne v0, v1, :cond_79

    const/4 v1, 0x1

    goto :goto_52

    :cond_79
    const/4 v1, 0x0

    :goto_52
    or-int/2addr v1, v7

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_7a

    if-ne v7, v13, :cond_7b

    :cond_7a
    new-instance v7, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$onPositionedModifier$1$1;

    move-object/from16 p2, v7

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v9

    move-object/from16 p6, v14

    move-object/from16 p7, p0

    move-object/from16 p8, v12

    invoke-direct/range {p2 .. p8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$onPositionedModifier$1$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/platform/WindowInfo;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7b
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v7}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v36

    move-object/from16 v7, v42

    instance-of v1, v7, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    move-object/from16 v7, v31

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    move-object/from16 v46, v9

    const/4 v9, 0x4

    if-ne v0, v9, :cond_7c

    const/4 v9, 0x1

    goto :goto_53

    :cond_7c
    const/4 v9, 0x0

    :goto_53
    or-int v9, v31, v9

    move/from16 v31, v0

    const/16 v0, 0x800

    if-ne v10, v0, :cond_7d

    const/4 v0, 0x1

    goto :goto_54

    :cond_7d
    const/4 v0, 0x0

    :goto_54
    or-int/2addr v0, v9

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v9

    or-int/2addr v0, v9

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_7e

    const/4 v8, 0x1

    goto :goto_55

    :cond_7e
    const/4 v8, 0x0

    :goto_55
    or-int/2addr v0, v8

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    move/from16 v8, v40

    const/16 v9, 0x20

    if-le v8, v9, :cond_7f

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_80

    :cond_7f
    and-int/lit8 v10, v11, 0x30

    if-ne v10, v9, :cond_81

    :cond_80
    const/4 v9, 0x1

    goto :goto_56

    :cond_81
    const/4 v9, 0x0

    :goto_56
    or-int/2addr v0, v9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_82

    if-ne v9, v13, :cond_83

    :cond_82
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1;

    move-object/from16 p2, v9

    move-object/from16 p3, v7

    move-object/from16 p4, p0

    move/from16 p5, v4

    move/from16 p6, v1

    move/from16 p7, v23

    move-object/from16 p8, v15

    move-object/from16 p9, v3

    move-object/from16 p10, v12

    move-object/from16 p11, v14

    move-object/from16 p12, v5

    invoke-direct/range {p2 .. p12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1;-><init>(Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;ZZZLandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/focus/FocusRequester;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_83
    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-static {v6, v0, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v4, :cond_86

    if-nez v23, :cond_86

    move-object/from16 v0, v46

    check-cast v0, Landroidx/compose/ui/platform/WindowInfoImpl;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/WindowInfoImpl;->isWindowFocused()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    iget-wide v9, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->deletionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    iget-wide v9, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_84

    goto :goto_57

    :cond_84
    const/4 v0, 0x0

    goto :goto_58

    :cond_85
    :goto_57
    const/4 v0, 0x1

    :goto_58
    if-nez v0, :cond_86

    const/4 v0, 0x1

    :goto_59
    move-object/from16 v7, p0

    move-object/from16 v9, v29

    goto :goto_5a

    :cond_86
    const/4 v0, 0x0

    goto :goto_59

    :goto_5a
    invoke-static {v3, v7, v12, v9, v0}, Landroidx/compose/foundation/text/TextFieldCursorKt;->cursor(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/graphics/Brush;Z)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v29, v9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_87

    if-ne v9, v13, :cond_88

    :cond_87
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$3$1;

    invoke-direct {v9, v14}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$3$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_88
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v9, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v9, v45

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    or-int v0, v0, v20

    move-object/from16 v20, v1

    move-object/from16 p12, v10

    move/from16 v1, v31

    const/4 v10, 0x4

    if-ne v1, v10, :cond_89

    const/4 v1, 0x1

    goto :goto_5b

    :cond_89
    const/4 v1, 0x0

    :goto_5b
    or-int/2addr v0, v1

    const/16 v1, 0x20

    if-le v8, v1, :cond_8a

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    :cond_8a
    and-int/lit8 v10, v11, 0x30

    if-ne v10, v1, :cond_8c

    :cond_8b
    const/4 v1, 0x1

    goto :goto_5c

    :cond_8c
    const/4 v1, 0x0

    :goto_5c
    or-int/2addr v0, v1

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_8d

    if-ne v1, v13, :cond_8e

    :cond_8d
    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$4$1;

    invoke-direct {v1, v3, v9, v7, v15}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$4$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8e
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    iget-object v0, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Lkotlin/jvm/functions/Function1;

    move/from16 v9, v41

    const/4 v1, 0x1

    if-ne v9, v1, :cond_8f

    move v10, v1

    goto :goto_5d

    :cond_8f
    const/4 v10, 0x0

    :goto_5d
    iget v1, v15, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    new-instance v7, Landroidx/compose/foundation/text/TextFieldKeyInputKt$textFieldKeyInput$2;

    move-object/from16 p2, v7

    move-object/from16 p3, v3

    move-object/from16 p4, v14

    move-object/from16 p5, p0

    move/from16 p6, v19

    move/from16 p7, v10

    move-object/from16 p8, v12

    move-object/from16 p9, v18

    move-object/from16 p10, v0

    move/from16 p11, v1

    invoke-direct/range {p2 .. p11}, Landroidx/compose/foundation/text/TextFieldKeyInputKt$textFieldKeyInput$2;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lkotlin/jvm/functions/Function1;I)V

    sget-object v0, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v7}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    const/16 v10, 0x20

    if-le v8, v10, :cond_90

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_91

    :cond_90
    and-int/lit8 v8, v11, 0x30

    if-ne v8, v10, :cond_92

    :cond_91
    const/4 v8, 0x1

    goto :goto_5e

    :cond_92
    const/4 v8, 0x0

    :goto_5e
    or-int/2addr v7, v8

    move-object/from16 v8, p13

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_93

    if-ne v10, v13, :cond_94

    :cond_93
    new-instance v10, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$stylusHandwritingModifier$1$1;

    invoke-direct {v10, v3, v5, v15, v8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$stylusHandwritingModifier$1$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_94
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v10, v1}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->stylusHandwriting(Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v13, v28

    invoke-static {v13, v8, v3, v14}, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNodeKt;->legacyTextInputAdapter(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v5, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v5, v22

    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v5, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;

    move-object/from16 v11, v17

    invoke-direct {v5, v11, v3}, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;-><init>(Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    invoke-static {v1, v5}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v5, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;

    invoke-direct {v5, v3, v14}, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-static {v1, v5}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;

    move-object/from16 v7, v32

    move-object/from16 v8, v38

    invoke-direct {v1, v8, v4, v7}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, p14

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$decorationBoxModifier$1;

    invoke-direct {v1, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$decorationBoxModifier$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    if-eqz v4, :cond_95

    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->isInTouchMode$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_95

    move-object/from16 v0, v46

    check-cast v0, Landroidx/compose/ui/platform/WindowInfoImpl;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/WindowInfoImpl;->isWindowFocused()Z

    move-result v0

    if-eqz v0, :cond_95

    const/16 v16, 0x1

    goto :goto_5f

    :cond_95
    const/16 v16, 0x0

    :goto_5f
    if-eqz v16, :cond_96

    invoke-static {v14}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->textFieldMagnifier(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_60

    :cond_96
    move-object/from16 v17, v6

    :goto_60
    new-instance v10, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;

    move-object v0, v10

    move/from16 v20, v4

    const/16 v6, 0x180

    move-object/from16 v1, v27

    move-object v5, v2

    move-object v2, v3

    move-object/from16 v3, v44

    move-object/from16 v22, v37

    move/from16 v4, v21

    move-object/from16 v24, v15

    move-object v15, v5

    move v5, v9

    move/from16 v26, v9

    move-object v9, v7

    move v7, v6

    move-object v6, v8

    move v8, v7

    move-object/from16 v18, v42

    move/from16 v28, v43

    move-object/from16 v7, p0

    move-object/from16 v19, v34

    move-object/from16 v8, v18

    move-object/from16 v31, p15

    move-object/from16 v30, v9

    move-object/from16 v9, p12

    move-object/from16 v65, v10

    move-object/from16 v32, v18

    move-object/from16 v10, v39

    move-object/from16 v66, v11

    move-object/from16 v11, v36

    move-object/from16 v18, v12

    move-object/from16 v33, v44

    move-object/from16 v12, v17

    move-object/from16 v34, v13

    move-object/from16 v13, v31

    move-object/from16 p2, v14

    move-object/from16 v67, v15

    move/from16 v15, v16

    move/from16 v16, v23

    move-object/from16 v17, v25

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V

    const v0, -0x164ff220

    move-object/from16 v2, v65

    move-object/from16 v1, v67

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object/from16 v5, p2

    move-object/from16 v2, v66

    const/16 v3, 0x180

    invoke-static {v2, v5, v0, v1, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move/from16 v14, v20

    move/from16 v11, v21

    move-object/from16 v13, v22

    move/from16 v15, v23

    move-object/from16 v12, v24

    move-object/from16 v6, v25

    move/from16 v10, v26

    move-object/from16 v16, v27

    move/from16 v9, v28

    move-object/from16 v8, v29

    move-object/from16 v7, v30

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    move-object/from16 v3, v34

    :goto_61
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_97

    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$6;

    move-object v0, v1

    move-object/from16 v68, v1

    move-object/from16 v1, p0

    move-object/from16 v69, v2

    move-object/from16 v2, p1

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$6;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v68

    move-object/from16 v0, v69

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_97
    return-void

    :cond_98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no recompose scope found"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x1399887

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_6

    :cond_7
    :goto_4
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget v3, p3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p3, p0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, p3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_c

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_8

    invoke-virtual {p3, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_9

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    invoke-static {v3, p3, v3, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_a
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7e

    invoke-static {p1, p2, p3, v0}, Landroidx/compose/foundation/text/ContextMenu_androidKt;->ContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_b

    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextFieldRootBox$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextFieldRootBox$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final TextFieldCursorHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const/4 v0, 0x0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x5597ad88

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p2, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v1, :cond_e

    iget-object v1, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->showCursorHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_3

    :cond_4
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_e

    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_5

    if-ne v4, v5, :cond_6

    :cond_5
    new-instance v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;

    invoke-direct {v4, p0, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v4, Landroidx/compose/foundation/text/TextDragObserver;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    iget-object v6, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v7

    iget-wide v7, v7, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    sget v9, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    long-to-int v7, v7

    invoke-interface {v6, v7}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v6

    iget-object v7, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v3

    :goto_4
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v7, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v8, v7, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v8, v8, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v0, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v6

    invoke-virtual {v7, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    sget v7, Landroidx/compose/foundation/text/TextFieldCursorKt;->DefaultCursorThickness:F

    invoke-interface {v1, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v6, Landroidx/compose/ui/geometry/Rect;->left:F

    add-float/2addr v1, v2

    iget v2, v6, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v6

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_8

    if-ne v7, v5, :cond_9

    :cond_8
    new-instance v7, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;

    invoke-direct {v7, v1, v2}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;-><init>(J)V

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    move-object v6, v7

    check-cast v6, Landroidx/compose/foundation/text/selection/OffsetProvider;

    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_a

    if-ne v9, v5, :cond_b

    :cond_a
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;

    invoke-direct {v9, v4, p0, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v9}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {p1, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_c

    if-ne v7, v5, :cond_d

    :cond_c
    new-instance v7, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$3$1;

    invoke-direct {v7, v1, v2}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$3$1;-><init>(J)V

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v0, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v7, 0x4

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    move-object v1, v6

    move-object v5, p1

    move v6, v0

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-USBMPiE(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :cond_e
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_f

    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$4;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$4;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final access$SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 10

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x25552d88

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    const/16 v2, 0x20

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v3, 0x12

    if-ne v1, v3, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_5
    :goto_3
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x671d746b

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v3, :cond_7

    iget-object v6, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v6, :cond_6

    iget-boolean v6, v6, Landroidx/compose/foundation/text/LegacyTextFieldState;->isLayoutResultStale:Z

    goto :goto_4

    :cond_6
    move v6, v5

    :goto_4
    xor-int/2addr v6, v5

    if-eqz v6, :cond_7

    move-object v4, v3

    :cond_7
    if-nez v4, :cond_8

    goto/16 :goto_5

    :cond_8
    const v3, 0x26d0c963

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    iget-wide v6, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v6

    iget-wide v6, v6, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    shr-long/2addr v6, v2

    long-to-int v2, v6

    invoke-interface {v3, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v2

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v6

    iget-wide v6, v6, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-interface {v3, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v3

    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v2

    sub-int/2addr v3, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v3

    const v4, 0x1dcca5b8

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v4, :cond_9

    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->showSelectionHandleStart$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v5, :cond_9

    shl-int/lit8 v4, v0, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/lit8 v4, v4, 0x6

    invoke-static {v5, v2, p0, p2, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    :cond_9
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v2, :cond_a

    iget-object v2, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->showSelectionHandleEnd$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v5, :cond_a

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    invoke-static {v1, v3, p0, p2, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    :cond_a
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v0, :cond_e

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    iget-object v3, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->showFloatingToolbar$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-eqz v2, :cond_b

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->showSelectionToolbar$foundation_release()V

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation_release()V

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation_release()V

    :cond_e
    :goto_5
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_f

    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$SelectionToolbarAndHandles$2;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt$SelectionToolbarAndHandles$2;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZI)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final access$endInputSession(Landroidx/compose/foundation/text/LegacyTextFieldState;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/compose/ui/text/input/EditProcessor;

    iget-object v3, v3, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    invoke-static {v3, v1, v5, v6, v4}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    check-cast v2, Landroidx/compose/foundation/text/LegacyTextFieldState$onValueChange$1;

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/LegacyTextFieldState$onValueChange$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    iget-object v3, v2, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroidx/compose/ui/text/input/TextInputService;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->stopInput()V

    :cond_0
    iput-object v1, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    return-void
.end method

.method public static final access$startInputSession(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 5

    iget-object v0, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/compose/ui/text/input/EditProcessor;

    iget-object v1, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v2, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Landroidx/compose/foundation/text/TextFieldDelegate$Companion$restartInput$1;

    invoke-direct {v4, v0, v1, v3}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion$restartInput$1;-><init>(Landroidx/compose/ui/text/input/EditProcessor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputService;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v0, p2, p3, v4, v2}, Landroidx/compose/ui/text/input/PlatformTextInputService;->startInput(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Landroidx/compose/ui/text/input/TextInputSession;

    invoke-direct {p3, p0, v0}, Landroidx/compose/ui/text/input/TextInputSession;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object p3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object p3, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    invoke-static {p1, p2, p4}, Landroidx/compose/foundation/text/CoreTextFieldKt;->notifyFocusedRect(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    return-void
.end method

.method public static final notifyFocusedRect(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 11

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v8, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_2

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_3

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_3
    :try_start_3
    iget-object v5, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    iget-object v6, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    move-result v9

    move-object v4, p1

    move-object v10, p2

    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->notifyFocusedRect$foundation_release(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/text/input/TextInputSession;ZLandroidx/compose/ui/text/input/OffsetMapping;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0
.end method
