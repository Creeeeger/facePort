.class public Lcom/android/settings/development/KeepActivitiesPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "KeepActivitiesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SETTING_VALUE_OFF:I


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private writeImmediatelyDestroyActivitiesOptions(Z)V
    .locals 0

    .line 99
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/KeepActivitiesPreferenceController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/KeepActivitiesPreferenceController;->mActivityManager:Landroid/app/IActivityManager;

    return-void
.end method

.method getActivityManager()Landroid/app/IActivityManager;
    .locals 0

    .line 107
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "immediately_destroy_activities"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, v0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;->writeImmediatelyDestroyActivitiesOptions(Z)V

    .line 94
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/development/KeepActivitiesPreferenceController;->writeImmediatelyDestroyActivitiesOptions(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_finish_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isKillingActivitiesOnLeaveAllowed"

    invoke-static {p0, v1, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-ne p0, v3, :cond_1

    move v2, v3

    .line 84
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method
