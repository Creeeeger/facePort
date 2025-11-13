.class public Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "HideContentPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;


# static fields
.field static final KEY:Ljava/lang/String; = "set_visibility"


# instance fields
.field mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V
    .locals 1

    const-string v0, "set_visibility"

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    .line 69
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private updateDetailSummary()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "lock_screen_show_notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "notification_details"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->updateDetailSummary()V

    goto :goto_0

    .line 94
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p0, :cond_2

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 113
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p1

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 137
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_allow_private_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    .line 157
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    xor-int/lit8 v3, p1, 0x1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    const/16 v0, 0x114c

    const/16 v1, 0x1164

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 169
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;->notifyChange(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic updateConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->updateConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 189
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/4 v1, 0x4

    .line 185
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/HideContentPreferenceController;->updateDetailSummary()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
