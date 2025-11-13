.class public Lcom/samsung/android/knox/location/GeofenceFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGeofence(ILandroid/os/Parcel;)Lcom/samsung/android/knox/location/Geofence;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/location/LinearGeofence;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/location/PolygonalGeofence;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/location/CircularGeofence;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method
