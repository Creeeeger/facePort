.class public Lcom/android/settings/security/ChangeScreenLockPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# instance fields
.field public final mHost:Lcom/android/settings/SettingsPreferenceFragment;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public mPreference:Lcom/android/settingslib/RestrictedPreference;

.field public final mProfileChallengeUserId:I

.field public final mScreenLockPreferenceDetailUtils:Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;

.field public final mUm:Landroid/os/UserManager;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    const-string v3, "No feature factory configured"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProviderImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    new-instance p2, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mScreenLockPreferenceDetailUtils:Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final disableIfPasswordQualityManaged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mScreenLockPreferenceDetailUtils:Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;

    iget-object v1, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p1

    const/high16 v1, 0x80000

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "unlock_set_or_change"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mScreenLockPreferenceDetailUtils:Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->getQuietModeDialogIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p1, 0x1

    iput p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTransitionType:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, p1

    :goto_0
    return v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mScreenLockPreferenceDetailUtils:Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;

    iget-object p0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050059

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)V

    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mScreenLockPreferenceDetailUtils:Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;

    iget-object p0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mScreenLockPreferenceDetailUtils:Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/android/settings/widget/GearPreference;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    iput-object p0, v0, Lcom/android/settings/widget/GearPreference;->mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/settings/widget/GearPreference;->mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {v1, v0}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->getSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    :cond_2
    return-void
.end method
