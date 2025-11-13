.class public Lcom/samsung/vekit/Common/Object/PVFrameInfo;
.super Ljava/lang/Object;
.source "PVFrameInfo.java"


# instance fields
.field blacklist blurLevel:I

.field blacklist detectionInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVDetectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist deviceRoll:I

.field blacklist focusX:I

.field blacklist focusY:I

.field blacklist mainObjectId:I

.field blacklist objectCount:I

.field blacklist timestamp:J

.field blacklist version:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->version:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->timestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->deviceRoll:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusX:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusY:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->objectCount:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->mainObjectId:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->blurLevel:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JIIIIIILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIIIIII",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVDetectionInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->version:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->timestamp:J

    iput p4, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->deviceRoll:I

    iput p5, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusX:I

    iput p6, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusY:I

    iput p7, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->objectCount:I

    iput p8, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->mainObjectId:I

    iput p9, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->blurLevel:I

    iput-object p10, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist findDetectionInfo(I)Lcom/samsung/vekit/Common/Object/PVDetectionInfo;
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;

    iget v2, v1, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBlurLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->blurLevel:I

    return v0
.end method

.method public blacklist getDetectionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/PVDetectionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceRoll()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->deviceRoll:I

    return v0
.end method

.method public blacklist getFocusX()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusX:I

    return v0
.end method

.method public blacklist getFocusY()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusY:I

    return v0
.end method

.method public blacklist getMainObjectId()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->mainObjectId:I

    return v0
.end method

.method public blacklist getObjectCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->objectCount:I

    return v0
.end method

.method public blacklist getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->timestamp:J

    return-wide v0
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setBlurLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->blurLevel:I

    return-void
.end method

.method public blacklist setDetectionInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVDetectionInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public blacklist setDeviceRoll(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->deviceRoll:I

    return-void
.end method

.method public blacklist setFocusX(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusX:I

    return-void
.end method

.method public blacklist setFocusY(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusY:I

    return-void
.end method

.method public blacklist setMainObjectId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->mainObjectId:I

    return-void
.end method

.method public blacklist setObjectCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->objectCount:I

    return-void
.end method

.method public blacklist setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->timestamp:J

    return-void
.end method

.method public blacklist setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->version:Ljava/lang/String;

    return-void
.end method
