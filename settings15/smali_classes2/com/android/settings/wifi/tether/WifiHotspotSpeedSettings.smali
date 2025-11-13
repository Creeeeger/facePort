.class public Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# static fields
.field public static final sSpeedKeyMap:Ljava/util/Map;


# instance fields
.field public final mSpeedPreferenceMap:Ljava/util/Map;

.field public mWifiHotspotSpeedViewModel:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->sSpeedKeyMap:Ljava/util/Map;

    const/4 v1, 0x1

    const-string v2, "wifi_hotspot_speed_2g"

    const/4 v3, 0x2

    const-string v4, "wifi_hotspot_speed_5g"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "wifi_hotspot_speed_2g_5g"

    const/4 v3, 0x4

    const-string v4, "wifi_hotspot_speed_6g"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->mSpeedPreferenceMap:Ljava/util/Map;

    return-void
.end method

.method public static log$1(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v0

    const-string v1, "WifiHotspotSpeedSettings"

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiHotspotSpeedSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f6

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17029e

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->sSpeedKeyMap:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v1, :cond_0

    iput-object p0, v1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->mSpeedPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    const-string v3, "store"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "factory"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultCreationExtras"

    invoke-static {v2, v3, v0, v1, v2}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWifiHotspotSpeedViewModel():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiFeatureProvider"

    invoke-virtual {p1, v2, v1}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->mWifiHotspotSpeedViewModel:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->getSpeedInfoMapData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->onSpeedInfoMapDataChanged(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->mWifiHotspotSpeedViewModel:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->getSpeedInfoMapData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->mWifiHotspotSpeedViewModel:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getRestarting()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRadioButtonClicked(), key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->log$1(Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->sSpeedKeyMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->mWifiHotspotSpeedViewModel:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSpeedType():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "WifiHotspotRepository"

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setSpeedType() is no changed! mSpeedType:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mSpeedType:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    const-string p0, "setSpeedType(), WifiManager#getSoftApConfiguration() return null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne p1, v2, :cond_3

    const-string p1, "setSpeedType(), setBand(BAND_2GHZ_5GHZ_6GHZ)"

    invoke-static {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    const/4 p1, 0x7

    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    if-eq p1, v3, :cond_6

    const-string p1, "setSpeedType(), setPassphrase(SECURITY_TYPE_WPA3_SAE)"

    invoke-static {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->generatePassword(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    const-string p1, "setSpeedType(), setBand(BAND_2GHZ_5GHZ)"

    invoke-static {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsDualBand:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v5, 0x1

    if-eqz p1, :cond_5

    const-string p1, "setSpeedType(), setBands(BAND_2GHZ + BAND_2GHZ_5GHZ)"

    invoke-static {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    filled-new-array {v5, v3}, [I

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBands([I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    :cond_5
    const-string p1, "setSpeedType(), setBand(BAND_2GHZ)"

    invoke-static {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p1

    and-int/2addr p1, v2

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->generatePassword(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onRestartingChanged(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRestartingChanged(), restarting:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->log$1(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    return-void
.end method

.method public final onSpeedInfoMapDataChanged(Ljava/util/Map;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSpeedViewDataChanged(), speedInfoMap:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->log$1(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->mSpeedPreferenceMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsVisible:Z

    if-nez v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v2, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsEnabled:Z

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v2, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsChecked:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method
