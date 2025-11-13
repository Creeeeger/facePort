.class public Lsamsung/uwb/RangingOwrAoaMeasures;
.super Ljava/lang/Object;
.source "RangingOwrAoaMeasures.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RangingOwrAoaMeasures;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blockIndex:I

.field public mAoaAzimuth:F

.field public mAoaAzimuthFom:I

.field public mAoaElevation:F

.field public mAoaElevationFom:I

.field public mFrameSequenceNumber:I

.field public mMacAddress:[B

.field public mNLoS:I

.field private mPdoa:[F

.field public mPdoaFirst:F

.field public mPdoaFirstIndex:I

.field private mPdoaIndex:[I

.field public mPdoaSecond:F

.field public mPdoaSecondIndex:I

.field public mRssiRX1:F

.field public mRssiRX2:F

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Lsamsung/uwb/RangingOwrAoaMeasures$1;

    invoke-direct {v0}, Lsamsung/uwb/RangingOwrAoaMeasures$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RangingOwrAoaMeasures;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mPdoaFirst:F

    .line 34
    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mPdoaSecond:F

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mPdoaFirstIndex:I

    .line 36
    iput v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mPdoaSecondIndex:I

    .line 39
    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mRssiRX1:F

    .line 40
    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mRssiRX2:F

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mMacAddress:[B

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->status:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mNLoS:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mFrameSequenceNumber:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->blockIndex:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaAzimuth:F

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaAzimuthFom:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaElevation:F

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaElevationFom:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mRssiRX1:F

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mRssiRX2:F

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mPdoa:[F

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mPdoaIndex:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingOwrAoaMeasures {  MacAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mMacAddress:[B

    .line 228
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NLoS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mNLoS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FrameSequenceNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mFrameSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", BlockIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->blockIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AoaAzimuth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaAzimuth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", AoaAzimuthFom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaAzimuthFom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AoaElevation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaElevation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", AoaElevationFom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaElevationFom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 182
    iget-object p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mMacAddress:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 183
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mNLoS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mFrameSequenceNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->blockIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaAzimuth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 188
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaAzimuthFom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaElevation:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 190
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mAoaElevationFom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mRssiRX1:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 192
    iget p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mRssiRX2:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 193
    iget-object p2, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mPdoa:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 194
    iget-object p0, p0, Lsamsung/uwb/RangingOwrAoaMeasures;->mPdoaIndex:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
