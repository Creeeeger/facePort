.class public abstract Landroidx/compose/material3/AlertDialogKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ButtonsCrossAxisSpacing:F

.field public static final ButtonsMainAxisSpacing:F

.field public static final DialogMaxWidth:F

.field public static final DialogMinWidth:F

.field public static final DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final IconPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final TextPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final TitlePadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x118

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/AlertDialogKt;->DialogMinWidth:F

    const/16 v0, 0x230

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/AlertDialogKt;->DialogMaxWidth:F

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/AlertDialogKt;->ButtonsMainAxisSpacing:F

    const/16 v0, 0xc

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/AlertDialogKt;->ButtonsCrossAxisSpacing:F

    const/16 v0, 0x18

    int-to-float v0, v0

    new-instance v1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v1, v0, v0, v0, v0}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sput-object v1, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v1, 0x10

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v2, v2, v1, v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v4

    sput-object v4, Landroidx/compose/material3/AlertDialogKt;->IconPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v2, v2, v1, v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/AlertDialogKt;->TitlePadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v2, v2, v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/AlertDialogKt;->TextPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    return-void
.end method

.method public static final AlertDialogContent-4hvqGtA(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JFJJJJLandroidx/compose/runtime/Composer;III)V
    .locals 32

    move/from16 v14, p18

    move/from16 v15, p20

    const/16 v2, 0x80

    const/16 v3, 0x100

    const/16 v4, 0x10

    const/16 v5, 0x20

    move-object/from16 v6, p17

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, 0x5ac0a9b7

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v7, v15, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-eqz v7, :cond_0

    or-int/lit8 v7, v14, 0x6

    move v10, v7

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v14, 0x6

    if-nez v7, :cond_2

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    or-int/2addr v10, v14

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    move v10, v14

    :goto_1
    and-int/lit8 v11, v15, 0x2

    if-eqz v11, :cond_4

    or-int/lit8 v10, v10, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v14, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v5

    goto :goto_2

    :cond_5
    move v13, v4

    :goto_2
    or-int/2addr v10, v13

    :goto_3
    and-int/lit8 v13, v15, 0x4

    if-eqz v13, :cond_7

    or-int/lit16 v10, v10, 0x180

    :cond_6
    move-object/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v14, 0x180

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 v16, v3

    goto :goto_4

    :cond_8
    move/from16 v16, v2

    :goto_4
    or-int v10, v10, v16

    :goto_5
    and-int/lit8 v16, v15, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v10, v10, 0xc00

    :cond_9
    move-object/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v14, 0xc00

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v10, v10, v16

    :goto_7
    and-int/lit8 v16, v15, 0x10

    if-eqz v16, :cond_d

    or-int/lit16 v10, v10, 0x6000

    :cond_c
    move-object/from16 v4, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v4, v14, 0x6000

    if-nez v4, :cond_c

    move-object/from16 v4, p4

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x4000

    goto :goto_8

    :cond_e
    const/16 v17, 0x2000

    :goto_8
    or-int v10, v10, v17

    :goto_9
    and-int/lit8 v17, v15, 0x20

    const/high16 v18, 0x30000

    if-eqz v17, :cond_f

    or-int v10, v10, v18

    move-object/from16 v9, p5

    goto :goto_b

    :cond_f
    and-int v17, v14, v18

    move-object/from16 v9, p5

    if-nez v17, :cond_11

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v10, v10, v18

    :cond_11
    :goto_b
    and-int/lit8 v18, v15, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_12

    or-int v10, v10, v19

    move-wide/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v18, v14, v19

    move-wide/from16 v0, p6

    if-nez v18, :cond_14

    invoke-virtual {v6, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v20, 0x80000

    :goto_c
    or-int v10, v10, v20

    :cond_14
    :goto_d
    and-int/2addr v2, v15

    const/high16 v29, 0xc00000

    if-eqz v2, :cond_16

    or-int v10, v10, v29

    :cond_15
    move/from16 v2, p8

    goto :goto_f

    :cond_16
    and-int v2, v14, v29

    if-nez v2, :cond_15

    move/from16 v2, p8

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_17

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v20, 0x400000

    :goto_e
    or-int v10, v10, v20

    :goto_f
    and-int/2addr v3, v15

    const/high16 v20, 0x6000000

    if-eqz v3, :cond_18

    or-int v10, v10, v20

    move-wide/from16 v12, p9

    goto :goto_11

    :cond_18
    and-int v3, v14, v20

    move-wide/from16 v12, p9

    if-nez v3, :cond_1a

    invoke-virtual {v6, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_19

    const/high16 v3, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v3, 0x2000000

    :goto_10
    or-int/2addr v10, v3

    :cond_1a
    :goto_11
    and-int/lit16 v3, v15, 0x200

    const/high16 v20, 0x30000000

    if-eqz v3, :cond_1c

    or-int v10, v10, v20

    move-wide/from16 v12, p11

    :cond_1b
    :goto_12
    const/16 v3, 0x400

    goto :goto_14

    :cond_1c
    and-int v3, v14, v20

    move-wide/from16 v12, p11

    if-nez v3, :cond_1b

    invoke-virtual {v6, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/high16 v3, 0x20000000

    goto :goto_13

    :cond_1d
    const/high16 v3, 0x10000000

    :goto_13
    or-int/2addr v10, v3

    goto :goto_12

    :goto_14
    and-int/2addr v3, v15

    if-eqz v3, :cond_1e

    or-int/lit8 v3, p19, 0x6

    move-wide/from16 v12, p13

    :goto_15
    const/16 v5, 0x800

    goto :goto_17

    :cond_1e
    and-int/lit8 v3, p19, 0x6

    move-wide/from16 v12, p13

    if-nez v3, :cond_20

    invoke-virtual {v6, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v17, 0x4

    goto :goto_16

    :cond_1f
    const/16 v17, 0x2

    :goto_16
    or-int v3, p19, v17

    goto :goto_15

    :cond_20
    move/from16 v3, p19

    goto :goto_15

    :goto_17
    and-int/2addr v5, v15

    if-eqz v5, :cond_21

    or-int/lit8 v3, v3, 0x30

    move-wide/from16 v14, p15

    goto :goto_19

    :cond_21
    and-int/lit8 v5, p19, 0x30

    move-wide/from16 v14, p15

    if-nez v5, :cond_23

    invoke-virtual {v6, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_22

    const/16 v16, 0x20

    goto :goto_18

    :cond_22
    const/16 v16, 0x10

    :goto_18
    or-int v3, v3, v16

    :cond_23
    :goto_19
    const v5, 0x12492493

    and-int/2addr v5, v10

    const v0, 0x12492492

    if-ne v5, v0, :cond_25

    and-int/lit8 v0, v3, 0x13

    const/16 v1, 0x12

    if-ne v0, v1, :cond_25

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_1a

    :cond_24
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p1

    goto :goto_1c

    :cond_25
    :goto_1a
    if-eqz v11, :cond_26

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1b

    :cond_26
    move-object/from16 v0, p1

    :goto_1b
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1;

    move-object/from16 v16, v1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-wide/from16 v20, p11

    move-wide/from16 v22, p13

    move-wide/from16 v24, p15

    move-wide/from16 v26, p9

    move-object/from16 v28, p0

    invoke-direct/range {v16 .. v28}, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJJJLkotlin/jvm/functions/Function2;)V

    const v3, -0x7ebce384

    invoke-static {v3, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    shr-int/lit8 v1, v10, 0x3

    and-int/lit8 v1, v1, 0xe

    or-int v1, v1, v29

    shr-int/lit8 v3, v10, 0xc

    and-int/lit8 v5, v3, 0x70

    or-int/2addr v1, v5

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v1, v3

    shr-int/lit8 v3, v10, 0x9

    const v5, 0xe000

    and-int/2addr v3, v5

    or-int v27, v1, v3

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v20, 0x0

    const/16 v28, 0x68

    move-object/from16 v16, v0

    move-object/from16 v17, p5

    move-wide/from16 v18, p6

    move/from16 v22, p8

    move-object/from16 v26, v6

    invoke-static/range {v16 .. v28}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v3, v0

    :goto_1c
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_27

    new-instance v11, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JFJJJJIII)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method

.method public static final AlertDialogFlowRow-ixp7dh8(FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x22fa2ee9

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x6

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v2, p4, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_3

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_3
    and-int/lit16 v2, p4, 0x180

    if-nez v2, :cond_5

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v0, v2

    :cond_5
    and-int/lit16 v2, v0, 0x93

    const/16 v4, 0x92

    if-ne v2, v4, :cond_7

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_7

    :cond_7
    :goto_4
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v2, v0, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v1, :cond_8

    move v1, v5

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    and-int/lit8 v2, v0, 0x70

    if-ne v2, v3, :cond_9

    move v4, v5

    :cond_9
    or-int/2addr v1, v4

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_a

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_b

    :cond_a
    new-instance v2, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$1;

    invoke-direct {v2, p0, p1}, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$1;-><init>(FF)V

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v2, Landroidx/compose/ui/layout/MeasurePolicy;

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0xe

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    iget v3, p3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p3, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    iget-object v7, p3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_10

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_c

    invoke-virtual {p3, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_c
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_d

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    invoke-static {v3, p3, v3, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_e
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0, p2, p3, v5}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    :goto_7
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_f

    new-instance v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$2;-><init>(FFLkotlin/jvm/functions/Function2;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void

    :cond_10
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final AlertDialogImpl-wrnwzgE(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V
    .locals 34

    move/from16 v15, p19

    move/from16 v13, p20

    move-object/from16 v7, p18

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x36d36f5c    # -706826.25f

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v15, 0x6

    const/4 v2, 0x4

    move-object/from16 v8, p0

    if-nez v0, :cond_1

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v15

    goto :goto_1

    :cond_1
    move v0, v15

    :goto_1
    and-int/lit8 v3, v15, 0x30

    const/16 v4, 0x10

    const/16 v5, 0x20

    move-object/from16 v9, p1

    if-nez v3, :cond_3

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v15, 0x180

    const/16 v6, 0x80

    move-object/from16 v11, p2

    if-nez v3, :cond_5

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    or-int/2addr v0, v3

    :cond_5
    and-int/lit16 v3, v15, 0xc00

    if-nez v3, :cond_7

    move-object/from16 v3, p3

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x800

    goto :goto_4

    :cond_6
    const/16 v16, 0x400

    :goto_4
    or-int v0, v0, v16

    goto :goto_5

    :cond_7
    move-object/from16 v3, p3

    :goto_5
    and-int/lit16 v1, v15, 0x6000

    if-nez v1, :cond_9

    move-object/from16 v1, p4

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x4000

    goto :goto_6

    :cond_8
    const/16 v16, 0x2000

    :goto_6
    or-int v0, v0, v16

    goto :goto_7

    :cond_9
    move-object/from16 v1, p4

    :goto_7
    const/high16 v16, 0x30000

    and-int v16, v15, v16

    move-object/from16 v10, p5

    if-nez v16, :cond_b

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/high16 v17, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v17, 0x10000

    :goto_8
    or-int v0, v0, v17

    :cond_b
    const/high16 v17, 0x180000

    and-int v17, v15, v17

    move-object/from16 v12, p6

    if-nez v17, :cond_d

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/high16 v18, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v18, 0x80000

    :goto_9
    or-int v0, v0, v18

    :cond_d
    const/high16 v18, 0xc00000

    and-int v18, v15, v18

    move-object/from16 v14, p7

    if-nez v18, :cond_f

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/high16 v19, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v19, 0x400000

    :goto_a
    or-int v0, v0, v19

    :cond_f
    const/high16 v19, 0x6000000

    and-int v19, v15, v19

    move-wide/from16 v9, p8

    if-nez v19, :cond_11

    invoke-virtual {v7, v9, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v19, 0x2000000

    :goto_b
    or-int v0, v0, v19

    :cond_11
    const/high16 v19, 0x30000000

    and-int v19, v15, v19

    move-wide/from16 v11, p10

    if-nez v19, :cond_13

    invoke-virtual {v7, v11, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v19, 0x10000000

    :goto_c
    or-int v0, v0, v19

    :cond_13
    and-int/lit8 v19, v13, 0x6

    move-wide/from16 v14, p12

    if-nez v19, :cond_15

    invoke-virtual {v7, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_14

    goto :goto_d

    :cond_14
    const/4 v2, 0x2

    :goto_d
    or-int/2addr v2, v13

    goto :goto_e

    :cond_15
    move v2, v13

    :goto_e
    and-int/lit8 v19, v13, 0x30

    move-wide/from16 v14, p14

    if-nez v19, :cond_17

    invoke-virtual {v7, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_16

    move v4, v5

    :cond_16
    or-int/2addr v2, v4

    :cond_17
    and-int/lit16 v4, v13, 0x180

    move/from16 v5, p16

    if-nez v4, :cond_19

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v4

    if-eqz v4, :cond_18

    const/16 v6, 0x100

    :cond_18
    or-int/2addr v2, v6

    :cond_19
    and-int/lit16 v4, v13, 0xc00

    move-object/from16 v6, p17

    if-nez v4, :cond_1b

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v17, 0x800

    goto :goto_f

    :cond_1a
    const/16 v17, 0x400

    :goto_f
    or-int v2, v2, v17

    :cond_1b
    const v4, 0x12492493

    and-int/2addr v4, v0

    const v1, 0x12492492

    if-ne v4, v1, :cond_1d

    and-int/lit16 v1, v2, 0x493

    const/16 v4, 0x492

    if-ne v1, v4, :cond_1d

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_10

    :cond_1c
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_11

    :cond_1d
    :goto_10
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1;

    move-object/from16 v16, v1

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move-wide/from16 v21, p8

    move/from16 v23, p16

    move-wide/from16 v24, p10

    move-wide/from16 v26, p12

    move-wide/from16 v28, p14

    move-object/from16 v30, p3

    move-object/from16 v31, p1

    invoke-direct/range {v16 .. v31}, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JFJJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x6e701922

    invoke-static {v4, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    and-int/lit8 v1, v0, 0xe

    or-int/lit16 v1, v1, 0xc00

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v2, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v16, v0, v1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p17

    move-object v3, v4

    move-object v4, v7

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/AlertDialogKt;->BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_11
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_1e

    new-instance v6, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v8, v6

    move-object/from16 v6, p5

    move-object/from16 v32, v7

    move-object/from16 v7, p6

    move-object/from16 v33, v8

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method

.method public static final BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 12

    move-object v4, p3

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v2, p4

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x729d2b99

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v5, 0x6

    move v6, v3

    move-object v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v5, 0x6

    if-nez v3, :cond_2

    move-object v3, p0

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_2
    move-object v3, p0

    move v6, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v6, v6, 0x30

    :cond_3
    move-object v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v5, 0x30

    if-nez v7, :cond_3

    move-object v7, p1

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    :goto_3
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v6, v6, 0x180

    :cond_6
    move-object v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v5, 0x180

    if-nez v8, :cond_6

    move-object v8, p2

    invoke-virtual {v2, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v6, v9

    :goto_5
    and-int/lit8 v9, p6, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v6, v6, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v5, 0xc00

    if-nez v9, :cond_b

    invoke-virtual {v2, p3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v6, v9

    :cond_b
    :goto_7
    and-int/lit16 v9, v6, 0x493

    const/16 v10, 0x492

    if-ne v9, v10, :cond_d

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_b

    :cond_d
    :goto_8
    if-eqz v0, :cond_e

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_9

    :cond_e
    move-object v0, v7

    :goto_9
    if-eqz v1, :cond_f

    new-instance v1, Landroidx/compose/ui/window/DialogProperties;

    const/4 v7, 0x7

    invoke-direct {v1, v7}, Landroidx/compose/ui/window/DialogProperties;-><init>(I)V

    goto :goto_a

    :cond_f
    move-object v1, v8

    :goto_a
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v7, Landroidx/compose/material3/AlertDialogKt$BasicAlertDialog$1;

    invoke-direct {v7, v0, p3}, Landroidx/compose/material3/AlertDialogKt$BasicAlertDialog$1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)V

    const v8, 0x35f59d30

    invoke-static {v8, v7, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    and-int/lit8 v7, v6, 0xe

    or-int/lit16 v7, v7, 0x180

    shr-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int v10, v7, v6

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v1

    move-object v9, v2

    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v7, v0

    move-object v8, v1

    :goto_b
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_10

    new-instance v10, Landroidx/compose/material3/AlertDialogKt$BasicAlertDialog$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/AlertDialogKt$BasicAlertDialog$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method
