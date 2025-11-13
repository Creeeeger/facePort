.class public final Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

.field public final NIGHT_THEME_URI:Landroid/net/Uri;

.field public final POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "display_night_theme"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const-string p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

    const-string/jumbo p1, "pms_settings_dark_mode_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$200(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "pms_settings_dark_mode_enabled"

    const/4 v1, -0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fputmIsPowerturnmode(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$300(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmIsPowerturnmode(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setEntryEnabled(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setEntryEnabled(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$400(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$500(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$600(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$700(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
