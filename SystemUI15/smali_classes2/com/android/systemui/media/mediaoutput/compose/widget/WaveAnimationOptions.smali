.class public final Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animateWave:Z

.field public final animationSpeedMs:I

.field public final flatLineOnDrag:Z

.field public final reverse:Z


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

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;-><init>(ZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->reverse:Z

    iput-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->flatLineOnDrag:Z

    iput-boolean p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animateWave:Z

    iput p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animationSpeedMs:I

    return-void
.end method

.method public synthetic constructor <init>(ZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/16 p4, 0x5dc

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;-><init>(ZZZI)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    iget-boolean v1, p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->reverse:Z

    iget-boolean v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->reverse:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->flatLineOnDrag:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->flatLineOnDrag:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animateWave:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animateWave:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animationSpeedMs:I

    iget p1, p1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animationSpeedMs:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->reverse:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->flatLineOnDrag:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animateWave:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animationSpeedMs:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WaveAnimationOptions(reverse="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->reverse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flatLineOnDrag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->flatLineOnDrag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animateWave="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animateWave:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animationSpeedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animationSpeedMs:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
