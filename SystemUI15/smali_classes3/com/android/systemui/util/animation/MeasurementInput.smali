.class public final Lcom/android/systemui/util/animation/MeasurementInput;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private heightMeasureSpec:I

.field private widthMeasureSpec:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    iput p2, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/animation/MeasurementInput;IIILjava/lang/Object;)Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/animation/MeasurementInput;->copy(II)Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    return p0
.end method

.method public final copy(II)Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/animation/MeasurementInput;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/animation/MeasurementInput;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/animation/MeasurementInput;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/animation/MeasurementInput;

    iget v1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    iget v3, p1, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    iget p1, p1, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    return p0
.end method

.method public final getHeightMeasureSpec()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    return p0
.end method

.method public final getWidthMeasureSpec()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setHeightMeasureSpec(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    return-void
.end method

.method public final setWidthMeasureSpec(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    const-string v1, "MeasurementInput(widthMeasureSpec="

    const-string v2, ", heightMeasureSpec="

    const-string v3, ")"

    invoke-static {v0, p0, v1, v2, v3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
