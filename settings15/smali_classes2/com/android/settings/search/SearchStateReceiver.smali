.class public Lcom/android/settings/search/SearchStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p0, "action: "

    const-string v0, "settings_search_always_expand"

    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SearchStateReceiver"

    if-nez p2, :cond_1

    const-string p0, "Null intent"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsApplication;

    invoke-virtual {p1}, Lcom/android/settings/SettingsApplication;->getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v1, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v1, -0x6efea316

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v1, :cond_5

    const v1, 0x25af6b76

    if-eq p0, v1, :cond_4

    const v1, 0x609537fe

    if-eq p0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "com.samsung.android.settings.CLEAR_SEARCH_FOCUS"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v3

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    const-string p0, "com.android.settings.SEARCH_EXIT"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v4

    goto :goto_1

    :cond_5
    const-string p0, "com.android.settings.SEARCH_START"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v2

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_9

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object p0, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightPreferenceKey(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object p0, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0, v4}, Lcom/android/settings/homepage/TopLevelSettings;->setMenuHighlightShowed(Z)V

    goto :goto_3

    :cond_9
    iget-object p0, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0, v2}, Lcom/android/settings/homepage/TopLevelSettings;->setMenuHighlightShowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onReceive() Home activity or main fragment is null."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_a
    :goto_4
    const-string p0, "onReceive() Home activity or main fragment is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
