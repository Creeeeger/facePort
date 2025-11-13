.class public abstract Landroidx/compose/material3/internal/TextFieldImplKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final HorizontalIconPadding:F

.field public static final IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

.field public static final MinFocusedLabelLineHeight:F

.field public static final MinSupportingTextLineHeight:F

.field public static final MinTextLineHeight:F

.field public static final PrefixSuffixTextPadding:F

.field public static final SupportingTopPadding:F

.field public static final TextFieldPadding:F

.field public static final ZeroConstraints:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/internal/TextFieldImplKt;->ZeroConstraints:J

    const/16 v0, 0x10

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/internal/TextFieldImplKt;->TextFieldPadding:F

    const/16 v1, 0xc

    int-to-float v1, v1

    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->HorizontalIconPadding:F

    const/4 v1, 0x4

    int-to-float v1, v1

    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->SupportingTopPadding:F

    const/4 v1, 0x2

    int-to-float v1, v1

    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->PrefixSuffixTextPadding:F

    const/16 v1, 0x18

    int-to-float v1, v1

    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->MinTextLineHeight:F

    sput v0, Landroidx/compose/material3/internal/TextFieldImplKt;->MinFocusedLabelLineHeight:F

    sput v0, Landroidx/compose/material3/internal/TextFieldImplKt;->MinSupportingTextLineHeight:F

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/16 v1, 0x30

    int-to-float v1, v1

    invoke-static {v0, v1, v1}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/internal/TextFieldImplKt;->IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 45

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v15, p14

    move-object/from16 v14, p15

    move-object/from16 v13, p16

    move-object/from16 v12, p17

    move/from16 v11, p19

    move/from16 v10, p20

    move/from16 v9, p21

    const/16 v22, 0x10

    const/16 v7, 0x20

    const/16 v8, 0x30

    const/4 v0, 0x6

    move-object/from16 v1, p18

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x5a44f6ef

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x1

    and-int/lit8 v28, v9, 0x1

    const/16 v29, 0x4

    const/4 v3, 0x2

    if-eqz v28, :cond_0

    or-int/lit8 v28, v11, 0x6

    move-object/from16 v0, p0

    move/from16 v30, v28

    goto :goto_1

    :cond_0
    and-int/lit8 v28, v11, 0x6

    move-object/from16 v0, p0

    if-nez v28, :cond_2

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    move/from16 v30, v29

    goto :goto_0

    :cond_1
    move/from16 v30, v3

    :goto_0
    or-int v30, v11, v30

    goto :goto_1

    :cond_2
    move/from16 v30, v11

    :goto_1
    and-int/lit8 v31, v9, 0x2

    if-eqz v31, :cond_4

    or-int/lit8 v30, v30, 0x30

    :cond_3
    :goto_2
    move/from16 v3, v30

    goto :goto_4

    :cond_4
    and-int/lit8 v31, v11, 0x30

    if-nez v31, :cond_3

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    move/from16 v31, v7

    goto :goto_3

    :cond_5
    move/from16 v31, v22

    :goto_3
    or-int v30, v30, v31

    goto :goto_2

    :goto_4
    and-int/lit8 v30, v9, 0x4

    if-eqz v30, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v8, v11, 0x180

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    const/16 v32, 0x100

    goto :goto_5

    :cond_8
    const/16 v32, 0x80

    :goto_5
    or-int v3, v3, v32

    :goto_6
    and-int/lit8 v32, v9, 0x8

    if-eqz v32, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v6, v11, 0xc00

    if-nez v6, :cond_b

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_7

    :cond_a
    const/16 v6, 0x400

    :goto_7
    or-int/2addr v3, v6

    :cond_b
    :goto_8
    and-int/lit8 v6, v9, 0x10

    if-eqz v6, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_a

    :cond_c
    and-int/lit16 v6, v11, 0x6000

    if-nez v6, :cond_e

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_9

    :cond_d
    const/16 v6, 0x2000

    :goto_9
    or-int/2addr v3, v6

    :cond_e
    :goto_a
    and-int/lit8 v6, v9, 0x20

    const/high16 v33, 0x10000

    const/high16 v34, 0x20000

    const/high16 v35, 0x30000

    if-eqz v6, :cond_f

    or-int v3, v3, v35

    move-object/from16 v7, p5

    goto :goto_c

    :cond_f
    and-int v36, v11, v35

    move-object/from16 v7, p5

    if-nez v36, :cond_11

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_10

    move/from16 v37, v34

    goto :goto_b

    :cond_10
    move/from16 v37, v33

    :goto_b
    or-int v3, v3, v37

    :cond_11
    :goto_c
    and-int/lit8 v37, v9, 0x40

    const/high16 v38, 0x180000

    if-eqz v37, :cond_13

    or-int v3, v3, v38

    :cond_12
    :goto_d
    const/16 v0, 0x80

    goto :goto_f

    :cond_13
    and-int v39, v11, v38

    move-object/from16 v0, p6

    if-nez v39, :cond_12

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_14

    const/high16 v39, 0x100000

    goto :goto_e

    :cond_14
    const/high16 v39, 0x80000

    :goto_e
    or-int v3, v3, v39

    goto :goto_d

    :goto_f
    and-int/lit16 v7, v9, 0x80

    const/high16 v32, 0xc00000

    if-eqz v7, :cond_16

    or-int v3, v3, v32

    :cond_15
    :goto_10
    const/16 v0, 0x100

    goto :goto_12

    :cond_16
    and-int v39, v11, v32

    move-object/from16 v0, p7

    if-nez v39, :cond_15

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_17

    const/high16 v40, 0x800000

    goto :goto_11

    :cond_17
    const/high16 v40, 0x400000

    :goto_11
    or-int v3, v3, v40

    goto :goto_10

    :goto_12
    and-int/lit16 v8, v9, 0x100

    const/high16 v26, 0x6000000

    if-eqz v8, :cond_18

    or-int v3, v3, v26

    move-object/from16 v0, p8

    goto :goto_14

    :cond_18
    and-int v26, v11, v26

    move-object/from16 v0, p8

    if-nez v26, :cond_1a

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    const/high16 v26, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v26, 0x2000000

    :goto_13
    or-int v3, v3, v26

    :cond_1a
    :goto_14
    and-int/lit16 v0, v9, 0x200

    const/high16 v25, 0x30000000

    if-eqz v0, :cond_1c

    :goto_15
    or-int v3, v3, v25

    :cond_1b
    const/16 v11, 0x400

    goto :goto_16

    :cond_1c
    and-int v25, v11, v25

    move-object/from16 v11, p9

    if-nez v25, :cond_1b

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    const/high16 v25, 0x20000000

    goto :goto_15

    :cond_1d
    const/high16 v25, 0x10000000

    goto :goto_15

    :goto_16
    and-int/lit16 v5, v9, 0x400

    const/16 v24, 0x6

    if-eqz v5, :cond_1e

    or-int/lit8 v25, v10, 0x6

    :goto_17
    const/16 v11, 0x800

    goto :goto_19

    :cond_1e
    and-int/lit8 v25, v10, 0x6

    move-object/from16 v11, p10

    if-nez v25, :cond_20

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f

    goto :goto_18

    :cond_1f
    const/16 v29, 0x2

    :goto_18
    or-int v25, v10, v29

    goto :goto_17

    :cond_20
    move/from16 v25, v10

    goto :goto_17

    :goto_19
    and-int/lit16 v4, v9, 0x800

    const/16 v11, 0x30

    if-eqz v4, :cond_22

    or-int/lit8 v25, v25, 0x30

    :cond_21
    :goto_1a
    move/from16 v11, v25

    goto :goto_1b

    :cond_22
    and-int/lit8 v26, v10, 0x30

    move/from16 v11, p11

    if-nez v26, :cond_21

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v26

    if-eqz v26, :cond_23

    const/16 v22, 0x20

    :cond_23
    or-int v25, v25, v22

    goto :goto_1a

    :goto_1b
    and-int/lit16 v2, v9, 0x1000

    if-eqz v2, :cond_24

    or-int/lit16 v11, v11, 0x180

    move/from16 v22, v2

    :goto_1c
    move/from16 v21, v4

    const/16 v2, 0x2000

    goto :goto_1e

    :cond_24
    move/from16 v22, v2

    and-int/lit16 v2, v10, 0x180

    if-nez v2, :cond_26

    move/from16 v2, p12

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_25

    const/16 v27, 0x100

    goto :goto_1d

    :cond_25
    const/16 v27, 0x80

    :goto_1d
    or-int v11, v11, v27

    goto :goto_1c

    :cond_26
    move/from16 v2, p12

    goto :goto_1c

    :goto_1e
    and-int/lit16 v4, v9, 0x2000

    if-eqz v4, :cond_27

    or-int/lit16 v11, v11, 0xc00

    :goto_1f
    move/from16 v20, v4

    const/16 v2, 0x4000

    goto :goto_21

    :cond_27
    and-int/lit16 v2, v10, 0xc00

    if-nez v2, :cond_29

    move/from16 v2, p13

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v26

    if-eqz v26, :cond_28

    const/16 v24, 0x800

    goto :goto_20

    :cond_28
    const/16 v24, 0x400

    :goto_20
    or-int v11, v11, v24

    goto :goto_1f

    :cond_29
    move/from16 v2, p13

    goto :goto_1f

    :goto_21
    and-int/lit16 v4, v9, 0x4000

    if-eqz v4, :cond_2a

    or-int/lit16 v11, v11, 0x6000

    goto :goto_23

    :cond_2a
    and-int/lit16 v4, v10, 0x6000

    if-nez v4, :cond_2c

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_22

    :cond_2b
    const/16 v2, 0x2000

    :goto_22
    or-int/2addr v11, v2

    :cond_2c
    :goto_23
    const v2, 0x8000

    and-int/2addr v2, v9

    if-eqz v2, :cond_2d

    or-int v11, v11, v35

    goto :goto_25

    :cond_2d
    and-int v2, v10, v35

    if-nez v2, :cond_2f

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move/from16 v2, v34

    goto :goto_24

    :cond_2e
    move/from16 v2, v33

    :goto_24
    or-int/2addr v11, v2

    :cond_2f
    :goto_25
    and-int v2, v9, v33

    if-eqz v2, :cond_30

    or-int v11, v11, v38

    goto :goto_27

    :cond_30
    and-int v2, v10, v38

    if-nez v2, :cond_32

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/high16 v18, 0x100000

    goto :goto_26

    :cond_31
    const/high16 v18, 0x80000

    :goto_26
    or-int v11, v11, v18

    :cond_32
    :goto_27
    and-int v2, v9, v34

    if-eqz v2, :cond_33

    or-int v11, v11, v32

    goto :goto_29

    :cond_33
    and-int v2, v10, v32

    if-nez v2, :cond_35

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/high16 v16, 0x800000

    goto :goto_28

    :cond_34
    const/high16 v16, 0x400000

    :goto_28
    or-int v11, v11, v16

    :cond_35
    :goto_29
    const v2, 0x12492493

    and-int/2addr v2, v3

    const v4, 0x12492492

    if-ne v2, v4, :cond_37

    const v2, 0x492493

    and-int/2addr v2, v11

    const v4, 0x492492

    if-ne v2, v4, :cond_37

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_2a

    :cond_36
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v33, p11

    move/from16 v34, p12

    move/from16 v35, p13

    goto/16 :goto_64

    :cond_37
    :goto_2a
    if-eqz v6, :cond_38

    const/4 v4, 0x0

    goto :goto_2b

    :cond_38
    move-object/from16 v4, p5

    :goto_2b
    if-eqz v37, :cond_39

    const/4 v6, 0x0

    goto :goto_2c

    :cond_39
    move-object/from16 v6, p6

    :goto_2c
    if-eqz v7, :cond_3a

    const/4 v7, 0x0

    goto :goto_2d

    :cond_3a
    move-object/from16 v7, p7

    :goto_2d
    if-eqz v8, :cond_3b

    const/4 v8, 0x0

    goto :goto_2e

    :cond_3b
    move-object/from16 v8, p8

    :goto_2e
    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    goto :goto_2f

    :cond_3c
    move-object/from16 v0, p9

    :goto_2f
    if-eqz v5, :cond_3d

    const/4 v5, 0x0

    goto :goto_30

    :cond_3d
    move-object/from16 v5, p10

    :goto_30
    if-eqz v21, :cond_3e

    const/16 v33, 0x0

    goto :goto_31

    :cond_3e
    move/from16 v33, p11

    :goto_31
    if-eqz v22, :cond_3f

    const/16 v34, 0x1

    goto :goto_32

    :cond_3f
    move/from16 v34, p12

    :goto_32
    if-eqz v20, :cond_40

    const/16 v35, 0x0

    goto :goto_33

    :cond_40
    move/from16 v35, p13

    :goto_33
    sget-object v17, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v2, v3, 0x70

    const/16 v9, 0x20

    if-ne v2, v9, :cond_41

    const/4 v2, 0x1

    goto :goto_34

    :cond_41
    const/4 v2, 0x0

    :goto_34
    and-int/lit16 v9, v3, 0x1c00

    const/16 v10, 0x800

    if-ne v9, v10, :cond_42

    const/4 v9, 0x1

    goto :goto_35

    :cond_42
    const/4 v9, 0x0

    :goto_35
    or-int/2addr v2, v9

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_44

    if-ne v9, v10, :cond_43

    goto :goto_36

    :cond_43
    move/from16 v17, v3

    move-object v2, v9

    move-object/from16 v3, p1

    move-object/from16 v9, p3

    goto :goto_37

    :cond_44
    :goto_36
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v9, 0x0

    move/from16 v17, v3

    const/4 v12, 0x6

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v9, v12}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    move-object/from16 v9, p3

    invoke-interface {v9, v2}, Landroidx/compose/ui/text/input/VisualTransformation;->filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_37
    check-cast v2, Landroidx/compose/ui/text/input/TransformedText;

    iget-object v2, v2, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    shr-int/lit8 v12, v11, 0xc

    and-int/lit8 v12, v12, 0xe

    invoke-static {v15, v1, v12}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_45

    sget-object v18, Landroidx/compose/material3/internal/InputPhase;->Focused:Landroidx/compose/material3/internal/InputPhase;

    :goto_38
    move-object/from16 v3, v18

    goto :goto_39

    :cond_45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_46

    sget-object v18, Landroidx/compose/material3/internal/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/internal/InputPhase;

    goto :goto_38

    :cond_46
    sget-object v18, Landroidx/compose/material3/internal/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/internal/InputPhase;

    goto :goto_38

    :goto_39
    if-nez v34, :cond_47

    iget-wide v14, v13, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    goto :goto_3a

    :cond_47
    if-eqz v35, :cond_48

    iget-wide v14, v13, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    goto :goto_3a

    :cond_48
    if-eqz v12, :cond_49

    iget-wide v14, v13, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    goto :goto_3a

    :cond_49
    iget-wide v14, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    :goto_3a
    sget-object v9, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/material3/Typography;

    move/from16 v18, v11

    iget-object v11, v9, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v38, v5

    move-object/from16 v36, v6

    invoke-virtual {v11}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v5

    sget-object v19, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    iget-object v6, v9, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    move-object v9, v4

    if-eqz v5, :cond_4a

    invoke-virtual {v6}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_4a
    invoke-virtual {v11}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual {v6}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_4c

    :cond_4b
    const/4 v4, 0x1

    goto :goto_3b

    :cond_4c
    const/4 v4, 0x0

    :goto_3b
    invoke-virtual {v6}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v7

    if-eqz v4, :cond_4e

    const-wide/16 v19, 0x10

    cmp-long v5, v7, v19

    if-eqz v5, :cond_4d

    goto :goto_3c

    :cond_4d
    move-wide v7, v14

    :cond_4e
    :goto_3c
    invoke-virtual {v11}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v19

    if-eqz v4, :cond_50

    const-wide/16 v21, 0x10

    cmp-long v5, v19, v21

    if-eqz v5, :cond_4f

    goto :goto_3d

    :cond_4f
    move-wide/from16 v19, v14

    :cond_50
    :goto_3d
    move-wide/from16 p12, v7

    if-eqz p4, :cond_51

    const/4 v5, 0x1

    goto :goto_3e

    :cond_51
    const/4 v5, 0x0

    :goto_3e
    const-string v7, "TextFieldInputState"

    move-object/from16 v41, v0

    const/16 v0, 0x30

    const/4 v8, 0x0

    invoke-static {v3, v7, v1, v0, v8}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v3

    sget-object v0, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelProgress$1;->INSTANCE:Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelProgress$1;

    sget-object v7, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v8, v3, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/compose/material3/internal/InputPhase;

    move-object/from16 v22, v2

    const v2, -0x796609df

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v21, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    if-eqz v2, :cond_54

    move-object/from16 v42, v9

    const/4 v9, 0x1

    if-eq v2, v9, :cond_53

    const/4 v9, 0x2

    if-ne v2, v9, :cond_52

    :goto_3f
    move/from16 v9, v23

    :goto_40
    const/4 v2, 0x0

    goto :goto_41

    :cond_52
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_53
    move/from16 v9, v21

    goto :goto_40

    :cond_54
    move-object/from16 v42, v9

    goto :goto_3f

    :goto_41
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v9, v3, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroidx/compose/material3/internal/InputPhase;

    move/from16 v25, v12

    const v12, -0x796609df

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_55

    const/4 v13, 0x1

    if-eq v12, v13, :cond_57

    const/4 v13, 0x2

    if-ne v12, v13, :cond_56

    :cond_55
    move/from16 v13, v23

    :goto_42
    const/4 v12, 0x0

    goto :goto_43

    :cond_56
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_57
    move/from16 v13, v21

    goto :goto_42

    :goto_43
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move/from16 v24, v4

    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    move-object/from16 v26, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v1, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelProgress$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/high16 v4, 0x30000

    move-object/from16 p5, v3

    move-object/from16 p6, v2

    move-object/from16 p7, v13

    move-object/from16 p8, v0

    move-object/from16 p9, v7

    move-object/from16 p10, v1

    move/from16 p11, v4

    invoke-static/range {p5 .. p11}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v0

    sget-object v2, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1;->INSTANCE:Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1;

    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/internal/InputPhase;

    const v12, 0x55952420

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v12, 0x1

    if-eq v6, v12, :cond_59

    const/4 v12, 0x2

    if-ne v6, v12, :cond_58

    :goto_44
    move/from16 v12, v21

    :goto_45
    const/4 v6, 0x0

    goto :goto_46

    :cond_58
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_59
    if-eqz v5, :cond_5a

    goto :goto_44

    :cond_5a
    move/from16 v12, v23

    goto :goto_45

    :goto_46
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/material3/internal/InputPhase;

    const v13, 0x55952420

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_5d

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5c

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5b

    :goto_47
    move/from16 v13, v21

    :goto_48
    const/4 v12, 0x0

    goto :goto_49

    :cond_5b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_5c
    if-eqz v5, :cond_5d

    goto :goto_47

    :cond_5d
    move/from16 v13, v23

    goto :goto_48

    :goto_49
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    move-object/from16 v29, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v4, v1, v11}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object/from16 p5, v3

    move-object/from16 p6, v6

    move-object/from16 p7, v13

    move-object/from16 p8, v2

    move-object/from16 p9, v7

    move-object/from16 p10, v1

    const/high16 v2, 0x30000

    move/from16 p11, v2

    invoke-static/range {p5 .. p11}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v2

    sget-object v4, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1;->INSTANCE:Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1;

    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/internal/InputPhase;

    const v11, 0x433c6eba

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_5e

    const/4 v11, 0x1

    if-eq v6, v11, :cond_60

    const/4 v11, 0x2

    if-ne v6, v11, :cond_5f

    :cond_5e
    move/from16 v11, v23

    :goto_4a
    const/4 v6, 0x0

    goto :goto_4b

    :cond_5f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_60
    if-eqz v5, :cond_5e

    move/from16 v11, v21

    goto :goto_4a

    :goto_4b
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/material3/internal/InputPhase;

    const v12, 0x433c6eba

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_61

    const/4 v12, 0x1

    if-eq v11, v12, :cond_63

    const/4 v12, 0x2

    if-ne v11, v12, :cond_62

    :cond_61
    move/from16 v21, v23

    :goto_4c
    const/4 v5, 0x0

    goto :goto_4d

    :cond_62
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_63
    if-eqz v5, :cond_61

    goto :goto_4c

    :goto_4d
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v1, v13}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object/from16 p5, v3

    move-object/from16 p6, v6

    move-object/from16 p7, v11

    move-object/from16 p8, v4

    move-object/from16 p9, v7

    move-object/from16 p10, v1

    const/high16 v4, 0x30000

    move/from16 p11, v4

    invoke-static/range {p5 .. p11}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v4

    sget-object v5, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1;->INSTANCE:Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/internal/InputPhase;

    const v7, -0x66748bf

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v11, Landroidx/compose/material3/internal/TextFieldImplKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v11, v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_64

    move-wide/from16 v12, p12

    :goto_4e
    const/4 v6, 0x0

    goto :goto_4f

    :cond_64
    move-wide/from16 v12, v19

    goto :goto_4e

    :goto_4f
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_65

    if-ne v13, v10, :cond_66

    :cond_65
    sget-object v12, Landroidx/compose/animation/ColorVectorConverterKt;->ColorToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_66
    move-object v6, v13

    check-cast v6, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_67

    move-object v13, v8

    const/4 v12, 0x0

    move-wide/from16 v7, p12

    goto :goto_50

    :cond_67
    move-object v13, v8

    move-wide/from16 v7, v19

    const/4 v12, 0x0

    :goto_50
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v12, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v12, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/internal/InputPhase;

    const v8, -0x66748bf

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v11, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_68

    move-wide/from16 v7, p12

    :goto_51
    const/4 v11, 0x0

    goto :goto_52

    :cond_68
    move-wide/from16 v7, v19

    goto :goto_51

    :goto_52
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v11, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v11, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v7

    move-object/from16 p13, v4

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v1, v4}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object/from16 p5, v3

    move-object/from16 p6, v12

    move-object/from16 p7, v11

    move-object/from16 p8, v4

    move-object/from16 p9, v6

    move-object/from16 p10, v1

    const/high16 v4, 0x30000

    move/from16 p11, v4

    invoke-static/range {p5 .. p11}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v4

    sget-object v5, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1;->INSTANCE:Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/internal/InputPhase;

    const v6, 0x3cff1b76

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_69

    if-ne v11, v10, :cond_6a

    :cond_69
    sget-object v8, Landroidx/compose/animation/ColorVectorConverterKt;->ColorToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6a
    move-object v7, v11

    check-cast v7, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual {v13}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v11, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v11, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v6, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v6, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v9, v1, v12}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object/from16 p5, v3

    move-object/from16 p6, v11

    move-object/from16 p7, v6

    move-object/from16 p8, v5

    move-object/from16 p9, v7

    move-object/from16 p10, v1

    const/high16 v3, 0x30000

    move/from16 p11, v3

    invoke-static/range {p5 .. p11}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v3

    iget-object v0, v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const v5, -0x95ba9c5

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez p4, :cond_6b

    const/4 v3, 0x0

    :goto_53
    const/4 v4, 0x0

    goto :goto_54

    :cond_6b
    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;

    move-object/from16 p5, v5

    move-object/from16 p6, v29

    move-object/from16 p7, v26

    move/from16 p8, v0

    move-object/from16 p9, v3

    move-object/from16 p10, p4

    move/from16 p11, v24

    move-object/from16 p12, v4

    invoke-direct/range {p5 .. p12}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    const v3, -0x49b4cc60

    invoke-static {v3, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    goto :goto_53

    :goto_54
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-nez v34, :cond_6c

    move-object/from16 v13, p16

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->disabledPlaceholderColor:J

    goto :goto_55

    :cond_6c
    move-object/from16 v13, p16

    if-eqz v35, :cond_6d

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->errorPlaceholderColor:J

    goto :goto_55

    :cond_6d
    if-eqz v25, :cond_6e

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->focusedPlaceholderColor:J

    goto :goto_55

    :cond_6e
    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedPlaceholderColor:J

    :goto_55
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    if-ne v6, v10, :cond_6f

    new-instance v6, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$showPlaceholder$2$1;

    invoke-direct {v6, v2}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$showPlaceholder$2$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    invoke-static {v7, v6}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6f
    check-cast v6, Landroidx/compose/runtime/State;

    const v8, -0x95b2bd6

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v42, :cond_70

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_70

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_70

    new-instance v6, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;

    move-object/from16 p5, v6

    move-object/from16 p6, v2

    move-wide/from16 p7, v4

    move-object/from16 p9, v29

    move-object/from16 p10, v42

    invoke-direct/range {p5 .. p10}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v2, -0x275ecc34

    invoke-static {v2, v6, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    move-object/from16 v19, v2

    const/4 v2, 0x0

    goto :goto_56

    :cond_70
    const/4 v2, 0x0

    const/16 v19, 0x0

    :goto_56
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-nez v34, :cond_71

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->disabledPrefixColor:J

    goto :goto_57

    :cond_71
    if-eqz v35, :cond_72

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->errorPrefixColor:J

    goto :goto_57

    :cond_72
    if-eqz v25, :cond_73

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->focusedPrefixColor:J

    goto :goto_57

    :cond_73
    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedPrefixColor:J

    :goto_57
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_74

    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$showPrefixSuffix$2$1;

    move-object/from16 v6, p13

    invoke-direct {v2, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$showPrefixSuffix$2$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    invoke-static {v7, v2}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_58

    :cond_74
    move-object/from16 v6, p13

    :goto_58
    check-cast v2, Landroidx/compose/runtime/State;

    const v8, -0x95ac7ac

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v40, :cond_75

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_75

    new-instance v8, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1;

    move-object/from16 p5, v8

    move-object/from16 p6, v6

    move-wide/from16 p7, v4

    move-object/from16 p9, v29

    move-object/from16 p10, v40

    invoke-direct/range {p5 .. p10}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v4, 0x105afde6

    invoke-static {v4, v8, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    move-object/from16 v22, v4

    const/4 v4, 0x0

    goto :goto_59

    :cond_75
    const/4 v4, 0x0

    const/16 v22, 0x0

    :goto_59
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-nez v34, :cond_76

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->disabledSuffixColor:J

    goto :goto_5a

    :cond_76
    if-eqz v35, :cond_77

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->errorSuffixColor:J

    goto :goto_5a

    :cond_77
    if-eqz v25, :cond_78

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->focusedSuffixColor:J

    goto :goto_5a

    :cond_78
    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedSuffixColor:J

    :goto_5a
    const v8, -0x95a7f2c

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v41, :cond_79

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_79

    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSuffix$1;

    move-object/from16 p5, v2

    move-object/from16 p6, v6

    move-wide/from16 p7, v4

    move-object/from16 p9, v29

    move-object/from16 p10, v41

    invoke-direct/range {p5 .. p10}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSuffix$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x5af8699b

    invoke-static {v4, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    move-object/from16 v23, v2

    const/4 v2, 0x0

    goto :goto_5b

    :cond_79
    const/4 v2, 0x0

    const/16 v23, 0x0

    :goto_5b
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-nez v34, :cond_7a

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->disabledLeadingIconColor:J

    goto :goto_5c

    :cond_7a
    if-eqz v35, :cond_7b

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->errorLeadingIconColor:J

    goto :goto_5c

    :cond_7b
    if-eqz v25, :cond_7c

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->focusedLeadingIconColor:J

    goto :goto_5c

    :cond_7c
    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedLeadingIconColor:J

    :goto_5c
    const v2, -0x95a365e

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v36, :cond_7d

    move-object/from16 v6, v36

    const/4 v2, 0x0

    const/16 v20, 0x0

    goto :goto_5d

    :cond_7d
    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1;

    move-object/from16 v6, v36

    invoke-direct {v2, v4, v5, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const v4, -0x7c1480e

    invoke-static {v4, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :goto_5d
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-nez v34, :cond_7e

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    goto :goto_5e

    :cond_7e
    if-eqz v35, :cond_7f

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    goto :goto_5e

    :cond_7f
    if-eqz v25, :cond_80

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    goto :goto_5e

    :cond_80
    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    :goto_5e
    const v2, -0x95a121d

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v39, :cond_81

    move-object/from16 v8, v39

    const/4 v2, 0x0

    const/16 v21, 0x0

    goto :goto_5f

    :cond_81
    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1;

    move-object/from16 v8, v39

    invoke-direct {v2, v4, v5, v8}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const v4, 0x7bf77be6

    invoke-static {v4, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    move-object/from16 v21, v2

    const/4 v2, 0x0

    :goto_5f
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-nez v34, :cond_82

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->disabledSupportingTextColor:J

    goto :goto_60

    :cond_82
    if-eqz v35, :cond_83

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->errorSupportingTextColor:J

    goto :goto_60

    :cond_83
    if-eqz v25, :cond_84

    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->focusedSupportingTextColor:J

    goto :goto_60

    :cond_84
    iget-wide v4, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedSupportingTextColor:J

    :goto_60
    const v2, -0x959eb24

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v38, :cond_85

    move-object/from16 v9, v38

    const/4 v2, 0x0

    :goto_61
    const/4 v4, 0x0

    goto :goto_62

    :cond_85
    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1;

    move-object/from16 v11, v26

    move-object/from16 v9, v38

    invoke-direct {v2, v4, v5, v11, v9}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v4, 0x4b52a37d    # 1.3804413E7f

    invoke-static {v4, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    goto :goto_61

    :goto_62
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_8a

    const/4 v11, 0x1

    if-eq v5, v11, :cond_86

    const v0, -0x21b4429f

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v14, p15

    move-object/from16 v12, p17

    goto/16 :goto_63

    :cond_86
    const v4, -0x21cedd6b

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_87

    new-instance v4, Landroidx/compose/ui/geometry/Size;

    const-wide/16 v11, 0x0

    invoke-direct {v4, v11, v12}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-static {v4, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_87
    check-cast v4, Landroidx/compose/runtime/MutableState;

    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;

    move-object/from16 v14, p15

    move-object/from16 v12, p17

    invoke-direct {v5, v4, v14, v12}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;)V

    const v7, 0x96014d9

    invoke-static {v7, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v27

    sget-object v16, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v5

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_88

    if-ne v7, v10, :cond_89

    :cond_88
    new-instance v7, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;

    invoke-direct {v7, v0, v4}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;-><init>(FLandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_89
    move-object/from16 v26, v7

    check-cast v26, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v4, v17, 0x3

    and-int/lit8 v4, v4, 0x70

    const/4 v5, 0x6

    or-int/2addr v4, v5

    shl-int/lit8 v7, v18, 0x15

    const/high16 v10, 0xe000000

    and-int/2addr v7, v10

    or-int v31, v4, v7

    shr-int/lit8 v4, v18, 0x6

    and-int/lit16 v4, v4, 0x1c00

    const/16 v5, 0x30

    or-int/lit8 v32, v4, 0x30

    move-object/from16 v17, p2

    move-object/from16 v18, v19

    move-object/from16 v19, v3

    move/from16 v24, v33

    move/from16 v25, v0

    move-object/from16 v28, v2

    move-object/from16 v29, p15

    move-object/from16 v30, v1

    invoke-static/range {v16 .. v32}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_63

    :cond_8a
    move-object/from16 v14, p15

    move-object/from16 v12, p17

    const v4, -0x21dfcb1f

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v4, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$containerWithId$1;

    invoke-direct {v4, v12}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$containerWithId$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v5, 0x6853e27c

    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v26

    sget-object v16, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    shr-int/lit8 v4, v17, 0x3

    and-int/lit8 v4, v4, 0x70

    const/4 v5, 0x6

    or-int/2addr v4, v5

    shl-int/lit8 v7, v18, 0x15

    const/high16 v10, 0xe000000

    and-int/2addr v7, v10

    or-int v30, v4, v7

    shr-int/lit8 v4, v18, 0x9

    and-int/lit16 v4, v4, 0x380

    or-int/lit8 v31, v4, 0x6

    move-object/from16 v17, p2

    move-object/from16 v18, v3

    move/from16 v24, v33

    move/from16 v25, v0

    move-object/from16 v27, v2

    move-object/from16 v28, p15

    move-object/from16 v29, v1

    invoke-static/range {v16 .. v31}, Landroidx/compose/material3/TextFieldKt;->TextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_63
    move-object v7, v6

    move-object v11, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v41

    move-object/from16 v6, v42

    :goto_64
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_8b

    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v43, v5

    move-object/from16 v5, p4

    move/from16 v12, v33

    move/from16 v13, v34

    move/from16 v14, v35

    move-object/from16 v44, v15

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v21}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;-><init>(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v43

    move-object/from16 v0, v44

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8b
    return-void
.end method

.method public static final access$Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x480b140c

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p5, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p4, p0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    and-int/lit8 v1, p5, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p5, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p4, p3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

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

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 v5, v0, 0x3fe

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_5
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_8

    new-instance v6, Landroidx/compose/material3/internal/TextFieldImplKt$Decoration$1;

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/TextFieldImplKt$Decoration$1;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;I)V

    iput-object v6, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final access$Decoration-Iv8Zu3U(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x2758fb84

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

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

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x8

    or-int/2addr v0, v2

    invoke-static {v1, p2, p3, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_4
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$Decoration$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/material3/internal/TextFieldImplKt$Decoration$2;-><init>(JLkotlin/jvm/functions/Function2;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final animateBorderStrokeAsState-NuRrP5Q(ZZZLandroidx/compose/material3/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;
    .locals 13

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-nez p0, :cond_0

    iget-wide v2, v0, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    :goto_0
    move-wide v4, v2

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v2, v0, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-wide v2, v0, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    goto :goto_0

    :cond_2
    iget-wide v2, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    goto :goto_0

    :goto_1
    const/4 v0, 0x6

    const/16 v2, 0x96

    const/4 v3, 0x0

    const/4 v11, 0x0

    if-eqz p0, :cond_3

    move-object v12, v1

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x3cf2df36

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v2, v11, v3, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    const/16 v10, 0xc

    const/4 v7, 0x0

    const/16 v9, 0x30

    move-object v8, v12

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_3
    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, 0x3cf473c9

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v7, v6}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    if-eqz p0, :cond_5

    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x3cf5cb35    # 0.030004123f

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz p2, :cond_4

    move/from16 v6, p4

    goto :goto_3

    :cond_4
    move/from16 v6, p5

    :goto_3
    invoke-static {v2, v11, v3, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    const/16 v2, 0x30

    invoke-static {v6, v0, v5, v2}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_5
    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x3cf8cd7c

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v2, Landroidx/compose/ui/unit/Dp;

    move/from16 v3, p5

    invoke-direct {v2, v3}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v0, v2

    :goto_4
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v4, Landroidx/compose/foundation/BorderStroke;

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    invoke-direct {v4, v0, v5}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/SolidColor;)V

    invoke-static {v4, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    return-object v0
.end method

.method public static final defaultErrorSemantics(Landroidx/compose/ui/Modifier;ZLjava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/material3/internal/TextFieldImplKt$defaultErrorSemantics$1;

    invoke-direct {p1, p2}, Landroidx/compose/material3/internal/TextFieldImplKt$defaultErrorSemantics$1;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/ui/layout/LayoutIdModifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/ui/layout/LayoutIdModifier;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutIdModifier;->layoutId:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static final heightOrZero(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final textFieldBackground(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$textFieldBackground$1;

    invoke-direct {v0, p2, p1}, Landroidx/compose/material3/internal/TextFieldImplKt$textFieldBackground$1;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final widthOrZero(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
