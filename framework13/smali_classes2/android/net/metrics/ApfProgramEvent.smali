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

    .line 213
    new-instance v0, Landroid/net/metrics/ApfProgramEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/ApfProgramEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/ApfProgramEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JJIIII)V
    .locals 0
    .param p1, "lifetime"    # J
    .param p3, "actualLifetime"    # J
    .param p5, "filteredRas"    # I
    .param p6, "currentRas"    # I
    .param p7, "programLength"    # I
    .param p8, "flags"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-wide p1, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    .line 84
    iput-wide p3, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    .line 85
    iput p5, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    .line 86
    iput p6, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    .line 87
    iput p7, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 88
    iput p8, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(JJIIIILandroid/net/metrics/ApfProgramEvent-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/net/metrics/ApfProgramEvent;-><init>(JJIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/ApfProgramEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/metrics/ApfProgramEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r flagsFor(ZZ)I
    .locals 1
    .param p0, "hasIPv4"    # Z
    .param p1, "multicastFilterOn"    # Z

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "bitfield":I
    if-eqz p0, :cond_0

    .line 229
    or-int/lit8 v0, v0, 0x2

    .line 231
    :cond_0
    if-eqz p1, :cond_1

    .line 232
    or-int/lit8 v0, v0, 0x1

    .line 234
    :cond_1
    return v0
.end method

.method private static greylist-max-o namesOf(I)Ljava/lang/String;
    .locals 5
    .param p0, "bitfield"    # I

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v1, v1, [J

    const v2, 0x7fffffff

    and-int/2addr v2, p0

    int-to-long v2, v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-static {v1}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v1

    .line 241
    .local v1, "set":Ljava/util/BitSet;
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .local v2, "bit":I
    :goto_0
    if-ltz v2, :cond_0

    .line 242
    sget-object v3, Landroid/net/metrics/ApfProgramEvent$Decoder;->constants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_0

    .line 244
    .end local v2    # "bit":I
    :cond_0
    const-string/jumbo v2, "|"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 202
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/ApfProgramEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/ApfProgramEvent;

    .line 204
    .local v1, "other":Landroid/net/metrics/ApfProgramEvent;
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

    .line 202
    .end local v1    # "other":Landroid/net/metrics/ApfProgramEvent;
    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 195
    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "forever"

    .line 196
    .local v0, "lifetimeString":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {v3}, Landroid/net/metrics/ApfProgramEvent;->namesOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 196
    const-string v2, "ApfProgramEvent(%d/%d RAs %dB %ds/%s %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return-void
.end method
