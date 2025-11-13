.class public final synthetic Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V
    .locals 0

    iput p2, p0, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;->f$0:Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object v0, v0, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;->f$0:Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    sget-object v7, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const/4 v8, 0x1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V

    return-object v1

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    sget-object v7, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->NEARER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const/4 v8, 0x0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V

    return-object v1

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->isDark:Z

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    if-eqz v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    const-wide v5, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isMonochrome(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z

    move-result v2

    iget-boolean v7, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->isDark:Z

    if-eqz v2, :cond_2

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const-wide v3, 0x4055400000000000L    # 85.0

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_5

    :cond_3
    iget-object v0, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->secondaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    iget-wide v1, v0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->hue:D

    xor-int/lit8 v3, v7, 0x1

    iget-wide v14, v0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->chroma:D

    move-wide v7, v1

    move-wide v9, v14

    move-wide v11, v5

    invoke-static/range {v7 .. v12}, Lcom/google/ux/material/libmonet/hct/Hct;->from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    iget-wide v7, v0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    cmpg-double v4, v7, v14

    if-gez v4, :cond_8

    move-wide v12, v7

    :goto_2
    iget-wide v7, v0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    cmpg-double v4, v7, v14

    if-gez v4, :cond_8

    if-eqz v3, :cond_4

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    goto :goto_3

    :cond_4
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    :goto_3
    add-double/2addr v5, v7

    move-wide v8, v1

    move-wide v10, v14

    move-wide/from16 p0, v1

    move-wide v1, v12

    move-wide v12, v5

    invoke-static/range {v8 .. v13}, Lcom/google/ux/material/libmonet/hct/Hct;->from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v4

    iget-wide v7, v4, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    cmpl-double v9, v1, v7

    if-lez v9, :cond_5

    goto :goto_4

    :cond_5
    sub-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3fd999999999999aL    # 0.4

    cmpg-double v7, v7, v9

    if-gez v7, :cond_6

    goto :goto_4

    :cond_6
    iget-wide v7, v4, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    sub-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    sub-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_7

    move-object v0, v4

    :cond_7
    iget-wide v7, v4, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide/from16 v1, p0

    goto :goto_2

    :cond_8
    :goto_4
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_5
    return-object v0

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v1, 0xf

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v4, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v1, 0x10

    invoke-direct {v4, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v2, "surface_bright"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    goto :goto_6

    :cond_9
    new-instance v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v12, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x13

    invoke-direct {v12, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v13, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x14

    invoke-direct {v13, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string/jumbo v11, "surface_dim"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    :goto_6
    return-object v0

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->errorContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    sget-object v7, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const/4 v8, 0x1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V

    return-object v1

    :pswitch_c
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_d
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v0, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_7

    :cond_a
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->foregroundTone(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    sget-object v7, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->NEARER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const/4 v8, 0x0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V

    return-object v1

    :pswitch_f
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->sourceColorHct:Lcom/google/ux/material/libmonet/hct/Hct;

    iget-wide v0, v0, Lcom/google/ux/material/libmonet/hct/Hct;->tone:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_b

    :cond_c
    invoke-static {v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isMonochrome(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z

    move-result v0

    iget-boolean v1, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_e

    if-eqz v1, :cond_d

    const-wide v0, 0x4055400000000000L    # 85.0

    goto :goto_9

    :cond_d
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_b

    :cond_e
    if-eqz v1, :cond_f

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_a

    :cond_f
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_b
    return-object v0

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->error()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_11
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    sget-object v7, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->NEARER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const/4 v8, 0x0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V

    return-object v1

    :pswitch_12
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isMonochrome(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z

    move-result v2

    iget-boolean v3, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->isDark:Z

    if-eqz v2, :cond_11

    if-eqz v3, :cond_10

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    goto :goto_c

    :cond_10
    const-wide v0, 0x4048800000000000L    # 49.0

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    :cond_11
    invoke-virtual {v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz v3, :cond_12

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_d

    :cond_12
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_d
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    :cond_13
    iget-object v0, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->sourceColorHct:Lcom/google/ux/material/libmonet/hct/Hct;

    iget-wide v6, v0, Lcom/google/ux/material/libmonet/hct/Hct;->tone:D

    iget-object v0, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->tertiaryPalette:Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    iget-wide v2, v0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->hue:D

    iget-wide v4, v0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->chroma:D

    invoke-static/range {v2 .. v7}, Lcom/google/ux/material/libmonet/hct/Hct;->from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ux/material/libmonet/dislike/DislikeAnalyzer;->fixIfDisliked(Lcom/google/ux/material/libmonet/hct/Hct;)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/ux/material/libmonet/hct/Hct;->tone:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_13
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    sget-object v7, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->NEARER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const/4 v8, 0x0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V

    return-object v1

    :pswitch_14
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->errorContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->error()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    sget-object v7, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->NEARER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const/4 v8, 0x0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V

    return-object v1

    :pswitch_15
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_16
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    sget-object v7, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const/4 v8, 0x1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V

    return-object v1

    :pswitch_17
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_18
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    sget-object v7, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const/4 v8, 0x1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V

    return-object v1

    :pswitch_19
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_1a
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->foregroundTone(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_11

    :cond_14
    invoke-static {v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isMonochrome(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z

    move-result v0

    iget-boolean v1, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_16

    if-eqz v1, :cond_15

    const-wide/16 v0, 0x0

    goto :goto_f

    :cond_15
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_f
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_11

    :cond_16
    if-eqz v1, :cond_17

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_10

    :cond_17
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_10
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_11
    return-object v0

    :pswitch_1b
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v4, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v5, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "background"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0

    :pswitch_1c
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
    .end packed-switch
.end method
