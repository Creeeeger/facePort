.class public abstract Landroidx/compose/material3/OutlinedTextFieldKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final OutlinedTextFieldInnerPadding:F

.field public static final OutlinedTextFieldTopPadding:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextFieldInnerPadding:F

    sget-wide v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallLineHeight:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const-wide v2, 0xff00000000L

    and-long/2addr v2, v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0, v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextFieldTopPadding:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot perform operation for Unspecified type."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V
    .locals 51

    move/from16 v15, p24

    move/from16 v14, p25

    move/from16 v13, p26

    move/from16 v12, p27

    const/16 v10, 0x80

    const/16 v11, 0x100

    const/16 v16, 0x10

    const/16 v17, 0x20

    move-object/from16 v1, p23

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x7296427d

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v2, 0x1

    and-int/lit8 v20, v12, 0x1

    const/16 v21, 0x2

    const/16 v22, 0x4

    if-eqz v20, :cond_0

    or-int/lit8 v20, v15, 0x6

    move-object/from16 v3, p0

    move/from16 v23, v20

    goto :goto_1

    :cond_0
    and-int/lit8 v20, v15, 0x6

    move-object/from16 v3, p0

    if-nez v20, :cond_2

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    move/from16 v23, v22

    goto :goto_0

    :cond_1
    move/from16 v23, v21

    :goto_0
    or-int v23, v15, v23

    goto :goto_1

    :cond_2
    move/from16 v23, v15

    :goto_1
    and-int/lit8 v24, v12, 0x2

    if-eqz v24, :cond_4

    or-int/lit8 v23, v23, 0x30

    move-object/from16 v4, p1

    :cond_3
    :goto_2
    move/from16 v5, v23

    goto :goto_4

    :cond_4
    and-int/lit8 v24, v15, 0x30

    move-object/from16 v4, p1

    if-nez v24, :cond_3

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    move/from16 v25, v17

    goto :goto_3

    :cond_5
    move/from16 v25, v16

    :goto_3
    or-int v23, v23, v25

    goto :goto_2

    :goto_4
    and-int/lit8 v23, v12, 0x4

    if-eqz v23, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v2, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v2, v15, 0x180

    if-nez v2, :cond_6

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    move/from16 v26, v11

    goto :goto_5

    :cond_8
    move/from16 v26, v10

    :goto_5
    or-int v5, v5, v26

    :goto_6
    and-int/lit8 v26, v12, 0x8

    if-eqz v26, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move/from16 v0, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v0, v15, 0xc00

    if-nez v0, :cond_9

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_b

    const/16 v28, 0x800

    goto :goto_7

    :cond_b
    const/16 v28, 0x400

    :goto_7
    or-int v5, v5, v28

    :goto_8
    and-int/lit8 v28, v12, 0x10

    if-eqz v28, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move/from16 v7, p4

    goto :goto_a

    :cond_d
    and-int/lit16 v7, v15, 0x6000

    if-nez v7, :cond_c

    move/from16 v7, p4

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_e

    const/16 v30, 0x4000

    goto :goto_9

    :cond_e
    const/16 v30, 0x2000

    :goto_9
    or-int v5, v5, v30

    :goto_a
    const/high16 v30, 0x30000

    and-int v31, v15, v30

    const/high16 v32, 0x10000

    const/high16 v33, 0x20000

    if-nez v31, :cond_10

    and-int/lit8 v31, v12, 0x20

    move-object/from16 v6, p5

    if-nez v31, :cond_f

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    move/from16 v34, v33

    goto :goto_b

    :cond_f
    move/from16 v34, v32

    :goto_b
    or-int v5, v5, v34

    goto :goto_c

    :cond_10
    move-object/from16 v6, p5

    :goto_c
    and-int/lit8 v34, v12, 0x40

    const/high16 v35, 0x80000

    const/high16 v36, 0x100000

    const/high16 v37, 0x180000

    if-eqz v34, :cond_11

    or-int v5, v5, v37

    move-object/from16 v9, p6

    goto :goto_e

    :cond_11
    and-int v38, v15, v37

    move-object/from16 v9, p6

    if-nez v38, :cond_13

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_12

    move/from16 v39, v36

    goto :goto_d

    :cond_12
    move/from16 v39, v35

    :goto_d
    or-int v5, v5, v39

    :cond_13
    :goto_e
    and-int/lit16 v8, v12, 0x80

    const/high16 v40, 0x400000

    const/high16 v41, 0xc00000

    if-eqz v8, :cond_14

    or-int v5, v5, v41

    move-object/from16 v10, p7

    goto :goto_10

    :cond_14
    and-int v42, v15, v41

    move-object/from16 v10, p7

    if-nez v42, :cond_16

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_15

    const/high16 v43, 0x800000

    goto :goto_f

    :cond_15
    move/from16 v43, v40

    :goto_f
    or-int v5, v5, v43

    :cond_16
    :goto_10
    and-int/lit16 v0, v12, 0x100

    const/high16 v43, 0x6000000

    if-eqz v0, :cond_17

    or-int v5, v5, v43

    move-object/from16 v11, p8

    goto :goto_12

    :cond_17
    and-int v44, v15, v43

    move-object/from16 v11, p8

    if-nez v44, :cond_19

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_18

    const/high16 v45, 0x4000000

    goto :goto_11

    :cond_18
    const/high16 v45, 0x2000000

    :goto_11
    or-int v5, v5, v45

    :cond_19
    :goto_12
    and-int/lit16 v2, v12, 0x200

    const/high16 v45, 0x30000000

    if-eqz v2, :cond_1b

    or-int v5, v5, v45

    :cond_1a
    :goto_13
    const/16 v3, 0x400

    goto :goto_15

    :cond_1b
    and-int v46, v15, v45

    move-object/from16 v3, p9

    if-nez v46, :cond_1a

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1c

    const/high16 v46, 0x20000000

    goto :goto_14

    :cond_1c
    const/high16 v46, 0x10000000

    :goto_14
    or-int v5, v5, v46

    goto :goto_13

    :goto_15
    and-int/lit16 v4, v12, 0x400

    if-eqz v4, :cond_1d

    or-int/lit8 v39, v14, 0x6

    move/from16 v46, v39

    :goto_16
    const/16 v3, 0x800

    goto :goto_18

    :cond_1d
    and-int/lit8 v39, v14, 0x6

    move-object/from16 v3, p10

    if-nez v39, :cond_1f

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1e

    move/from16 v46, v22

    goto :goto_17

    :cond_1e
    move/from16 v46, v21

    :goto_17
    or-int v46, v14, v46

    goto :goto_16

    :cond_1f
    move/from16 v46, v14

    goto :goto_16

    :goto_18
    and-int/lit16 v6, v12, 0x800

    if-eqz v6, :cond_21

    or-int/lit8 v46, v46, 0x30

    :cond_20
    :goto_19
    move/from16 v3, v46

    goto :goto_1b

    :cond_21
    and-int/lit8 v38, v14, 0x30

    move-object/from16 v3, p11

    if-nez v38, :cond_20

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_22

    move/from16 v47, v17

    goto :goto_1a

    :cond_22
    move/from16 v47, v16

    :goto_1a
    or-int v46, v46, v47

    goto :goto_19

    :goto_1b
    and-int/lit16 v7, v12, 0x1000

    if-eqz v7, :cond_23

    or-int/lit16 v3, v3, 0x180

    :goto_1c
    const/16 v9, 0x2000

    goto :goto_1e

    :cond_23
    and-int/lit16 v9, v14, 0x180

    if-nez v9, :cond_25

    move-object/from16 v9, p12

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_24

    const/16 v46, 0x100

    goto :goto_1d

    :cond_24
    const/16 v46, 0x80

    :goto_1d
    or-int v3, v3, v46

    goto :goto_1c

    :cond_25
    move-object/from16 v9, p12

    goto :goto_1c

    :goto_1e
    and-int/lit16 v10, v12, 0x2000

    if-eqz v10, :cond_26

    or-int/lit16 v3, v3, 0xc00

    :goto_1f
    const/16 v9, 0x4000

    goto :goto_21

    :cond_26
    and-int/lit16 v9, v14, 0xc00

    if-nez v9, :cond_28

    move/from16 v9, p13

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v46

    if-eqz v46, :cond_27

    const/16 v38, 0x800

    goto :goto_20

    :cond_27
    const/16 v38, 0x400

    :goto_20
    or-int v3, v3, v38

    goto :goto_1f

    :cond_28
    move/from16 v9, p13

    goto :goto_1f

    :goto_21
    and-int/lit16 v11, v12, 0x4000

    if-eqz v11, :cond_2a

    or-int/lit16 v3, v3, 0x6000

    :cond_29
    move-object/from16 v9, p14

    goto :goto_23

    :cond_2a
    and-int/lit16 v9, v14, 0x6000

    if-nez v9, :cond_29

    move-object/from16 v9, p14

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2b

    const/16 v29, 0x4000

    goto :goto_22

    :cond_2b
    const/16 v29, 0x2000

    :goto_22
    or-int v3, v3, v29

    :goto_23
    const v29, 0x8000

    and-int v29, v12, v29

    if-eqz v29, :cond_2c

    or-int v3, v3, v30

    move-object/from16 v9, p15

    goto :goto_25

    :cond_2c
    and-int v30, v14, v30

    move-object/from16 v9, p15

    if-nez v30, :cond_2e

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2d

    move/from16 v30, v33

    goto :goto_24

    :cond_2d
    move/from16 v30, v32

    :goto_24
    or-int v3, v3, v30

    :cond_2e
    :goto_25
    and-int v30, v12, v32

    if-eqz v30, :cond_2f

    or-int v3, v3, v37

    move-object/from16 v9, p16

    goto :goto_27

    :cond_2f
    and-int v31, v14, v37

    move-object/from16 v9, p16

    if-nez v31, :cond_31

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_30

    move/from16 v31, v36

    goto :goto_26

    :cond_30
    move/from16 v31, v35

    :goto_26
    or-int v3, v3, v31

    :cond_31
    :goto_27
    and-int v31, v12, v33

    if-eqz v31, :cond_32

    or-int v3, v3, v41

    move/from16 v9, p17

    goto :goto_29

    :cond_32
    and-int v32, v14, v41

    move/from16 v9, p17

    if-nez v32, :cond_34

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_33

    const/high16 v25, 0x800000

    goto :goto_28

    :cond_33
    move/from16 v25, v40

    :goto_28
    or-int v3, v3, v25

    :cond_34
    :goto_29
    and-int v25, v14, v43

    if-nez v25, :cond_36

    const/high16 v25, 0x40000

    and-int v32, v12, v25

    move/from16 v9, p18

    if-nez v32, :cond_35

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v25

    if-eqz v25, :cond_35

    const/high16 v20, 0x4000000

    goto :goto_2a

    :cond_35
    const/high16 v20, 0x2000000

    :goto_2a
    or-int v3, v3, v20

    goto :goto_2b

    :cond_36
    move/from16 v9, p18

    :goto_2b
    and-int v20, v12, v35

    if-eqz v20, :cond_37

    or-int v3, v3, v45

    move/from16 v9, p19

    goto :goto_2d

    :cond_37
    and-int v24, v14, v45

    move/from16 v9, p19

    if-nez v24, :cond_39

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v24

    if-eqz v24, :cond_38

    const/high16 v18, 0x20000000

    goto :goto_2c

    :cond_38
    const/high16 v18, 0x10000000

    :goto_2c
    or-int v3, v3, v18

    :cond_39
    :goto_2d
    and-int v18, v12, v36

    if-eqz v18, :cond_3a

    or-int/lit8 v19, v13, 0x6

    move-object/from16 v9, p20

    goto :goto_2e

    :cond_3a
    and-int/lit8 v19, v13, 0x6

    move-object/from16 v9, p20

    if-nez v19, :cond_3c

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3b

    move/from16 v21, v22

    :cond_3b
    or-int v19, v13, v21

    goto :goto_2e

    :cond_3c
    move/from16 v19, v13

    :goto_2e
    and-int/lit8 v21, v13, 0x30

    if-nez v21, :cond_3e

    const/high16 v21, 0x200000

    and-int v21, v12, v21

    move-object/from16 v9, p21

    if-nez v21, :cond_3d

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3d

    move/from16 v16, v17

    :cond_3d
    or-int v19, v19, v16

    goto :goto_2f

    :cond_3e
    move-object/from16 v9, p21

    :goto_2f
    and-int/lit16 v9, v13, 0x180

    if-nez v9, :cond_41

    and-int v9, v12, v40

    if-nez v9, :cond_3f

    move-object/from16 v9, p22

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_40

    const/16 v42, 0x100

    goto :goto_30

    :cond_3f
    move-object/from16 v9, p22

    :cond_40
    const/16 v42, 0x80

    :goto_30
    or-int v19, v19, v42

    :goto_31
    move/from16 v9, v19

    goto :goto_32

    :cond_41
    move-object/from16 v9, p22

    goto :goto_31

    :goto_32
    const v16, 0x12492493

    and-int v5, v5, v16

    const v13, 0x12492492

    if-ne v5, v13, :cond_43

    const v5, 0x12492493

    and-int/2addr v3, v5

    const v5, 0x12492492

    if-ne v3, v5, :cond_43

    and-int/lit16 v3, v9, 0x93

    const/16 v5, 0x92

    if-ne v3, v5, :cond_43

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_33

    :cond_42
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    goto/16 :goto_51

    :cond_43
    :goto_33
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v3, 0x1

    and-int/lit8 v5, v15, 0x1

    if-eqz v5, :cond_45

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_34

    :cond_44
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v5, p2

    move/from16 v13, p3

    move/from16 v16, p4

    move-object/from16 v3, p5

    move-object/from16 v19, p6

    move-object/from16 v8, p7

    move-object/from16 v0, p8

    move-object/from16 v2, p9

    move-object/from16 v4, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v21, p15

    move-object/from16 v22, p16

    move/from16 v9, p17

    move/from16 v17, p18

    move/from16 v20, p19

    move-object/from16 v18, p20

    move-object/from16 v48, p21

    move-object/from16 v12, p22

    goto/16 :goto_4b

    :cond_45
    :goto_34
    if-eqz v23, :cond_46

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_35

    :cond_46
    move-object/from16 v5, p2

    :goto_35
    if-eqz v26, :cond_47

    move v13, v3

    goto :goto_36

    :cond_47
    move/from16 v13, p3

    :goto_36
    if-eqz v28, :cond_48

    const/16 v16, 0x0

    goto :goto_37

    :cond_48
    move/from16 v16, p4

    :goto_37
    and-int/lit8 v17, v12, 0x20

    if-eqz v17, :cond_49

    sget-object v3, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    goto :goto_38

    :cond_49
    move-object/from16 v3, p5

    :goto_38
    const/16 v17, 0x0

    if-eqz v34, :cond_4a

    move-object/from16 v19, v17

    goto :goto_39

    :cond_4a
    move-object/from16 v19, p6

    :goto_39
    if-eqz v8, :cond_4b

    move-object/from16 v8, v17

    goto :goto_3a

    :cond_4b
    move-object/from16 v8, p7

    :goto_3a
    if-eqz v0, :cond_4c

    move-object/from16 v0, v17

    goto :goto_3b

    :cond_4c
    move-object/from16 v0, p8

    :goto_3b
    if-eqz v2, :cond_4d

    move-object/from16 v2, v17

    goto :goto_3c

    :cond_4d
    move-object/from16 v2, p9

    :goto_3c
    if-eqz v4, :cond_4e

    move-object/from16 v4, v17

    goto :goto_3d

    :cond_4e
    move-object/from16 v4, p10

    :goto_3d
    if-eqz v6, :cond_4f

    move-object/from16 v6, v17

    goto :goto_3e

    :cond_4f
    move-object/from16 v6, p11

    :goto_3e
    if-eqz v7, :cond_50

    move-object/from16 v7, v17

    goto :goto_3f

    :cond_50
    move-object/from16 v7, p12

    :goto_3f
    if-eqz v10, :cond_51

    const/4 v10, 0x0

    goto :goto_40

    :cond_51
    move/from16 v10, p13

    :goto_40
    if-eqz v11, :cond_52

    sget-object v11, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    goto :goto_41

    :cond_52
    move-object/from16 v11, p14

    :goto_41
    if-eqz v29, :cond_53

    sget-object v21, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    goto :goto_42

    :cond_53
    move-object/from16 v21, p15

    :goto_42
    if-eqz v30, :cond_54

    sget-object v22, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    goto :goto_43

    :cond_54
    move-object/from16 v22, p16

    :goto_43
    if-eqz v31, :cond_55

    const/16 v23, 0x0

    :goto_44
    const/high16 v24, 0x40000

    goto :goto_45

    :cond_55
    move/from16 v23, p17

    goto :goto_44

    :goto_45
    and-int v24, v12, v24

    if-eqz v24, :cond_57

    if-eqz v23, :cond_56

    const/16 v24, 0x1

    goto :goto_46

    :cond_56
    const v24, 0x7fffffff

    goto :goto_46

    :cond_57
    move/from16 v24, p18

    :goto_46
    if-eqz v20, :cond_58

    const/16 v20, 0x1

    goto :goto_47

    :cond_58
    move/from16 v20, p19

    :goto_47
    if-eqz v18, :cond_59

    goto :goto_48

    :cond_59
    move-object/from16 v17, p20

    :goto_48
    const/high16 v18, 0x200000

    and-int v18, v12, v18

    if-eqz v18, :cond_5a

    sget-object v18, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    sget-object v18, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v9, v1}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v9

    goto :goto_49

    :cond_5a
    move-object/from16 v9, p21

    :goto_49
    and-int v18, v12, v40

    if-eqz v18, :cond_5b

    sget-object v18, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-static {v1}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v18

    move-object/from16 v48, v9

    move-object/from16 v12, v18

    move/from16 v9, v23

    move-object/from16 v18, v17

    :goto_4a
    move/from16 v17, v24

    goto :goto_4b

    :cond_5b
    move-object/from16 v12, p22

    move-object/from16 v48, v9

    move-object/from16 v18, v17

    move/from16 v9, v23

    goto :goto_4a

    :goto_4b
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v23, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v14, 0x1cab224

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v18, :cond_5d

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v15, :cond_5c

    new-instance v14, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v14}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5c
    check-cast v14, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    :goto_4c
    const/4 v15, 0x0

    goto :goto_4d

    :cond_5d
    move-object/from16 v14, v18

    goto :goto_4c

    :goto_4d
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v15, 0x1cac8f6

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v23

    const-wide/16 v25, 0x10

    cmp-long v15, v23, v25

    if-eqz v15, :cond_5e

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    :goto_4e
    const/4 v6, 0x0

    goto :goto_50

    :cond_5e
    const/4 v15, 0x0

    invoke-static {v14, v1, v15}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v13, :cond_5f

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    iget-wide v6, v12, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    :goto_4f
    move-wide/from16 v23, v6

    goto :goto_4e

    :cond_5f
    move-object/from16 p2, v6

    move-object/from16 p3, v7

    if-eqz v10, :cond_60

    iget-wide v6, v12, Landroidx/compose/material3/TextFieldColors;->errorTextColor:J

    goto :goto_4f

    :cond_60
    if-eqz v15, :cond_61

    iget-wide v6, v12, Landroidx/compose/material3/TextFieldColors;->focusedTextColor:J

    goto :goto_4f

    :cond_61
    iget-wide v6, v12, Landroidx/compose/material3/TextFieldColors;->unfocusedTextColor:J

    goto :goto_4f

    :goto_50
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v6, Landroidx/compose/ui/text/TextStyle;

    const-wide/16 v25, 0x0

    const/4 v7, 0x0

    const-wide/16 v27, 0x0

    const/4 v15, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const v33, 0xfffffe

    move-object/from16 p4, v6

    move-wide/from16 p5, v23

    move-wide/from16 p7, v27

    move-object/from16 p9, v15

    move-object/from16 p10, v29

    move-wide/from16 p11, v30

    move/from16 p13, v32

    move-wide/from16 p14, v25

    move/from16 p16, v7

    move/from16 p17, v33

    invoke-direct/range {p4 .. p17}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    invoke-virtual {v3, v6}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v33

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v26, v6

    check-cast v26, Landroidx/compose/ui/unit/Density;

    sget-object v6, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-object v7, v12, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    new-instance v7, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$1;

    move-object/from16 v23, v7

    move-object/from16 v24, v5

    move-object/from16 v25, v19

    move/from16 v27, v10

    move-object/from16 v28, v12

    move-object/from16 v29, p0

    move-object/from16 v30, p1

    move/from16 v31, v13

    move/from16 v32, v16

    move-object/from16 v34, v21

    move-object/from16 v35, v22

    move/from16 v36, v9

    move/from16 v37, v17

    move/from16 v38, v20

    move-object/from16 v39, v11

    move-object/from16 v40, v14

    move-object/from16 v41, v8

    move-object/from16 v42, v0

    move-object/from16 v43, v2

    move-object/from16 v44, v4

    move-object/from16 v45, p2

    move-object/from16 v46, p3

    move-object/from16 v47, v48

    invoke-direct/range {v23 .. v47}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;ZLandroidx/compose/material3/TextFieldColors;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;)V

    const v14, -0x7078cdbd

    invoke-static {v14, v7, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const/16 v14, 0x38

    invoke-static {v6, v7, v1, v14}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object v6, v3

    move-object v3, v5

    move v14, v10

    move-object v15, v11

    move-object/from16 v23, v12

    move/from16 v5, v16

    move-object/from16 v7, v19

    move-object/from16 v16, v21

    move-object/from16 v12, p2

    move-object v10, v2

    move-object v11, v4

    move v4, v13

    move/from16 v19, v17

    move-object/from16 v21, v18

    move-object/from16 v17, v22

    move-object/from16 v22, v48

    move-object/from16 v13, p3

    move/from16 v18, v9

    move-object v9, v0

    :goto_51
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_62

    new-instance v1, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2;

    move-object v0, v1

    move-object/from16 v49, v1

    move-object/from16 v1, p0

    move-object/from16 v50, v2

    move-object/from16 v2, p1

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    invoke-direct/range {v0 .. v27}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;IIII)V

    move-object/from16 v1, v49

    move-object/from16 v0, v50

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_62
    return-void
