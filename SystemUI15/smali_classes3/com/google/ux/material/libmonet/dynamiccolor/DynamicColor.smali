.class public final Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final background:Ljava/util/function/Function;

.field public final contrastCurve:Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

.field public final hctCache:Ljava/util/HashMap;

.field public final isBackground:Z

.field public final name:Ljava/lang/String;

.field public final opacity:Ljava/util/function/Function;

.field public final palette:Ljava/util/function/Function;

.field public final secondBackground:Ljava/util/function/Function;

.field public final tone:Ljava/util/function/Function;

.field public final toneDeltaPair:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Lcom/google/ux/material/libmonet/palettes/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;Z",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;",
            ">;",
            "Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->hctCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->palette:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    iput-boolean p4, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->isBackground:Z

    iput-object p5, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    iput-object p6, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->secondBackground:Ljava/util/function/Function;

    iput-object p7, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->contrastCurve:Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    iput-object p8, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->toneDeltaPair:Ljava/util/function/Function;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->opacity:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Lcom/google/ux/material/libmonet/palettes/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;Z",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;",
            ">;",
            "Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->hctCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->palette:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    iput-boolean p4, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->isBackground:Z

    iput-object p5, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    iput-object p6, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->secondBackground:Ljava/util/function/Function;

    iput-object p7, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->contrastCurve:Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    iput-object p8, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->toneDeltaPair:Ljava/util/function/Function;

    iput-object p9, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->opacity:Ljava/util/function/Function;

    return-void
.end method

