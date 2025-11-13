.class public final Landroid/app/time/TimeZoneDetectorStatus;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneDetectorStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDetectorStatus:I

.field private final blacklist mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

.field private final blacklist mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/time/TimeZoneDetectorStatus$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneDetectorStatus$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneDetectorStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/time/TelephonyTimeZoneAlgorithmStatus;Landroid/app/time/LocationTimeZoneAlgorithmStatus;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/time/DetectorStatusTypes;->requireValidDetectorStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    nop

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iput-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    iput-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

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

    check-cast v2, Landroid/app/time/TimeZoneDetectorStatus;

    iget v3, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    iget v4, v2, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iget-object v4, v2, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-virtual {v3, v4}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    iget-object v4, v2, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-virtual {v3, v4}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getDetectorStatus()I
    .locals 1

    iget v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    return v0
.end method

.method public blacklist getLocationTimeZoneAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .locals 1

    iget-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    return-object v0
.end method

.method public blacklist getTelephonyTimeZoneAlgorithmStatus()Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    .locals 1

    iget-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iget-object v2, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneDetectorStatus{mDetectorStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    invoke-static {v1}, Landroid/app/time/DetectorStatusTypes;->detectorStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTelephonyTimeZoneAlgorithmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocationTimeZoneAlgorithmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
