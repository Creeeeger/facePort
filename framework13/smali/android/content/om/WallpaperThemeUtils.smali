.class public Landroid/content/om/WallpaperThemeUtils;
.super Ljava/lang/Object;
.source "WallpaperThemeUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SWT_WallpaperThemeUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hasWallpaperThemeOverlays(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 12
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 17
    .local v4, "str":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const-string v5, "/data/resource-cache/android-SemWT_G_MonetPalette"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 20
    return v0

    .line 21
    :cond_2
    const-string v5, "/data/resource-cache/android-SemWT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 22
    const/4 v0, 0x1

    return v0

    .line 16
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_4
    return v0

    .line 14
    :cond_5
    :goto_2
    return v0
.end method
