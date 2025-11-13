.class public final Lcom/caverock/androidsvg/SVG$Box;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public height:F

.field public minX:F

.field public minY:F

.field public width:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iput p3, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iput p4, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget p1, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return-void
.end method


# virtual methods
.method public final maxX()F
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    add-float/2addr v0, p0

    return v0
.end method

.method public final maxY()F
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    add-float/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
