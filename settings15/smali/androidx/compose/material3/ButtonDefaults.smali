.class public abstract Landroidx/compose/material3/ButtonDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final MinHeight:F

.field public static final MinWidth:F

.field public static final TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x18

    int-to-float v0, v0

    const/16 v1, 0x8

    int-to-float v1, v1

    new-instance v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v2, v0, v1, v0, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sput-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v2, 0x10

    int-to-float v2, v2

    invoke-static {v2, v1, v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v0, 0xc

    int-to-float v0, v0

    new-instance v3, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v3, v0, v1, v0, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sput-object v3, Landroidx/compose/material3/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v0, 0x3a

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    const/16 v0, 0x28

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    sget v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerElevation:F

    return-void
.end method

.method public static getDefaultButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material3/ButtonColors;

    sget v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerElevation:F

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    sget-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    sget-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    const v1, 0x3df5c28f    # 0.12f

    invoke-static {v1, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v6

    sget-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    const v1, 0x3ec28f5c    # 0.38f

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v8

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    iput-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    :cond_0
    return-object v0
.end method

.method public static getDefaultFilledTonalButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material3/ButtonColors;

    sget v1, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->ContainerElevation:F

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    sget-object v1, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    sget-object v1, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    const v1, 0x3df5c28f    # 0.12f

    invoke-static {v1, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v6

    sget-object v1, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    const v1, 0x3ec28f5c    # 0.38f

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v8

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    iput-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    :cond_0
    return-object v0
.end method
