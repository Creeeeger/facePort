.class public Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_ADD_DEVICE:Ljava/lang/String; = "add_device_to_network"

.field private static final TAG:Ljava/lang/String; = "AddDevicePreferenceController2"


# instance fields
.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$DE9vevsIz8uW7bjC2jvZJKT8Vo0(Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->lambda$handlePreferenceTreeClick$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "add_device_to_network"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private synthetic lambda$handlePreferenceTreeClick$0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->launchWifiDppConfiguratorQrCodeScanner()V

    return-void
.end method

.method private launchWifiDppConfiguratorQrCodeScanner()V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    sget-object v3, Lcom/android/settings/wifi/dpp/WifiDppUtils;->VIBRATE_DURATION_QR_CODE_RECOGNITION:Ljava/time/Duration;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->canEasyConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->setConfiguratorIntentExtra(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "networkId"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid network ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    const-string p0, "AddDevicePreferenceController2"

    const-string v0, "Launch Wi-Fi QR code scanner with a wrong Wi-Fi network!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canEasyConnect()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "add_device_to_network"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
