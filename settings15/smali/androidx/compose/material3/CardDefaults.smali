.class public abstract Landroidx/compose/material3/CardDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static cardColors-ro_MJ88(JLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/CardColors;
    .locals 20

    invoke-static/range {p0 .. p2}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v0

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v4

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/ColorScheme;

    invoke-static {v6}, Landroidx/compose/material3/CardDefaults;->getDefaultCardColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;

    move-result-object v6

    const-wide/16 v7, 0x10

    cmp-long v9, p0, v7

    if-eqz v9, :cond_0

    move-wide/from16 v12, p0

    goto :goto_0

    :cond_0
    iget-wide v9, v6, Landroidx/compose/material3/CardColors;->containerColor:J

    move-wide v12, v9

    :goto_0
    cmp-long v9, v0, v7

    if-eqz v9, :cond_1

    :goto_1
    move-wide v14, v0

    goto :goto_2

    :cond_1
    iget-wide v0, v6, Landroidx/compose/material3/CardColors;->contentColor:J

    goto :goto_1

    :goto_2
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    :goto_3
    move-wide/from16 v16, v2

    goto :goto_4

    :cond_2
    iget-wide v2, v6, Landroidx/compose/material3/CardColors;->disabledContainerColor:J

    goto :goto_3

    :goto_4
    cmp-long v0, v4, v7

    if-eqz v0, :cond_3

    :goto_5
    move-wide/from16 v18, v4

    goto :goto_6

    :cond_3
    iget-wide v4, v6, Landroidx/compose/material3/CardColors;->disabledContentColor:J

    goto :goto_5

    :goto_6
    new-instance v0, Landroidx/compose/material3/CardColors;

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Landroidx/compose/material3/CardColors;-><init>(JJJJ)V

    return-object v0
.end method

.method public static getDefaultCardColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultCardColorsCached:Landroidx/compose/material3/CardColors;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material3/CardColors;

    sget v1, Landroidx/compose/material3/tokens/FilledCardTokens;->ContainerElevation:F

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainerHighest:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    sget v8, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerOpacity:F

    invoke-static {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v6

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v6

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v8

    const v1, 0x3ec28f5c    # 0.38f

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v8

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroidx/compose/material3/CardColors;-><init>(JJJJ)V

    iput-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultCardColorsCached:Landroidx/compose/material3/CardColors;

    :cond_0
    return-object v0
.end method
