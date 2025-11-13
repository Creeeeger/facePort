.class public abstract Landroidx/compose/material3/AndroidAlertDialog_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V
    .locals 48

    move/from16 v15, p19

    move/from16 v13, p20

    move/from16 v14, p21

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/16 v5, 0x80

    const/16 v6, 0x100

    move-object/from16 v7, p18

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v8, -0x7c0ed530

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v8, v14, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eqz v8, :cond_0

    or-int/lit8 v8, v15, 0x6

    move v11, v8

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v15, 0x6

    if-nez v8, :cond_2

    move-object/from16 v8, p0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v10

    goto :goto_0

    :cond_1
    move v11, v9

    :goto_0
    or-int/2addr v11, v15

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    move v11, v15

    :goto_1
    and-int/lit8 v12, v14, 0x2

    if-eqz v12, :cond_4

    or-int/lit8 v11, v11, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v15, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 v16, v2

    goto :goto_2

    :cond_5
    move/from16 v16, v1

    :goto_2
    or-int v11, v11, v16

    :goto_3
    and-int/lit8 v16, v14, 0x4

    if-eqz v16, :cond_7

    or-int/lit16 v11, v11, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v15, 0x180

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v17, v6

    goto :goto_4

    :cond_8
    move/from16 v17, v5

    :goto_4
    or-int v11, v11, v17

    :goto_5
    and-int/lit8 v17, v14, 0x8

    if-eqz v17, :cond_a

    or-int/lit16 v11, v11, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v15, 0xc00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x800

    goto :goto_6

    :cond_b
    const/16 v19, 0x400

    :goto_6
    or-int v11, v11, v19

    :goto_7
    and-int/lit8 v19, v14, 0x10

    if-eqz v19, :cond_d

    or-int/lit16 v11, v11, 0x6000

    :cond_c
    move-object/from16 v1, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v1, v15, 0x6000

    if-nez v1, :cond_c

    move-object/from16 v1, p4

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    const/16 v21, 0x4000

    goto :goto_8

    :cond_e
    const/16 v21, 0x2000

    :goto_8
    or-int v11, v11, v21

    :goto_9
    and-int/lit8 v21, v14, 0x20

    const/high16 v22, 0x30000

    if-eqz v21, :cond_f

    or-int v11, v11, v22

    move-object/from16 v2, p5

    goto :goto_b

    :cond_f
    and-int v22, v15, v22

    move-object/from16 v2, p5

    if-nez v22, :cond_11

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v23, 0x10000

    :goto_a
    or-int v11, v11, v23

    :cond_11
    :goto_b
    and-int/lit8 v23, v14, 0x40

    const/high16 v24, 0x180000

    if-eqz v23, :cond_12

    or-int v11, v11, v24

    move-object/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v24, v15, v24

    move-object/from16 v0, p6

    if-nez v24, :cond_14

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    const/high16 v25, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v25, 0x80000

    :goto_c
    or-int v11, v11, v25

    :cond_14
    :goto_d
    const/high16 v25, 0xc00000

    and-int v25, v15, v25

    if-nez v25, :cond_17

    and-int/lit16 v4, v14, 0x80

    if-nez v4, :cond_15

    move-object/from16 v4, p7

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    const/high16 v26, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v4, p7

    :cond_16
    const/high16 v26, 0x400000

    :goto_e
    or-int v11, v11, v26

    goto :goto_f

    :cond_17
    move-object/from16 v4, p7

    :goto_f
    const/high16 v26, 0x6000000

    and-int v26, v15, v26

    if-nez v26, :cond_19

    and-int/lit16 v5, v14, 0x100

    move-wide/from16 v3, p8

    if-nez v5, :cond_18

    invoke-virtual {v7, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v27

    if-eqz v27, :cond_18

    const/high16 v27, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v27, 0x2000000

    :goto_10
    or-int v11, v11, v27

    goto :goto_11

    :cond_19
    move-wide/from16 v3, p8

    :goto_11
    const/high16 v27, 0x30000000

    and-int v27, v15, v27

    if-nez v27, :cond_1b

    and-int/lit16 v5, v14, 0x200

    move-wide/from16 v0, p10

    if-nez v5, :cond_1a

    invoke-virtual {v7, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/high16 v5, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v5, 0x10000000

    :goto_12
    or-int/2addr v11, v5

    goto :goto_13

    :cond_1b
    move-wide/from16 v0, p10

    :goto_13
    and-int/lit8 v5, v13, 0x6

    if-nez v5, :cond_1e

    const/16 v5, 0x400

    and-int/lit16 v6, v14, 0x400

    if-nez v6, :cond_1c

    move-wide/from16 v5, p12

    invoke-virtual {v7, v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v29

    if-eqz v29, :cond_1d

    const/16 v18, 0x4

    goto :goto_14

    :cond_1c
    move-wide/from16 v5, p12

    :cond_1d
    const/16 v18, 0x2

    :goto_14
    or-int v18, v13, v18

    goto :goto_15

    :cond_1e
    move-wide/from16 v5, p12

    move/from16 v18, v13

    :goto_15
    and-int/lit8 v29, v13, 0x30

    if-nez v29, :cond_21

    const/16 v0, 0x800

    and-int/lit16 v1, v14, 0x800

    if-nez v1, :cond_1f

    move-wide/from16 v0, p14

    invoke-virtual {v7, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v29

    if-eqz v29, :cond_20

    const/16 v20, 0x20

    goto :goto_16

    :cond_1f
    move-wide/from16 v0, p14

    :cond_20
    const/16 v20, 0x10

    :goto_16
    or-int v18, v18, v20

    :goto_17
    move/from16 v0, v18

    goto :goto_18

    :cond_21
    move-wide/from16 v0, p14

    goto :goto_17

    :goto_18
    and-int/lit16 v1, v14, 0x1000

    if-eqz v1, :cond_22

    or-int/lit16 v0, v0, 0x180

    :goto_19
    const/16 v2, 0x2000

    goto :goto_1b

    :cond_22
    and-int/lit16 v2, v13, 0x180

    if-nez v2, :cond_24

    move/from16 v2, p16

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_23

    const/16 v18, 0x100

    goto :goto_1a

    :cond_23
    const/16 v18, 0x80

    :goto_1a
    or-int v0, v0, v18

    goto :goto_19

    :cond_24
    move/from16 v2, p16

    goto :goto_19

    :goto_1b
    and-int/2addr v2, v14

    if-eqz v2, :cond_26

    or-int/lit16 v0, v0, 0xc00

    :cond_25
    move-object/from16 v3, p17

    goto :goto_1d

    :cond_26
    and-int/lit16 v3, v13, 0xc00

    if-nez v3, :cond_25

    move-object/from16 v3, p17

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/16 v4, 0x800

    goto :goto_1c

    :cond_27
    const/16 v4, 0x400

    :goto_1c
    or-int/2addr v0, v4

    :goto_1d
    const v4, 0x12492493

    and-int/2addr v4, v11

    const v3, 0x12492492

    if-ne v4, v3, :cond_29

    and-int/lit16 v3, v0, 0x493

    const/16 v4, 0x492

    if-ne v3, v4, :cond_29

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_1e

    :cond_28
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v8, p6

    move-wide/from16 v37, p10

    move-wide/from16 v41, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-wide/from16 v39, v5

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    goto/16 :goto_2f

    :cond_29
    :goto_1e
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v3, v15, 0x1

    const v4, -0x70000001

    const v18, -0xe000001

    const v20, -0x1c00001

    if-eqz v3, :cond_30

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_20

    :cond_2a
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v1, 0x80

    and-int/2addr v1, v14

    if-eqz v1, :cond_2b

    and-int v11, v11, v20

    :cond_2b
    const/16 v1, 0x100

    and-int/2addr v1, v14

    if-eqz v1, :cond_2c

    and-int v11, v11, v18

    :cond_2c
    and-int/lit16 v1, v14, 0x200

    if-eqz v1, :cond_2d

    and-int/2addr v11, v4

    :cond_2d
    const/16 v1, 0x400

    and-int/2addr v1, v14

    if-eqz v1, :cond_2e

    and-int/lit8 v0, v0, -0xf

    :cond_2e
    const/16 v1, 0x800

    and-int/2addr v1, v14

    if-eqz v1, :cond_2f

    and-int/lit8 v0, v0, -0x71

    :cond_2f
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide/from16 v37, p10

    move-wide/from16 v41, p14

    move v8, v0

    move-wide/from16 v39, v5

    move/from16 v16, v11

    move-object/from16 v0, p4

    move-wide/from16 v4, p8

    move/from16 v6, p16

    :goto_1f
    move-object/from16 v11, p17

    goto/16 :goto_2e

    :cond_30
    :goto_20
    if-eqz v16, :cond_31

    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    :cond_31
    const/16 v16, 0x0

    if-eqz v17, :cond_32

    move-object/from16 v10, v16

    :cond_32
    if-eqz v19, :cond_33

    move-object/from16 v17, v16

    goto :goto_21

    :cond_33
    move-object/from16 v17, p4

    :goto_21
    if-eqz v21, :cond_34

    move-object/from16 v19, v16

    goto :goto_22

    :cond_34
    move-object/from16 v19, p5

    :goto_22
    if-eqz v23, :cond_35

    :goto_23
    const/16 v3, 0x80

    goto :goto_24

    :cond_35
    move-object/from16 v16, p6

    goto :goto_23

    :goto_24
    and-int/2addr v3, v14

    if-eqz v3, :cond_36

    sget v3, Landroidx/compose/material3/AlertDialogDefaults;->TonalElevation:F

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/material3/tokens/DialogTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v3, v7}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    and-int v11, v11, v20

    :goto_25
    const/16 v4, 0x100

    goto :goto_26

    :cond_36
    move-object/from16 v3, p7

    goto :goto_25

    :goto_26
    and-int/2addr v4, v14

    if-eqz v4, :cond_37

    sget v4, Landroidx/compose/material3/AlertDialogDefaults;->TonalElevation:F

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/DialogTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainerHigh:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v4, v7}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v20

    and-int v11, v11, v18

    goto :goto_27

    :cond_37
    move-wide/from16 v20, p8

    :goto_27
    and-int/lit16 v4, v14, 0x200

    if-eqz v4, :cond_38

    sget v4, Landroidx/compose/material3/AlertDialogDefaults;->TonalElevation:F

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/DialogTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v4, v7}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v22

    const v4, -0x70000001

    and-int/2addr v4, v11

    move v11, v4

    :goto_28
    const/16 v4, 0x400

    goto :goto_29

    :cond_38
    move-wide/from16 v22, p10

    goto :goto_28

    :goto_29
    and-int/2addr v4, v14

    if-eqz v4, :cond_39

    sget v4, Landroidx/compose/material3/AlertDialogDefaults;->TonalElevation:F

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/DialogTokens;->HeadlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v4, v7}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v4

    and-int/lit8 v0, v0, -0xf

    :goto_2a
    const/16 v6, 0x800

    goto :goto_2b

    :cond_39
    move-wide v4, v5

    goto :goto_2a

    :goto_2b
    and-int/2addr v6, v14

    if-eqz v6, :cond_3a

    sget v6, Landroidx/compose/material3/AlertDialogDefaults;->TonalElevation:F

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/material3/tokens/DialogTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v24

    and-int/lit8 v0, v0, -0x71

    goto :goto_2c

    :cond_3a
    move-wide/from16 v24, p14

    :goto_2c
    if-eqz v1, :cond_3b

    sget v1, Landroidx/compose/material3/AlertDialogDefaults;->TonalElevation:F

    goto :goto_2d

    :cond_3b
    move/from16 v1, p16

    :goto_2d
    if-eqz v2, :cond_3c

    new-instance v2, Landroidx/compose/ui/window/DialogProperties;

    const/4 v6, 0x7

    invoke-direct {v2, v6}, Landroidx/compose/ui/window/DialogProperties;-><init>(I)V

    move v8, v0

    move v6, v1

    move-wide/from16 v39, v4

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-wide/from16 v4, v20

    move-wide/from16 v37, v22

    move-wide/from16 v41, v24

    move/from16 v45, v11

    move-object v11, v2

    move-object/from16 v2, v16

    move/from16 v16, v45

    goto :goto_2e

    :cond_3c
    move v8, v0

    move v6, v1

    move-wide/from16 v39, v4

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-wide/from16 v4, v20

    move-wide/from16 v37, v22

    move-wide/from16 v41, v24

    move/from16 v16, v11

    goto/16 :goto_1f

    :goto_2e
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v17, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v17, 0x7ffffffe

    and-int v35, v16, v17

    and-int/lit16 v8, v8, 0x1ffe

    move/from16 v36, v8

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    move-wide/from16 v26, v37

    move-wide/from16 v28, v39

    move-wide/from16 v30, v41

    move/from16 v32, v6

    move-object/from16 v33, v11

    move-object/from16 v34, v7

    invoke-static/range {v16 .. v36}, Landroidx/compose/material3/AlertDialogKt;->AlertDialogImpl-wrnwzgE(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v2

    move/from16 v17, v6

    move-object/from16 v18, v11

    move-object v6, v1

    move-wide/from16 v45, v4

    move-object v5, v0

    move-object v4, v10

    move-wide/from16 v10, v45

    move-object/from16 v47, v9

    move-object v9, v3

    move-object/from16 v3, v47

    :goto_2f
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_3d

    new-instance v2, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v43, v2

    move-object/from16 v2, p1

    move-object v12, v7

    move-object v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-object/from16 v44, v12

    move-wide/from16 v11, v37

    move-wide/from16 v13, v39

    move-wide/from16 v15, v41

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v21}, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;III)V

    move-object/from16 v1, v43

    move-object/from16 v0, v44

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3d
    return-void
.end method
