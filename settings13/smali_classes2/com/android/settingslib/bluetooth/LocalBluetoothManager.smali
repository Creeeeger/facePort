.class public Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;
    }
.end annotation


# static fields
.field private static mForegroundCount:I = 0x0

.field private static mSystemUiInstance:Z = false

.field private static sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# instance fields
.field private mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

.field private final mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

.field private mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mRestoredRetryDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V
    .locals 9

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LocalBluetoothManager"

    const-string v1, "LocalBluetoothManager :: constructor"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 161
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 162
    new-instance v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 163
    new-instance v8, Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-object v2, v8

    move-object v3, p1

    move-object v4, v1

    move-object v5, v0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    iput-object v8, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 165
    new-instance p3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {p3, v0, p1, v1, v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 169
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 171
    sput-boolean p2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    :cond_0
    const/4 p1, 0x0

    .line 173
    sput p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    .line 175
    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-direct {p1, p2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mRestoredRetryDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    .line 179
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles()V

    .line 180
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 183
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 184
    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    .line 185
    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    .line 186
    new-instance p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    iget-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-direct {p2, p3, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    .line 187
    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    iget-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    iget-object p4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-direct {p1, v0, p3, p4, p2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 4

    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_1

    const-string v1, "LocalBluetoothManager"

    const-string v2, "LocalBluetoothManager :: sInstance == null"

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "LocalBluetoothManager"

    const-string p1, "LocalBluetoothManager :: adapter == null"

    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit v0

    return-object v2

    .line 99
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v3, v1, p0, v2, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    sput-object v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_1

    const-string v1, "LocalBluetoothManager"

    const-string v2, "LocalBluetoothManager :: onInitCallback != null"

    .line 103
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-interface {p1, p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;->onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 110
    :cond_1
    sget-object p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method public getCachedCastDeviceManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    return-object p0
.end method

.method public getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method public getCastEventManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    return-object p0
.end method

.method public getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    return-object p0
.end method

.method public getForegroundActivity()Landroid/content/Context;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    :goto_0
    return-object p0
.end method

.method public getLocalBluetoothCastProfileManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    return-object p0
.end method

.method public getLocalCastAdapter()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    return-object p0
.end method

.method public getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method public getRestoredRetryDetector()Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mRestoredRetryDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    return-object p0
.end method

.method public instanceForSystemUI()Z
    .locals 0

    .line 306
    sget-boolean p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mSystemUiInstance:Z

    return p0
.end method

.method public isForegroundActivity()Z
    .locals 0

    .line 224
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

.method public isForegroundActivityQP()Z
    .locals 3

    .line 261
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_settings_foreground_qp"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isTetheredSettings()Z
    .locals 2

    .line 299
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_tethering_settings_foreground"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTetheredSettings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "true"

    .line 301
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public semIsForegroundActivity()Z
    .locals 3

    .line 229
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_settings_foreground"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string/jumbo v1, "setting foreground activity to non-null context"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    .line 238
    sget p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    const-string p1, "LocalBluetoothManager"

    const-string/jumbo v0, "setting foreground activity to null"

    .line 242
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 243
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    .line 246
    :cond_1
    sget p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 247
    sput p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    goto :goto_0

    :cond_2
    const-string p1, "LocalBluetoothManager"

    const-string/jumbo v0, "setForegroundActivity :: mForegroundCount is smaller than 0 = "

    .line 249
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "LocalBluetoothManager"

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForegroundActivity :: mForegroundCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_settings_foreground"

    sget v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundCount:I

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
