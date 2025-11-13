.class final Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VirtualVibrationSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final VIBRATION_SOUND_ENABLED_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;

    .line 150
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "vibration_sound_enabled"

    .line 145
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->VIBRATION_SOUND_ENABLED_URI:Landroid/net/Uri;

    .line 151
    iput-object p2, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->VIBRATION_SOUND_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->access$400(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->VIBRATION_SOUND_ENABLED_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
