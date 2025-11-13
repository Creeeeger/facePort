.class public final Landroid/companion/virtual/sensor/VirtualSensorEvent;
.super Ljava/lang/Object;
.source "VirtualSensorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/VirtualSensorEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/sensor/VirtualSensorEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mTimestampNanos:J

.field private blacklist mValues:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorEvent$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensorEvent$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mValues:[F

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mValues:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readFloatArray([F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mTimestampNanos:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensorEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensorEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([FJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mValues:[F

    iput-wide p2, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mTimestampNanos:J

    return-void
.end method

.method synthetic constructor blacklist <init>([FJLandroid/companion/virtual/sensor/VirtualSensorEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/sensor/VirtualSensorEvent;-><init>([FJ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mTimestampNanos:J

    return-wide v0
.end method

.method public whitelist getValues()[F
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mValues:[F

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mValues:[F

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-wide v0, p0, Landroid/companion/virtual/sensor/VirtualSensorEvent;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
