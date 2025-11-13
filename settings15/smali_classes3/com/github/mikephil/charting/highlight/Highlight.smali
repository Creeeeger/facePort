.class public final Lcom/github/mikephil/charting/highlight/Highlight;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final axis:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field public final mDataSetIndex:I

.field public mDrawX:F

.field public mDrawY:F

.field public final mStackIndex:I

.field public final mX:F

.field public final mXPx:F

.field public final mY:F

.field public final mYPx:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    iput p2, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    return-void
.end method

.method public constructor <init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput p6, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    return-void
.end method

.method public constructor <init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    iput p2, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    iput p3, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mXPx:F

    iput p4, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mYPx:F

    iput p5, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    iput-object p6, p0, Lcom/github/mikephil/charting/highlight/Highlight;->axis:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-void
.end method


# virtual methods
.method public final equalTo(Lcom/github/mikephil/charting/highlight/Highlight;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    iget p1, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Highlight, x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dataSetIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stackIndex (only stacked barentry): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
