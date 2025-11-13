.class public final Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

.field public final NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

.field public final NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

.field public final NIGHT_THEME_URI:Landroid/net/Uri;

.field public final POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "display_night_theme"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const-string p1, "display_night_theme_scheduled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    const-string p1, "display_night_theme_scheduled_type"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    const-string p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

    const-string/jumbo p1, "pms_settings_dark_mode_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    sget-object v1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    iget-object v1, p1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "pms_settings_dark_mode_enabled"

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    const-string p1, "SecDarkModeSettingsFragment"

    const-string v1, "Destroy SecDarkModeSettingsFragment in PSM mode"

    invoke-static {p1, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    iget-object p2, p1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "display_night_theme_scheduled"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    sget-object p1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    sget-object v1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
