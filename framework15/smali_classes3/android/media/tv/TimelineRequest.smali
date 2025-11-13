.class public final Landroid/media/tv/TimelineRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "TimelineRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TimelineRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x8


# instance fields
.field private final blacklist mIntervalMillis:I

.field private final blacklist mSelector:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TimelineRequest$1;

    invoke-direct {v0}, Landroid/media/tv/TimelineRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/TimelineRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    iput p3, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(IIILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    iput p3, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    iput-object p4, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;
    .locals 1

    new-instance v0, Landroid/media/tv/TimelineRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/TimelineRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIntervalMillis()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    return v0
.end method

.method public whitelist getSelector()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