.method public static foregroundTone(DD)D
    .locals 10

    invoke-static {p0, p1, p2, p3}, Lcom/google/ux/material/libmonet/contrast/Contrast;->lighter(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/ux/material/libmonet/contrast/Contrast;->darker(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Lcom/google/ux/material/libmonet/contrast/Contrast;->ratioOfTones(DD)D

    move-result-wide v4

    invoke-static {v2, v3, p0, p1}, Lcom/google/ux/material/libmonet/contrast/Contrast;->ratioOfTones(DD)D

    move-result-wide v6

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v8, 0x3c

    cmp-long p0, p0, v8

    if-gez p0, :cond_4

    sub-double p0, v4, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double p0, p0, v8

    if-gez p0, :cond_1

    cmpg-double p0, v4, p2

    if-gez p0, :cond_1

    cmpg-double p0, v6, p2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    cmpl-double p1, v4, p2

    if-gez p1, :cond_3

    cmpl-double p1, v4, v6

    if-gez p1, :cond_3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return-wide v2

    :cond_3
    :goto_1
    return-wide v0

    :cond_4
    cmpl-double p0, v6, p2

    if-gez p0, :cond_5

    cmpl-double p0, v6, v4

    if-ltz p0, :cond_6

    :cond_5
    move-wide v0, v2

    :cond_6
    return-wide v0
.end method

.method public static fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 10

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method


# virtual methods
.method public final getArgb(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)I
    .locals 7

    iget-object v0, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->hctCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ux/material/libmonet/hct/Hct;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getTone(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)D

    move-result-wide v5

    iget-object v0, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->palette:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    iget-wide v1, v0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->hue:D

    iget-wide v3, v0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->chroma:D

    invoke-static/range {v1 .. v6}, Lcom/google/ux/material/libmonet/hct/Hct;->from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->hctCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->hctCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->hctCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget v0, v0, Lcom/google/ux/material/libmonet/hct/Hct;->argb:I

    iget-object p0, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->opacity:Ljava/util/function/Function;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    if-gez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    const/16 p1, 0xff

    if-le p0, p1, :cond_4

    move p0, p1

    :cond_4
    :goto_1
    const p1, 0xffffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public final getTone(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)D
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->contrastLevel:D

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->toneDeltaPair:Ljava/util/function/Function;

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    if-eqz v9, :cond_16

    invoke-interface {v9, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;

    iget-object v14, v9, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->roleA:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    iget-object v15, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    invoke-interface {v15, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    invoke-virtual {v15, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getTone(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)D

    move-result-wide v7

    sget-object v15, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->NEARER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    iget-boolean v12, v1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->isDark:Z

    iget-object v13, v9, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->polarity:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    if-eq v13, v15, :cond_3

    sget-object v15, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    if-ne v13, v15, :cond_1

    if-eqz v12, :cond_3

    :cond_1
    sget-object v15, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->DARKER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    if-ne v13, v15, :cond_2

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v16, 0x1

    :goto_2
    iget-object v13, v9, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->roleB:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    if-eqz v16, :cond_4

    move-object v15, v14

    goto :goto_3

    :cond_4
    move-object v15, v13

    :goto_3
    if-eqz v16, :cond_5

    move-object v14, v13

    :cond_5
    iget-object v13, v15, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->name:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v12, :cond_6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v12

    goto :goto_4

    :cond_6
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    :goto_4
    iget-object v12, v15, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->contrastCurve:Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    invoke-virtual {v12, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;->get(D)D

    move-result-wide v12

    iget-object v10, v14, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->contrastCurve:Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    invoke-virtual {v10, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;->get(D)D

    move-result-wide v2

    iget-object v10, v15, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v10, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Lcom/google/ux/material/libmonet/contrast/Contrast;->ratioOfTones(DD)D

    move-result-wide v15

    cmpl-double v15, v15, v12

    if-ltz v15, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v7, v8, v12, v13}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->foregroundTone(DD)D

    move-result-wide v10

    :goto_5
    iget-object v14, v14, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v14, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v7, v8, v14, v15}, Lcom/google/ux/material/libmonet/contrast/Contrast;->ratioOfTones(DD)D

    move-result-wide v16

    cmpl-double v1, v16, v2

    if-ltz v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v7, v8, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->foregroundTone(DD)D

    move-result-wide v14

    :goto_6
    if-eqz v6, :cond_9

    invoke-static {v7, v8, v12, v13}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->foregroundTone(DD)D

    move-result-wide v10

    invoke-static {v7, v8, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->foregroundTone(DD)D

    move-result-wide v14

    :cond_9
    sub-double v1, v14, v10

    mul-double v1, v1, v20

    iget-wide v6, v9, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->delta:D

    cmpg-double v1, v1, v6

    if-gez v1, :cond_e

    mul-double v1, v6, v20

    add-double v12, v10, v1

    cmpg-double v3, v12, v4

    if-gez v3, :cond_a

    move-wide v14, v4

    goto :goto_7

    :cond_a
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    cmpl-double v3, v12, v14

    if-lez v3, :cond_b

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    goto :goto_7

    :cond_b
    move-wide v14, v12

    :goto_7
    sub-double v12, v14, v10

    mul-double v12, v12, v20

    cmpg-double v3, v12, v6

    if-gez v3, :cond_e

    sub-double v1, v14, v1

    cmpg-double v3, v1, v4

    if-gez v3, :cond_c

    move-wide v10, v4

    goto :goto_8

    :cond_c
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    cmpl-double v3, v1, v10

    if-lez v3, :cond_d

    goto :goto_8

    :cond_d
    move-wide v10, v1

    :cond_e
    :goto_8
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    cmpg-double v3, v1, v10

    if-gtz v3, :cond_10

    cmpg-double v1, v10, v18

    if-gez v1, :cond_10

    cmpl-double v1, v20, v4

    if-lez v1, :cond_f

    mul-double v6, v6, v20

    add-double v6, v6, v18

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    :goto_9
    move-wide/from16 v10, v18

    goto :goto_b

    :cond_f
    mul-double v6, v6, v20

    const-wide v1, 0x4048800000000000L    # 49.0

    add-double/2addr v6, v1

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    :goto_a
    move-wide v7, v1

    const-wide v10, 0x4048800000000000L    # 49.0

    goto :goto_b

    :cond_10
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    cmpg-double v1, v1, v14

    if-gtz v1, :cond_14

    cmpg-double v1, v14, v18

    if-gez v1, :cond_14

    iget-boolean v1, v9, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->stayTogether:Z

    if-eqz v1, :cond_12

    cmpl-double v1, v20, v4

    if-lez v1, :cond_11

    mul-double v6, v6, v20

    add-double v6, v6, v18

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    goto :goto_9

    :cond_11
    mul-double v6, v6, v20

    const-wide v1, 0x4048800000000000L    # 49.0

    add-double/2addr v6, v1

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_a

    :cond_12
    cmpl-double v1, v20, v4

    if-lez v1, :cond_13

    move-wide/from16 v7, v18

    goto :goto_b

    :cond_13
    const-wide v7, 0x4048800000000000L    # 49.0

    goto :goto_b

    :cond_14
    move-wide v7, v14

    :goto_b
    if-eqz v0, :cond_15

    move-wide v7, v10

    :cond_15
    return-wide v7

    :cond_16
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    iget-object v7, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v9, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    if-nez v9, :cond_17

    return-wide v7

    :cond_17
    invoke-interface {v9, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    invoke-virtual {v9, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getTone(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)D

    move-result-wide v12

    iget-object v9, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->contrastCurve:Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    invoke-virtual {v9, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;->get(D)D

    move-result-wide v2

    invoke-static {v12, v13, v7, v8}, Lcom/google/ux/material/libmonet/contrast/Contrast;->ratioOfTones(DD)D

    move-result-wide v14

    cmpl-double v9, v14, v2

    if-ltz v9, :cond_18

    goto :goto_c

    :cond_18
    invoke-static {v12, v13, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->foregroundTone(DD)D

    move-result-wide v7

    :goto_c
    if-eqz v6, :cond_19

    invoke-static {v12, v13, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->foregroundTone(DD)D

    move-result-wide v7

    :cond_19
    iget-boolean v6, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->isBackground:Z

    if-eqz v6, :cond_1b

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    cmpg-double v6, v14, v7

    if-gtz v6, :cond_1b

    cmpg-double v6, v7, v18

    if-gez v6, :cond_1b

    const-wide v14, 0x4048800000000000L    # 49.0

    invoke-static {v14, v15, v12, v13}, Lcom/google/ux/material/libmonet/contrast/Contrast;->ratioOfTones(DD)D

    move-result-wide v6

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_1a

    move-wide v7, v14

    goto :goto_d

    :cond_1a
    move-wide/from16 v7, v18

    :cond_1b
    :goto_d
    iget-object v6, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->secondBackground:Ljava/util/function/Function;

    if-eqz v6, :cond_24

    iget-object v6, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    invoke-interface {v6, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    invoke-virtual {v6, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getTone(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)D

    move-result-wide v12

    iget-object v0, v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->secondBackground:Ljava/util/function/Function;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    invoke-virtual {v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getTone(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)D

    move-result-wide v0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v14, v15, v7, v8}, Lcom/google/ux/material/libmonet/contrast/Contrast;->ratioOfTones(DD)D

    move-result-wide v22

    cmpl-double v6, v22, v2

    if-ltz v6, :cond_1c

    invoke-static {v4, v5, v7, v8}, Lcom/google/ux/material/libmonet/contrast/Contrast;->ratioOfTones(DD)D

    move-result-wide v22

    cmpl-double v6, v22, v2

    if-ltz v6, :cond_1c

    return-wide v7

    :cond_1c
    invoke-static {v14, v15, v2, v3}, Lcom/google/ux/material/libmonet/contrast/Contrast;->lighter(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v2, v3}, Lcom/google/ux/material/libmonet/contrast/Contrast;->darker(DD)D

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_1d

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    cmpl-double v8, v2, v8

    if-eqz v8, :cond_1e

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    const-wide/16 v14, 0x3c

    cmp-long v9, v12, v14

    if-gez v9, :cond_1f

    goto :goto_e

    :cond_1f
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    cmp-long v0, v0, v14

    if-gez v0, :cond_21

    :goto_e
    if-nez v5, :cond_20

    goto :goto_f

    :cond_20
    move-wide v10, v6

    :goto_f
    return-wide v10

    :cond_21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_22
    if-nez v8, :cond_23

    const-wide/16 v4, 0x0

    goto :goto_10

    :cond_23
    move-wide v4, v2

    :goto_10
    return-wide v4

    :cond_24
    return-wide v7
.end method
