.class Lsamsung/uwb/UwbDataStatusEvent$1;
.super Ljava/lang/Object;
.source "UwbDataStatusEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/UwbDataStatusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/UwbDataStatusEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lsamsung/uwb/UwbDataStatusEvent$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/UwbDataStatusEvent;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/UwbDataStatusEvent;
    .locals 0

    .line 97
    new-instance p0, Lsamsung/uwb/UwbDataStatusEvent;

    invoke-direct {p0, p1}, Lsamsung/uwb/UwbDataStatusEvent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lsamsung/uwb/UwbDataStatusEvent$1;->newArray(I)[Lsamsung/uwb/UwbDataStatusEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lsamsung/uwb/UwbDataStatusEvent;
    .locals 0

    .line 102
    new-array p0, p1, [Lsamsung/uwb/UwbDataStatusEvent;

    return-object p0
.end method
