.class public Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "SecEmergencyTonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 8

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 50
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v7, Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController$1;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const-string v3, "emergency_tone"

    const-string v4, "emergency_tone"

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController$1;-><init>(Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v7, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    goto :goto_0

    .line 82
    :cond_0
    new-instance v7, Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController$2;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    const-string v3, "emergency_tone"

    const-string v4, "emergency_tone"

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController$2;-><init>(Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v7, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/notification/SettingPrefController;->updateState(Landroidx/preference/Preference;)V

    .line 116
    check-cast p1, Landroidx/preference/SecDropDownPreference;

    const/4 p0, 0x1

    .line 117
    invoke-virtual {p1, p0}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method
