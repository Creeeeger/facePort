.class public final Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final DBG:Z


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public final mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

.field public mBroadcastReceiver:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mDataSaverListener:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsEnabledForTethering:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsProxyRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsTetheringRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mNetworkCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$NetworkCallback;

.field public final mProfileServiceListener:Ljava/util/concurrent/atomic/AtomicReference;

.field public mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

.field public mTetheringCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mNetworkCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$NetworkCallback;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mTetheringCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$1;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mDataSaverListener:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBroadcastReceiver:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mProfileServiceListener:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsProxyRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsEnabledForTethering:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsTetheringRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mActivity:Landroid/app/Activity;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    instance-of p1, p2, Landroidx/preference/SecSwitchPreferenceScreen;

    const-string v0, "BluetoothTetheringSwitchEnabler"

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothTetheringSwitchEnabler: Mobile Hotspot and Tethering"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    check-cast p2, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    goto :goto_0

    :cond_1
    instance-of p1, p2, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothTetheringSwitchEnabler: Bluetooth tethering"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    check-cast p2, Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    goto :goto_0

    :cond_3
    const-string p0, "BluetoothTetheringSwitchEnabler: Unknown type"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setScanMode(I)V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v1, "BluetoothTetheringSwitchEnabler"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v2

    if-eq v2, p0, :cond_4

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x15

    if-eq p0, v0, :cond_2

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const-string/jumbo p0, "unknown"

    goto :goto_0

    :cond_1
    const-string p0, "discoverable"

    goto :goto_0

    :cond_2
    const-string p0, "connectable"

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "none"

    :goto_0
    const-string/jumbo v0, "setScanMode: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    :goto_1
    sget-boolean p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz p0, :cond_6

    const-string/jumbo p0, "setScanMode: Adapter is null or BT is off"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method


# virtual methods
.method public final closeProfileProxy()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "closeProfileProxy: Requested: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsProxyRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothTetheringSwitchEnabler"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsProxyRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    return-void
.end method

.method public final getProfileProxy()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getProfileProxy: Requested: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsProxyRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothTetheringSwitchEnabler"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsProxyRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsProxyRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mProfileServiceListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    sget-object v3, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v2, :cond_4

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    invoke-virtual {v3, v2, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    return-void
.end method

.method public final isTetheringEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothPan;

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/PanProfile;->isNapEnabled()Z

    move-result p0

    return p0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->isTetheringEnabled()Z

    move-result v0

    const-string/jumbo v1, "onCheckedChanged: Tethering: "

    const-string v2, ", isChecked: "

    const-string v3, "BluetoothTetheringSwitchEnabler"

    invoke-static {v1, v0, v2, p2, v3}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "onCheckedChanged: Ignored local updates"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    if-ne p2, v0, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo p1, "onCheckedChanged: Enabling"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->startTethering()V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "onCheckedChanged: Disabling"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    :goto_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string/jumbo p1, "onPreferenceChange: "

    const-string p2, "BluetoothTetheringSwitchEnabler"

    invoke-static {p1, p2, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p1, 0x5a

    const/16 p2, 0xd66

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onStart()V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    const-string v1, "BluetoothTetheringSwitchEnabler"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mProfileServiceListener:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;I)V

    sget-object v5, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move-object v6, v5

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$2;

    invoke-direct {v6, v3, v4}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;)V

    :goto_0
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->getProfileProxy()V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;I)V

    invoke-static {v2, v3, v5}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->registerNetworkCallback(Landroid/content/Context;Ljava/lang/Runnable;Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$$ExternalSyntheticLambda0;)Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$NetworkCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mNetworkCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$NetworkCallback;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;I)V

    new-instance v3, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;I)V

    new-instance v4, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$1;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$1;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;)V

    iput-object v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mTetheringCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$1;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;I)V

    new-instance v4, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;

    const/4 v6, 0x7

    invoke-direct {v4, p0, v6}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;I)V

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v7, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v7, v2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v5, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;)V

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v2, v5}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :goto_2
    iput-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mDataSaverListener:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda0;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBroadcastReceiver:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    const-string v0, "addSwitchChangeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    return-void
.end method

.method public final onStop()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    const-string v1, "BluetoothTetheringSwitchEnabler"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "removeSwitchChangeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mDataSaverListener:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v4, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_4
    :goto_0
    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mDataSaverListener:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda0;

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mTetheringCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$1;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mNetworkCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$NetworkCallback;

    if-eqz v0, :cond_7

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_7
    :goto_1
    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mNetworkCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$NetworkCallback;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBroadcastReceiver:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_8
    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mBroadcastReceiver:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$BluetoothTetherReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->closeProfileProxy()V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mProfileServiceListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setScanMode()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothTetheringSwitchEnabler"

    const-string/jumbo v1, "setScanMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->isTetheringEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->isBluetoothErrored(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x17

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setScanMode(I)V

    goto :goto_1

    :cond_2
    const/16 p0, 0x15

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setScanMode(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setSwitchChecked(Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSwitchChecked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTetheringSwitchEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eq v1, p1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public final setTethering(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->isTetheringEnabled()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setTethering: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothTetheringSwitchEnabler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "setTethering: Adapter is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    const-string/jumbo p0, "setTethering: ConnectivityManager is null, activity already destroyed"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo p1, "setTethering: Turn on BT for enabling tethering"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsEnabledForTethering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void

    :cond_3
    const/4 v0, 0x2

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsTetheringRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mTetheringCallback:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$1;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :goto_0
    return-void
.end method

.method public final showState(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "tethering"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showState: available: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tethered: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errored: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTetheringUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "btState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    goto :goto_1

    :pswitch_0
    const-string/jumbo v0, "turning off"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "on"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "turning on"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "off"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tethering: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->isTetheringEnabled()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->isBluetoothErrored(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothTetheringSwitchEnabler"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
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

.method public final startTethering()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsTetheringRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string v3, "BluetoothTetheringSwitchEnabler"

    if-eqz v2, :cond_0

    const-string/jumbo p0, "startTethering: Already requested"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->isTetheringAllowed(Landroid/content/Context;Z)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_b

    const-string/jumbo v2, "startTethering: Tethering is not allowed"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->isOperatorBlocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "showDialog"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f143708

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;)V

    const v3, 0x7f140d33

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f142ee6

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getTetheringErrorWithWifi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->isTetheringBlockedByMdm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x1040490

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setSwitchChecked(Z)V

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->isTetheringEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->getConnectedDevices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "startTethering: PANU is enabled"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;I)V

    new-instance v10, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;I)V

    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;

    const v6, 0x7f140809

    const v7, 0x7f140808

    const v8, 0x7f140813

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;IIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_d

    goto :goto_4

    :cond_d
    invoke-static {v2}, Lcom/samsung/android/settings/connection/tether/SecTetherUtils;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->startProvisioning(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_5

    :cond_e
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    :goto_5
    return-void
.end method

.method public final updateSwitch$1()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->isTetheringEnabled()Z

    move-result v0

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->DBG:Z

    const-string v2, "BluetoothTetheringSwitchEnabler"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSwitch: Tethering: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->isTetheringAllowed(Landroid/content/Context;Z)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    const-string/jumbo v0, "updateSwitch: Tethering is not allowed"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setSwitchChecked(Z)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setSwitchChecked(Z)V

    return-void
.end method
