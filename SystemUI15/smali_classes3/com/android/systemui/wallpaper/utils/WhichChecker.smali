.class public final Lcom/android/systemui/wallpaper/utils/WhichChecker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDisplayIdToMode(ILandroid/content/Context;)I
    .locals 3

    const/16 v0, 0x10

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    invoke-static {p1, p0}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const-string p1, "convertDisplayIdToMode: unexpected display id. id="

    const-string v0, "WhichChecker"

    invoke-static {p0, p1, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    return v0

    :cond_3
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x4

    if-eqz p0, :cond_6

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public static getSourceWhich(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x3c

    or-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method public static isFlagEnabled(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSystemAndLock(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVirtualDisplay(I)Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWatchFace(I)Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method
