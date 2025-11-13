.class public Lcom/android/internal/policy/ScreenDecorationsUtils;
.super Ljava/lang/Object;
.source "ScreenDecorationsUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getPhysicalPixelDisplaySizeRatio(Landroid/content/Context;)F
    .locals 6

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v1, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v1

    if-nez v1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    :cond_0
    nop

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v2

    return v2
.end method

.method public static blacklist getWindowCornerRadius(Landroid/content/Context;)F
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v5, v4, v2

    if-nez v5, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v5, v2

    if-nez v2, :cond_2

    move v5, v3

    :cond_2
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getPhysicalPixelDisplaySizeRatio(Landroid/content/Context;)F

    move-result v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    return v6
.end method

.method public static blacklist supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x1110255

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
