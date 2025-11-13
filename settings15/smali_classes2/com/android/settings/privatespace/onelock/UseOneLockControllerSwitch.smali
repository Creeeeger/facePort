.class public final Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

.field public mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

.field public final mHost:Lcom/android/settings/SettingsPreferenceFragment;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPreferenceKey:Ljava/lang/String;

.field public final mProfileUserId:I

.field public mUnifyProfile:Lcom/android/settingslib/widget/MainSwitchPreference;

.field public final mUserHandle:Landroid/os/UserHandle;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$NsaaL-Vh1HXHoAmkymvczD_hKoU(Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUserManager:Landroid/os/UserManager;

    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProviderImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getPrivateProfileHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mProfileUserId:I

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string p1, "private_lock_unification"

    iput-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mPreferenceKey:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUnifyProfile:Lcom/android/settingslib/widget/MainSwitchPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public final handleActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, -0x1

    const-string v2, "password"

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "android.intent.extra.USER_ID"

    iget p3, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mProfileUserId:I

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p3, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p3, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iput v3, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTransitionType:I

    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v3

    :cond_0
    if-ne p1, v3, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->unifyLocks$1()V

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isAvailable()Z
    .locals 0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mProfileUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    iput p2, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iput-boolean p2, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iput v1, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->unifyLocks$1()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUserHandle:Landroid/os/UserHandle;

    if-nez p1, :cond_2

    const-string p1, "UseOneLockSwitch"

    const-string v0, "Private profile user handle is not expected to be null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUnifyProfile:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f141d6a

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f141d69

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;I)V

    const v1, 0x7f141d74

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;I)V

    const v1, 0x7f141d34

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    :goto_0
    return p2
.end method

.method public final unifyLocks$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    iget v2, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mProfileUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    iget-object v0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    iput-object v1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    iput-object v1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_1
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUnifyProfile:Lcom/android/settingslib/widget/MainSwitchPreference;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mProfileUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/settings/privatespace/onelock/UseOneLockControllerSwitch;->mUnifyProfile:Lcom/android/settingslib/widget/MainSwitchPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
