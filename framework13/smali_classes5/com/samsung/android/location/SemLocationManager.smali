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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/location/ISLocationManager;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    .line 463
    iput-object p2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    .line 464
    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    .line 465
    return-void
.end method

.method private blacklist isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z
    .locals 13
    .param p1, "parameter"    # Lcom/samsung/android/location/SemGeofence;

    .line 723
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getType()I

    move-result v0

    .line 724
    .local v0, "type":I
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "SemLocationManager"

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v6, 0x4

    if-eq v0, v6, :cond_0

    .line 725
    const-string v1, "geofenceType is not correct"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return v4

    .line 728
    :cond_0
    if-ne v0, v3, :cond_5

    .line 729
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getLatitude()D

    move-result-wide v6

    .line 730
    .local v6, "latitude":D
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getLongitude()D

    move-result-wide v8

    .line 731
    .local v8, "longitude":D
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getRadius()I

    move-result v10

    .line 732
    .local v10, "radius":I
    const-wide v11, -0x3fa9800000000000L    # -90.0

    cmpg-double v11, v6, v11

    if-ltz v11, :cond_4

    const-wide v11, 0x4056800000000000L    # 90.0

    cmpl-double v11, v6, v11

    if-lez v11, :cond_1

    goto :goto_1

    .line 736
    :cond_1
    const-wide v11, -0x3f99800000000000L    # -180.0

    cmpg-double v11, v8, v11

    if-ltz v11, :cond_3

    const-wide v11, 0x4066800000000000L    # 180.0

    cmpl-double v11, v8, v11

    if-lez v11, :cond_2

    goto :goto_0

    .line 740
    :cond_2
    const/16 v11, 0x64

    if-ge v10, v11, :cond_5

    .line 741
    const-string/jumbo v1, "radius is not correct"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return v4

    .line 737
    :cond_3
    :goto_0
    const-string v1, "longitude is not correct"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return v4

    .line 733
    :cond_4
    :goto_1
    const-string v1, "latitude is not correct"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return v4

    .line 745
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "radius":I
    :cond_5
    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_7

    .line 746
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getBssid()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "bssid":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 748
    const-string v2, "bssid is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return v4

    .line 752
    .end local v1    # "bssid":Ljava/lang/String;
    :cond_7
    return v3
.end method


