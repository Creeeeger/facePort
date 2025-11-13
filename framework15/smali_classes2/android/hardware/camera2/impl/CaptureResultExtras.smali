.class public Landroid/hardware/camera2/impl/CaptureResultExtras;
.super Ljava/lang/Object;
.source "CaptureResultExtras.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o afTriggerId:I

.field private blacklist errorPhysicalCameraId:Ljava/lang/String;

.field private greylist-max-o errorStreamId:I

.field private greylist-max-o frameNumber:J

.field private blacklist hasReadoutTimestamp:Z

.field private blacklist lastCompletedRegularFrameNumber:J

.field private blacklist lastCompletedReprocessFrameNumber:J

.field private blacklist lastCompletedZslFrameNumber:J

.field private greylist-max-o partialResultCount:I

.field private greylist-max-o precaptureTriggerId:I

.field private blacklist readoutTimestamp:J

.field private greylist-max-o requestId:I

.field private greylist-max-o subsequenceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/camera2/impl/CaptureResultExtras$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CaptureResultExtras$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIJIILjava/lang/String;JJJZJ)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    move/from16 v2, p2

    iput v2, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    move/from16 v4, p4

    iput v4, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    move/from16 v7, p7

    iput v7, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    move/from16 v8, p8

    iput v8, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/CaptureResultExtras-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAfTriggerId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    return v0
.end method

.method public blacklist getErrorPhysicalCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getErrorStreamId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    return v0
.end method

.method public greylist-max-o getFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedRegularFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedReprocessFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedZslFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    return-wide v0
.end method

.method public greylist-max-o getPartialResultCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    return v0
.end method

.method public greylist-max-o getPrecaptureTriggerId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    return v0
.end method

.method public blacklist getReadoutTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getRequestId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    return v0
.end method

.method public greylist-max-o getSubsequenceId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    return v0
.end method

.method public blacklist hasReadoutTimestamp()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    :cond_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_1
    return-void
.end method
