.class public final Lcom/android/systemui/media/SecSeekBarViewModel$Progress;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final duration:I

.field public final elapsedTime:Ljava/lang/Integer;

.field public final enabled:Z

.field public final listening:Z

.field public final playing:Z

.field public final scrubbing:Z

.field public final seekAvailable:Z


# direct methods
.method public constructor <init>(ZZZZLjava/lang/Integer;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->enabled:Z

    iput-boolean p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->seekAvailable:Z

    iput-boolean p3, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->playing:Z

    iput-boolean p4, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->scrubbing:Z

    iput-object p5, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    iput p6, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->duration:I

    iput-boolean p7, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->listening:Z

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZLjava/lang/Integer;ZI)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;
    .locals 9

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->enabled:Z

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->seekAvailable:Z

    iget-boolean v4, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->playing:Z

    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->scrubbing:Z

    :cond_1
    move v5, p1

    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    :cond_2
    move-object v6, p2

    iget v7, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->duration:I

    and-int/lit8 p1, p4, 0x40

    if-eqz p1, :cond_3

    iget-boolean p3, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->listening:Z

    :cond_3
    move v8, p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;IZ)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    iget-boolean v1, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->enabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->enabled:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->seekAvailable:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->seekAvailable:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->playing:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->playing:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->scrubbing:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->scrubbing:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->duration:I

    iget v3, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->duration:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->listening:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->listening:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->seekAvailable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->playing:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->scrubbing:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->duration:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->listening:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Progress(enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", seekAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->seekAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->playing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scrubbing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->scrubbing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->listening:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
