.class public final Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field public ascent:I

.field public descent:I

.field public final endIndex:I

.field public firstAscent:I

.field public firstAscentDiff:I

.field public lastDescent:I

.field public lastDescentDiff:I

.field public final lineHeight:F

.field public final startIndex:I

.field public final topRatio:F

.field public final trimFirstLineTop:Z

.field public final trimLastLineBottom:Z


# direct methods
.method public constructor <init>(FIIZZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->startIndex:I

    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    iput-boolean p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    iput-boolean p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    iput p6, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    const/4 p0, 0x0

    cmpg-float p0, p0, p6

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p6, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float p0, p6, p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "topRatio should be in [0..1] range or -1"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int p5, p1, p4

    if-gtz p5, :cond_0

    return-void

    :cond_0
    iget p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->startIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p5, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iget p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    if-ne p3, p5, :cond_2

    move v0, v1

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    iget-boolean p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    if-eqz p3, :cond_3

    return-void

    :cond_3
    iget p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    const/high16 p5, -0x80000000

    if-ne p3, p5, :cond_8

    sub-int/2addr p1, p4

    iget p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-float p3, p3

    float-to-int p3, p3

    sub-int p1, p3, p1

    iget p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    const/high16 p5, -0x40800000    # -1.0f

    cmpg-float p5, p4, p5

    if-nez p5, :cond_4

    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p4, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget p5, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p5, v1

    int-to-float p5, p5

    div-float/2addr p4, p5

    :cond_4
    if-gtz p1, :cond_5

    int-to-float p1, p1

    mul-float/2addr p1, p4

    float-to-double p4, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    :goto_1
    double-to-float p1, p4

    float-to-int p1, p1

    goto :goto_2

    :cond_5
    int-to-float p1, p1

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float/2addr p5, p4

    mul-float/2addr p5, p1

    float-to-double p4, p5

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    goto :goto_1

    :goto_2
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p1, p4

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    sub-int p3, p1, p3

    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    iget-boolean p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    if-eqz p5, :cond_6

    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_6
    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    iget-boolean p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    if-eqz p5, :cond_7

    move p1, p4

    :cond_7
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    iget p5, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p5, p3

    iput p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    sub-int/2addr p1, p4

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    :cond_8
    if-eqz p2, :cond_9

    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    goto :goto_3

    :cond_9
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    :goto_3
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-eqz v0, :cond_a

    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    goto :goto_4

    :cond_a
    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    :goto_4
    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return-void
.end method
