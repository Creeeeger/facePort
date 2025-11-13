.class public Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contrastLevel:D

.field public final errorPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

.field public final isDark:Z

.field public final neutralPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

.field public final neutralVariantPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

.field public final primaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

.field public final secondaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

.field public final sourceColorHct:Lcom/google/ux/material/libmonet/hct/Hct;

.field public final tertiaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

.field public final variant:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;


# direct methods
.method public constructor <init>(Lcom/google/ux/material/libmonet/hct/Hct;Lcom/google/ux/material/libmonet/dynamiccolor/Variant;ZDLcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->sourceColorHct:Lcom/google/ux/material/libmonet/hct/Hct;

    iput-object p2, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->variant:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    iput-boolean p3, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->isDark:Z

    iput-wide p4, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->contrastLevel:D

    iput-object p6, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->primaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    iput-object p7, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->secondaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    iput-object p8, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->tertiaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    iput-object p9, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->neutralPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    iput-object p10, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->neutralVariantPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    const-wide/high16 p1, 0x4039000000000000L    # 25.0

    const-wide/high16 p3, 0x4055000000000000L    # 84.0

    invoke-static {p1, p2, p3, p4}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->errorPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    return-void
.end method

.method public static getRotatedHue(Lcom/google/ux/material/libmonet/hct/Hct;[D[D)D
    .locals 8

    iget-wide v0, p0, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    array-length p0, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v2, :cond_0

    aget-wide p0, p2, v3

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/ux/material/libmonet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide p0

    return-wide p0

    :cond_0
    array-length p0, p1

    :goto_0
    add-int/lit8 v2, p0, -0x2

    if-gt v3, v2, :cond_2

    aget-wide v4, p1, v3

    add-int/lit8 v2, v3, 0x1

    aget-wide v6, p1, v2

    cmpg-double v4, v4, v0

    if-gez v4, :cond_1

    cmpg-double v4, v0, v6

    if-gez v4, :cond_1

    aget-wide p0, p2, v3

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/ux/material/libmonet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    return-wide v0
.end method
