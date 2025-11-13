.class public final Lcom/google/ux/material/libmonet/palettes/TonalPalette;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cache:Ljava/util/Map;

.field public final chroma:D

.field public final hue:D

.field public final keyColor:Lcom/google/ux/material/libmonet/hct/Hct;


# direct methods
.method private constructor <init>(DDLcom/google/ux/material/libmonet/hct/Hct;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->cache:Ljava/util/Map;

    iput-wide p1, p0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->hue:D

    iput-wide p3, p0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->chroma:D

    iput-object p5, p0, Lcom/google/ux/material/libmonet/palettes/TonalPalette;->keyColor:Lcom/google/ux/material/libmonet/hct/Hct;

    return-void
.end method

.method public static fromHct(Lcom/google/ux/material/libmonet/hct/Hct;)Lcom/google/ux/material/libmonet/palettes/TonalPalette;
    .locals 7

    new-instance v6, Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    iget-wide v1, p0, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    iget-wide v3, p0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;-><init>(DDLcom/google/ux/material/libmonet/hct/Hct;)V

    return-object v6
.end method

.method public static fromHueAndChroma(DD)Lcom/google/ux/material/libmonet/palettes/TonalPalette;
    .locals 16

    new-instance v6, Lcom/google/ux/material/libmonet/palettes/TonalPalette;

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide v4, v7

    invoke-static/range {v0 .. v5}, Lcom/google/ux/material/libmonet/hct/Hct;->from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    sub-double v1, v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object v13, v0

    move-wide v11, v1

    move-wide v14, v9

    :goto_0
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    cmpg-double v0, v14, v0

    if-gez v0, :cond_3

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iget-wide v2, v13, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-double v4, v7, v14

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/ux/material/libmonet/hct/Hct;->from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    sub-double v1, v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v3, v1, v11

    if-gez v3, :cond_1

    move-object v13, v0

    move-wide v11, v1

    :cond_1
    sub-double v4, v7, v14

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/ux/material/libmonet/hct/Hct;->from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    sub-double v1, v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v3, v1, v11

    if-gez v3, :cond_2

    move-object v13, v0

    move-wide v11, v1

    :cond_2
    add-double/2addr v14, v9

    goto :goto_0

    :cond_3
    :goto_1
    move-object v0, v6

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/ux/material/libmonet/palettes/TonalPalette;-><init>(DDLcom/google/ux/material/libmonet/hct/Hct;)V

    return-object v6
.end method
