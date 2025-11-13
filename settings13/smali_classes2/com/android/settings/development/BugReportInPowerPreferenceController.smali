.class public Lcom/android/settings/development/BugReportInPowerPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BugReportInPowerPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static SETTING_VALUE_OFF:I = 0x0

.field static SETTING_VALUE_ON:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 58
    iput-object p1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bugreport_in_power"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onDeveloperOptionsEnabled()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v2, "isGoogleCrashReportedAllowed"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 124
    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    :goto_1
    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 110
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 74
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 75
    iget-object p0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 77
    sget p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_ON:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    :goto_0
    const-string p2, "bugreport_in_power_menu"

    .line 75
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/SwitchPreference;

    sget v2, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "false"

    .line 90
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isDeveloperModeAllowed"

    invoke-static {v1, v2, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    .line 94
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 96
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    iget-object p0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v5, "isGoogleCrashReportedAllowed"

    invoke-static {p0, v2, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_4

    if-ne p0, v4, :cond_3

    move v3, v4

    .line 100
    :cond_3
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    return-void
.end method
