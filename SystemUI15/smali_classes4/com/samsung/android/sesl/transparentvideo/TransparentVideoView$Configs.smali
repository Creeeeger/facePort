.class public final Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final autoPauseResume:Z

.field public final autoRelease:Z

.field public final hintFps:Ljava/lang/Float;

.field public final id:Ljava/lang/String;

.field public final reinforcedEdgeAmount:F

.field public final thumbnail:Landroid/graphics/Bitmap;

.field public final updateLayoutByMedia:Z


# direct methods
.method public constructor <init>(FLjava/lang/String;Landroid/graphics/Bitmap;ZZZLjava/lang/Float;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->reinforcedEdgeAmount:F

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->thumbnail:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->updateLayoutByMedia:Z

    iput-boolean p5, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoPauseResume:Z

    iput-boolean p6, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoRelease:Z

    iput-object p7, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->hintFps:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(FLjava/lang/String;Landroid/graphics/Bitmap;ZZZLjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, p7

    :goto_5
    move-object p2, p0

    move p3, p1

    move-object p4, v0

    move-object p5, v2

    move p6, v3

    move p7, v4

    move p8, v5

    move-object/from16 p9, v1

    invoke-direct/range {p2 .. p9}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;-><init>(FLjava/lang/String;Landroid/graphics/Bitmap;ZZZLjava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    iget v1, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->reinforcedEdgeAmount:F

    iget v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->reinforcedEdgeAmount:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->updateLayoutByMedia:Z

    iget-boolean v3, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->updateLayoutByMedia:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoPauseResume:Z

    iget-boolean v3, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoPauseResume:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoRelease:Z

    iget-boolean v3, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoRelease:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->hintFps:Ljava/lang/Float;

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->hintFps:Ljava/lang/Float;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->reinforcedEdgeAmount:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->id:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->updateLayoutByMedia:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoPauseResume:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoRelease:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->hintFps:Ljava/lang/Float;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->thumbnail:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Configs(reinforcedEdgeAmount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->reinforcedEdgeAmount:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", updateLayoutByMedia="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->updateLayoutByMedia:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", autoPauseResume="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoPauseResume:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", autoRelease="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoRelease:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hintFps="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->hintFps:Ljava/lang/Float;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
