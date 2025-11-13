.class public Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;
.super Ljava/lang/Object;
.source "UwbDownLinkTDoAMeasurementData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActiveRangingRound:[B

.field public mAnchorLocation:[B

.field public mAoaAzimuth:F

.field public mAoaAzimuthFOM:I

.field public mAoaElevation:F

.field public mAoaElevationFOM:I

.field public mBlockIndex:I

.field public mCfo:F

.field public mCfoAnchor:F

.field public mInitiatorResponderTOF:I

.field public mMacAddress:[B

.field public mMessageControl:I

.field public mMessageType:I

.field public mNlos:I

.field public mRangingStatus:I

.field public mReplyTimeOfInitiator:J

.field public mReplyTimeOfResponder:J

.field public mRoundIndex:I

.field public mRssi:F

.field public mRxTimeStamp:[B

.field public mTxTimeStamp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mMacAddress:[B

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRangingStatus:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mMessageType:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mMessageControl:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mBlockIndex:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRoundIndex:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mNlos:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaAzimuth:F

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaAzimuthFOM:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaElevation:F

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaElevationFOM:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRssi:F

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mTxTimeStamp:[B

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRxTimeStamp:[B

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mCfoAnchor:F

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mCfo:F

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mReplyTimeOfInitiator:J

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mReplyTimeOfResponder:J

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mInitiatorResponderTOF:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAnchorLocation:[B

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mActiveRangingRound:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbDownLinkTDoAMeasurementData {  macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mMacAddress:[B

    .line 224
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rangingStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRangingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mMessageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageControl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mMessageControl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blockIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mBlockIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roundIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRoundIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nLos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mNlos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AoaAzimuth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaAzimuth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", AoaAzimuthFOM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaAzimuthFOM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AoaElevation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaElevation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", AoaElevationFOM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaElevationFOM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRssi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", txTimeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mTxTimeStamp:[B

    .line 236
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rxTimeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRxTimeStamp:[B

    .line 237
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tdoaCFOAnchor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mCfoAnchor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tdoaCFO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mCfo:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", replyTimeOfInitiator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mReplyTimeOfInitiator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", replyTimeOfResponder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mReplyTimeOfResponder:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", initiatorResponderTOF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mInitiatorResponderTOF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anchorLocation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAnchorLocation:[B

    .line 243
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activeRangingRound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mActiveRangingRound:[B

    .line 244
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 162
    iget-object p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mMacAddress:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 163
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRangingStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mMessageType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mMessageControl:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mBlockIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRoundIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mNlos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaAzimuth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 170
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaAzimuthFOM:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaElevation:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 172
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAoaElevationFOM:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRssi:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 174
    iget-object p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mTxTimeStamp:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 175
    iget-object p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mRxTimeStamp:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 176
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mCfoAnchor:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 177
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mCfo:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 178
    iget-wide v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mReplyTimeOfInitiator:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget-wide v0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mReplyTimeOfResponder:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mInitiatorResponderTOF:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object p2, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mAnchorLocation:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 182
    iget-object p0, p0, Lsamsung/uwb/UwbDownLinkTDoAMeasurementData;->mActiveRangingRound:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
