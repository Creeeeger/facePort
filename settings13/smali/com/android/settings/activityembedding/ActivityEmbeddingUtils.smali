.class public Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;
.super Ljava/lang/Object;
.source "ActivityEmbeddingUtils.java"


# direct methods
.method public static getMinCurrentScreenSplitWidthPx(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getMinSmallestScreenSplitWidthPx(Landroid/content/Context;)I
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x44160000    # 600.0f

    .line 65
    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getSplitRatio(Landroid/content/Context;)F
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->sec_config_activity_embed_split_ratio:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public static isEmbeddingActivityEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isRegularHomepageLayout(Landroid/app/Activity;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
