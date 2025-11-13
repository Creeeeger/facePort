.class public Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;


# instance fields
.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field public final mIsInstantHotspotFeatureEnabled:Z

.field mIsUiRestricted:Z

.field mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

.field public final mWifiDialogListeners:Ljava/util/List;

.field mWifiNetworkDetailsViewModel:Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDialogListeners:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->isDeviceConfigEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsInstantHotspotFeatureEnabled:Z

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->setupNetworksDetailTracker()V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsInstantHotspotFeatureEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getWifiNetworkDetailsViewModel()Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_0
    new-instance v1, Lcom/android/settings/wifi/details2/WifiSecondSummaryController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/WifiSecondSummaryController2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/WifiSecondSummaryController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->newInstance(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/details2/WifiAutoConnectPreferenceController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/WifiAutoConnectPreferenceController2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/WifiAutoConnectPreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/details2/WifiMeteredPreferenceController2;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/wifi/details2/WifiMeteredPreferenceController2;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/details2/WifiSubscriptionDetailPreferenceController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/WifiSubscriptionDetailPreferenceController2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/WifiSubscriptionDetailPreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDialogListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public final getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0x25b

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiNetworkDetailsFrg"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method public getMobileDataIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1702a0

    return p0
.end method

.method public final getWifiNetworkDetailsViewModel()Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiNetworkDetailsViewModel:Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v2

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    const-string v4, "store"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "factory"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "defaultCreationExtras"

    invoke-static {v3, v4, v1, v2, v3}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "modelClass"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWifiNetworkDetailsViewModel():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiFeatureProvider"

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiNetworkDetailsViewModel:Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;

    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;->mHotspotNetworkData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiNetworkDetailsViewModel:Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;

    return-object p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_chosen_wifientry_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->setupNetworksDetailTracker()V

    const-class v0, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;->setWifiEntryKey(Ljava/lang/String;)V

    const-class p1, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/details2/CertificateDetailsPreferenceController;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    const-class p1, Lcom/android/settings/wifi/details2/ServerNamePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/details2/ServerNamePreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/details2/ServerNamePreferenceController;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsUiRestricted:Z

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v3

    new-instance p1, Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/16 v7, 0x80

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZI)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsUiRestricted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const v2, 0x7f1435d7

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080576

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public onHotspotNetworkChanged(Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "hotspot_connection_category"

    const-string v2, "hotspot_device_details_category"

    if-nez p1, :cond_2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    const p1, 0x7f1436af

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget v2, p1, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;->mNetworkType:I

    iget v4, p1, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;->mUpstreamConnectionStrength:I

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->updateInternetSource(II)V

    iget-boolean v2, p1, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;->mIsBatteryCharging:Z

    iget p1, p1, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;->mBatteryPercentage:I

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->updateBattery(ZI)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    if-eqz p0, :cond_3

    const p1, 0x7f1411d2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_3
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-virtual {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canModifyNetwork()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v2

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    new-instance p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p1, v0, v3, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return v1
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsUiRestricted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->restrictUi()V

    :cond_0
    return-void
.end method

.method public final onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDialogListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    invoke-interface {v0, p1}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final refreshPreferences()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v3, v2, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsInstantHotspotFeatureEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getWifiNetworkDetailsViewModel()Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_2
    return-void
.end method

.method public restrictUi()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f14355a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public final setupNetworksDetailTracker()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "WifiNetworkDetailsFrg{"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v5, v0}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "key_chosen_wifientry_key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v1 .. v6}, Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Ljava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateBattery(ZI)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "hotspot_device_details_battery"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1411d0

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateInternetSource(II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "hotspot_device_details_internet_source"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const p1, 0x7f141267

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Wi-Fi level is out of range! level:"

    const-string v2, "WifiUtils"

    if-gez p2, :cond_0

    invoke-static {p2, v1, v2}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    if-lt p2, v3, :cond_1

    invoke-static {p2, v1, v2}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    aget p2, v1, p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const p1, 0x7f141266

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getMobileDataIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    const p1, 0x7f141265

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0805e9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_4
    const p1, 0x7f142e0a

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x1010429

    invoke-static {p0, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
