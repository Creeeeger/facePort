.class public final Lcom/android/settings/network/MobileNetworkSummaryController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;


# instance fields
.field public mIsAirplaneModeOn:Z

.field public final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public mMobileNetworkInfoEntityList:Ljava/util/List;

.field public final mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

.field public mPreference:Lcom/android/settingslib/RestrictedPreference;

.field public mSubInfoEntityList:Ljava/util/List;

.field public mUiccInfoEntityList:Ljava/util/List;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static $r8$lambda$4nYeAcxkLOLHcxNx6AaZQCyfxYg(Lcom/android/settings/network/MobileNetworkSummaryController;Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.phone"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.telephony.euicc.extra.FORCE_PROVISION"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p1}, Lcom/android/settings/network/MobileNetworkRepository;->isAirplaneModeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mIsAirplaneModeOn:Z

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
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

    const-string v0, "mobile_network_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "mobile_network_list"

    return-object p0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubInfoEntityList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUiccInfoEntityList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubInfoEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubInfoEntityList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object v2, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUiccInfoEntityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isActive:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->showToggleForPhysicalSim:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14181b

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubInfoEntityList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettingsDetecting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14181a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAirplaneModeChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mIsAirplaneModeOn:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mIsAirplaneModeOn:Z

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update$1$1()V

    :cond_0
    return-void
.end method

.method public final onAllMobileNetworkInfoChanged(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update$1$1()V

    return-void
.end method

.method public final onAllUiccInfoChanged(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUiccInfoEntityList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update$1$1()V

    return-void
.end method

.method public final onAvailableSubInfoChanged(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubInfoEntityList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update$1$1()V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v2, v0, p0, v1}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    invoke-virtual {v2}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    return-void
.end method

.method public final update$1$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v1, v1, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    iget-boolean v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mIsAirplaneModeOn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubInfoEntityList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUiccInfoEntityList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const-class v0, Lcom/android/settings/network/MobileNetworkListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettingsDetecting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_4
    :goto_1
    return-void
.end method
