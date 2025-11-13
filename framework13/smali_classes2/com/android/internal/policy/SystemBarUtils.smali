.class public final Lcom/android/internal/policy/SystemBarUtils;
.super Ljava/lang/Object;
.source "SystemBarUtils.java"


# static fields
.field private static blacklist ROTATION_LANDSCAPE:I

.field private static blacklist ROTATION_SEASCAPE:I

.field private static blacklist STATUS_LAYOUT:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/SystemBarUtils;->STATUS_LAYOUT:Z

    .line 37
    sput v0, Lcom/android/internal/policy/SystemBarUtils;->ROTATION_LANDSCAPE:I

    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/policy/SystemBarUtils;->ROTATION_SEASCAPE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getQuickQsOffsetHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 110
    .local v0, "defaultSize":I
    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 112
    .local v1, "statusBarHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public static blacklist getStatusBarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method public static blacklist getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 51
    sget-boolean v0, Lcom/android/internal/policy/SystemBarUtils;->STATUS_LAYOUT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;Z)I

    move-result v0

    return v0

    .line 54
    :cond_1
    const v0, 0x10504cd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    .local v0, "defaultSize":I
    if-nez p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    .line 56
    .local v2, "safeInsetTop":I
    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 59
    .local v1, "waterfallInsetTop":I
    :goto_1
    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private static blacklist getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;Z)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "cutout"    # Landroid/view/DisplayCutout;
    .param p2, "isLandscape"    # Z

    .line 95
    if-eqz p2, :cond_0

    .line 96
    const v0, 0x10504ce

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 98
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    .line 99
    .local v0, "safeInsetTop":I
    :goto_0
    const v1, 0x10504cf

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static blacklist getStatusBarHeightForRotation(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetRot"    # I

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 68
    .local v0, "rotation":I
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 69
    .local v1, "cutout":Landroid/view/DisplayCutout;
    sget-boolean v2, Lcom/android/internal/policy/SystemBarUtils;->STATUS_LAYOUT:Z

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/SystemBarUtils;->ROTATION_LANDSCAPE:I

    if-eq p1, v3, :cond_1

    sget v3, Lcom/android/internal/policy/SystemBarUtils;->ROTATION_SEASCAPE:I

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v2, v1, v3}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;Z)I

    move-result v2

    return v2

    .line 73
    :cond_2
    if-nez v1, :cond_3

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v2

    .line 74
    .local v2, "insets":Landroid/graphics/Insets;
    :goto_2
    if-nez v1, :cond_4

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 76
    .local v3, "waterfallInsets":Landroid/graphics/Insets;
    :goto_3
    if-eq v0, p1, :cond_6

    .line 77
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v2, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 78
    nop

    .line 79
    invoke-static {v0, p1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    .line 78
    invoke-static {v2, v4}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v2

    .line 81
    :cond_5
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v3, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 82
    nop

    .line 83
    invoke-static {v0, p1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    .line 82
    invoke-static {v3, v4}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v3

    .line 86
    :cond_6
    nop

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10504cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 90
    .local v4, "defaultSize":I
    iget v5, v2, Landroid/graphics/Insets;->top:I

    iget v6, v3, Landroid/graphics/Insets;->top:I

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    return v5
.end method
