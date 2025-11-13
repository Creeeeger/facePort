.class Landroid/media/TrackInternalMuteInfo$1;
.super Ljava/lang/Object;
.source "TrackInternalMuteInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TrackInternalMuteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/TrackInternalMuteInfo;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/TrackInternalMuteInfo;
    .locals 1

    new-instance v0, Landroid/media/TrackInternalMuteInfo;

    invoke-direct {v0}, Landroid/media/TrackInternalMuteInfo;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/TrackInternalMuteInfo;->readFromParcel(Landroid/os/Parcel;)V

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

    invoke-virtual {p0, p1}, Landroid/media/TrackInternalMuteInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/TrackInternalMuteInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/TrackInternalMuteInfo;
    .locals 1

    new-array v0, p1, [Landroid/media/TrackInternalMuteInfo;

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

    invoke-virtual {p0, p1}, Landroid/media/TrackInternalMuteInfo$1;->newArray(I)[Landroid/media/TrackInternalMuteInfo;

    move-result-object p1

    return-object p1
.end method
