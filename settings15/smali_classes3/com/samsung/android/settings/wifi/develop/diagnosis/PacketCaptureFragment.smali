.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final WIFIAP_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public ctrlCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

.field public dataCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

.field public mContext:Landroid/content/Context;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mSwitchPreference:Landroidx/preference/SwitchPreference;

.field public mWifiStateChangeReceiver:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$WifiStateChangeReceiver;

.field public mgmtCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

.field public pktCaptureButtonState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->WIFIAP_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.stopcapture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PacketCaptureSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170105

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$WifiStateChangeReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$WifiStateChangeReceiver;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mWifiStateChangeReceiver:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$WifiStateChangeReceiver;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->WIFIAP_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "capture_switch"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mWifiStateChangeReceiver:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$WifiStateChangeReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isCaptureRunning()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->pktCaptureButtonState:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Button state on resume is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->pktCaptureButtonState:Z

    const-string v2, "PacketCaptureSettings"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->pktCaptureButtonState:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
