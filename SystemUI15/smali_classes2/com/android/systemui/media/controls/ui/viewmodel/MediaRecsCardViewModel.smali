.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final areSubtitlesVisible:Z

.field public final areTitlesVisible:Z

.field public final cardColor:I

.field public final cardTitleColor:I

.field public final contentDescription:Lkotlin/jvm/functions/Function1;

.field public final gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

.field public final mediaRecs:Ljava/util/List;

.field public final onClicked:Lkotlin/jvm/functions/Function1;

.field public final onLongClicked:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/util/List;ZZLcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "II",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Ljava/util/List<",
            "Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;",
            ">;ZZ",
            "Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardColor:I

    iput p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardTitleColor:I

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->mediaRecs:Ljava/util/List;

    iput-boolean p7, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areTitlesVisible:Z

    iput-boolean p8, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areSubtitlesVisible:Z

    iput-object p9, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;

    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardColor:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardColor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardTitleColor:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardTitleColor:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->mediaRecs:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->mediaRecs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areTitlesVisible:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areTitlesVisible:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areSubtitlesVisible:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areSubtitlesVisible:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardTitleColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->mediaRecs:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areTitlesVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areSubtitlesVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->mediaRecs:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaRecsCardViewModel(contentDescription="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cardColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cardTitleColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->cardTitleColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", onClicked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", onLongClicked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mediaRecs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", areTitlesVisible="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areTitlesVisible:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", areSubtitlesVisible="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->areSubtitlesVisible:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", gutsMenu="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
