.class public final Lcom/android/systemui/monet/SchemeClockVibrant;
.super Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V
    .locals 13

    move-object v1, p1

    sget-object v2, Lcom/google/ux/material/libmonet/dynamiccolor/Variant;->MONOCHROME:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    iget-wide v3, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    iget-wide v5, v1, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    const-wide v7, 0x4051800000000000L    # 70.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->max(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v6

    iget-wide v3, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    add-double/2addr v3, v9

    iget-wide v9, v1, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Double;->max(DD)D

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v9

    iget-wide v3, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    add-double/2addr v3, v10

    iget-wide v10, v1, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Double;->max(DD)D

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v8

    iget-wide v3, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    const-wide/16 v10, 0x0

    invoke-static {v3, v4, v10, v11}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v12

    iget-wide v3, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    invoke-static {v3, v4, v10, v11}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-object v7, v9

    move-object v9, v12

    invoke-direct/range {v0 .. v10}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;Lcom/google/ux/material/libmonet/dynamiccolor/Variant;ZDLcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;)V

    return-void
.end method
