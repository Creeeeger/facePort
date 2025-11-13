.class public Landroid/net/MobileLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "MobileLinkQualityInfo.java"


# instance fields
.field private greylist-max-o mCdmaDbm:I

.field private greylist-max-o mCdmaEcio:I

.field private greylist-max-o mEvdoDbm:I

.field private greylist-max-o mEvdoEcio:I

.field private greylist-max-o mEvdoSnr:I

.field private greylist-max-o mGsmErrorRate:I

.field private greylist-max-o mLteCqi:I

.field private greylist-max-o mLteRsrp:I

.field private greylist-max-o mLteRsrq:I

.field private greylist-max-o mLteRssnr:I

.field private greylist-max-o mLteSignalStrength:I

.field private greylist-max-o mMobileNetworkType:I

.field private greylist-max-o mRssi:I


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-void
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/net/MobileLinkQualityInfo;
    .locals 2

    new-instance v0, Landroid/net/MobileLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/net/MobileLinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getCdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return v0
.end method

.method public greylist-max-o getCdmaEcio()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return v0
.end method

.method public greylist-max-o getEvdoDbm()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return v0
.end method

.method public greylist-max-o getEvdoEcio()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return v0
.end method

.method public greylist-max-o getEvdoSnr()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return v0
.end method

.method public greylist-max-o getGsmErrorRate()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return v0
.end method

.method public greylist-max-o getLteCqi()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return v0
.end method

.method public greylist-max-o getLteRsrp()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return v0
.end method

.method public greylist-max-o getLteRsrq()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return v0
.end method

.method public greylist-max-o getLteRssnr()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return v0
.end method

.method public greylist-max-o getLteSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return v0
.end method

.method public greylist-max-r getMobileNetworkType()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return v0
.end method

.method public greylist-max-o getRssi()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public greylist-max-r setCdmaDbm(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return-void
.end method

.method public greylist-max-r setCdmaEcio(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return-void
.end method

.method public greylist-max-r setEvdoDbm(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return-void
.end method

.method public greylist-max-r setEvdoEcio(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return-void
.end method

.method public greylist-max-r setEvdoSnr(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return-void
.end method

.method public greylist-max-r setGsmErrorRate(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return-void
.end method

.method public greylist-max-r setLteCqi(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-void
.end method

.method public greylist-max-r setLteRsrp(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return-void
.end method

.method public greylist-max-r setLteRsrq(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return-void
.end method

.method public greylist-max-r setLteRssnr(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return-void
.end method

.method public greylist-max-r setLteSignalStrength(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return-void
.end method

.method public greylist-max-r setMobileNetworkType(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return-void
.end method

.method public greylist-max-r setRssi(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
