.class public Lcom/samsung/android/location/SemLocationManager;
.super Ljava/lang/Object;
.source "SemLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;,
        Lcom/samsung/android/location/SemLocationManager$SemLocationManagerModule;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SERVICE_READY:Ljava/lang/String; = "com.samsung.android.location.SERVICE_READY"

.field public static final blacklist BATCHED_LOCATION:Ljava/lang/String; = "batchedlocation"

.field public static final blacklist CURRENT_ADDRESS_FROM_LOCATION:I = 0xa

.field public static final whitelist CURRENT_LOCATION:Ljava/lang/String; = "currentlocation"

.field public static final whitelist CURRENT_LOCATION_ADDRESS:Ljava/lang/String; = "currentlocationaddress"

.field public static final whitelist CURRENT_LOCATION_MOST_ACCURATE:I = 0x9

.field public static final whitelist CURRENT_LOCATION_SINGLE:I = 0x7

.field public static final whitelist CURRENT_LOCATION_TRACKING:I = 0x8

.field public static final whitelist ERROR_ALREADY_STARTED:I = -0x5

.field public static final whitelist ERROR_EXCEPTION:I = -0x4

.field public static final whitelist ERROR_ID_NOT_EXIST:I = -0x3

.field public static final whitelist ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final whitelist ERROR_LOCATION_CURRENTLY_UNAVAILABLE:I = -0x64

.field public static final whitelist ERROR_NOT_INITIALIZED:I = -0x1

.field public static final whitelist ERROR_NOT_SUPPORTED:I = -0x7

.field public static final whitelist ERROR_TOO_MANY_GEOFENCE:I = -0x6

.field public static final blacklist FLUSH_COMPLETED:Ljava/lang/String; = "flushcompleted"

.field public static final whitelist GEOFENCE_BLUETOOTH_ADDRESS:Ljava/lang/String; = "geofencebluetoothaddress"

.field public static final whitelist GEOFENCE_ENTER:I = 0x1

.field public static final whitelist GEOFENCE_EXIT:I = 0x2

.field public static final whitelist GEOFENCE_LOCATION:Ljava/lang/String; = "location"

.field public static final whitelist GEOFENCE_REQUEST_ID:Ljava/lang/String; = "requestid"

.field public static final whitelist GEOFENCE_TRANSITION:Ljava/lang/String; = "transition"

.field public static final whitelist GEOFENCE_TYPE_BLE_SCAN:I = 0x5

.field public static final whitelist GEOFENCE_TYPE_BT:I = 0x3

.field public static final blacklist GEOFENCE_TYPE_EVENT:I = 0x4

.field public static final whitelist GEOFENCE_TYPE_GEOPOINT:I = 0x1

.field public static final whitelist GEOFENCE_TYPE_WIFI:I = 0x2

.field public static final whitelist GEOFENCE_UNKNOWN:I = 0x0

.field public static final whitelist LOCATION_BATCHING:I = 0xb

.field public static final whitelist OPERATION_SUCCESS:I = 0x0

.field public static final blacklist PERMISSION_ALWAYS_SCAN:Ljava/lang/String; = "permissionalwaysscan"

