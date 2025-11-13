.class Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LockScreenNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    .line 270
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const-string v0, "description_pref"

    .line 271
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    const-string v1, "lock_screen_notifications"

    const-string v2, "set_visibility"

    const-string v3, "notification_icons_only"

    const-string v4, "notification_details"

    const-string v5, "where_to_show"

    const-string v6, "noti_card_seekbar"

    const-string v7, "noti_inverse_text"

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const-string v0, "top_level_lockscreen"

    const-string v8, "lock_screen_menu_notifications"

    .line 284
    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 285
    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 296
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isIconStyleEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 300
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_3
    sget-boolean p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->hasWorkProfile:Z

    if-nez p1, :cond_4

    const-string p1, "sensitive_work_profile"

    .line 305
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method
