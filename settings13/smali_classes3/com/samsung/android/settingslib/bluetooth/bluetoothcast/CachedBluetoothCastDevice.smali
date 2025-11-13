.class public Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothCastDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$Callback;,
        Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

.field private mCastProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

.field private final mCastProfiles:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mErrorMsg:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSequence:I

.field private toastHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    .line 55
    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfileConnectionState:Ljava/util/HashMap;

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->toastHandler:Landroid/os/Handler;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->fillData()V

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->updateCastProfiles()V

    return-void
.end method

.method private dispatchAttributesChanged(Z)V
    .locals 2

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$Callback;

    .line 428
    invoke-interface {v1, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$Callback;->onCastDeviceAttributesChanged(Z)V

    goto :goto_0

    .line 430
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 432
    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private fillData()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->fetchName()V

    return-void
.end method

.method private getHeadsetDrawableByDeviceName(Ljava/lang/String;)I
    .locals 2

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAMSUNG LEVEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BOX"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 291
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return p0

    .line 293
    :cond_0
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return p0

    .line 294
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GEAR CIRCLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isGearIconX()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 295
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_gear_circle:I

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private updateCastProfiles()V
    .locals 3

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getBluetoothCastType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->updateCastProfiles(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCastProfiles : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)I
    .locals 6

    .line 499
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getMaxConnectionState()I

    move-result v0

    .line 500
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getMaxConnectionState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-ne v1, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sub-int/2addr v5, v2

    if-eqz v5, :cond_2

    return v5

    :cond_2
    const/4 v2, 0x3

    if-eq v0, v4, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v4

    :goto_3
    if-eq v1, v4, :cond_5

    if-ne v1, v2, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    sub-int/2addr v0, v3

    if-eqz v0, :cond_7

    return v0

    .line 513
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getConnectionTimeStamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getConnectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    return v4

    :cond_8
    if-gez v0, :cond_9

    const/4 p0, -0x1

    return p0

    .line 520
    :cond_9
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mSequence:I

    iget v1, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mSequence:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_a

    return v0

    .line 524
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->compareTo(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)I

    move-result p0

    return p0
.end method

.method public connect()V
    .locals 6

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isDexEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    const-string v2, "Dex is enabled, so connect request will be rejected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->toastHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->bluetoothcast_warn_dlg_msg_dex:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->refresh()V

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    .line 153
    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 155
    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-interface {v2, v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;->connect(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    .line 163
    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-interface {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;->disconnect(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method fetchName()V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mName:Ljava/lang/String;

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    return-object p0
.end method

.method public getBtCastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_general_device:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getBluetoothCastType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getBtClassDrawable()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getOverlayIconTintableDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBtClassDrawable()I
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 201
    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getManufacturerData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    .line 204
    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBtClassDrawable :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", BluetoothClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceIcon()I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    if-eqz v1, :cond_11

    .line 214
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_f

    const/16 v3, 0x200

    if-eq v2, v3, :cond_d

    const/16 v3, 0x400

    if-eq v2, v3, :cond_7

    const/16 p0, 0x600

    if-eq v2, p0, :cond_4

    const/16 p0, 0x700

    if-eq v2, p0, :cond_1

    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v2, 0x704

    if-ne p0, v2, :cond_b

    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GEAR FIT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GALAXY FIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 232
    :cond_2
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return p0

    .line 234
    :cond_3
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return p0

    .line 240
    :cond_4
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x680

    if-eq p0, v0, :cond_6

    .line 241
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x640

    if-ne p0, v0, :cond_5

    goto :goto_0

    .line 244
    :cond_5
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camera:I

    return p0

    .line 242
    :cond_6
    :goto_0
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_printer:I

    return p0

    :cond_7
    if-eqz v0, :cond_8

    .line 248
    invoke-direct {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getHeadsetDrawableByDeviceName(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 254
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isGearIconX()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 255
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_true_wireless_earbuds:I

    return p0

    .line 258
    :cond_9
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x43c

    if-ne p0, v0, :cond_a

    .line 259
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return p0

    .line 260
    :cond_a
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x434

    if-ne p0, v0, :cond_b

    .line 261
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camcoder:I

    return p0

    :cond_b
    :goto_1
    const/4 p0, 0x1

    .line 276
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 277
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0

    :cond_c
    const/4 p0, 0x0

    .line 279
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 280
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mono_headset:I

    return p0

    .line 223
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 224
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return p0

    .line 226
    :cond_e
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return p0

    .line 216
    :cond_f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x11c

    if-ne p0, v0, :cond_10

    .line 217
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return p0

    .line 219
    :cond_10
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return p0

    .line 283
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    const-string v0, "mBtClass is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_12
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0
.end method

.method public getCastDevice()Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    return-object p0
.end method

.method public getCastProfileConnectionState(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;)I
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfileConnectionState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCastProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 409
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getConnectionSummary()Ljava/lang/String;
    .locals 9

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 370
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_7

    .line 371
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    if-nez v5, :cond_0

    .line 373
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    const-string v6, "getConnectionSummary :: profile is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 377
    :cond_0
    invoke-virtual {p0, v5}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfileConnectionState(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;)I

    move-result v7

    if-eqz v7, :cond_5

    if-eq v7, v6, :cond_4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v5, 0x3

    if-eq v7, v5, :cond_1

    goto :goto_1

    .line 382
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 385
    :cond_2
    instance-of v3, v5, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-eqz v3, :cond_3

    move v3, v6

    move v4, v3

    goto :goto_1

    :cond_3
    move v3, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_cast_waiting_auth:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 391
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mErrorMsg:Ljava/lang/String;

    return-object p0

    .line 393
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_cast_via:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_cast_connected_via:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectionTimeStamp()J
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalCastAdapter()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->getLastConnectedTime(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getManufacturerData()[B
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getManufacturerData()[B

    move-result-object p0

    return-object p0
.end method

.method public getMaxConnectionState()I
    .locals 8

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfiles()Ljava/util/List;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxConnectionState size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 332
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 333
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    .line 334
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMaxConnectionState profile != null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    .line 336
    invoke-virtual {p0, v4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfileConnectionState(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;)I

    move-result v4

    if-le v4, v3, :cond_1

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMaxConnectionState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    .line 119
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getManufacturerData()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getPrefixName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isBusy()Z
    .locals 6

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 348
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 349
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {p0, v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfileConnectionState(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isConnected()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;

    .line 137
    invoke-virtual {p0, v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfileConnectionState(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isDexEnabled()Z
    .locals 2

    .line 465
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dexonpc_connection_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isGearIconX()Z
    .locals 4

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getManufacturerData()[B

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    .line 303
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 306
    array-length v0, v0

    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    return v2

    .line 308
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v0

    .line 309
    aget-byte v1, v0, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    aget-byte v0, v0, v3

    if-ne v0, v3, :cond_2

    .line 310
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x404

    if-ne p0, v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public isTablet()Z
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getManufacturerData()[B

    move-result-object p0

    .line 319
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceCategory()B

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;I)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCastProfileStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v0, p2}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->setConnectionState(I)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 67
    iget-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->refresh()V

    return-void
.end method

.method processActionFoundEvent()V
    .locals 1

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x1

    .line 421
    invoke-direct {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$Callback;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 442
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method setSequence(I)V
    .locals 0

    .line 490
    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mSequence:I

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$Callback;)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 450
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 451
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateCastDevice(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->fetchName()V

    return-void
.end method
