.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final background:Landroid/graphics/drawable/Drawable;

.field public final buttonId:Ljava/lang/Integer;

.field public final contentDescription:Ljava/lang/CharSequence;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final isEnabled:Z

.field public final isVisibleWhenScrubbing:Z

.field public final notVisibleValue:I

.field public final onClicked:Lkotlin/jvm/functions/Function1;

.field public final rebindId:Ljava/lang/Integer;

.field public final showInCollapsed:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZIZLjava/lang/Integer;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Drawable;",
            "ZIZ",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->contentDescription:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->background:Landroid/graphics/drawable/Drawable;

    iput-boolean p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isVisibleWhenScrubbing:Z

    iput p5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->notVisibleValue:I

    iput-boolean p6, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->showInCollapsed:Z

    iput-object p7, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->rebindId:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->buttonId:Ljava/lang/Integer;

    iput-boolean p9, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isEnabled:Z

    iput-object p10, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZIZLjava/lang/Integer;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    move v7, v1

    goto :goto_1

    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p6

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZIZLjava/lang/Integer;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->contentDescription:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->background:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->background:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isVisibleWhenScrubbing:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isVisibleWhenScrubbing:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->notVisibleValue:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->notVisibleValue:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->showInCollapsed:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->showInCollapsed:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->rebindId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->rebindId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->buttonId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->buttonId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isEnabled:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->contentDescription:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->background:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isVisibleWhenScrubbing:Z

    invoke-static {v0, v2, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->notVisibleValue:I

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->showInCollapsed:Z

    invoke-static {v0, v2, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->rebindId:Ljava/lang/Integer;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->buttonId:Ljava/lang/Integer;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isEnabled:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->contentDescription:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->background:Landroid/graphics/drawable/Drawable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MediaActionViewModel(icon="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentDescription="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", background="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isVisibleWhenScrubbing="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isVisibleWhenScrubbing:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", notVisibleValue="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->notVisibleValue:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", showInCollapsed="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->showInCollapsed:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", rebindId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->rebindId:Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", buttonId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->buttonId:Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isEnabled="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->isEnabled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", onClicked="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
