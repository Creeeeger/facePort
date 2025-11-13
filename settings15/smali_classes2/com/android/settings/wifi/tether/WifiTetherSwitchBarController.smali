.class public final Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final WIFI_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field final mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

.field public final mReceiver:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

.field public final mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/widget/SettingsMainSwitchBar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/16 v0, 0xd

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public handleWifiApStateChanged(I)V
    .locals 2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xd

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xc

    const/16 v0, 0xd

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p2

    if-eq p2, v0, :cond_4

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0, p0, p2}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p2

    if-eq p2, v0, :cond_3

    if-ne p2, p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onDataSaverChanged(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public final onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->handleWifiApStateChanged(I)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
