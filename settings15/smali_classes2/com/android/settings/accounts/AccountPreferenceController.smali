.class public final Lcom/android/settings/accounts/AccountPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field public mAccountProfileOrder:I

.field public final mAuthorities:[Ljava/lang/String;

.field public final mAuthoritiesCount:I

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field public final mHandler:Landroid/os/Handler;

.field public final mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

.field public final mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public final mProfiles:Landroid/util/SparseArray;

.field public final mSettingsPackageMonitor:Lcom/android/settings/accounts/AccountPreferenceController$2;

.field public final mType:I

.field public final mUm:Landroid/os/UserManager;

.field public final mUpdateRunnable:Lcom/android/settings/accounts/AccountPreferenceController$3;


# direct methods
.method public static synthetic $r8$lambda$FUqZkbIhELOhQOw4z9Z2-iKicRQ(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic $r8$lambda$HLQnSnehUDPWLSgL8u1F40t05NQ(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1416e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HczynHENHiYd128SOJ0bsNegcR4(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1416f3

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JrCCkAvixNcWTvCeWgOg0bXtat4(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1416e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PBjlmeVOKmq5bGc4d6NNIXGYBuo(Lcom/android/settings/accounts/AccountPreferenceController;I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T3aARKnHxskADl5P51VNX73t24E(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f141ea9    # 1.9688494E38f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kcxN0b2SkUTVv94SCUMi1lkqDtI(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1416e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;[Ljava/lang/String;I)V
    .locals 6

    new-instance v4, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v4, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;[Ljava/lang/String;Lcom/android/settings/accounts/AccountRestrictionHelper;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;[Ljava/lang/String;Lcom/android/settings/accounts/AccountRestrictionHelper;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceController$2;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mSettingsPackageMonitor:Lcom/android/settings/accounts/AccountPreferenceController$2;

    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceController$3;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUpdateRunnable:Lcom/android/settings/accounts/AccountPreferenceController$3;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    if-eqz p3, :cond_0

    array-length p1, p3

    iput p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    :cond_0
    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iput-object p4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iput p5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi$1()V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Missing Settings screen for: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v3, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, v3, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    iget-boolean v3, v2, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    :cond_2
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mSettingsPackageMonitor:Lcom/android/settings/accounts/AccountPreferenceController$2;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v6, v5, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    iget-object v7, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/4 v8, 0x1

    const-string v9, "android.intent.extra.USER"

    if-ne p1, v6, :cond_0

    invoke-virtual {v7, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, v5, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "authorities"

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v8

    :cond_0
    iget-object v6, v5, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v6, :cond_1

    invoke-virtual {v7, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)V

    iget-object p0, v5, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "userId"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/android/settings/accounts/RemoveUserFragment;

    invoke-direct {p0}, Lcom/android/settings/accounts/RemoveUserFragment;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "removeUser"

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v8

    :cond_1
    iget-object v6, v5, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroidx/preference/Preference;

    if-ne p1, v6, :cond_2

    invoke-virtual {v7, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v5, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v3, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;I)V

    const-string p0, "Settings.MANAGED_PROFILE_SETTINGS_TITLE"

    invoke-virtual {v1, p0, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v8

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return v3
.end method

.method public final onResume()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi$1()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    iget-boolean v2, v1, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v3, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mSettingsPackageMonitor:Lcom/android/settings/accounts/AccountPreferenceController$2;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method public final setCategoryTitleFromDevicePolicyResource(Lcom/android/settings/AccessiblePreferenceCategory;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;I)V

    invoke-virtual {v0, p2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v3, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v3, Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-direct {v3, v6}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iget-object v6, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v7, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    iget-object v8, v6, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v8

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_0
    array-length v11, v8

    if-ge v10, v11, :cond_10

    aget-object v11, v8, v10

    iget-object v12, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    iget v13, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    const-string v14, "AccountPrefController"

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    iget-object v15, v6, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_2

    const-string v12, "No sync authorities for account type: "

    invoke-static {v12, v11, v14}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v13, :cond_3

    aget-object v4, v12, v5

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_2
    iget-object v4, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    :goto_3
    move-object/from16 v32, v3

    move-object/from16 v26, v8

    move/from16 v27, v10

    goto/16 :goto_b

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v13, "CscFeature_VoiceCall_SupportCallProtect"

    invoke-virtual {v5, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v11, :cond_5

    const-string v5, "com.att.callprotect.account"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, v6, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v6, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    iget-object v13, v6, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v6, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/accounts/AuthenticatorDescription;

    iget v13, v13, Landroid/accounts/AuthenticatorDescription;->labelId:I

    goto :goto_5

    :cond_7
    const/4 v13, -0x1

    :goto_5
    iget-object v15, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    invoke-virtual {v15, v11, v7}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v15

    move-object/from16 v26, v8

    iget-object v8, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    move/from16 v27, v10

    array-length v10, v15

    move-object/from16 v28, v8

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v10, :cond_e

    move/from16 v29, v10

    aget-object v10, v15, v8

    invoke-virtual {v10}, Landroid/accounts/Account;->hashCode()I

    move-result v16

    move-object/from16 v30, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/accounts/AccountTypePreference;

    if-eqz v15, :cond_8

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move-object/from16 v32, v3

    move-object/from16 v31, v14

    goto/16 :goto_a

    :cond_8
    const-string v15, "com.samsung.android.coreapps"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const-string v10, "Hide Easysignup account"

    invoke-static {v14, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    const-string v15, "com.samsung.android.mobileservice"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string v10, "Hide mobileservice account"

    invoke-static {v14, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    iget-object v15, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v31, v14

    iget-object v14, v6, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v12, :cond_c

    if-eqz v14, :cond_c

    array-length v15, v12

    move-object/from16 v32, v3

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v15, :cond_d

    move/from16 v16, v15

    aget-object v15, v12, v3

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    goto :goto_9

    :cond_b
    add-int/lit8 v3, v3, 0x1

    move/from16 v15, v16

    goto :goto_8

    :cond_c
    move-object/from16 v32, v3

    :goto_9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v14, "account"

    invoke-virtual {v3, v14, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v14, "user_handle"

    invoke-virtual {v3, v14, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v14, "account_type"

    invoke-virtual {v3, v14, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "account_label"

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "account_title_res"

    invoke-virtual {v3, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "android.intent.extra.USER"

    invoke-virtual {v3, v14, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v14, Lcom/android/settings/accounts/AccountTypePreference;

    iget-object v15, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v18

    const-class v15, Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v14

    move-object/from16 v17, v1

    move-object/from16 v19, v10

    move-object/from16 v20, v5

    move/from16 v21, v13

    move-object/from16 v22, v4

    move-object/from16 v24, v3

    move-object/from16 v25, v28

    invoke-direct/range {v16 .. v25}, Lcom/android/settings/accounts/AccountTypePreference;-><init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v29

    move-object/from16 v15, v30

    move-object/from16 v14, v31

    move-object/from16 v3, v32

    goto/16 :goto_6

    :cond_e
    move-object/from16 v32, v3

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;

    invoke-direct {v3, v6, v1, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;-><init>(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b

    :cond_f
    move-object/from16 v32, v3

    move-object/from16 v26, v8

    move/from16 v27, v10

    move-object/from16 v31, v14

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :goto_b
    add-int/lit8 v10, v27, 0x1

    move-object/from16 v1, p1

    move-object/from16 v8, v26

    move-object/from16 v3, v32

    goto/16 :goto_0

    :cond_10
    move-object/from16 v32, v3

    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v0, :cond_12

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/AccountTypePreference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {v4, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_12
    move-object/from16 v3, p1

    iget-object v0, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_13

    iget-object v1, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_13
    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v2, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_14
    move-object v3, v1

    iget-object v1, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    iget-object v2, v2, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f0802c0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;I)V

    const-string v0, "Settings.WORK_PROFILE_NOT_AVAILABLE"

    invoke-virtual {v2, v0, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_15
    iget-object v0, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_16

    iget-object v1, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_16
    iget-object v0, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_17

    iget-object v1, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_17
    :goto_e
    return-void
.end method

.method public final updateAddAccountButtonState()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v2, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    const-string v4, "no_modify_accounts"

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateDynamicRawDataToIndex(Ljava/util/List;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    const-string v5, "no_remove_managed_profile"

    invoke-static {v4, v3, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    const-string v4, "remove_profile"

    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;-><init>(Landroid/content/res/Resources;I)V

    const-string v6, "Settings.REMOVE_WORK_PROFILE"

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v1, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    const-string v4, "work_profile_setting"

    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;-><init>(Landroid/content/res/Resources;I)V

    const-string v6, "Settings.MANAGED_PROFILE_SETTINGS_TITLE"

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v1, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final updateProfileUi(Landroid/content/pm/UserInfo;)V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iput-boolean v2, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    iput-object p1, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v0, v2, p1, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v0, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    iput-object p1, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    iget-object v4, v4, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-direct {v6, v4}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/account/AccountUtils;->removeDualAppManagedProfiles(Ljava/util/List;)V

    iget-object v7, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v7

    const/4 v8, 0x1

    const v9, 0x7f0d09fe

    if-nez v7, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/account/AccountUtils;->isSecureFolderActivated(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_5
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_7

    const-string v7, "persona"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    iget v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    const/4 v7, 0x0

    const/4 v10, 0x7

    if-eqz v2, :cond_a

    if-ne v4, v10, :cond_9

    const-string v2, "Settings.WORK_CATEGORY_HEADER"

    const v4, 0x7f1408fc

    invoke-virtual {p0, v6, v2, v4}, Lcom/android/settings/accounts/AccountPreferenceController;->setCategoryTitleFromDevicePolicyResource(Lcom/android/settings/AccessiblePreferenceCategory;Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v7, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/CharSequence;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v8, "Settings.MANAGED_BY"

    invoke-virtual {v4, v8, v7, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda0;

    const v8, 0x7f140081

    invoke-direct {v4, p0, v7, v8}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/String;I)V

    const-string v7, "Settings.ACCESSIBILITY_CATEGORY_WORK"

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/android/settings/AccessiblePreferenceCategory;->mContentDescription:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iput v8, v6, Landroidx/preference/SecPreferenceCategory;->mEmptyHeight:I

    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    iget-object v4, v4, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const-string v4, "remove_profile"

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v7, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;I)V

    const-string v8, "Settings.REMOVE_WORK_PROFILE"

    invoke-virtual {v4, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x7f080a9b

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 v4, 0x3e9

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iput-object v2, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v4, "no_remove_managed_profile"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v2, v4, v7}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    new-instance v2, Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    iget-object v4, v4, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v4, "work_profile_setting"

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v7, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;

    const/4 v8, 0x3

    invoke-direct {v7, p0, v8}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;I)V

    const-string v8, "Settings.MANAGED_PROFILE_SETTINGS_TITLE"

    invoke-virtual {v4, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080a7d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060727

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 v4, 0x3ea

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iput-object v2, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroidx/preference/Preference;

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v2

    if-eqz v2, :cond_b

    if-ne v4, v10, :cond_e

    const-string v2, "Settings.CLONE_CATEGORY_HEADER"

    const v4, 0x7f1408ee

    invoke-virtual {p0, v6, v2, v4}, Lcom/android/settings/accounts/AccountPreferenceController;->setCategoryTitleFromDevicePolicyResource(Lcom/android/settings/AccessiblePreferenceCategory;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda0;

    const v8, 0x7f14007f

    invoke-direct {v4, p0, v7, v8}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/String;I)V

    const-string v7, "Settings.ACCESSIBILITY_CATEGORY_CLONE"

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/android/settings/AccessiblePreferenceCategory;->mContentDescription:Ljava/lang/String;

    goto :goto_3

    :cond_b
    if-ne v4, v10, :cond_c

    const-string v2, "Settings.PERSONAL_CATEGORY_HEADER"

    const v4, 0x7f1408f8

    invoke-virtual {p0, v6, v2, v4}, Lcom/android/settings/accounts/AccountPreferenceController;->setCategoryTitleFromDevicePolicyResource(Lcom/android/settings/AccessiblePreferenceCategory;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda0;

    const v8, 0x7f140080

    invoke-direct {v4, p0, v7, v8}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/String;I)V

    const-string v7, "Settings.ACCESSIBILITY_CATEGORY_PERSONAL"

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/android/settings/AccessiblePreferenceCategory;->mContentDescription:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iput v8, v6, Landroidx/preference/SecPreferenceCategory;->mEmptyHeight:I

    goto :goto_3

    :cond_d
    :goto_2
    iput v8, v6, Landroidx/preference/SecPreferenceCategory;->mEmptyHeight:I

    :cond_e
    :goto_3
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_f
    iput-object v6, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v2, v1, v4, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v2, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "add_account"

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f14029e

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const v0, 0x7f080a99

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-virtual {v1, v9}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 v0, 0x3e8

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    iput-object v1, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "no_modify_accounts"

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v1, v0, v2}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    :cond_10
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateRawDataToIndex(Ljava/util/List;)V
    .locals 2

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    const-string v1, "add_account"

    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f14029e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const p0, 0x7f080333

    iput p0, v0, Landroid/provider/SearchIndexableData;->iconResId:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateUi$1()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AccountPrefController"

    const-string v0, "We should not be showing settings for a managed profile"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iput-boolean v3, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    goto/16 :goto_9

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_3
    add-int/2addr v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    :goto_6
    add-int/2addr v2, v3

    goto :goto_4

    :cond_8
    move v2, v1

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_9
    add-int/2addr v2, v3

    goto :goto_7

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    iget v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    if-eqz v4, :cond_c

    and-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_f

    :cond_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v4

    if-eqz v4, :cond_d

    and-int/lit8 v4, v5, 0x4

    if-nez v4, :cond_f

    :cond_d
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_8

    :cond_e
    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_b

    :cond_f
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getShowInQuietMode()I

    move-result v4

    if-ne v4, v3, :cond_10

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v4

    if-nez v4, :cond_b

    :cond_10
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    goto :goto_8

    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_b

    :cond_12
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_a
    if-ltz v4, :cond_14

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-boolean v5, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    if-eqz v5, :cond_13

    iget-object v3, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_13
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_14
    :goto_b
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_15

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountPreferenceController;->updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->forceUpdatePreferences()V

    return-void
.end method
