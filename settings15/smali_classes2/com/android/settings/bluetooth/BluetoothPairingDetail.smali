.class public Lcom/android/settings/bluetooth/BluetoothPairingDetail;
.super Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_AVAIL_DEVICES:Ljava/lang/String; = "available_devices"

.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"


# instance fields
.field mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BluetoothPairingDetail"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3fa

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170066

    return p0
.end method

.method public final initPreferencesFromPreferenceScreen()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->initPreferencesFromPreferenceScreen()V

    const-string v0, "footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "executor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/SatelliteManager;

    if-nez p1, :cond_0

    const-string p1, "SatelliteRepository"

    const-string v1, "SatelliteManager is null"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ImmediateFuture;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;)V

    invoke-static {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p1

    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xbb8

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "Error to get satellite status : "

    const-string v2, "BluetoothPairingDetail"

    invoke-static {v1, p1, v2}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move p1, v0

    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/network/SatelliteWarningDialogActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_type_of_satellite_warning_dialog"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_2
    const-class p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final onScanningStateChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanEnabled:Z

    or-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->onStart()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->onStop()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    return-void
.end method

.method public updateContent(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->updateContent(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->mInitialScanStarted:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->lifecycleScope:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addCachedDevices$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addCachedDevices$1;-><init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateFooterPreference(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->start()V

    :cond_1
    return-void
.end method
