.class public Lcom/samsung/android/wallpaper/utils/WhichChecker;
.super Ljava/lang/Object;
.source "WhichChecker.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMode(I)I
    .locals 1
    .param p0, "which"    # I

    .line 36
    and-int/lit8 v0, p0, 0x3c

    return v0
.end method

.method public static blacklist getType(I)I
    .locals 1
    .param p0, "which"    # I

    .line 32
    and-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static blacklist isDex(I)Z
    .locals 2
    .param p0, "which"    # I

    .line 55
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 56
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isLock(I)Z
    .locals 2
    .param p0, "which"    # I

    .line 96
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 97
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isPhone(I)Z
    .locals 3
    .param p0, "which"    # I

    .line 47
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    .line 48
    .local v0, "mode":I
    if-eqz v0, :cond_1

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 49
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist isSingleType(I)Z
    .locals 3
    .param p0, "which"    # I

    .line 40
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p0, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    return v1
.end method

.method public static blacklist isSubDisplay(I)Z
    .locals 2
    .param p0, "which"    # I

    .line 62
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSupportLock(I)Z
    .locals 1
    .param p0, "which"    # I

    .line 110
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v0, :cond_2

    .line 111
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 110
    :goto_1
    return v0
.end method

.method public static blacklist isSystem(I)Z
    .locals 2
    .param p0, "which"    # I

    .line 89
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    return v1

    .line 92
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSystemAndLock(I)Z
    .locals 2
    .param p0, "which"    # I

    .line 103
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 104
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVirtualDisplay(I)Z
    .locals 2
    .param p0, "which"    # I

    .line 69
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isWatchFaceDisplay(I)Z
    .locals 2
    .param p0, "which"    # I

    .line 76
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    return v1

    .line 80
    :cond_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_1
    return v1
.end method
