.class public final Lcom/google/ux/material/libmonet/scheme/SchemeContent;
.super Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/google/ux/material/libmonet/hct/Hct;ZD)V
    .locals 22

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/ux/material/libmonet/dynamiccolor/Variant;->CONTENT:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    iget-wide v3, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    iget-wide v5, v1, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    invoke-static {v3, v4, v5, v6}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v6

    iget-wide v3, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    iget-wide v7, v1, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    const-wide/high16 v9, 0x4040000000000000L    # 32.0

    sub-double v9, v7, v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v11

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v7

    new-instance v0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;

    invoke-direct {v0, v1}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;)V

    iget-object v3, v0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->input:Lcom/google/ux/material/libmonet/hct/Hct;

    iget-wide v4, v3, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-virtual {v0, v5}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getRelativeTemperature(Lcom/google/ux/material/libmonet/hct/Hct;)D

    move-result-wide v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    :goto_0
    const/16 v12, 0x168

    if-ge v14, v12, :cond_1

    add-int v13, v4, v14

    rem-int/2addr v13, v12

    if-gez v13, :cond_0

    add-int/lit16 v13, v13, 0x168

    :cond_0
    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-virtual {v0, v12}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getRelativeTemperature(Lcom/google/ux/material/libmonet/hct/Hct;)D

    move-result-wide v12

    sub-double v8, v12, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v15, v8

    add-int/lit8 v14, v14, 0x1

    move-wide v8, v12

    goto :goto_0

    :cond_1
    const/4 v8, 0x6

    int-to-double v13, v8

    div-double/2addr v15, v13

    invoke-virtual {v0, v5}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getRelativeTemperature(Lcom/google/ux/material/libmonet/hct/Hct;)D

    move-result-wide v13

    const/4 v9, 0x1

    const-wide/16 v17, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v8, :cond_7

    add-int v5, v4, v9

    rem-int/2addr v5, v12

    if-gez v5, :cond_2

    add-int/lit16 v5, v5, 0x168

    :cond_2
    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-virtual {v0, v5}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getRelativeTemperature(Lcom/google/ux/material/libmonet/hct/Hct;)D

    move-result-wide v19

    sub-double v13, v19, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    add-double v17, v13, v17

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-double v13, v11

    mul-double/2addr v13, v15

    cmpl-double v11, v17, v13

    if-ltz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    const/4 v13, 0x1

    :goto_3
    if-eqz v11, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, v8, :cond_5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v11, v13

    move/from16 v21, v9

    int-to-double v8, v11

    mul-double/2addr v8, v15

    cmpl-double v8, v17, v8

    if-ltz v8, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v21

    const/4 v8, 0x6

    goto :goto_3

    :cond_5
    move/from16 v21, v9

    add-int/lit8 v9, v21, 0x1

    if-le v9, v12, :cond_6

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x6

    if-ge v0, v8, :cond_7

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    move-wide/from16 v13, v19

    const/4 v8, 0x6

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    int-to-double v4, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x1

    :goto_6
    add-int/lit8 v8, v4, 0x1

    if-ge v5, v8, :cond_a

    rsub-int/lit8 v8, v5, 0x0

    :goto_7
    if-gez v8, :cond_8

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_7

    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v8, v9, :cond_9

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    rem-int/2addr v8, v9

    :cond_9
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/ux/material/libmonet/hct/Hct;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    sub-int/2addr v3, v4

    const/4 v5, 0x1

    :goto_8
    if-ge v5, v3, :cond_d

    move v4, v5

    :goto_9
    if-gez v4, :cond_b

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_9

    :cond_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_c

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int/2addr v4, v8

    :cond_c
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-static {v0}, Lcom/google/ux/material/libmonet/dislike/DislikeAnalyzer;->fixIfDisliked(Lcom/google/ux/material/libmonet/hct/Hct;)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHct(Lcom/google/ux/material/libmonet/hct/Hct;)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v8

    iget-wide v3, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    iget-wide v9, v1, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    const-wide/high16 v11, 0x4020000000000000L    # 8.0

    div-double/2addr v9, v11

    invoke-static {v3, v4, v9, v10}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v9

    iget-wide v3, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    iget-wide v13, v1, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    div-double/2addr v13, v11

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    add-double/2addr v13, v10

    invoke-static {v3, v4, v13, v14}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;-><init>(Lcom/google/ux/material/libmonet/hct/Hct;Lcom/google/ux/material/libmonet/dynamiccolor/Variant;ZDLcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;Lcom/google/ux/material/libmonet/palettes/TonalPalette;)V

    return-void
.end method
