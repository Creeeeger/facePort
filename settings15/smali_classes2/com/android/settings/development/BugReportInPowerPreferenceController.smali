.class public final Lcom/android/settings/development/BugReportInPowerPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static SETTING_VALUE_OFF:I = 0x0

.field static SETTING_VALUE_ON:I = 0x1


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bugreport_in_power"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_debugging_features"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onDeveloperOptionsEnabled()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v3, "isGoogleCrashReportedAllowed"

    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    :goto_1
    return-void
.end method

.method public final onDeveloperOptionsSwitchDisabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    sget v2, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/TwoStatePreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    sget p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_ON:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    :goto_0
    const-string p2, "bugreport_in_power_menu"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    sget v2, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

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

    invoke-virtual {p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

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

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v5, "isGoogleCrashReportedAllowed"

    invoke-static {p0, v2, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_4

    if-ne p0, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    return-void
.end method
