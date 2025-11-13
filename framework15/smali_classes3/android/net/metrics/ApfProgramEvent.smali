.class public final Landroid/net/metrics/ApfProgramEvent;
.super Ljava/lang/Object;
.source "ApfProgramEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ApfProgramEvent$Decoder;,
        Landroid/net/metrics/ApfProgramEvent$Builder;,
        Landroid/net/metrics/ApfProgramEvent$Flags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/ApfProgramEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FLAG_HAS_IPV4_ADDRESS:I = 0x1

.field public static final greylist-max-o FLAG_MULTICAST_FILTER_ON:I


# instance fields
.field public final greylist-max-r actualLifetime:J

.field public final greylist-max-r currentRas:I

.field public final greylist-max-r filteredRas:I

.field public final greylist-max-r flags:I

.field public final greylist-max-r lifetime:J

.field public final greylist-max-r programLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/metrics/ApfProgramEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/ApfProgramEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/ApfProgramEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JJIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iput-wide p3, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    iput p5, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iput p6, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iput p7, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iput p8, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(JJIIIILandroid/net/metrics/ApfProgramEvent-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/net/metrics/ApfProgramEvent;-><init>(JJIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/ApfProgramEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/metrics/ApfProgramEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r flagsFor(ZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method private static greylist-max-o namesOf(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const v1, 0x7fffffff

    and-int/2addr v1, p0

    int-to-long v1, v1

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    sget-object v3, Landroid/net/metrics/ApfProgramEvent$Decoder;->constants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "|"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
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

    const-class v2, Landroid/net/metrics/ApfProgramEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/ApfProgramEvent;

    iget-wide v2, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iget-wide v4, v1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iget v3, v1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iget v3, v1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iget v3, v1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    iget v3, v1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "forever"

    :goto_0
    move-object v5, v0

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v6, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {v0}, Landroid/net/metrics/ApfProgramEvent;->namesOf(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ApfProgramEvent(%d/%d RAs %dB %ds/%s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
