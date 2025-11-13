.class public Lcom/samsung/vekit/Common/Object/ExportInfo;
.super Ljava/lang/Object;
.source "ExportInfo.java"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist bFrameMode:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

.field private blacklist bitDepth:I

.field private blacklist bitRate:I

.field private blacklist contentColorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

.field private blacklist contentOrigin:Lcom/samsung/vekit/Common/Type/ContentOriginType;

.field private blacklist fd:Ljava/io/FileDescriptor;

.field private blacklist frameRate:I

.field private blacklist height:I

.field private blacklist orientation:I

.field private blacklist preserveAudio:Z

.field private blacklist recordingMode:I

.field private blacklist referenceInfo:Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

.field private blacklist rewriteMode:Z

.field private blacklist videocodectype:Lcom/samsung/vekit/Common/Type/VideoCodecType;

.field private blacklist width:I


# direct methods
.method public constructor blacklist <init>(IILjava/io/FileDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExportInfo"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitDepth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->frameRate:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->orientation:I

    sget-object v1, Lcom/samsung/vekit/Common/Type/VideoCodecType;->AVC:Lcom/samsung/vekit/Common/Type/VideoCodecType;

    iput-object v1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->videocodectype:Lcom/samsung/vekit/Common/Type/VideoCodecType;

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->recordingMode:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitRate:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->preserveAudio:Z

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentColorType;->SDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    iput-object v1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentColorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->rewriteMode:Z

    sget-object v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->AUTO:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bFrameMode:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;->UNKNOWN:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentOrigin:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    new-instance v0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->referenceInfo:Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->width:I

    iput p2, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->height:I

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->fd:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public blacklist getBFrameMode()Lcom/samsung/vekit/Common/Type/FrameEncodeType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bFrameMode:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    return-object v0
.end method

.method public blacklist getBitDepth()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitDepth:I

    return v0
.end method

.method public blacklist getBitRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitRate:I

    return v0
.end method

.method public blacklist getContentColorType()Lcom/samsung/vekit/Common/Type/ContentColorType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentColorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-object v0
.end method

.method public blacklist getContentOrigin()Lcom/samsung/vekit/Common/Type/ContentOriginType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentOrigin:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    return-object v0
.end method

.method public blacklist getFd()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getFrameRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->frameRate:I

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->height:I

    return v0
.end method

.method public blacklist getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->orientation:I

    return v0
.end method

.method public blacklist getPreserveAudio()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->preserveAudio:Z

    return v0
.end method

.method public blacklist getRecordingMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->recordingMode:I

    return v0
.end method

.method public blacklist getReferenceInfo()Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->referenceInfo:Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

    return-object v0
.end method

.method public blacklist getRewriteMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->rewriteMode:Z

    return v0
.end method

.method public blacklist getVideoCodecType()Lcom/samsung/vekit/Common/Type/VideoCodecType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->videocodectype:Lcom/samsung/vekit/Common/Type/VideoCodecType;

    return-object v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->width:I

    return v0
.end method

.method public blacklist setBFrameMode(Lcom/samsung/vekit/Common/Type/FrameEncodeType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bFrameMode:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    return-void
.end method

.method public blacklist setBitDepth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitDepth:I

    return-void
.end method

.method public blacklist setBitRate(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitRate:I

    return-void
.end method

.method public blacklist setContentColorType(Lcom/samsung/vekit/Common/Type/ContentColorType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentColorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-void
.end method

.method public blacklist setContentOrigin(Lcom/samsung/vekit/Common/Type/ContentOriginType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentOrigin:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    return-void
.end method

.method public blacklist setFd(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public blacklist setFrameRate(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->frameRate:I

    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->height:I

    return-void
.end method

.method public blacklist setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->orientation:I

    return-void
.end method

.method public blacklist setPreserveAudio(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->preserveAudio:Z

    return-void
.end method

.method public blacklist setRecordingMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->recordingMode:I

    return-void
.end method

.method public blacklist setReferenceInfo(Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->referenceInfo:Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

    return-void
.end method

.method public blacklist setRewriteMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->rewriteMode:Z

    return-void
.end method

.method public blacklist setVideoCodecType(Lcom/samsung/vekit/Common/Type/VideoCodecType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->videocodectype:Lcom/samsung/vekit/Common/Type/VideoCodecType;

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->width:I

    return-void
.end method
