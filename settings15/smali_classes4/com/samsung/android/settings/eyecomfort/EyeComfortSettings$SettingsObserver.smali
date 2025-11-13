.class public final Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

.field public final BLUE_LIGHT_FILTER_ANTI_GLARE_URI:Landroid/net/Uri;

.field public final BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

.field public final BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

.field public final BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

.field public final BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

.field public final NEGATIVE_COLOR_TYPE_URI:Landroid/net/Uri;

.field public final NIGHT_DIM_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "blue_light_filter"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_opacity"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_anti_glare"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_ANTI_GLARE_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_scheduled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_type"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_adaptive_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    const-string p1, "high_contrast"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NEGATIVE_COLOR_TYPE_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_night_dim"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "EyeComfortSettings"

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onChange BLUE_LIGHT_FILTER_URI isEnabled() : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled$3()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled$3()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled$3()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateEnableStatus(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "blue_light_filter_opacity"

    const/4 v0, 0x5

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setProgress(I)V

    goto/16 :goto_6

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_ANTI_GLARE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAntiGlarePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortAntiGlarePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "blue_light_filter_anti_glare"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortAntiGlarePreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "blue_light_filter_adaptive_mode"

    const-string v4, "blue_light_filter_scheduled"

    if-eqz p1, :cond_7

    sget p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    const-string/jumbo p1, "onChange BLUE_LIGHT_FILTER_SCHEDULED_URI"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p1, "onChange BLUE_LIGHT_FILTER_ADAPTIVE_MODE: set OFF"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updatePreferenceStatus()V

    goto/16 :goto_6

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    const-string/jumbo p1, "onChange BLUE_LIGHT_FILTER_TYPE_URI"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "blue_light_filter_type"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateCustomSettingPreference()V

    goto/16 :goto_6

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    const-string/jumbo p1, "onChange BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_9

    move p1, v1

    goto :goto_3

    :cond_9
    move p1, v2

    :goto_3
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p2, p2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_4

    :cond_a
    move v1, v2

    :goto_4
    if-eqz p1, :cond_b

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p1, "onChange BLUE_LIGHT_FILTER_SCHEDULED :set OFF "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updatePreferenceStatus()V

    goto :goto_6

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NEGATIVE_COLOR_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "high_contrast"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "blue_light_filter_night_dim"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_e

    goto :goto_5

    :cond_e
    move v1, v2

    :goto_5
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;->setChecked(Z)V

    :cond_f
    :goto_6
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    sget v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->NEGATIVE_COLOR_TYPE_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
