.class public final Landroidx/compose/ui/text/android/style/PlaceholderSpan;
.super Landroid/text/style/ReplacementSpan;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public final height:F

.field public heightPx:I

.field public final heightUnit:I

.field public isLaidOut:Z

.field public final pxPerSp:F

.field public final verticalAlign:I

.field public final width:F

.field public widthPx:I

.field public final widthUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FIFIFI)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    iput p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthUnit:I

    iput p3, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    iput p4, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightUnit:I

    iput p5, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    iput p6, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public final getHeightPx()I
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PlaceholderSpan is not laid out yet."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p4

    :goto_1
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-le v0, p1, :cond_d

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthUnit:I

    const-string v0, "Unsupported unit."

    if-eqz p1, :cond_3

    if-ne p1, p2, :cond_2

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    mul-float/2addr p1, p3

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    iget v1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    mul-float/2addr p1, v1

    :goto_2
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p1, v1

    float-to-int p1, p1

    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightUnit:I

    if-eqz p1, :cond_5

    if-ne p1, p2, :cond_4

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    mul-float/2addr p1, p3

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_3
    double-to-float p1, p1

    float-to-int p1, p1

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    iget p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    goto :goto_3

    :goto_4
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    if-eqz p5, :cond_c

    iget-object p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_6

    move-object p2, p1

    goto :goto_5

    :cond_6
    move-object p2, p4

    :goto_5
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-eqz p1, :cond_7

    move-object p3, p1

    goto :goto_6

    :cond_7
    move-object p3, p4

    :goto_6
    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move-object p1, p4

    :goto_7
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown verticalAlign."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sub-int/2addr p3, p2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p1

    if-ge p3, p1, :cond_9

    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p3, v0

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_8

    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p1

    sub-int/2addr p3, p1

    if-le p2, p3, :cond_9

    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_8

    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le p1, p2, :cond_9

    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_8

    :pswitch_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p1

    neg-int p1, p1

    if-le p2, p1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result p1

    neg-int p1, p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_9
    :goto_8
    iget-object p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_a

    goto :goto_9

    :cond_a
    move-object p1, p4

    :goto_9
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_b

    move-object p4, p1

    :cond_b
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result p0

    return p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid fontMetrics: line height can not be negative."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getWidthPx()I
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PlaceholderSpan is not laid out yet."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
