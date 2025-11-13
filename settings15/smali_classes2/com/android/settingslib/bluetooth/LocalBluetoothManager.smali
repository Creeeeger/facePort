.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mForegroundCount:I

.field public static mSystemUiInstance:Z

.field public static sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# instance fields
.field public final mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

.field public final mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public final mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

.field public final mContext:Landroid/content/Context;

.field public final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field public mForegroundActivity:Ljava/lang/ref/WeakReference;

.field public final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public final mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

.field public final mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public final mRestoredRetryDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LocalBluetoothManager"

    const-string v1, "LocalBluetoothManager :: constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {v2, p1, p0, v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    new-instance v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    iput-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.systemui"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    sput-boolean p2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    :cond_0
    const/4 p1, 0x0

    sput p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.wifiguider"

    const-string v5, "com.samsung.android.net.wifi.wifiguider.activity.bluetooth.BluetoothGuideActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-boolean p2, p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mRestoredRetryDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles()V

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readRestoredDevices()V

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->sInstance:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    if-nez p2, :cond_1

    new-instance p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-direct {p2, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->sInstance:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->sInstance:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-direct {v1, p2, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-direct {v2, v0, p2, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V

    iput-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 3

    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_1

    const-string v1, "LocalBluetoothManager"

    const-string v2, "LocalBluetoothManager :: sInstance == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "LocalBluetoothManager"

    const-string p1, "LocalBluetoothManager :: adapter == null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_1

    const-string v1, "LocalBluetoothManager"

    const-string v2, "LocalBluetoothManager :: onInitCallback != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;->onBluetoothManagerInitialized()V

    :cond_1
    sget-object p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final isForegroundActivity()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isForegroundActivityQP()Z
    .locals 3

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "bluetooth_settings_foreground_qp"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public final isTetheredSettings()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_tethering_settings_foreground"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isTetheredSettings : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final semIsForegroundActivity()Z
    .locals 3

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "bluetooth_settings_foreground"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public final declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 3

    const-string v0, "setForegroundActivity :: mForegroundCount = "

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "LocalBluetoothManager"

    const-string v2, "setting foreground activity to non-null context"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    sget p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    const-string p1, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    :cond_1
    sget p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    goto :goto_0

    :cond_2
    const-string p1, "LocalBluetoothManager"

    const-string v1, "setForegroundActivity :: mForegroundCount is smaller than 0 = "

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "LocalBluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_settings_foreground"

    sget v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
