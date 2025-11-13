.class Lsamsung/uwb/profile/UwbProfile$1;
.super Ljava/lang/Object;
.source "UwbProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/profile/UwbProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/profile/UwbProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lsamsung/uwb/profile/UwbProfile$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/profile/UwbProfile;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/profile/UwbProfile;
    .locals 0

    .line 51
    new-instance p0, Lsamsung/uwb/profile/UwbProfile;

    invoke-direct {p0, p1}, Lsamsung/uwb/profile/UwbProfile;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lsamsung/uwb/profile/UwbProfile$1;->newArray(I)[Lsamsung/uwb/profile/UwbProfile;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lsamsung/uwb/profile/UwbProfile;
    .locals 0

    .line 56
    new-array p0, p1, [Lsamsung/uwb/profile/UwbProfile;

    return-object p0
.end method
