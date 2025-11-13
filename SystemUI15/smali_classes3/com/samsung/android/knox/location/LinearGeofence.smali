.class public Lcom/samsung/android/knox/location/LinearGeofence;
.super Lcom/samsung/android/knox/location/Geofence;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

.field public optimizedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation
.end field

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation
.end field

.field public width:D


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofence;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/location/LinearGeofence;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofence;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/knox/location/Geofence;->type:I

    iput-object p1, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    iput-wide p2, p0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;",
            "Lcom/samsung/android/knox/location/BoundingBox;",
            "D)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofence;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/knox/location/Geofence;->type:I

    iput-object p1, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/knox/location/LinearGeofence;->optimizedPoints:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/knox/location/LinearGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    iput-wide p4, p0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/knox/location/Geofence;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, Lcom/samsung/android/knox/location/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/ParcelFormatException;

    const-string p1, "Parcel format exception"

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/location/Geofence;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/knox/location/LatLongPoint;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
