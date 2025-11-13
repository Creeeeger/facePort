.class public Lcom/samsung/android/knox/location/LatLongPoint;
.super Ljava/lang/Object;
.source "LatLongPoint.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/location/LatLongPoint$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/location/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 77
    iput-wide p3, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/location/LatLongPoint;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/location/LatLongPoint-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 104
    iget-wide v0, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
