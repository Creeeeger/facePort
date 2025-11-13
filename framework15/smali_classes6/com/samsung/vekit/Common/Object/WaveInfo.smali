.class public Lcom/samsung/vekit/Common/Object/WaveInfo;
.super Ljava/lang/Object;
.source "WaveInfo.java"


# instance fields
.field private blacklist degree:F

.field private blacklist height:I

.field private blacklist speed:F

.field private blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->height:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->width:I

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->speed:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->degree:F

    return-void
.end method

.method public constructor blacklist <init>(IIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->height:I

    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->width:I

    iput p3, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->speed:F

    iput p4, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->degree:F

    return-void
.end method


# virtual methods
.method public blacklist getDegree()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->degree:F

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->height:I

    return v0
.end method

.method public blacklist getSpeed()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->speed:F

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->width:I

    return v0
.end method

.method public blacklist setDegree(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->degree:F

    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->height:I

    return-void
.end method

.method public blacklist setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->speed:F

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->width:I

    return-void
.end method