# virtual methods
.method public whitelist addGeofence(Lcom/samsung/android/location/SemBleScanGeofence;Landroid/app/PendingIntent;)I
    .locals 9
    .param p1, "param"    # Lcom/samsung/android/location/SemBleScanGeofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 1459
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1460
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v0, -0x1

    return v0

    .line 1463
    :cond_0
    if-nez p2, :cond_1

    .line 1464
    const-string v0, "intent is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v0, -0x2

    return v0

    .line 1468
    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getAddress()[Ljava/lang/String;

    move-result-object v4

    .line 1469
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getLongitude()D

    move-result-wide v7

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/location/SemGeofence;-><init>(I[Ljava/lang/String;DD)V

    .line 1470
    .local v0, "geofence":Lcom/samsung/android/location/SemGeofence;
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    .line 1471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
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

    .line 1474
    .end local v0    # "geofence":Lcom/samsung/android/location/SemGeofence;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    :catch_0
    move-exception v0

    .line 1475
    .local v0, "ex":Landroid/os/RemoteException;
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

    .line 1476
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist addGeofence(Lcom/samsung/android/location/SemBluetoothGeofence;Landroid/app/PendingIntent;)I
    .locals 6
    .param p1, "param"    # Lcom/samsung/android/location/SemBluetoothGeofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 1374
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1375
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const/4 v0, -0x1

    return v0

    .line 1378
    :cond_0
    if-nez p2, :cond_1

    .line 1379
    const-string v0, "intent is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const/4 v0, -0x2

    return v0

    .line 1383
    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBluetoothGeofence;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/location/SemGeofence;-><init>(ILjava/lang/String;)V

    .line 1384
    .local v0, "geofence":Lcom/samsung/android/location/SemGeofence;
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBluetoothGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    .line 1385
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1387
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

    .line 1388
    .end local v0    # "geofence":Lcom/samsung/android/location/SemGeofence;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "ex":Landroid/os/RemoteException;
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

    .line 1390
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist addGeofence(Lcom/samsung/android/location/SemGeofence;)I
    .locals 4
    .param p1, "parameter"    # Lcom/samsung/android/location/SemGeofence;

    .line 534
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 535
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, -0x1

    return v0

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager;->isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    const/4 v0, -0x2

    return v0

    .line 542
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I
    .locals 4
    .param p1, "parameter"    # Lcom/samsung/android/location/SemGeofence;
    .param p2, "key"    # Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 568
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v0, -0x1

    return v0

    .line 571
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager;->isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    const/4 v0, -0x2

    return v0

    .line 575
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist addGeofence(Lcom/samsung/android/location/SemGeopointGeofence;Landroid/app/PendingIntent;)I
    .locals 10
    .param p1, "param"    # Lcom/samsung/android/location/SemGeopointGeofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 1332
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1333
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/4 v0, -0x1

    return v0

    .line 1336
    :cond_0
    if-nez p2, :cond_1

    .line 1337
    const-string v0, "intent is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const/4 v0, -0x2

    return v0

    .line 1341
    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getLatitude()D

    move-result-wide v4

    .line 1342
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getRadius()I

    move-result v8

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getWifiBssidList()[Ljava/lang/String;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/location/SemGeofence;-><init>(IDDI[Ljava/lang/String;)V

    .line 1343
    .local v0, "geofence":Lcom/samsung/android/location/SemGeofence;
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    .line 1344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
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

    .line 1347
    .end local v0    # "geofence":Lcom/samsung/android/location/SemGeofence;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "ex":Landroid/os/RemoteException;
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

    .line 1349
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist addGeofence(Lcom/samsung/android/location/SemWifiGeofence;Landroid/app/PendingIntent;)I
    .locals 6
    .param p1, "param"    # Lcom/samsung/android/location/SemWifiGeofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 1415
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1416
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const/4 v0, -0x1

    return v0

    .line 1419
    :cond_0
    if-nez p2, :cond_1

    .line 1420
    const-string v0, "intent is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v0, -0x2

    return v0

    .line 1424
    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/location/SemWifiGeofence;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/location/SemGeofence;-><init>(ILjava/lang/String;)V

    .line 1425
    .local v0, "geofence":Lcom/samsung/android/location/SemGeofence;
    invoke-virtual {p1}, Lcom/samsung/android/location/SemWifiGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    .line 1426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
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

    .line 1429
    .end local v0    # "geofence":Lcom/samsung/android/location/SemGeofence;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "ex":Landroid/os/RemoteException;
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

    .line 1431
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist flushBatchedLocations()V
    .locals 4

    .line 1299
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1300
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-void

    .line 1305
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/location/ISLocationManager;->flushBatchedLocations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    goto :goto_0

    .line 1306
    :catchall_0
    move-exception v0

    .line 1307
    .local v0, "ex":Ljava/lang/Throwable;
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

    .line 1309
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public blacklist getCellCountForEventGeofence(I)I
    .locals 4
    .param p1, "id"    # I

    .line 817
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 818
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v0, -0x1

    return v0

    .line 822
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/location/ISLocationManager;->getCellCountForEventGeofence(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellCountForEventGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist getGeofenceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v1, 0x0

    const-string v2, "SemLocationManager"

    if-nez v0, :cond_0

    .line 476
    const-string v0, "SLocationService is not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-object v1

    .line 479
    :cond_0
    const/4 v0, 0x0

    .line 480
    .local v0, "list":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v3, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v4, p1}, Lcom/samsung/android/location/ISLocationManager;->getGeofenceIdList(Ljava/lang/String;)[I

    move-result-object v4

    move-object v0, v4

    .line 483
    if-eqz v0, :cond_1

    .line 484
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 485
    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 488
    .end local v4    # "i":I
    :cond_1
    return-object v3

    .line 489
    :catch_0
    move-exception v4

    .line 490
    .local v4, "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGeofenceIdList: RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-object v1
.end method

.method public whitelist isAvailable(I)Z
    .locals 5
    .param p1, "module"    # I

    .line 504
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v1, 0x0

    const-string v2, "SemLocationManager"

    if-nez v0, :cond_0

    .line 505
    const-string v0, "SLocationService is not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return v1

    .line 509
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/location/ISLocationManager;->isAvailable(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "ex":Landroid/os/RemoteException;
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

    .line 512
    return v1
.end method

.method public whitelist removeBatchedLocations(Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 1255
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1256
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const/4 v0, -0x1

    return v0

    .line 1259
    :cond_0
    if-nez p1, :cond_1

    .line 1260
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v0, -0x2

    return v0

    .line 1264
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removeBatchedLocations(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1265
    :catchall_0
    move-exception v0

    .line 1266
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationBatchingUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist removeBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingListener;)I
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/location/SemLocationBatchingListener;

    .line 1284
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1285
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v0, -0x1

    return v0

    .line 1288
    :cond_0
    if-nez p1, :cond_1

    .line 1289
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/4 v0, -0x2

    return v0

    .line 1292
    :cond_1
    const/4 v0, -0x7

    return v0
.end method

.method public blacklist removeGeofence(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .line 594
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 595
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, -0x1

    return v0

    .line 599
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removeGeofence(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist removeGeofence(ILjava/lang/String;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 620
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, -0x1

    return v0

    .line 624
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->removeGeofence(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist removeGeofence(Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 648
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 649
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v0, -0x1

    return v0

    .line 653
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/location/ISLocationManager;->removeGeofencesPendingIntent(Landroid/app/PendingIntent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist removeGeofence(Ljava/lang/String;)I
    .locals 4
    .param p1, "requestId"    # Ljava/lang/String;

    .line 1495
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1496
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const/4 v0, -0x1

    return v0

    .line 1500
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    .local v0, "requestIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/location/ISLocationManager;->removeGeofences(Ljava/util/List;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1503
    .end local v0    # "requestIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1504
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 1090
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1091
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v0, -0x1

    return v0

    .line 1094
    :cond_0
    if-nez p1, :cond_1

    .line 1095
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/4 v0, -0x2

    return v0

    .line 1100
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 1101
    .local v0, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v0, :cond_2

    .line 1102
    const-string v2, "Already stopped location"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v1, -0x3

    return v1

    .line 1105
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/location/ISLocationManager;->removeLocation(Lcom/samsung/android/location/ISLocationListener;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1107
    .end local v0    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeLocationUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist removePassiveLocation(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 1173
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1174
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-void

    .line 1177
    :cond_0
    if-nez p1, :cond_1

    .line 1178
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    return-void

    .line 1182
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removePassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    goto :goto_0

    .line 1183
    :catchall_0
    move-exception v0

    .line 1184
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public whitelist removeSingleLocation(Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 901
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 902
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v0, -0x1

    return v0

    .line 905
    :cond_0
    if-nez p1, :cond_1

    .line 906
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v0, -0x2

    return v0

    .line 910
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist removeSingleLocation(Lcom/samsung/android/location/SemLocationListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 972
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 973
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v0, -0x1

    return v0

    .line 976
    :cond_0
    if-nez p1, :cond_1

    .line 977
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v0, -0x2

    return v0

    .line 981
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 982
    .local v0, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v0, :cond_2

    .line 983
    const-string v2, "Already stopped location"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v1, -0x3

    return v1

    .line 986
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 988
    .end local v0    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 989
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist requestAddressFromLocation([D[DLandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "latitude"    # [D
    .param p2, "longitude"    # [D
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 1127
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1128
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v0, -0x1

    return v0

    .line 1131
    :cond_0
    if-nez p3, :cond_1

    .line 1132
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v0, -0x2

    return v0

    .line 1136
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/location/ISLocationManager;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Landroid/app/PendingIntent;)I
    .locals 7
    .param p1, "request"    # Lcom/samsung/android/location/SemLocationBatchingRequest;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 1201
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v6, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1202
    const-string v0, "SLocationService is not supported"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v0, -0x1

    return v0

    .line 1205
    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1211
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/location/ISLocationManager;->requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1212
    :catchall_0
    move-exception v0

    .line 1213
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLocationBatchingUpdates: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v1, -0x4

    return v1

    .line 1206
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/4 v0, -0x2

    return v0
.end method

.method public whitelist requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Lcom/samsung/android/location/SemLocationBatchingListener;)I
    .locals 2
    .param p1, "request"    # Lcom/samsung/android/location/SemLocationBatchingRequest;
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationBatchingListener;

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1232
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 v0, -0x1

    return v0

    .line 1235
    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1239
    :cond_1
    const/4 v0, -0x7

    return v0

    .line 1236
    :cond_2
    :goto_0
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v0, -0x2

    return v0
.end method

.method public whitelist requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I
    .locals 5
    .param p1, "isAddress"    # Z
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_0

    .line 1057
    const-string v0, "SemLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v0, -0x1

    return v0

    .line 1060
    :cond_0
    if-nez p2, :cond_1

    .line 1061
    const-string v0, "SemLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v0, -0x2

    return v0

    .line 1065
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 1067
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2

    .line 1068
    new-instance v2, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    move-object v1, v2

    .line 1070
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
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

    .line 1072
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .end local p1    # "isAddress":Z
    .end local p2    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1073
    .restart local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .restart local p1    # "isAddress":Z
    .restart local p2    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist requestMostAccurateLocation(IIILcom/samsung/android/location/SemLocationListener;)I
    .locals 10
    .param p1, "accuracyLimit"    # I
    .param p2, "requestTimeout"    # I
    .param p3, "locationTimeout"    # I
    .param p4, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 1020
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_0

    .line 1021
    const-string v0, "SemLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v0, -0x1

    return v0

    .line 1024
    :cond_0
    if-nez p4, :cond_1

    .line 1025
    const-string v0, "SemLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v0, -0x2

    return v0

    .line 1029
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 1031
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2

    .line 1032
    new-instance v2, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    move-object v1, v2

    .line 1034
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/location/ISLocationManager;->requestMostAccurateLocation(IIILandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 1036
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .end local p1    # "accuracyLimit":I
    .end local p2    # "requestTimeout":I
    .end local p3    # "locationTimeout":I
    .end local p4    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1037
    .restart local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .restart local p1    # "accuracyLimit":I
    .restart local p2    # "requestTimeout":I
    .restart local p3    # "locationTimeout":I
    .restart local p4    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestMostAccurateLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist requestPassiveLocation(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 1151
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void

    .line 1154
    :cond_0
    if-nez p1, :cond_1

    .line 1155
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return-void

    .line 1159
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v2, v3, v4}, Lcom/samsung/android/location/ISLocationManager;->requestPassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    goto :goto_0

    .line 1160
    :catchall_0
    move-exception v0

    .line 1161
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public whitelist requestSingleLocation(IIZLandroid/app/PendingIntent;)I
    .locals 9
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "isAddress"    # Z
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .line 874
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v8, "SemLocationManager"

    if-nez v0, :cond_0

    .line 875
    const-string v0, "SLocationService is not supported"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v0, -0x1

    return v0

    .line 878
    :cond_0
    if-nez p4, :cond_1

    .line 879
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v0, -0x2

    return v0

    .line 883
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSingleLocation: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v1, -0x4

    return v1
.end method

.method public whitelist requestSingleLocation(IIZLcom/samsung/android/location/SemLocationListener;)I
    .locals 10
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "isAddress"    # Z
    .param p4, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 938
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_0

    .line 939
    const-string v0, "SemLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v0, -0x1

    return v0

    .line 942
    :cond_0
    if-nez p4, :cond_1

    .line 943
    const-string v0, "SemLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v0, -0x2

    return v0

    .line 947
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 949
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2

    .line 950
    new-instance v2, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    move-object v1, v2

    .line 952
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 954
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .end local p1    # "accuracy":I
    .end local p2    # "timeout":I
    .end local p3    # "isAddress":Z
    .end local p4    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 955
    .restart local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .restart local p1    # "accuracy":I
    .restart local p2    # "timeout":I
    .restart local p3    # "isAddress":Z
    .restart local p4    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :catch_0
    move-exception v0

    .line 956
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist setGeopointWifiBssid(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 841
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 842
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v0, -0x1

    return v0

    .line 846
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/samsung/android/location/ISLocationManager;->setGeopointWifiBssid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGeopointWifiBssid: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist startGeofenceMonitoring(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 675
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 676
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v0, -0x1

    return v0

    .line 679
    :cond_0
    if-nez p2, :cond_1

    .line 680
    const-string v0, "intent is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v0, -0x2

    return v0

    .line 685
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->startGeofence(ILandroid/app/PendingIntent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGeofenceMonitoring : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist startLearning(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .line 768
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 769
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v0, -0x1

    return v0

    .line 773
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/location/ISLocationManager;->startLearning(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist stopGeofenceMonitoring(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 706
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 707
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v0, -0x1

    return v0

    .line 710
    :cond_0
    if-nez p2, :cond_1

    .line 711
    const-string v0, "intent is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v0, -0x2

    return v0

    .line 715
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->stopGeofence(ILandroid/app/PendingIntent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopGeofenceMonitoring: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist stopLearning(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .line 793
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_0

    .line 794
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v0, -0x1

    return v0

    .line 798
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/location/ISLocationManager;->stopLearning(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v1, -0x4

    return v1
.end method
