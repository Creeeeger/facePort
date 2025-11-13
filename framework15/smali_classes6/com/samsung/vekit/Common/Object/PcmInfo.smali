.class public Lcom/samsung/vekit/Common/Object/PcmInfo;
.super Ljava/lang/Object;
.source "PcmInfo.java"


# instance fields
.field private blacklist data:[F

.field private blacklist endTimeMs:J

.field private blacklist key:Ljava/lang/String;

.field private blacklist sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

.field private blacklist size:I

.field private blacklist startTimeMs:J


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->key:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->startTimeMs:J

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->endTimeMs:J

    sget-object v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;->FIRST:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->size:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->data:[F

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;JJLcom/samsung/vekit/Common/Type/PcmSampleType;I[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->key:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->startTimeMs:J

    iput-wide p4, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->endTimeMs:J

    iput-object p6, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    iput p7, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->size:I

    invoke-static {p8, p7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->data:[F

    return-void
.end method


# virtual methods
.method public blacklist getData()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->data:[F

    return-object v0
.end method

.method public blacklist getEndTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->endTimeMs:J

    return-wide v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSampleType()Lcom/samsung/vekit/Common/Type/PcmSampleType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    return-object v0
.end method

.method public blacklist getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->size:I

    return v0
.end method

.method public blacklist getStartTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->startTimeMs:J

    return-wide v0
.end method

.method public blacklist setData([F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->data:[F

    return-void
.end method

.method public blacklist setEndTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->endTimeMs:J

    return-void
.end method

.method public blacklist setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->key:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSampleType(Lcom/samsung/vekit/Common/Type/PcmSampleType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    return-void
.end method

.method public blacklist setSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->size:I

    return-void
.end method

.method public blacklist setStartTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->startTimeMs:J

    return-void
.end method
