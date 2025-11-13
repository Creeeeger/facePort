.class public abstract Landroidx/compose/material3/ColorSchemeKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material3/ColorSchemeKt$LocalColorScheme$1;->INSTANCE:Landroidx/compose/material3/ColorSchemeKt$LocalColorScheme$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/material3/ColorSchemeKt$LocalTonalElevationEnabled$1;->INSTANCE:Landroidx/compose/material3/ColorSchemeKt$LocalTonalElevationEnabled$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J
    .locals 5

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    goto/16 :goto_1

    :cond_0
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    goto/16 :goto_1

    :cond_1
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    goto/16 :goto_1

    :cond_2
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->background:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    goto/16 :goto_1

    :cond_3
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->error:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    goto/16 :goto_1

    :cond_4
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    goto/16 :goto_1

    :cond_5
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    goto/16 :goto_1

    :cond_6
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    goto/16 :goto_1

    :cond_7
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    goto :goto_1

    :cond_8
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    goto :goto_1

    :cond_9
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    if-eqz v0, :cond_a

    :goto_0
    move-wide p0, v1

    goto :goto_1

    :cond_a
    iget-wide v3, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    invoke-static {p1, p2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    goto :goto_1

    :cond_b
    iget-wide v3, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    invoke-static {p1, p2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    iget-wide v3, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    invoke-static {p1, p2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    iget-wide v3, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    invoke-static {p1, p2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_0

    :cond_e
    iget-wide v3, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    invoke-static {p1, p2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    iget-wide v3, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    invoke-static {p1, p2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_0

    :cond_10
    iget-wide v3, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    invoke-static {p1, p2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_0

    :cond_11
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    sget-wide p0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :goto_1
    return-wide p0
.end method

.method public static final contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J
    .locals 2

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x64314530

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/ColorScheme;

    invoke-static {v0, p0, p1}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide p0

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-wide p0
.end method

.method public static final fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    sget-wide p0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto/16 :goto_0

    :pswitch_1
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    goto/16 :goto_0

    :pswitch_2
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    goto/16 :goto_0

    :pswitch_3
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    goto/16 :goto_0

    :pswitch_4
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    goto/16 :goto_0

    :pswitch_5
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    goto/16 :goto_0

    :pswitch_6
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    goto/16 :goto_0

    :pswitch_7
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    goto/16 :goto_0

    :pswitch_8
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    goto/16 :goto_0

    :pswitch_9
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    goto/16 :goto_0

    :pswitch_a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    goto/16 :goto_0

    :pswitch_b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    goto :goto_0

    :pswitch_c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    goto :goto_0

    :pswitch_d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    goto :goto_0

    :pswitch_e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    goto :goto_0

    :pswitch_f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->scrim:J

    goto :goto_0

    :pswitch_10
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    goto :goto_0

    :pswitch_11
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    goto :goto_0

    :pswitch_12
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    goto :goto_0

    :pswitch_13
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->outline:J

    goto :goto_0

    :pswitch_14
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    goto :goto_0

    :pswitch_15
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    goto :goto_0

    :pswitch_16
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    goto :goto_0

    :pswitch_17
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    goto :goto_0

    :pswitch_18
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    goto :goto_0

    :pswitch_19
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    goto :goto_0

    :pswitch_1a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    goto :goto_0

    :pswitch_1b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    goto :goto_0

    :pswitch_1c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    goto :goto_0

    :pswitch_1d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    goto :goto_0

    :pswitch_1e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    goto :goto_0

    :pswitch_1f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    goto :goto_0

    :pswitch_20
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    goto :goto_0

    :pswitch_21
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    goto :goto_0

    :pswitch_22
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    goto :goto_0

    :pswitch_23
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->error:J

    goto :goto_0

    :pswitch_24
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->background:J

    :goto_0
    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/ColorScheme;

    invoke-static {p1, p0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static lightColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Landroidx/compose/material3/ColorScheme;
    .locals 76

    move/from16 v0, p64

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Primary:J

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p0

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimary:J

    move-wide v6, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->PrimaryContainer:J

    move-wide v8, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p4

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnPrimaryContainer:J

    move-wide v10, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p6

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->InversePrimary:J

    move-wide v12, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v12, p8

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Secondary:J

    move-wide v14, v1

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p10

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondary:J

    move-wide/from16 v16, v1

    goto :goto_6

    :cond_6
    move-wide/from16 v16, p12

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->SecondaryContainer:J

    move-wide/from16 v18, v1

    goto :goto_7

    :cond_7
    move-wide/from16 v18, p14

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSecondaryContainer:J

    move-wide/from16 v20, v1

    goto :goto_8

    :cond_8
    move-wide/from16 v20, p16

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Tertiary:J

    move-wide/from16 v22, v1

    goto :goto_9

    :cond_9
    move-wide/from16 v22, p18

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiary:J

    move-wide/from16 v24, v1

    goto :goto_a

    :cond_a
    move-wide/from16 v24, p20

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->TertiaryContainer:J

    move-wide/from16 v26, v1

    goto :goto_b

    :cond_b
    move-wide/from16 v26, p22

    :goto_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnTertiaryContainer:J

    move-wide/from16 v28, v1

    goto :goto_c

    :cond_c
    move-wide/from16 v28, p24

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Background:J

    move-wide/from16 v30, v1

    goto :goto_d

    :cond_d
    move-wide/from16 v30, p26

    :goto_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnBackground:J

    move-wide/from16 v32, v1

    goto :goto_e

    :cond_e
    move-wide/from16 v32, p28

    :goto_e
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Surface:J

    move-wide/from16 v34, v1

    goto :goto_f

    :cond_f
    move-wide/from16 v34, p30

    :goto_f
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSurface:J

    move-wide/from16 v36, v1

    goto :goto_10

    :cond_10
    move-wide/from16 v36, p32

    :goto_10
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceVariant:J

    move-wide/from16 v38, v1

    goto :goto_11

    :cond_11
    move-wide/from16 v38, p34

    :goto_11
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OnSurfaceVariant:J

    move-wide/from16 v40, v1

    goto :goto_12

    :cond_12
    move-wide/from16 v40, p36

    :goto_12
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-wide/from16 v42, v4

    goto :goto_13

    :cond_13
    move-wide/from16 v42, p38

    :goto_13
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->InverseSurface:J

    move-wide/from16 v44, v1

    goto :goto_14

    :cond_14
    move-wide/from16 v44, p40

    :goto_14
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->InverseOnSurface:J

    move-wide/from16 v46, v1

    goto :goto_15

    :cond_15
    move-wide/from16 v46, p42

    :goto_15
    sget-wide v48, Landroidx/compose/material3/tokens/ColorLightTokens;->Error:J

    sget-wide v50, Landroidx/compose/material3/tokens/ColorLightTokens;->OnError:J

    sget-wide v52, Landroidx/compose/material3/tokens/ColorLightTokens;->ErrorContainer:J

    sget-wide v54, Landroidx/compose/material3/tokens/ColorLightTokens;->OnErrorContainer:J

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Outline:J

    move-wide/from16 v56, v1

    goto :goto_16

    :cond_16
    move-wide/from16 v56, p44

    :goto_16
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->OutlineVariant:J

    move-wide/from16 v58, v1

    goto :goto_17

    :cond_17
    move-wide/from16 v58, p46

    :goto_17
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->Scrim:J

    move-wide/from16 v60, v1

    goto :goto_18

    :cond_18
    move-wide/from16 v60, p48

    :goto_18
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceBright:J

    move-wide/from16 v62, v1

    goto :goto_19

    :cond_19
    move-wide/from16 v62, p50

    :goto_19
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainer:J

    move-wide/from16 v66, v1

    goto :goto_1a

    :cond_1a
    move-wide/from16 v66, p52

    :goto_1a
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerHigh:J

    move-wide/from16 v68, v0

    goto :goto_1b

    :cond_1b
    move-wide/from16 v68, p54

    :goto_1b
    and-int/lit8 v0, p65, 0x1

    if-eqz v0, :cond_1c

    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerHighest:J

    move-wide/from16 v70, v0

    goto :goto_1c

    :cond_1c
    move-wide/from16 v70, p56

    :goto_1c
    and-int/lit8 v0, p65, 0x2

    if-eqz v0, :cond_1d

    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerLow:J

    move-wide/from16 v72, v0

    goto :goto_1d

    :cond_1d
    move-wide/from16 v72, p58

    :goto_1d
    and-int/lit8 v0, p65, 0x4

    if-eqz v0, :cond_1e

    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceContainerLowest:J

    move-wide/from16 v74, v0

    goto :goto_1e

    :cond_1e
    move-wide/from16 v74, p60

    :goto_1e
    and-int/lit8 v0, p65, 0x8

    if-eqz v0, :cond_1f

    sget-wide v0, Landroidx/compose/material3/tokens/ColorLightTokens;->SurfaceDim:J

    move-wide/from16 v64, v0

    goto :goto_1f

    :cond_1f
    move-wide/from16 v64, p62

    :goto_1f
    new-instance v0, Landroidx/compose/material3/ColorScheme;

    move-object v3, v0

    invoke-direct/range {v3 .. v75}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-object v0
.end method
