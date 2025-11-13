.class public Landroid/net/LinkQualityInfo;
.super Ljava/lang/Object;
.source "LinkQualityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkQualityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o NORMALIZED_MAX_SIGNAL_STRENGTH:I = 0x63

.field public static final greylist-max-o NORMALIZED_MIN_SIGNAL_STRENGTH:I = 0x0

.field public static final greylist-max-o NORMALIZED_SIGNAL_STRENGTH_RANGE:I = 0x64

.field protected static final greylist-max-o OBJECT_TYPE_LINK_QUALITY_INFO:I = 0x1

.field protected static final greylist-max-o OBJECT_TYPE_MOBILE_LINK_QUALITY_INFO:I = 0x3

.field protected static final greylist-max-o OBJECT_TYPE_WIFI_LINK_QUALITY_INFO:I = 0x2

.field public static final greylist-max-o UNKNOWN_INT:I = 0x7fffffff

.field public static final greylist-max-o UNKNOWN_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private greylist-max-o mDataSampleDuration:I

.field private greylist-max-o mLastDataSampleTime:J

.field private greylist-max-o mNetworkType:I

.field private greylist-max-o mNormalizedSignalStrength:I

.field private greylist-max-o mPacketCount:J

.field private greylist-max-o mPacketErrorCount:J

.field private greylist-max-o mTheoreticalLatency:I

.field private greylist-max-o mTheoreticalRxBandwidth:I

.field private greylist-max-o mTheoreticalTxBandwidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/LinkQualityInfo$1;

    invoke-direct {v0}, Landroid/net/LinkQualityInfo$1;-><init>()V

    sput-object v0, Landroid/net/LinkQualityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    iput v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getDataSampleDuration()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return v0
.end method

.method public greylist-max-o getLastDataSampleTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    return-wide v0
.end method

.method public greylist-max-o getNetworkType()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    return v0
.end method

.method public greylist-max-o getNormalizedSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    return v0
.end method

.method public greylist-max-o getPacketCount()J
    .locals 2

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    return-wide v0
.end method

.method public greylist-max-o getPacketErrorCount()J
    .locals 2

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    return-wide v0
.end method

.method public greylist-max-o getTheoreticalLatency()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    return v0
.end method

.method public greylist-max-o getTheoreticalRxBandwidth()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    return v0
.end method

.method public greylist-max-o getTheoreticalTxBandwidth()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    return v0
.end method

.method protected greylist-max-o initializeFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return-void
.end method

.method public greylist-max-r setDataSampleDuration(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return-void
.end method

.method public greylist-max-r setLastDataSampleTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    return-void
.end method

.method public greylist-max-o setNetworkType(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    return-void
.end method

.method public greylist-max-o setNormalizedSignalStrength(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    return-void
.end method

.method public greylist-max-r setPacketCount(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    return-void
.end method

.method public greylist-max-r setPacketErrorCount(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    return-void
.end method

.method public greylist-max-o setTheoreticalLatency(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    return-void
.end method

.method public greylist-max-o setTheoreticalRxBandwidth(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    return-void
.end method

.method public greylist-max-o setTheoreticalTxBandwidth(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;II)V
    .locals 2

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
