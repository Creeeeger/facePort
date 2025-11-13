.class public final Lcom/android/systemui/util/DimensionKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final dpToPx(Ljava/lang/Number;Landroid/content/Context;)F
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/util/DimensionKt;->dpToPx(Ljava/lang/Number;Landroid/content/res/Resources;)F

    move-result p0

    return p0
.end method

.method public static final dpToPx(Ljava/lang/Number;Landroid/content/res/Resources;)F
    .locals 0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/util/DimensionKt;->dpToPx(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final dpToPx(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method
