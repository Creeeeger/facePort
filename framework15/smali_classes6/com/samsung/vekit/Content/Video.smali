.class public Lcom/samsung/vekit/Content/Video;
.super Lcom/samsung/vekit/Content/Content;
.source "Video.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/AudioSegmentInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Content/Content;",
        "Lcom/samsung/vekit/Interface/AudioSegmentInterface<",
        "Lcom/samsung/vekit/Content/Video;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist audioSegmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist fileLength:J

.field private blacklist fileOffset:J

.field protected blacklist filePath:Ljava/lang/String;

.field private blacklist frameRate:I

.field protected blacklist is360:Z

.field private blacklist isSlowMotion:Z

.field private blacklist orientation:I

.field private blacklist recordingMode:I

.field private blacklist slowVideoInfo:Lcom/samsung/vekit/Common/Object/SlowVideoInfo;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->VIDEO:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->is360:Z

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->isSlowMotion:Z

    iput v0, p0, Lcom/samsung/vekit/Content/Video;->recordingMode:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/vekit/Content/Video;->frameRate:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Content/Video;->fileOffset:J

    iput-wide v0, p0, Lcom/samsung/vekit/Content/Video;->fileLength:J

    return-void
.end method


# virtual methods
.method public blacklist addAudioSegment(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist clearAudioSegment()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public blacklist getAudioSegment(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/AudioSegment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/AudioSegment;

    return-object v0
.end method

.method public blacklist getAudioSegmentMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getAudioSegmentMapSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFileLength()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Content/Video;->fileLength:J

    return-wide v0
.end method

.method public blacklist getFileOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Content/Video;->fileOffset:J

    return-wide v0
.end method

.method public blacklist getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFrameRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Content/Video;->frameRate:I

    return v0
.end method

.method public blacklist getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Content/Video;->orientation:I

    return v0
.end method

.method public blacklist getRecordingMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Content/Video;->recordingMode:I

    return v0
.end method

.method public blacklist getSlowVideoInfo()Lcom/samsung/vekit/Common/Object/SlowVideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->slowVideoInfo:Lcom/samsung/vekit/Common/Object/SlowVideoInfo;

    return-object v0
.end method

.method public blacklist is360()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->is360:Z

    return v0
.end method

.method public blacklist isSlowMotion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->isSlowMotion:Z

    return v0
.end method

.method public blacklist removeAudioSegment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist set360(Z)Lcom/samsung/vekit/Content/Video;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Content/Video;->is360:Z

    return-object p0
.end method

.method public blacklist setAudioSegmentMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    return-void
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Video;->setDuration(J)Lcom/samsung/vekit/Content/Video;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Content/Video;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    return-object v0
.end method

.method public blacklist setFileLength(J)Lcom/samsung/vekit/Content/Video;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Content/Video;->fileLength:J

    return-object p0
.end method

.method public blacklist setFileOffset(J)Lcom/samsung/vekit/Content/Video;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Content/Video;->fileOffset:J

    return-object p0
.end method

.method public blacklist setFilePath(Ljava/lang/String;)Lcom/samsung/vekit/Content/Video;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Content/Video;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setFrameRate(I)Lcom/samsung/vekit/Content/Video;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Content/Video;->frameRate:I

    return-object p0
.end method

.method public bridge synthetic blacklist setHeight(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Video;->setHeight(I)Lcom/samsung/vekit/Content/Video;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setHeight(I)Lcom/samsung/vekit/Content/Video;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setHeight(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    return-object v0
.end method

.method public blacklist setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Content/Video;->orientation:I

    return-void
.end method

.method public blacklist setRecordingMode(I)Lcom/samsung/vekit/Content/Video;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Content/Video;->recordingMode:I

    return-object p0
.end method

.method public blacklist setSlowVideoInfo(Lcom/samsung/vekit/Common/Object/SlowVideoInfo;)Lcom/samsung/vekit/Content/Video;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Content/Video;->slowVideoInfo:Lcom/samsung/vekit/Common/Object/SlowVideoInfo;

    return-object p0
.end method

.method public bridge synthetic blacklist setWidth(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Video;->setWidth(I)Lcom/samsung/vekit/Content/Video;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setWidth(I)Lcom/samsung/vekit/Content/Video;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setWidth(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    return-object v0
.end method

.method public blacklist setisSlowMotion(Z)Lcom/samsung/vekit/Content/Video;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Content/Video;->isSlowMotion:Z

    return-object p0
.end method
