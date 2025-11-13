.class Landroid/service/contentcapture/FlushMetrics$1;
.super Ljava/lang/Object;
.source "FlushMetrics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/FlushMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/contentcapture/FlushMetrics;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/contentcapture/FlushMetrics;
    .locals 2

    new-instance v0, Landroid/service/contentcapture/FlushMetrics;

    invoke-direct {v0}, Landroid/service/contentcapture/FlushMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

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

    invoke-virtual {p0, p1}, Landroid/service/contentcapture/FlushMetrics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/contentcapture/FlushMetrics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/contentcapture/FlushMetrics;
    .locals 1

    new-array v0, p1, [Landroid/service/contentcapture/FlushMetrics;

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

    invoke-virtual {p0, p1}, Landroid/service/contentcapture/FlushMetrics$1;->newArray(I)[Landroid/service/contentcapture/FlushMetrics;

    move-result-object p1

    return-object p1
.end method
