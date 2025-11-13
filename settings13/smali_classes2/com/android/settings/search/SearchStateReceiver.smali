.class public Lcom/android/settings/search/SearchStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo p0, "settings_search_always_expand"

    .line 44
    invoke-static {p1, p0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "SearchStateReceiver"

    if-nez p2, :cond_1

    const-string p1, "Null intent"

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsApplication;

    invoke-virtual {p1}, Lcom/android/settings/SettingsApplication;->getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 60
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.samsung.android.settings.CLEAR_SEARCH_FOCUS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.settings.SEARCH_EXIT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move p0, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.android.settings.SEARCH_START"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move p0, v2

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 77
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightPreferenceKey(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settings/homepage/TopLevelSettings;->setMenuHighlightShowed(Z)V

    goto :goto_1

    .line 71
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/settings/homepage/TopLevelSettings;->setMenuHighlightShowed(Z)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6efea316 -> :sswitch_2
        0x25af6b76 -> :sswitch_1
        0x609537fe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
