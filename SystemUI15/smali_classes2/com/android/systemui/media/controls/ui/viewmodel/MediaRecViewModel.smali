.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final albumIcon:Landroid/graphics/drawable/Drawable;

.field public final appIcon:Landroid/graphics/drawable/Drawable;

.field public final contentDescription:Ljava/lang/CharSequence;

.field public final onClicked:Lkotlin/jvm/functions/Function2;

.field public final progress:I

.field public final progressColor:I

.field public final subtitle:Ljava/lang/CharSequence;

.field public final subtitleColor:I

.field public final title:Ljava/lang/CharSequence;

.field public final titleColor:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/CharSequence;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->contentDescription:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->title:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->titleColor:I

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitle:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitleColor:I

    iput p6, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progress:I

    iput p7, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progressColor:I

    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->albumIcon:Landroid/graphics/drawable/Drawable;

    iput-object p9, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->appIcon:Landroid/graphics/drawable/Drawable;

    iput-object p10, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->onClicked:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v9, v1

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p3

    move/from16 v8, p5

    move/from16 v10, p7

    move-object/from16 v13, p10

    invoke-direct/range {v3 .. v13}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->contentDescription:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->titleColor:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->titleColor:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitleColor:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitleColor:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progress:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progress:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progressColor:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progressColor:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->albumIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->albumIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->appIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->onClicked:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->onClicked:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->titleColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitleColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progress:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progressColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->albumIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->onClicked:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->contentDescription:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->albumIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->appIcon:Landroid/graphics/drawable/Drawable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MediaRecViewModel(contentDescription="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", titleColor="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->titleColor:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subtitle="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", subtitleColor="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->subtitleColor:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progress="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progress:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progressColor="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->progressColor:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", albumIcon="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appIcon="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onClicked="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;->onClicked:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
