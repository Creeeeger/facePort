.class public Lcom/samsung/android/location/ISLocationManager$Default;
.super Ljava/lang/Object;
.source "ISLocationManager.java"

# interfaces
.implements Lcom/samsung/android/location/ISLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/ISLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I
    .locals 1
    .param p1, "parameter"    # Lcom/samsung/android/location/SemGeofence;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/location/SemGeofence;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist flushBatchedLocations()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public blacklist getCellCountForEventGeofence(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGeofenceIdList(Ljava/lang/String;)[I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAvailable(I)Z
    .locals 1
    .param p1, "module"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyAppForeground(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public blacklist onGnssStatusChanged(Z)V
    .locals 0
    .param p1, "isNavigating"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public blacklist onSvStatusChanged(I[I[F[F[F[F[F)V
    .locals 0
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "svElevations"    # [F
    .param p5, "svAzimuths"    # [F
    .param p6, "svCarrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    return-void
.end method

.method public blacklist removeBatchedLocations(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;)I
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/samsung/android/location/ISLocationBatchingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeGeofence(ILjava/lang/String;)I
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeGeofences(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeGeofencesPendingIntent(Landroid/app/PendingIntent;)I
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeLocation(Lcom/samsung/android/location/ISLocationListener;)I
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/location/ISLocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removePassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/samsung/android/location/ISLocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/samsung/android/location/ISLocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportGMSPassiveLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist reportGpsGeofenceAddStatus(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist reportGpsGeofencePauseStatus(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist reportGpsGeofenceRemoveStatus(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist reportGpsGeofenceResumeStatus(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist reportGpsGeofenceStatus(ILandroid/location/Location;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist reportGpsGeofenceTransition(ILandroid/location/Location;IJ)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public blacklist requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "req"    # Lcom/samsung/android/location/SemLocationBatchingRequest;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/samsung/android/location/ISLocationBatchingListener;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestLocation(ZLcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "isAddress"    # Z
    .param p2, "listener"    # Lcom/samsung/android/location/ISLocationListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    .locals 1
    .param p1, "latitude"    # [D
    .param p2, "longitude"    # [D
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestMostAccurateLocation(IIILandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "accuracyLimit"    # I
    .param p2, "requestTimeout"    # I
    .param p3, "locationTimeout"    # I
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .param p5, "listener"    # Lcom/samsung/android/location/ISLocationListener;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestPassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/samsung/android/location/ISLocationListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "isAddress"    # Z
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .param p5, "listener"    # Lcom/samsung/android/location/ISLocationListener;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setGeopointWifiBssid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    .locals 0
    .param p1, "gpsHardware"    # Landroid/location/IGpsGeofenceHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist setSLocationLMSHook(Lcom/samsung/android/location/ISLocationLMSHook;)V
    .locals 0
    .param p1, "iSLocationLMSHook"    # Lcom/samsung/android/location/ISLocationLMSHook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public blacklist startGeofence(ILandroid/app/PendingIntent;)I
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startLearning(I)I
    .locals 1
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopGeofence(ILandroid/app/PendingIntent;)I
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopLearning(I)I
    .locals 1
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist syncGeofence([ILjava/lang/String;)I
    .locals 1
    .param p1, "geofenceIdList"    # [I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method
