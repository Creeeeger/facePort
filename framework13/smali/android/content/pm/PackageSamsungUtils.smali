.class public Landroid/content/pm/PackageSamsungUtils;
.super Ljava/lang/Object;
.source "PackageSamsungUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageSamsungUtils"

.field private static final blacklist sLiveIconPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/PackageSamsungUtils;->sLiveIconPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getCachedLiveIconPackagesLocked(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Landroid/content/pm/PackageSamsungUtils;->sLiveIconPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string v1, "com.sec.android.app.clockpackage"

    .line 73
    .local v1, "defaultClockPkgName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "clockPkgName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v3, "com.android.calendar"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v3, "com.samsung.android.calendar"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v3, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v3, "com.samsung.android.game.gamehome"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v3, "com.samsung.android.opencalendar"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v3, "com.android.deskclock"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v1    # "defaultClockPkgName":Ljava/lang/String;
    .end local v2    # "clockPkgName":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    return-object v0

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist hasThemeIconPack(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_appicon_theme_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "appIconPack":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.samsung.upsmtheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist isLduSkuBinary()Z
    .locals 5

    .line 44
    const-string/jumbo v0, "ril.product_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "productCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ge v1, v3, :cond_0

    .line 46
    return v2

    .line 48
    :cond_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x39

    if-ne v1, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static blacklist supportLiveIcon(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/content/pm/PackageSamsungUtils;->getCachedLiveIconPackagesLocked(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    .local v0, "liveIconPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const/4 v1, 0x1

    return v1

    .line 59
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
