.class public Lcom/sec/ims/cmc/CmcRecordingInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcRecordingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAudioChannels:I

.field mAudioEncoder:I

.field mAudioEncodingBitRate:I

.field mAudioSamplingRate:I

.field mAudioSource:I

.field mAuthor:Ljava/lang/String;

.field mDurationInterval:I

.field mFileSizeInterval:J

.field mMaxDuration:I

.field mMaxFileSize:J

.field mOutputFormat:I

.field mOutputPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/cmc/CmcRecordingInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcRecordingInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAudioChannels()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    return p0
.end method

.method public getAudioEncoder()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    return p0
.end method

.method public getAudioEncodingBitRate()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    return p0
.end method

.method public getAudioSamplingRate()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    return p0
.end method

.method public getAudioSource()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    return p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    return-object p0
.end method

.method public getDurationInterval()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    return p0
.end method

.method public getFileSizeInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    return-wide v0
.end method

.method public getMaxDuration()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    return p0
.end method

.method public getMaxFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    return-wide v0
.end method

.method public getOutputFormat()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    return p0
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioChannels(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    return-void
.end method

.method public setDurationInterval(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    return-void
.end method

.method public setFileSizeInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    return-void
.end method

.method public setMaxDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    return-void
.end method

.method public setOutputFormat(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CmcRecordingInfo = {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioSource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    const-string v3, ", mOutputFormat : "

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    const-string v3, ", mMaxFileSize : "

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", mMaxDuration : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    const-string v3, ", mOutputPath : "

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", mAudioEncodingBitRate : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    const-string v3, ", mAudioChannels : "

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    const-string v3, ", mAudioSamplingRate : "

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    const-string v3, ", mAudioEncoder : "

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    const-string v3, ", mDurationInterval : "

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    const-string v3, ", mFileSizeInterval : "

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", mAuthor : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mMaxDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mOutputPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncodingBitRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioChannels:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioSamplingRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAudioEncoder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mDurationInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mFileSizeInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/sec/ims/cmc/CmcRecordingInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
