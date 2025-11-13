.class Lcom/samsung/android/settings/lockscreen/LockScreenSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 600
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 614
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 615
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 616
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 618
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    const-string v2, "lock_screen_menu_notifications"

    const-string v3, "lock_screen_additional_info"

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 620
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "editor_always_on_screen"

    .line 627
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "always_on_screen"

    .line 639
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "lock_screen_dualclock"

    .line 640
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "wallpaper_services"

    .line 641
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "clock_style_pref"

    .line 642
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "lunar_calendar"

    .line 643
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "hijri_calendar"

    .line 644
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "lock_screen_menu_owner_infomation"

    .line 646
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "lock_app_shortcut"

    .line 648
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportHijriCalendar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "editor_hijri_calendar"

    .line 650
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportLunarCalendarMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "editor_lunar_calendar"

    .line 653
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string p1, "widget_editor_preview_preference_dummy"

    .line 656
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "editor_touch_and_hold_to_edit"

    .line 657
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "lock_editor_preview_preference"

    .line 658
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 603
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isDisabledLockScreenPolicy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
