.class public final Landroid/media/tv/PesRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "PesRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/PesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x4


# instance fields
.field private final blacklist mStreamId:I

.field private final blacklist mTsPid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/PesRequest$1;

    invoke-direct {v0}, Landroid/media/tv/PesRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/PesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    iput p3, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    iput p4, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesRequest;
    .locals 1

    new-instance v0, Landroid/media/tv/PesRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/PesRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getStreamId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    return v0
.end method

.method public whitelist getTsPid()I
    .locals 1

    iget v0, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
