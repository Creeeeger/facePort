.class public Lcom/samsung/vekit/Common/Object/PVKeyFrame;
.super Ljava/lang/Object;
.source "PVKeyFrame.java"


# instance fields
.field blacklist duration:J

.field blacklist endFrameNum:I

.field blacklist endTime:J

.field blacklist id:I

.field blacklist mainObjectId:I

.field blacklist startFrameNum:I

.field blacklist startTime:J

.field blacklist type:Lcom/samsung/vekit/Common/Type/PVFocusType;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startTime:J

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endTime:J

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->duration:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->mainObjectId:I

    sget-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->NONE:Lcom/samsung/vekit/Common/Type/PVFocusType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->type:Lcom/samsung/vekit/Common/Type/PVFocusType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->id:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    return-void
.end method

.method public constructor blacklist <init>(JJJILcom/samsung/vekit/Common/Type/PVFocusType;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startTime:J

    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endTime:J

    iput-wide p5, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->duration:J

    iput p7, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->mainObjectId:I

    iput-object p8, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->type:Lcom/samsung/vekit/Common/Type/PVFocusType;

    iput p9, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->id:I

    iput p10, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    iput p11, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    return-void
.end method


# virtual methods
.method public blacklist getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->duration:J

    return-wide v0
.end method

.method public blacklist getEndFrameNum()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    return v0
.end method

.method public blacklist getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endTime:J

    return-wide v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->id:I

    return v0
.end method

.method public blacklist getMainObjectId()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->mainObjectId:I

    return v0
.end method

.method public blacklist getStartFrameNum()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    return v0
.end method

.method public blacklist getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startTime:J

    return-wide v0
.end method

.method public blacklist getType()Lcom/samsung/vekit/Common/Type/PVFocusType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->type:Lcom/samsung/vekit/Common/Type/PVFocusType;

    return-object v0
.end method

.method public blacklist setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->duration:J

    return-void
.end method

.method public blacklist setEndFrameNum(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    return-void
.end method

.method public blacklist setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endTime:J

    return-void
.end method

.method public blacklist setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->id:I

    return-void
.end method

.method public blacklist setMainObjectId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->mainObjectId:I

    return-void
.end method

.method public blacklist setStartFrameNum(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    return-void
.end method

.method public blacklist setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startTime:J

    return-void
.end method

.method public blacklist setType(Lcom/samsung/vekit/Common/Type/PVFocusType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->type:Lcom/samsung/vekit/Common/Type/PVFocusType;

    return-void
.end method
