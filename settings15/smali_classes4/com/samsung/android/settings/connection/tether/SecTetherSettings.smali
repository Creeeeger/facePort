.class public Lcom/samsung/android/settings/connection/tether/SecTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static sTetherChoice:I


# instance fields
.field public mBluetoothTetherController:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

.field public mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field public mEthernetTetherController:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

.field public mUnavailable:Z

.field public mUsbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

.field public mWifiTetherController:Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecTetherSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f1701fe

    return p0

    :cond_1
    :goto_0
    const p0, 0x7f1701ff

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "PROVISION Result /requestCode : "

    const-string v1, "/resultCode : "

    const-string v2, "/mTetherChoice : "

    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    const-string v2, "SecTetherSettings"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p1, :cond_5

    if-eqz p3, :cond_1

    const-string v3, "TETHER_TYPE"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    sget v3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    if-ne v3, v1, :cond_1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x0

    sput p3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    goto :goto_0

    :cond_0
    sput p3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "delivery choise : "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    invoke-static {p3, v3, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget p3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    if-eqz p3, :cond_4

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mBluetoothTetherController:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->onActivityResult(II)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mUsbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->onActivityResult(II)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mWifiTetherController:Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->onActivityResult(II)V

    goto :goto_1

    :cond_5
    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_6

    const-string/jumbo p3, "onActivityResult ETHERNET_TETHER_PROVISION_REQUEST resultCode : "

    invoke-static {p2, p3, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mEthernetTetherController:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->onActivityResult(II)V

    goto :goto_1

    :cond_6
    if-ne p1, v0, :cond_7

    const-string/jumbo p3, "request code : TETHER_HELP_REQUEST"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mWifiTetherController:Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->onActivityResult(II)V

    :cond_7
    :goto_1
    sput v1, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    return-void
.end method

.method public final onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    const-class v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    const-class v1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    const-class v2, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    const-class v3, Lcom/samsung/android/settings/connection/tether/SecFamilySharingPreferenceController;

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/connection/tether/SecFamilySharingPreferenceController;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->setHost(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/connection/tether/SecFamilySharingPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    iput-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mWifiTetherController:Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mBluetoothTetherController:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mUsbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mEthernetTetherController:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    const-string/jumbo v2, "store"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultCreationExtras"

    invoke-static {v1, v2, p1, v0, v1}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object p1

    const-class v0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mTetheredInterfaces:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/MutableLiveData;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p1, p1, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->onDataSaverChanged(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mUnavailable:Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const-string p1, "SecTetherSettings"

    const-string/jumbo v0, "onCreate: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p0, -0x1

    sput p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "com.samsung.helphub"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0f001f

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public final onDataSaverChanged(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v2, v1, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling DataSaver Changed ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecTetherSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->onDataSaverChanged(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0fe0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.helphub"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "tethering"

    if-eqz v0, :cond_2

    :try_start_1
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "helphub:section"

    if-nez v0, :cond_1

    :try_start_2
    const-string v0, "VPP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const-string/jumbo p1, "tethering_vzw"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 p1, p1, 0xa

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "helphub:appid"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onOptionsItemSelected error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecTetherSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return v1
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f142ef5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$OnStartTetheringCallback;-><init>(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->updateState$2$1()V

    return-void
.end method

.method public final updateState$2$1()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v2, v1, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling updateState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecTetherSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->updateController()V

    goto :goto_0

    :cond_2
    return-void
.end method
