.class public Landroid/net/WifiLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "WifiLinkQualityInfo.java"


# instance fields
.field private greylist-max-o mBssid:Ljava/lang/String;

.field private greylist-max-o mRssi:I

.field private greylist-max-o mTxBad:J

.field private greylist-max-o mTxGood:J

.field private greylist-max-o mType:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    iput-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-void
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/net/WifiLinkQualityInfo;
    .locals 3

    new-instance v0, Landroid/net/WifiLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/WifiLinkQualityInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/net/WifiLinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRssi()I
    .locals 1

    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public greylist-max-o getTxBad()J
    .locals 2

    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-wide v0
.end method

.method public greylist-max-o getTxGood()J
    .locals 2

    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-wide v0
.end method

.method public greylist-max-o getType()I
    .locals 1

    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return v0
.end method

.method public greylist-max-o setBssid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setRssi(I)V
    .locals 0

    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return-void
.end method

.method public greylist-max-o setTxBad(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-void
.end method

.method public greylist-max-o setTxGood(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-void
.end method

.method public greylist-max-o setType(I)V
    .locals 0

    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x2

    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
