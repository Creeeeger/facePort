.class public final Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->getFrequencyBand(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.4 GHz"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sec_wifi_iot_setup_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "Failed to connect to 2.4 GHz"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->lastConnectedBSSID:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->lastConnectedBSSID:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    const-string p0, "WifiConnectivityIoTSetupSwitchEnabler"

    const-string v0, "Successfully connected to 2.4G"

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
