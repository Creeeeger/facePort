.class Lsamsung/uwb/RangingData$1;
.super Ljava/lang/Object;
.source "RangingData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/RangingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/RangingData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lsamsung/uwb/RangingData$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/RangingData;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/RangingData;
    .locals 0

    .line 230
    new-instance p0, Lsamsung/uwb/RangingData;

    invoke-direct {p0, p1}, Lsamsung/uwb/RangingData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lsamsung/uwb/RangingData$1;->newArray(I)[Lsamsung/uwb/RangingData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lsamsung/uwb/RangingData;
    .locals 0

    .line 235
    new-array p0, p1, [Lsamsung/uwb/RangingData;

    return-object p0
.end method
