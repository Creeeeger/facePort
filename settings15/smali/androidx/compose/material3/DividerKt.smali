.class public abstract Landroidx/compose/material3/DividerKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 15

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v2, p4

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x47a9d25

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x1

    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v6, v5, 0x6

    move v7, v6

    move-object v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_2

    move-object v6, p0

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    or-int/2addr v7, v5

    goto :goto_1

    :cond_2
    move-object v6, p0

    move v7, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    const/16 v8, 0x20

    if-eqz v0, :cond_4

    or-int/lit8 v7, v7, 0x30

    :cond_3
    move/from16 v9, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v5, 0x30

    if-nez v9, :cond_3

    move/from16 v9, p1

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v8

    goto :goto_2

    :cond_5
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v7, v10

    :goto_3
    and-int/lit16 v10, v5, 0x180

    const/16 v11, 0x100

    if-nez v10, :cond_7

    and-int/lit8 v10, p6, 0x4

    move-wide/from16 v12, p2

    if-nez v10, :cond_6

    invoke-virtual {v2, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v11

    goto :goto_4

    :cond_6
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v7, v10

    goto :goto_5

    :cond_7
    move-wide/from16 v12, p2

    :goto_5
    and-int/lit16 v10, v7, 0x93

    const/16 v14, 0x92

    if-ne v10, v14, :cond_9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v6

    :goto_6
    move-wide v3, v12

    goto/16 :goto_d

    :cond_9
    :goto_7
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_c

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_b

    and-int/lit16 v7, v7, -0x381

    :cond_b
    move-object v4, v6

    goto :goto_a

    :cond_c
    :goto_8
    if-eqz v4, :cond_d

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_9

    :cond_d
    move-object v4, v6

    :goto_9
    if-eqz v0, :cond_e

    sget v0, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    move v9, v0

    :cond_e
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_f

    sget v0, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget v0, Landroidx/compose/material3/tokens/DividerTokens;->Thickness:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OutlineVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v0

    and-int/lit16 v7, v7, -0x381

    move-wide v12, v0

    :cond_f
    :goto_a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v1, v7, 0x70

    const/4 v6, 0x0

    if-ne v1, v8, :cond_10

    move v1, v3

    goto :goto_b

    :cond_10
    move v1, v6

    :goto_b
    and-int/lit16 v8, v7, 0x380

    xor-int/lit16 v8, v8, 0x180

    if-le v8, v11, :cond_11

    invoke-virtual {v2, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_11
    and-int/lit16 v7, v7, 0x180

    if-ne v7, v11, :cond_12

    goto :goto_c

    :cond_12
    move v3, v6

    :cond_13
    :goto_c
    or-int/2addr v1, v3

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_15

    :cond_14
    new-instance v3, Landroidx/compose/material3/DividerKt$HorizontalDivider$1$1;

    invoke-direct {v3, v9, v12, v13}, Landroidx/compose/material3/DividerKt$HorizontalDivider$1$1;-><init>(FJ)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3, v2, v6}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v1, v4

    goto :goto_6

    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_16

    new-instance v8, Landroidx/compose/material3/DividerKt$HorizontalDivider$2;

    move-object v0, v8

    move v2, v9

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DividerKt$HorizontalDivider$2;-><init>(Landroidx/compose/ui/Modifier;FJII)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
