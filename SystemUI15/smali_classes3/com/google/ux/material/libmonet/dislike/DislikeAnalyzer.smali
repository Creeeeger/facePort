.class public final Lcom/google/ux/material/libmonet/dislike/DislikeAnalyzer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static fixIfDisliked(Lcom/google/ux/material/libmonet/hct/Hct;)Lcom/google/ux/material/libmonet/hct/Hct;
    .locals 10

    iget-wide v0, p0, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    iget-wide v3, p0, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x405bc00000000000L    # 111.0

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-wide v3, p0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-wide v4, p0, Lcom/google/ux/material/libmonet/hct/Hct;->tone:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x4050400000000000L    # 65.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    move v1, v2

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    iget-wide v4, p0, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    iget-wide v6, p0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    const-wide v8, 0x4051800000000000L    # 70.0

    invoke-static/range {v4 .. v9}, Lcom/google/ux/material/libmonet/hct/Hct;->from(DDD)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object p0

    :cond_3
    return-object p0
.end method
