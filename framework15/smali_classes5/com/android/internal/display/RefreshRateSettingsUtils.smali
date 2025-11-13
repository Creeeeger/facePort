.class public Lcom/android/internal/display/RefreshRateSettingsUtils;
.super Ljava/lang/Object;
.source "RefreshRateSettingsUtils.java"


# static fields
.field public static final blacklist DEFAULT_REFRESH_RATE:F = 60.0f

.field private static final blacklist TAG:Ljava/lang/String; = "RefreshRateSettingsUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist findHighestRefreshRateAmongAllDisplays(Landroid/content/Context;)F
    .locals 12

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_0

    const-string v2, "RefreshRateSettingsUtils"

    const-string v3, "No valid display devices"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x42700000    # 60.0f

    return v2

    :cond_0
    const/high16 v2, 0x42700000    # 60.0f

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    invoke-virtual {v6}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v7

    array-length v8, v7

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v11

    cmpl-float v11, v11, v2

    if-lez v11, :cond_1

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static blacklist findHighestRefreshRateForDefaultDisplay(Landroid/content/Context;)F
    .locals 8

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "RefreshRateSettingsUtils"

    const-string v3, "No valid default display device"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x42700000    # 60.0f

    return v1

    :cond_0
    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {v2}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_1

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
