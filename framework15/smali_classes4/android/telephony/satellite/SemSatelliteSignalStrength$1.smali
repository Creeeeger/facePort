.class Landroid/telephony/satellite/SemSatelliteSignalStrength$1;
.super Ljava/lang/Object;
.source "SemSatelliteSignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SemSatelliteSignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/satellite/SemSatelliteSignalStrength;
    .locals 2

    new-instance v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>(Landroid/os/Parcel;Landroid/telephony/satellite/SemSatelliteSignalStrength-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SemSatelliteSignalStrength$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/satellite/SemSatelliteSignalStrength;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/satellite/SemSatelliteSignalStrength;
    .locals 1

    new-array v0, p1, [Landroid/telephony/satellite/SemSatelliteSignalStrength;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SemSatelliteSignalStrength$1;->newArray(I)[Landroid/telephony/satellite/SemSatelliteSignalStrength;

    move-result-object p1

    return-object p1
.end method
