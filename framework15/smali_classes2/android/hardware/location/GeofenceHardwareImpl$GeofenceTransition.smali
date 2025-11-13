.class Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeofenceTransition"
.end annotation


# instance fields
.field private greylist-max-o mGeofenceId:I

.field private greylist-max-o mLocation:Landroid/location/Location;

.field private greylist-max-o mMonitoringType:I

.field private greylist-max-o mSourcesUsed:I

.field private greylist-max-o mTimestamp:J

.field private greylist-max-o mTransition:I

.field final synthetic blacklist this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGeofenceId(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I
    .locals 0

    iget p0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocation(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonitoringType(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I
    .locals 0

    iget p0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mMonitoringType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimestamp(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransition(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I
    .locals 0

    iget p0, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I

    return p0
.end method

.method constructor blacklist <init>(Landroid/hardware/location/GeofenceHardwareImpl;IIJLandroid/location/Location;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I

    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I

    iput-wide p4, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTimestamp:J

    iput-object p6, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;

    iput p7, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mMonitoringType:I

    iput p8, p0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mSourcesUsed:I

    return-void
.end method
