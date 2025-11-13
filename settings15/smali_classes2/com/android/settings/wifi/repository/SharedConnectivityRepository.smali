.class public final Lcom/android/settings/wifi/repository/SharedConnectivityRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mAppContext:Landroid/content/Context;


# instance fields
.field public final mLaunchSettingsRunnable:Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda1;

.field public final mManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

.field mSettingsState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field public final mWorkerExecutor:Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda0;

.field public final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$ClientCallback;-><init>(Lcom/android/settings/wifi/repository/SharedConnectivityRepository;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SharedConnectivityRepository"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mWorkerThread:Landroid/os/HandlerThread;

    new-instance v3, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/repository/SharedConnectivityRepository;)V

    iput-object v3, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mWorkerExecutor:Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda0;

    new-instance v4, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/repository/SharedConnectivityRepository;)V

    iput-object v4, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mLaunchSettingsRunnable:Lcom/android/settings/wifi/repository/SharedConnectivityRepository$$ExternalSyntheticLambda1;

    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v4}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v4, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mSettingsState:Landroidx/lifecycle/MutableLiveData;

    sput-object p1, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mAppContext:Landroid/content/Context;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-class p2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-nez p1, :cond_1

    const-string p0, "Failed to get SharedConnectivityManager"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1, v3, v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V

    return-void
.end method

.method public static isDeviceConfigEnabled()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-boolean v2, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mAppContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vendor.wifiap.ih.enable"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    :cond_1
    const-string v1, "Instant Hotspot isDeviceConfigEnabled "

    const-string v2, " rollout : "

    invoke-static {v1, v2, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi"

    const-string v4, "shared_connectivity_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SharedConnectivityRepository"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v0

    const-string v1, "SharedConnectivityRepository"

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getSettingsState()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mSettingsState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public handleLaunchSettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleLaunchSettings(), state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->log(Ljava/lang/String;)V

    const-string v1, "SharedConnectivityRepository"

    if-nez v0, :cond_1

    const-string p0, "No SettingsState to launch Instant Hotspot settings"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->getInstantTetherSettingsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "No PendingIntent to launch Instant Hotspot settings"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->sendSettingsIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendSettingsIntent(Landroid/app/PendingIntent;)V
    .locals 1

    const-string p0, "sendSettingsIntent(), sent intent:"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SharedConnectivityRepository"

    const-string v0, "Failed to launch Instant Hotspot settings"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
