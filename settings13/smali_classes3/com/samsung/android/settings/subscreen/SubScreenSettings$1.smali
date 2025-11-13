.class Lcom/samsung/android/settings/subscreen/SubScreenSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SubScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/subscreen/SubScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 118
    sget-boolean p0, Lcom/samsung/android/settings/Rune;->FRONT_COVER_SCREEN_ENABLE_TO_SHOW_SETTINGS:Z

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isCameraCoverAttached(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
