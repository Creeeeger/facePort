.class public final Lcom/google/ux/material/libmonet/temperature/TemperatureCache;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final input:Lcom/google/ux/material/libmonet/hct/Hct;

.field public precomputedHctsByHue:Ljava/util/List;

.field public precomputedHctsByTemp:Ljava/util/List;

.field public precomputedTempsByHct:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Lcom/google/ux/material/libmonet/hct/Hct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->input:Lcom/google/ux/material/libmonet/hct/Hct;

    return-void
.end method


# virtual methods
.method public final getHctsByHue()Ljava/util/List;
    .locals 9

    iget-object v0, p0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->precomputedHctsByHue:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    :goto_0
    const-wide v3, 0x4076800000000000L    # 360.0

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->input:Lcom/google/ux/material/libmonet/hct/Hct;

    iget-wide v5, v3, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    iget-wide v7, v3, Lcom/google/ux/material/libmonet/hct/Hct;->tone:D

    move-wide v3, v1

    invoke-static/range {v3 .. v8}, Lcom/google/ux/material/libmonet/hct/Hct;->from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->precomputedHctsByHue:Ljava/util/List;

    return-object v0
.end method

.method public final getHctsByTemp()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->precomputedHctsByTemp:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->input:Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/ux/material/libmonet/temperature/TemperatureCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/ux/material/libmonet/temperature/TemperatureCache;)V

    new-instance v2, Lcom/google/ux/material/libmonet/temperature/TemperatureCache$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->precomputedHctsByTemp:Ljava/util/List;

    return-object v0
.end method

.method public final getRelativeTemperature(Lcom/google/ux/material/libmonet/hct/Hct;)D
    .locals 5

    invoke-virtual {p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ux/material/libmonet/hct/Hct;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ux/material/libmonet/hct/Hct;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ux/material/libmonet/hct/Hct;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v2, p0

    const-wide/16 p0, 0x0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    return-wide p0

    :cond_0
    div-double/2addr v2, v0

    return-wide v2
.end method

.method public final getTempsByHct()Ljava/util/Map;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->precomputedTempsByHct:Ljava/util/Map;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, v0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->input:Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ux/material/libmonet/hct/Hct;

    iget v7, v6, Lcom/google/ux/material/libmonet/hct/Hct;->argb:I

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->linearized(I)D

    move-result-wide v8

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->linearized(I)D

    move-result-wide v10

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->linearized(I)D

    move-result-wide v12

    sget-object v7, Lcom/google/ux/material/libmonet/utils/ColorUtils;->SRGB_TO_XYZ:[[D

    aget-object v14, v7, v3

    aget-wide v15, v14, v3

    mul-double/2addr v15, v8

    aget-wide v17, v14, v2

    mul-double v17, v17, v10

    add-double v17, v17, v15

    aget-wide v14, v14, v1

    mul-double/2addr v14, v12

    add-double v14, v14, v17

    aget-object v16, v7, v2

    aget-wide v17, v16, v3

    mul-double v17, v17, v8

    aget-wide v19, v16, v2

    mul-double v19, v19, v10

    add-double v19, v19, v17

    aget-wide v16, v16, v1

    mul-double v16, v16, v12

    add-double v16, v16, v19

    aget-object v7, v7, v1

    aget-wide v18, v7, v3

    mul-double v18, v18, v8

    aget-wide v8, v7, v2

    mul-double/2addr v8, v10

    add-double v8, v8, v18

    aget-wide v10, v7, v1

    mul-double/2addr v10, v12

    add-double/2addr v10, v8

    sget-object v7, Lcom/google/ux/material/libmonet/utils/ColorUtils;->WHITE_POINT_D65:[D

    aget-wide v8, v7, v3

    div-double/2addr v14, v8

    aget-wide v8, v7, v2

    div-double v16, v16, v8

    aget-wide v7, v7, v1

    div-double/2addr v10, v7

    invoke-static {v14, v15}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->labF(D)D

    move-result-wide v7

    invoke-static/range {v16 .. v17}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->labF(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Lcom/google/ux/material/libmonet/utils/ColorUtils;->labF(D)D

    move-result-wide v9

    const-wide/high16 v14, 0x405d000000000000L    # 116.0

    mul-double/2addr v14, v12

    const-wide/high16 v16, 0x4030000000000000L    # 16.0

    sub-double v14, v14, v16

    const-wide v16, 0x407f400000000000L    # 500.0

    sub-double/2addr v7, v12

    mul-double v7, v7, v16

    const-wide/high16 v16, 0x4069000000000000L    # 200.0

    sub-double/2addr v12, v9

    mul-double v12, v12, v16

    const/4 v9, 0x3

    new-array v9, v9, [D

    aput-wide v14, v9, v3

    aput-wide v7, v9, v2

    aput-wide v12, v9, v1

    aget-wide v7, v9, v1

    aget-wide v10, v9, v2

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/ux/material/libmonet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v7

    aget-wide v10, v9, v2

    aget-wide v12, v9, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    const-wide v11, 0x3ff11eb851eb851fL    # 1.07

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v11, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    sub-double/2addr v7, v11

    invoke-static {v7, v8}, Lcom/google/ux/material/libmonet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    iput-object v5, v0, Lcom/google/ux/material/libmonet/temperature/TemperatureCache;->precomputedTempsByHct:Ljava/util/Map;

    return-object v5
.end method
