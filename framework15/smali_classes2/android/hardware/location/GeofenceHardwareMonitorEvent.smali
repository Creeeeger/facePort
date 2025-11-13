.class public Landroid/hardware/location/GeofenceHardwareMonitorEvent;
.super Ljava/lang/Object;
.source "GeofenceHardwareMonitorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/GeofenceHardwareMonitorEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mLocation:Landroid/location/Location;

.field private final greylist-max-o mMonitoringStatus:I

.field private final greylist-max-o mMonitoringType:I

.field private final greylist-max-o mSourceTechnologies:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    iput p2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    iput p3, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    iput-object p4, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public whitelist getMonitoringStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    return v0
.end method

.method public whitelist getMonitoringType()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    return v0
.end method

.method public whitelist getSourceTechnologies()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "GeofenceHardwareMonitorEvent: type=%d, status=%d, sources=%d, location=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