.field private static final blacklist TAG:Ljava/lang/String; = "SemLocationManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/location/SemLocationListener;",
            "Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Lcom/samsung/android/location/ISLocationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/location/ISLocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public whitelist addGeofence(Lcom/samsung/android/location/SemBleScanGeofence;Landroid/app/PendingIntent;)I
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, -0x2

    if-nez p2, :cond_1

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pending intent must be mutable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request abnormal requestId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :try_start_0
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getAddress()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getLongitude()D

    move-result-wide v8

    const/4 v4, 0x5

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/location/SemGeofence;-><init>(I[Ljava/lang/String;DD)V

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, p2, v4, v5}, Lcom/samsung/android/location/ISLocationManager;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public whitelist addGeofence(Lcom/samsung/android/location/SemBluetoothGeofence;Landroid/app/PendingIntent;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, -0x2

    if-nez p2, :cond_1

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pending intent must be mutable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBluetoothGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request abnormal requestId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :try_start_0
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBluetoothGeofence;->getBssid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/location/SemGeofence;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBluetoothGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, p2, v4, v5}, Lcom/samsung/android/location/ISLocationManager;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public whitelist addGeofence(Lcom/samsung/android/location/SemGeopointGeofence;Landroid/app/PendingIntent;)I
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, -0x2

    if-nez p2, :cond_1

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pending intent must be mutable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request abnormal requestId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :try_start_0
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getLongitude()D

    move-result-wide v7

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getRadius()I

    move-result v9

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getWifiBssidList()[Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/location/SemGeofence;-><init>(IDDI[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, p2, v4, v5}, Lcom/samsung/android/location/ISLocationManager;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public whitelist addGeofence(Lcom/samsung/android/location/SemWifiGeofence;Landroid/app/PendingIntent;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, -0x2

    if-nez p2, :cond_1

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pending intent must be mutable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/location/SemWifiGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request abnormal requestId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :try_start_0
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    invoke-virtual {p1}, Lcom/samsung/android/location/SemWifiGeofence;->getBssid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/location/SemGeofence;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/location/SemWifiGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, p2, v4, v5}, Lcom/samsung/android/location/ISLocationManager;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public whitelist flushBatchedLocations()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/location/ISLocationManager;->flushBatchedLocations(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushLocations: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public whitelist isAvailable(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v1, 0x0

    const-string v2, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v3, v4}, Lcom/samsung/android/location/ISLocationManager;->isAvailable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailable : RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public whitelist removeBatchedLocations(Landroid/app/PendingIntent;)I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, p1, v4, v2, v3}, Lcom/samsung/android/location/ISLocationManager;->removeBatchedLocations(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationBatchingUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public whitelist removeBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingListener;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    const/4 v0, -0x7

    return v0
.end method

.method public whitelist removeGeofence(Landroid/app/PendingIntent;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/samsung/android/location/ISLocationManager;->removeGeofencesPendingIntent(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public whitelist removeGeofence(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/samsung/android/location/ISLocationManager;->removeGeofences(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public whitelist removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v0, :cond_2

    const-string v2, "Already stopped location"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x3

    return v1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/samsung/android/location/ISLocationManager;->removeLocation(Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeLocationUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public blacklist removePassiveLocation(Landroid/app/PendingIntent;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, p1, v4, v2, v3}, Lcom/samsung/android/location/ISLocationManager;->removePassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public whitelist removeSingleLocation(Lcom/samsung/android/location/SemLocationListener;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v0, :cond_2

    const-string v2, "Already stopped location"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x3

    return v1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0, v3, v4}, Lcom/samsung/android/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public whitelist requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Landroid/app/PendingIntent;)I
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/location/ISLocationManager;->requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationBatchingUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1

    :cond_2
    :goto_0
    const-string v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method public whitelist requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Lcom/samsung/android/location/SemLocationBatchingListener;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x7

    return v0

    :cond_2
    :goto_0
    const-string v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method public whitelist requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_0

    const-string v0, "SemLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "SemLocationManager"

    const-string v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v1, :cond_2

    new-instance v2, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    move-object v1, v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v1, v3, v4}, Lcom/samsung/android/location/ISLocationManager;->requestLocation(ZLcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public blacklist requestPassiveLocation(Landroid/app/PendingIntent;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, p1, v4, v2, v3}, Lcom/samsung/android/location/ISLocationManager;->requestPassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public whitelist requestSingleLocation(IIZLandroid/app/PendingIntent;)I
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez p4, :cond_1

    const-string v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public whitelist requestSingleLocation(IIZLcom/samsung/android/location/SemLocationListener;)I
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_0

    const-string v0, "SemLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez p4, :cond_1

    const-string v0, "SemLocationManager"

    const-string v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v1, :cond_2

    new-instance v2, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    move-object v1, v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method
