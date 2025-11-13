.class public final Lcom/android/systemui/util/kotlin/RectKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final getArea(Landroid/graphics/Rect;)J
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method
