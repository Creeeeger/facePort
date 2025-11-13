.class public final Landroid/telephony/satellite/PointingInfo;
.super Ljava/lang/Object;
.source "PointingInfo.java"

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
            "Landroid/telephony/satellite/PointingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mSatelliteAzimuthDegrees:F

.field private blacklist mSatelliteElevationDegrees:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/PointingInfo$1;

    invoke-direct {v0}, Landroid/telephony/satellite/PointingInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/PointingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    iput p2, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/PointingInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/PointingInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/PointingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/PointingInfo;

    iget v3, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    iget v4, v2, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    iget v4, v2, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getSatelliteAzimuthDegrees()F
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    return v0
.end method

.method public whitelist getSatelliteElevationDegrees()F
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteAzimuthDegrees:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SatelliteElevationDegrees:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