.end method

.method public static final OutlinedTextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v0, p16

    move-object/from16 v14, p14

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v13, 0x53f0cda1

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v13, v15, 0x6

    const/16 v16, 0x2

    if-nez v13, :cond_1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x4

    goto :goto_0

    :cond_0
    move/from16 v13, v16

    :goto_0
    or-int/2addr v13, v15

    goto :goto_1

    :cond_1
    move v13, v15

    :goto_1
    and-int/lit8 v17, v15, 0x30

    const/16 v18, 0x10

    const/16 v19, 0x20

    if-nez v17, :cond_3

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    move/from16 v17, v19

    goto :goto_2

    :cond_2
    move/from16 v17, v18

    :goto_2
    or-int v13, v13, v17

    :cond_3
    and-int/lit16 v12, v15, 0x180

    const/16 v17, 0x80

    const/16 v20, 0x100

    if-nez v12, :cond_5

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move/from16 v12, v20

    goto :goto_3

    :cond_4
    move/from16 v12, v17

    :goto_3
    or-int/2addr v13, v12

    :cond_5
    and-int/lit16 v12, v15, 0xc00

    const/16 v21, 0x400

    if-nez v12, :cond_7

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x800

    goto :goto_4

    :cond_6
    move/from16 v12, v21

    :goto_4
    or-int/2addr v13, v12

    :cond_7
    and-int/lit16 v12, v15, 0x6000

    if-nez v12, :cond_9

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_5

    :cond_8
    const/16 v12, 0x2000

    :goto_5
    or-int/2addr v13, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int/2addr v12, v15

    if-nez v12, :cond_b

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v12, 0x10000

    :goto_6
    or-int/2addr v13, v12

    :cond_b
    const/high16 v12, 0x180000

    and-int/2addr v12, v15

    if-nez v12, :cond_d

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v12, 0x80000

    :goto_7
    or-int/2addr v13, v12

    :cond_d
    const/high16 v12, 0xc00000

    and-int/2addr v12, v15

    if-nez v12, :cond_f

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v12, 0x400000

    :goto_8
    or-int/2addr v13, v12

    :cond_f
    const/high16 v12, 0x6000000

    and-int/2addr v12, v15

    if-nez v12, :cond_11

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_10

    const/high16 v12, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v12, 0x2000000

    :goto_9
    or-int/2addr v13, v12

    :cond_11
    const/high16 v12, 0x30000000

    and-int/2addr v12, v15

    if-nez v12, :cond_13

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_12

    const/high16 v12, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v12, 0x10000000

    :goto_a
    or-int/2addr v13, v12

    :cond_13
    and-int/lit8 v12, v0, 0x6

    if-nez v12, :cond_15

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    const/16 v16, 0x4

    :cond_14
    or-int v12, v0, v16

    goto :goto_b

    :cond_15
    move v12, v0

    :goto_b
    and-int/lit8 v16, v0, 0x30

    move-object/from16 v2, p11

    if-nez v16, :cond_17

    const/4 v15, 0x4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    move/from16 v18, v19

    :cond_16
    or-int v12, v12, v18

    :cond_17
    and-int/lit16 v15, v0, 0x180

    if-nez v15, :cond_19

    move-object/from16 v15, p12

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    move/from16 v17, v20

    :cond_18
    or-int v12, v12, v17

    :goto_c
    move-object/from16 v17, v14

    goto :goto_d

    :cond_19
    move-object/from16 v15, p12

    goto :goto_c

    :goto_d
    and-int/lit16 v14, v0, 0xc00

    if-nez v14, :cond_1b

    move-object/from16 v14, p13

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/16 v21, 0x800

    :cond_1a
    or-int v12, v12, v21

    goto :goto_e

    :cond_1b
    move-object/from16 v14, p13

    move-object/from16 v0, v17

    :goto_e
    const v17, 0x12492493

    and-int v15, v13, v17

    const v4, 0x12492492

    if-ne v15, v4, :cond_1d

    and-int/lit16 v4, v12, 0x493

    const/16 v15, 0x492

    if-ne v4, v15, :cond_1d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v5, p3

    move-object/from16 v13, p12

    move-object v15, v7

    goto/16 :goto_29

    :cond_1d
    :goto_f
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v4, v12, 0xe

    const/4 v15, 0x4

    if-ne v4, v15, :cond_1e

    const/4 v4, 0x1

    goto :goto_10

    :cond_1e
    const/4 v4, 0x0

    :goto_10
    const/high16 v15, 0xe000000

    and-int/2addr v15, v13

    const/high16 v3, 0x4000000

    if-ne v15, v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_11

    :cond_1f
    const/4 v3, 0x0

    :goto_11
    or-int/2addr v3, v4

    const/high16 v4, 0x70000000

    and-int/2addr v4, v13

    const/high16 v15, 0x20000000

    if-ne v4, v15, :cond_20

    const/4 v4, 0x1

    goto :goto_12

    :cond_20
    const/4 v4, 0x0

    :goto_12
    or-int/2addr v3, v4

    and-int/lit16 v4, v12, 0x1c00

    const/16 v15, 0x800

    if-ne v4, v15, :cond_21

    const/4 v4, 0x1

    goto :goto_13

    :cond_21
    const/4 v4, 0x0

    :goto_13
    or-int/2addr v3, v4

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_22

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v3, :cond_23

    :cond_22
    new-instance v4, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    invoke-direct {v4, v11, v9, v10, v14}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function1;ZFLandroidx/compose/foundation/layout/PaddingValues;)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    check-cast v4, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    iget v15, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    const/16 v16, 0x0

    if-eqz v10, :cond_4f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_24

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_24
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_14
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v9, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_25

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 p14, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_15

    :cond_25
    move-object/from16 p14, v3

    :goto_15
    invoke-static {v15, v0, v15, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_26
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v7, v12, 0x3

    and-int/lit8 v7, v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0xeec0e41

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v5, :cond_2b

    const-string v15, "Leading"

    invoke-static {v11, v15}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    sget-object v2, Landroidx/compose/material3/internal/TextFieldImplKt;->IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v15, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move/from16 v19, v12

    const/4 v15, 0x0

    invoke-static {v7, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget v15, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v10, :cond_2a

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v20, v10

    iget-boolean v10, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_27

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_27
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_16
    invoke-static {v0, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v14, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v10, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v10, :cond_28

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_29

    :cond_28
    invoke-static {v15, v0, v15, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_29
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v2, v13, 0xc

    and-int/lit8 v2, v2, 0xe

    const/4 v10, 0x1

    invoke-static {v2, v5, v0, v10}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    :goto_17
    const/4 v2, 0x0

    goto :goto_18

    :cond_2a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_2b
    move/from16 v20, v10

    move/from16 v19, v12

    goto :goto_17

    :goto_18
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v10, 0xeec31e4

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v6, :cond_30

    const-string v10, "Trailing"

    invoke-static {v11, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v12, Landroidx/compose/material3/internal/TextFieldImplKt;->IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v10, v12}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v7, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    iget v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v0, v10}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz v20, :cond_2f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v14, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v14, :cond_2c

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_2c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_19
    invoke-static {v0, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v12, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_2d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    :cond_2d
    invoke-static {v2, v0, v2, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2e
    invoke-static {v0, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v2, v13, 0xf

    and-int/lit8 v2, v2, 0xe

    const/4 v7, 0x1

    invoke-static {v2, v6, v0, v7}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    const/4 v2, 0x0

    goto :goto_1a

    :cond_2f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_30
    :goto_1a
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v14, p13

    move-object/from16 v7, p14

    invoke-static {v14, v7}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v10

    invoke-static {v14, v7}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v7

    if-eqz v5, :cond_31

    sget v12, Landroidx/compose/material3/internal/TextFieldImplKt;->HorizontalIconPadding:F

    sub-float/2addr v10, v12

    int-to-float v12, v2

    invoke-static {v10, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v10

    :cond_31
    if-eqz v6, :cond_32

    sget v12, Landroidx/compose/material3/internal/TextFieldImplKt;->HorizontalIconPadding:F

    sub-float/2addr v7, v12

    int-to-float v12, v2

    invoke-static {v7, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v7

    :cond_32
    const v2, 0xeeca193

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v15, p6

    if-eqz v15, :cond_37

    const-string v12, "Prefix"

    invoke-static {v11, v12}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget v5, Landroidx/compose/material3/internal/TextFieldImplKt;->MinTextLineHeight:F

    const/high16 v6, 0x7fc00000    # Float.NaN

    invoke-static {v12, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    sget v24, Landroidx/compose/material3/internal/TextFieldImplKt;->PrefixSuffixTextPadding:F

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xa

    move/from16 v22, v10

    invoke-static/range {v21 .. v26}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move/from16 v27, v10

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v0, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v20, :cond_36

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v14, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v14, :cond_33

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    :cond_33
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1b
    invoke-static {v0, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v10, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v10, :cond_34

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_35

    :cond_34
    invoke-static {v6, v0, v6, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_35
    invoke-static {v0, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v5, v13, 0x12

    and-int/lit8 v5, v5, 0xe

    const/4 v6, 0x1

    invoke-static {v5, v15, v0, v6}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    :goto_1c
    const/4 v5, 0x0

    goto :goto_1d

    :cond_36
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_37
    move/from16 v27, v10

    goto :goto_1c

    :goto_1d
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v5, 0xeecd371

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v10, p7

    if-eqz v10, :cond_3c

    const-string v5, "Suffix"

    invoke-static {v11, v5}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget v6, Landroidx/compose/material3/internal/TextFieldImplKt;->MinTextLineHeight:F

    const/high16 v12, 0x7fc00000    # Float.NaN

    invoke-static {v5, v6, v12}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    sget v22, Landroidx/compose/material3/internal/TextFieldImplKt;->PrefixSuffixTextPadding:F

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xa

    move/from16 v24, v7

    invoke-static/range {v21 .. v26}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v0, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v20, :cond_3b

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v21, v7

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_38

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1e

    :cond_38
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1e
    invoke-static {v0, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v14, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_39

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    :cond_39
    invoke-static {v6, v0, v6, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_3a
    invoke-static {v0, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v5, v13, 0x15

    and-int/lit8 v5, v5, 0xe

    const/4 v6, 0x1

    invoke-static {v5, v10, v0, v6}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    :goto_1f
    const/4 v5, 0x0

    goto :goto_20

    :cond_3b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_3c
    move/from16 v21, v7

    goto :goto_1f

    :goto_20
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget v6, Landroidx/compose/material3/internal/TextFieldImplKt;->MinTextLineHeight:F

    const/high16 v7, 0x7fc00000    # Float.NaN

    invoke-static {v11, v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v12}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    if-nez v15, :cond_3d

    move/from16 v29, v27

    goto :goto_21

    :cond_3d
    int-to-float v7, v5

    move/from16 v29, v7

    :goto_21
    if-nez v10, :cond_3e

    move/from16 v31, v21

    goto :goto_22

    :cond_3e
    int-to-float v7, v5

    move/from16 v31, v7

    :goto_22
    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0xa

    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const v7, 0xeed2b53

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v7, p2

    if-eqz v7, :cond_3f

    const-string v12, "Hint"

    invoke-static {v11, v12}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-interface {v12, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    shr-int/lit8 v14, v13, 0x3

    and-int/lit8 v14, v14, 0x70

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v12, v0, v14}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const-string v12, "TextField"

    invoke-static {v11, v12}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-interface {v12, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v12, 0x1

    invoke-static {v2, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    iget v12, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v0, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v20, :cond_4e

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_40

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_23

    :cond_40
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_23
    invoke-static {v0, v14, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_41

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_42

    :cond_41
    invoke-static {v12, v0, v12, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_42
    invoke-static {v0, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v5, v13, 0x3

    and-int/lit8 v5, v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v7, p1

    invoke-interface {v7, v0, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v5, 0xeed6011

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v5, p3

    if-eqz v5, :cond_46

    sget v10, Landroidx/compose/material3/internal/TextFieldImplKt;->MinFocusedLabelLineHeight:F

    move/from16 v12, p9

    invoke-static {v6, v10, v12}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v6

    const/high16 v10, 0x7fc00000    # Float.NaN

    invoke-static {v11, v6, v10}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const-string v10, "Label"

    invoke-static {v6, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {v2, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    iget v10, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v0, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v20, :cond_47

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_43

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_24

    :cond_43
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_24
    invoke-static {v0, v14, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_44

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    :cond_44
    invoke-static {v10, v0, v10, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_45
    invoke-static {v0, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v6, v13, 0x9

    and-int/lit8 v6, v6, 0xe

    const/4 v7, 0x1

    invoke-static {v6, v5, v0, v7}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    :cond_46
    const/4 v6, 0x0

    goto :goto_25

    :cond_47
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :goto_25
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, 0xeed85f6

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v13, p12

    if-eqz v13, :cond_4c

    const-string v6, "Supporting"

    invoke-static {v11, v6}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget v7, Landroidx/compose/material3/internal/TextFieldImplKt;->MinSupportingTextLineHeight:F

    const/high16 v10, 0x7fc00000    # Float.NaN

    invoke-static {v6, v7, v10}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {}, Landroidx/compose/material3/TextFieldDefaults;->supportingTextPadding-a9UjIt4$material3_release$default()Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v7, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v0, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v20, :cond_4b

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_48

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_26

    :cond_48
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_26
    invoke-static {v0, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_49

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    :cond_49
    invoke-static {v7, v0, v7, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_4a
    invoke-static {v0, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v19, 0x6

    and-int/lit8 v1, v1, 0xe

    const/4 v2, 0x1

    invoke-static {v1, v13, v0, v2}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    :goto_27
    const/4 v1, 0x0

    goto :goto_28

    :cond_4b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_4c
    const/4 v2, 0x1

    goto :goto_27

    :goto_28
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_29
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_4d

    new-instance v12, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v15, v12

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v34, v14

    move-object/from16 v14, p13

    move-object/from16 v35, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;II)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4d
    return-void

    :cond_4e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_4f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16
.end method

.method public static final access$calculateHeight-mKXJcVc(IIIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p5, v0, p8}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v1

    filled-new-array {p6, p2, p3, v1}, [I

    move-result-object p2

    :goto_0
    const/4 p3, 0x4

    if-ge v0, p3, :cond_0

    aget p3, p2, v0

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p12}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result p2

    mul-float/2addr p2, p11

    int-to-float p3, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p3, p5

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3, p8}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p2

    invoke-interface {p12}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result p3

    mul-float/2addr p3, p11

    int-to-float p4, p4

    add-float/2addr p2, p4

    add-float/2addr p2, p3

    invoke-static {p9, p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p3

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, p7

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static final access$calculateWidth-DHJA7U0(IIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I
    .locals 0

    add-int/2addr p2, p3

    add-int/2addr p4, p2

    add-int/2addr p6, p2

    const/4 p2, 0x0

    invoke-static {p5, p2, p7}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p2, p0

    add-int/2addr p2, p1

    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {p11, p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p1

    invoke-interface {p11, p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p0

    add-float/2addr p0, p1

    mul-float/2addr p0, p10

    int-to-float p1, p5

    add-float/2addr p1, p0

    mul-float/2addr p1, p7

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    invoke-static {p8, p9}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static final outlineCutout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final place$calculateVerticalPosition(ZIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    if-eqz p0, :cond_0

    iget p0, p4, Landroidx/compose/ui/layout/Placeable;->height:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    const/4 p1, 0x1

    int-to-float p1, p1

    const/4 p2, 0x0

    add-float/2addr p1, p2

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    :cond_0
    invoke-static {p3}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
