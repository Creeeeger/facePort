.class public abstract Landroidx/compose/foundation/layout/BoxWithConstraintsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    move-object/from16 v4, p3

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v2, p4

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x6a3450fd

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x1

    and-int/lit8 v6, p6, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v7, v5, 0x6

    move v8, v7

    move-object v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v5, 0x6

    if-nez v7, :cond_2

    move-object v7, p0

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v0

    :goto_0
    or-int/2addr v8, v5

    goto :goto_1

    :cond_2
    move-object v7, p0

    move v8, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v8, v8, 0x30

    :cond_3
    move-object v9, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v5, 0x30

    if-nez v9, :cond_3

    move-object v9, p1

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x20

    goto :goto_2

    :cond_5
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v8, v10

    :goto_3
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move/from16 v10, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v5, 0x180

    if-nez v10, :cond_6

    move/from16 v10, p2

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v8, v11

    :goto_5
    and-int/lit8 v11, p6, 0x8

    const/16 v12, 0x800

    if-eqz v11, :cond_9

    or-int/lit16 v8, v8, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v11, v5, 0xc00

    if-nez v11, :cond_b

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v12

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v8, v11

    :cond_b
    :goto_7
    and-int/lit16 v11, v8, 0x493

    const/16 v13, 0x492

    if-ne v11, v13, :cond_d

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v7

    :goto_8
    move v3, v10

    goto :goto_c

    :cond_d
    :goto_9
    if-eqz v6, :cond_e

    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_a

    :cond_e
    move-object v6, v7

    :goto_a
    if-eqz v0, :cond_f

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    move-object v9, v0

    :cond_f
    const/4 v0, 0x0

    if-eqz v1, :cond_10

    move v10, v0

    :cond_10
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    and-int/lit16 v7, v8, 0x1c00

    if-ne v7, v12, :cond_11

    goto :goto_b

    :cond_11
    move v3, v0

    :goto_b
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_12

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v3, :cond_13

    :cond_12
    new-instance v7, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;

    invoke-direct {v7, v1, v4}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;-><init>(Landroidx/compose/ui/layout/MeasurePolicy;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    check-cast v7, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v1, v8, 0xe

    invoke-static {v6, v7, v2, v1, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v6

    goto :goto_8

    :goto_c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_14

    new-instance v8, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;

    move-object v0, v8

    move-object v2, v9

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;II)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
