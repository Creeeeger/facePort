.class public Lcom/samsung/android/settings/as/audio/SecDockingSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "SecDockingSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecDockingSoundPreferenceController$1;

    const/4 p2, 0x0

    new-array v6, p2, [I

    const/4 v2, 0x1

    const-string v3, "docking_sounds"

    const-string v4, "dock_sounds_enabled"

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/as/audio/SecDockingSoundPreferenceController$1;-><init>(Lcom/samsung/android/settings/as/audio/SecDockingSoundPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method
