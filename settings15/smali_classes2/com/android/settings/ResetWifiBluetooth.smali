.class public Lcom/android/settings/ResetWifiBluetooth;
.super Lcom/samsung/android/settings/general/ResetSettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mActivity:Landroid/app/Activity;

.field public mContentView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mIsUnderProgress:Z

.field mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ResetWifiBluetooth;->mIsUnderProgress:Z

    return-void
.end method


# virtual methods
.method public endOfReset(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ResetWifiBluetooth;->mIsUnderProgress:Z

    iget-object v1, p0, Lcom/android/settings/ResetWifiBluetooth;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/ResetWifiBluetooth;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    const-string v1, "ResetWifiBluetooth"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/ResetWifiBluetooth;->mContext:Landroid/content/Context;

    const v2, 0x7f141ec3

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "sendBluetoothWifiResetIntent is started."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.SETTINGS_WIFI_BLUETOOTH_RESET"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/ResetWifiBluetooth;->mActivity:Landroid/app/Activity;

    const-string v0, "com.sec.android.settings.permission.WIFI_BLUETOOTH_RESET"

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "sendBluetoothWifiResetIntent is done"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "Exception during reset"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/system/ResetDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7ce

    return p0
.end method

.method public getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1

    new-instance p0, Landroid/app/ProgressDialog;

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v0, 0x7f1416cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final getResetButtonTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f141ed8

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_general"

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f142685

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetWifiBluetooth;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetWifiBluetooth;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    new-instance p2, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->build()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p0, "ResetWifiBluetooth"

    const-string p1, "Access deny."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    const p2, 0x7f0d0981

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetWifiBluetooth;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public final onResetButtonClick()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/ResetWifiBluetooth;->mIsUnderProgress:Z

    const-string v1, "ResetWifiBluetooth"

    if-eqz v0, :cond_0

    const-string p0, "resetWifiBluetooth already under progress. Skip request"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ResetWifiBluetooth;->mIsUnderProgress:Z

    const/16 v2, 0x7ce

    const/16 v3, 0x123c

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "secResetWifiAndBluetooth is started."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ResetWifiBluetooth;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/ResetWifiBluetooth;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bluetooth_blocking_device"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "blocking_device_list"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_bubble_tips_count"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SettingsSCloudWifi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    const-string v4, "bluetooth,wifi,nfc"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sem_wifi_carrier_network_offload_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/ResetWifiBluetooth;->mActivity:Landroid/app/Activity;

    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_2

    const-string v0, "mSemWifiManager Reset is started."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->factoryReset()V

    :cond_2
    const-string p0, "secResetWifiAndBluetooth is done"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetOperation()Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/ResetWifiBluetooth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/ResetNetworkRequest;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/android/settings/ResetNetworkRequest;-><init>(I)V

    iget-object p0, p0, Lcom/android/settings/ResetWifiBluetooth;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/ResetNetworkRequest;->toResetNetworkOperationBuilder(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/settings/network/ResetNetworkOperationBuilder;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/ResetNetworkRequest;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lcom/android/settings/ResetNetworkRequest;-><init>(I)V

    iget-object p0, p0, Lcom/android/settings/ResetWifiBluetooth;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/ResetNetworkRequest;->toResetNetworkOperationBuilder(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/settings/network/ResetNetworkOperationBuilder;

    move-result-object p0

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->resetTelephonyAndNetworkPolicyManager(I)V

    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;I)V

    return-object v0
.end method
