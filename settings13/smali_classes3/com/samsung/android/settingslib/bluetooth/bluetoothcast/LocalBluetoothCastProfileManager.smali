.class public final Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothCastProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

.field private mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

.field private mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

.field public final mCastProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCastEventManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->TAG:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastProfileNameMap:Ljava/util/Map;

    const-string v1, "LocalBluetoothCastProfileManager "

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    .line 52
    iput-object p4, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    .line 53
    invoke-virtual {p2, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->setCastProfileManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->setCastProfileManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->updateLocalCastProfiles()V

    return-void
.end method

.method private addAudioCastProfile(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager$StateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastProfileHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastProfileNameMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAudioCastProfile()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    return-object p0
.end method

.method declared-synchronized updateCastProfiles(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-nez p1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->TAG:Ljava/lang/String;

    const-string v0, "Audio Cast Profile added"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method updateLocalCastProfiles()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "updateLocalCastProfiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "updateLocalCastProfiles mAudioCastProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    const-string v1, "AudioCast"

    const-string v2, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 77
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->addAudioCastProfile(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mCastEventManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->registerCastProfileIntentReceiver()V

    :cond_0
    return-void
.end method
