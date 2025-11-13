.class public Lcom/samsung/android/core/pm/PmUtils;
.super Ljava/lang/Object;
.source "PmUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PmUtils"

.field private static final blacklist sLiveIconAllowed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    const-string v6, "com.android.deskclock"

    const-string v7, "com.samsung.android.smartsuggestions.feature.aisuggestion.ui.activity.SuggestionUiActivity"

    const-string v0, "com.sec.android.app.clockpackage"

    const-string v1, "com.android.calendar"

    const-string v2, "com.samsung.android.calendar"

    const-string v3, "com.sec.android.widgetapp.SPlannerAppWidget"

    const-string v4, "com.samsung.android.game.gamehome"

    const-string v5, "com.samsung.android.opencalendar"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/PmUtils;->sLiveIconAllowed:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isLduSkuBinary()Z
    .locals 5

    const-string v0, "ril.product_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x38

    if-eq v2, v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public static blacklist supportLiveIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/core/pm/PmUtils;->sLiveIconAllowed:Ljava/util/List;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist supportLiveIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Z
    .locals 4

    instance-of v0, p0, Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/core/pm/PmUtils;->sLiveIconAllowed:Ljava/util/List;

    iget-object v3, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/core/pm/PmUtils;->sLiveIconAllowed:Ljava/util/List;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    :cond_3
    return v2
.end method
