.class public Lcom/samsung/vekit/Common/Object/IntensityInfo;
.super Ljava/lang/Object;
.source "IntensityInfo.java"


# instance fields
.field blacklist base:I

.field blacklist max:I

.field blacklist min:I

.field blacklist step:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->min:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->max:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->base:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->step:I

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->min:I

    iput p2, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->max:I

    iput p3, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->base:I

    iput p4, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->step:I

    return-void
.end method


# virtual methods
.method public blacklist getBase()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->base:I

    return v0
.end method

.method public blacklist getMax()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->max:I

    return v0
.end method

.method public blacklist getMin()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->min:I

    return v0
.end method

.method public blacklist getStep()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->step:I

    return v0
.end method

.method public blacklist setBase(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->base:I

    return-void
.end method

.method public blacklist setMax(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->max:I

    return-void
.end method

.method public blacklist setMin(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->min:I

    return-void
.end method

.method public blacklist setStep(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->step:I

    return-void
.end method
