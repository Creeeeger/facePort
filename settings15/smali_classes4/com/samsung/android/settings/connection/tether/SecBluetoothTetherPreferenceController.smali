.class public Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SecBluetoothTetherPreferenceController"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field private mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetPrefEnabled(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setPrefEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private isTetheringEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/PanProfile;->isNapEnabled()Z

    move-result p0

    return p0
.end method

.method private registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private setPrefChecked(Z)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setPrefEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private updateSummary(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateSummary: Adapter is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->getConnectedDevices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f14080d

    const v6, 0x7f14080e

    packed-switch v0, :pswitch_data_0

    const-string p1, ""

    goto/16 :goto_0

    :pswitch_0
    const v0, 0x7f140815

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isTetheringEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->isBluetoothErrored(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f14080c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f140802

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const v0, 0x7f140801

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    if-ne v2, v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120013

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const v0, 0x7f140816

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isTetheringEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    if-lez v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    goto :goto_1

    :cond_9
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateSummary: Preference is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    new-instance p1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;-><init>(Landroid/app/Activity;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 6

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/TetheringManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/TetheringManager;

    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "persist.sys.tether_data"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v4, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "tetheredData for sprint: "

    invoke-static {v2, v5, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    move p0, v1

    :cond_1
    const-string/jumbo v2, "persist.sys.tether_data_bt"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "tetheredDataBluetooth for sprint: "

    invoke-static {v2, v5, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq v2, v3, :cond_3

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const-string p0, "BluetoothTetherAvailable: "

    invoke-static {p0, v4, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    move p0, v0

    :cond_3
    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    const/4 p0, 0x4

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isTetheringEnabled()Z

    move-result p0

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "isChecked: "

    invoke-static {v1, v0, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityResult: code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    if-nez p0, :cond_0

    const-string/jumbo p0, "onActivityResult: SwitchEnabler is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "BluetoothTetheringSwitchEnabler"

    const-string p2, "Provisioning success"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setSwitchChecked(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V

    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->registerNetworkCallback(Landroid/content/Context;Ljava/lang/Runnable;Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$$ExternalSyntheticLambda0;)Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$NetworkCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "Data saver is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setPrefChecked(Z)V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setPrefEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "BluetoothTetheringSwitchEnabler"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    sget-object v2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mRestrictionUtils:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mActivity:Landroid/app/Activity;

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_3

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "BluetoothTetheringSwitchEnabler"

    const-string/jumbo v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p0, 0x15

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setScanMode(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "BluetoothTetheringSwitchEnabler"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->isTetheringEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x17

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setScanMode(I)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;-><init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setChecked: "

    invoke-static {v1, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "setChecked: SwitchEnabler is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->startTethering()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    :goto_0
    return v1
.end method

.method public setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-void
.end method

.method public bridge synthetic startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    return-void
.end method

.method public startTethering()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startTethering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mSwitchEnabler:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    if-nez p0, :cond_0

    const-string/jumbo p0, "startTethering: SwitchEnabler is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->startTethering()V

    return-void
.end method

.method public updateController()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->isTetheringAllowed(Landroid/content/Context;Z)Z

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setPrefEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isTetheringEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setPrefChecked(Z)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateSummary(Landroid/content/Context;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
