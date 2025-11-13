.class public final Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accentPrimaryColor:I

.field public final cancelTextBackground:Landroid/graphics/drawable/Drawable;

.field public final gutsText:Ljava/lang/CharSequence;

.field public final isDismissEnabled:Z

.field public final onDismissClicked:Lkotlin/jvm/functions/Function0;

.field public final onSettingsClicked:Lkotlin/jvm/functions/Function0;

.field public final surfaceColor:I

.field public final textPrimaryColor:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIIZLkotlin/jvm/functions/Function0;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IIIZ",
            "Lkotlin/jvm/functions/Function0;",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->gutsText:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->textPrimaryColor:I

    iput p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->accentPrimaryColor:I

    iput p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->surfaceColor:I

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->isDismissEnabled:Z

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onDismissClicked:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->cancelTextBackground:Landroid/graphics/drawable/Drawable;

    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onSettingsClicked:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;IIIZLkotlin/jvm/functions/Function0;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;-><init>(Ljava/lang/CharSequence;IIIZLkotlin/jvm/functions/Function0;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->gutsText:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->gutsText:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->textPrimaryColor:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->textPrimaryColor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->accentPrimaryColor:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->accentPrimaryColor:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->surfaceColor:I

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->surfaceColor:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->isDismissEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->isDismissEnabled:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onDismissClicked:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onDismissClicked:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->cancelTextBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->cancelTextBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onSettingsClicked:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onSettingsClicked:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->gutsText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->textPrimaryColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->accentPrimaryColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->surfaceColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->isDismissEnabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onDismissClicked:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->cancelTextBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onSettingsClicked:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->gutsText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->cancelTextBackground:Landroid/graphics/drawable/Drawable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GutsViewModel(gutsText="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", textPrimaryColor="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->textPrimaryColor:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", accentPrimaryColor="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->accentPrimaryColor:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", surfaceColor="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->surfaceColor:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isDismissEnabled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->isDismissEnabled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", onDismissClicked="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onDismissClicked:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cancelTextBackground="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onSettingsClicked="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->onSettingsClicked:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
