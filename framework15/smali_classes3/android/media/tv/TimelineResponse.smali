.class public final Landroid/media/tv/TimelineResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "TimelineResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TimelineResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x8


# instance fields
.field private final blacklist mSelector:Ljava/lang/String;

.field private final blacklist mTicks:J

.field private final blacklist mUnitsPerSecond:I

.field private final blacklist mUnitsPerTick:I

.field private final blacklist mWallClock:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TimelineResponse$1;

    invoke-direct {v0}, Landroid/media/tv/TimelineResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/TimelineResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILjava/lang/String;IIJJ)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput-object p4, p0, Landroid/media/tv/TimelineResponse;->mSelector:Ljava/lang/String;

    iput p5, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerTick:I

    iput p6, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerSecond:I

    iput-wide p7, p0, Landroid/media/tv/TimelineResponse;->mWallClock:J

    iput-wide p9, p0, Landroid/media/tv/TimelineResponse;->mTicks:J

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TimelineResponse;->mSelector:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerTick:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerSecond:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TimelineResponse;->mWallClock:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TimelineResponse;->mTicks:J

    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineResponse;
    .locals 1

    new-instance v0, Landroid/media/tv/TimelineResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/TimelineResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSelector()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TimelineResponse;->mSelector:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTicks()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/TimelineResponse;->mTicks:J

    return-wide v0
.end method

.method public whitelist getUnitsPerSecond()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerSecond:I

    return v0
.end method

.method public whitelist getUnitsPerTick()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerTick:I

    return v0
.end method

.method public whitelist getWallClock()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/TimelineResponse;->mWallClock:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/TimelineResponse;->mSelector:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerTick:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/tv/TimelineResponse;->mWallClock:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/tv/TimelineResponse;->mTicks:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
