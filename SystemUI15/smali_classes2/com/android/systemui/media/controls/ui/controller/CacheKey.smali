.class public final Lcom/android/systemui/media/controls/ui/controller/CacheKey;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public expansion:F

.field public gutsVisible:Z

.field public heightMeasureSpec:I

.field public widthMeasureSpec:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/controls/ui/controller/CacheKey;-><init>(IIFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->widthMeasureSpec:I

    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->heightMeasureSpec:I

    iput p3, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->expansion:F

    iput-boolean p4, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->gutsVisible:Z

    return-void
.end method

.method public synthetic constructor <init>(IIFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, -0x1

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/controls/ui/controller/CacheKey;-><init>(IIFZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/controller/CacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/controller/CacheKey;

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->widthMeasureSpec:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->widthMeasureSpec:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->heightMeasureSpec:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->heightMeasureSpec:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->expansion:F

    iget v3, p1, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->expansion:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->gutsVisible:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->gutsVisible:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->widthMeasureSpec:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->heightMeasureSpec:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->expansion:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->gutsVisible:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->widthMeasureSpec:I

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->heightMeasureSpec:I

    iget v2, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->expansion:F

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->gutsVisible:Z

    const-string v3, "CacheKey(widthMeasureSpec="

    const-string v4, ", heightMeasureSpec="

    const-string v5, ", expansion="

    invoke-static {v0, v1, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gutsVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
