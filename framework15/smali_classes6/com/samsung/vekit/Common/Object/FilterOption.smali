.class public Lcom/samsung/vekit/Common/Object/FilterOption;
.super Ljava/lang/Object;
.source "FilterOption.java"


# instance fields
.field private blacklist contrast:F

.field private blacklist grain:F

.field private blacklist saturation:F

.field private blacklist temperature:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    return-void
.end method

.method public constructor blacklist <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    iput p2, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    iput p3, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    iput p4, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    iget v0, p1, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    iget v0, p1, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    iget v0, p1, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    return-void
.end method


# virtual methods
.method public blacklist getContrast()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    return v0
.end method

.method public blacklist getGrain()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    return v0
.end method

.method public blacklist getSaturation()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    return v0
.end method

.method public blacklist getTemperature()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    return v0
.end method

.method public blacklist setContrast(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    return-void
.end method

.method public blacklist setGrain(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    return-void
.end method

.method public blacklist setSaturation(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    return-void
.end method

.method public blacklist setTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    return-void
.end method
