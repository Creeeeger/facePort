.class Landroid/app/time/TelephonyTimeZoneAlgorithmStatus$1;
.super Ljava/lang/Object;
.source "TelephonyTimeZoneAlgorithmStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-direct {v1, v0}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;-><init>(I)V

    return-object v1
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

    invoke-virtual {p0, p1}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    .locals 1

    new-array v0, p1, [Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

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

    invoke-virtual {p0, p1}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus$1;->newArray(I)[Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    move-result-object p1

    return-object p1
.end method
