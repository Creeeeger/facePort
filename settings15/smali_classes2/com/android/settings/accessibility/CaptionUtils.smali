.class public abstract Lcom/android/settings/accessibility/CaptionUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static localizedOpacityValues(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03007d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    aget-object v3, p0, v1

    const-string v4, "[^0-9]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static mergeColorOpacity(II)I
    .locals 1

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0xffff00

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static parseColor(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0xffffff

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public static parseOpacity(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    goto :goto_1

    :cond_0
    ushr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    :goto_1
    const v0, 0xffffff

    or-int/2addr p0, v0

    return p0
.end method
