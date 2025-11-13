.class public final Landroid/os/SemSimpleNetworkStats;
.super Ljava/lang/Object;
.source "SemSimpleNetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemSimpleNetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mRxBytes:J

.field private blacklist mTxBytes:J

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/os/SemSimpleNetworkStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SemSimpleNetworkStats;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/SemSimpleNetworkStats$1;

    invoke-direct {v0}, Landroid/os/SemSimpleNetworkStats$1;-><init>()V

    sput-object v0, Landroid/os/SemSimpleNetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/SemSimpleNetworkStats;->initialize()V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/SemSimpleNetworkStats;->initialize()V

    iput p1, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    return-void
.end method

.method public constructor blacklist <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    iput-wide p2, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    iput-wide p4, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/SemSimpleNetworkStats;->initialize()V

    invoke-virtual {p0, p1}, Landroid/os/SemSimpleNetworkStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist initialize()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/os/SemSimpleNetworkStats;)V
    .locals 4

    iget v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getRxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    return-wide v0
.end method

.method public blacklist getTxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    return-wide v0
.end method

.method public blacklist getTxRxBytes()J
    .locals 4

    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    iget-wide v2, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    return-void
.end method

.method public blacklist reset()V
    .locals 0

    invoke-direct {p0}, Landroid/os/SemSimpleNetworkStats;->initialize()V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
