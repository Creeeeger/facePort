.class public Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;
.super Ljava/lang/Object;
.source "OpPriorityByDataSize.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/OpPriorityCompute;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compute(Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/format/Shape;)F
    .locals 2

    invoke-interface {p2}, Lcom/samsung/android/sume/core/format/Shape;->getDimension()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/Shape;->getDimension()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public blacklist compute(Lcom/samsung/android/sume/core/types/ColorFormat;Lcom/samsung/android/sume/core/types/ColorFormat;)F
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/types/ColorFormat;->bytePerPixel()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/ColorFormat;->bytePerPixel()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public blacklist compute(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)F
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/types/DataType;->size()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->size()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method
