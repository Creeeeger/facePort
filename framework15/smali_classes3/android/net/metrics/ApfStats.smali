.class public final Landroid/net/metrics/ApfStats;
.super Ljava/lang/Object;
.source "ApfStats.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ApfStats$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/ApfStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-r droppedRas:I

.field public final greylist-max-r durationMs:J

.field public final greylist-max-r matchingRas:I

.field public final greylist-max-r maxProgramSize:I

.field public final greylist-max-r parseErrors:I

.field public final greylist-max-r programUpdates:I

.field public final greylist-max-r programUpdatesAll:I

.field public final greylist-max-r programUpdatesAllowingMulticast:I

.field public final greylist-max-r receivedRas:I

.field public final greylist-max-r zeroLifetimeRas:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/metrics/ApfStats$1;

    invoke-direct {v0}, Landroid/net/metrics/ApfStats$1;-><init>()V

    sput-object v0, Landroid/net/metrics/ApfStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    iput p3, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    iput p4, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    iput p5, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    iput p6, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iput p7, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    iput p8, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    iput p9, p0, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    iput p10, p0, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    iput p11, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    return-void
.end method

.method synthetic constructor blacklist <init>(JIIIIIIIIILandroid/net/metrics/ApfStats-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroid/net/metrics/ApfStats;-><init>(JIIIIIIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/ApfStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/metrics/ApfStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/ApfStats;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/ApfStats;

    iget-wide v2, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    iget-wide v4, v1, Landroid/net/metrics/ApfStats;->durationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    iget v3, v1, Landroid/net/metrics/ApfStats;->receivedRas:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    iget v3, v1, Landroid/net/metrics/ApfStats;->matchingRas:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    iget v3, v1, Landroid/net/metrics/ApfStats;->droppedRas:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iget v3, v1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    iget v3, v1, Landroid/net/metrics/ApfStats;->parseErrors:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    iget v3, v1, Landroid/net/metrics/ApfStats;->programUpdates:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    iget v3, v1, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    iget v3, v1, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iget v3, v1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApfStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%dms "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%dB RA: {"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d received, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d matching, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d dropped, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d zero lifetime, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d parse errors}, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "updates: {all: %d, RAs: %d, allow multicast: %d})"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
