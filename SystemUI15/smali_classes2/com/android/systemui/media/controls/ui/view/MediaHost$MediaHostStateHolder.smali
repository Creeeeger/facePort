.class public final Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/ui/view/MediaHostState;


# instance fields
.field public changedListener:Lkotlin/jvm/functions/Function0;

.field public disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

.field public expandedMatchesParentHeight:Z

.field public expansion:F

.field public falsingProtectionNeeded:Z

.field public lastDisappearHash:I

.field public measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

.field public showsOnlyActiveMedia:Z

.field public squishFraction:F

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->squishFraction:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    new-instance v0, Lcom/android/systemui/util/animation/DisappearParameters;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/DisappearParameters;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->lastDisappearHash:I

    return-void
.end method


# virtual methods
.method public final copy()Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;
    .locals 5

    new-instance v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;-><init>()V

    iget v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expansion:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expandedMatchesParentHeight:Z

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expandedMatchesParentHeight:Z

    if-eq v1, v2, :cond_0

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expandedMatchesParentHeight:Z

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->squishFraction:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->squishFraction:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->squishFraction:F

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v3, v2}, Lcom/android/systemui/util/animation/MeasurementInput;->copy$default(Lcom/android/systemui/util/animation/MeasurementInput;IIILjava/lang/Object;)Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->setMeasurementInput(Lcom/android/systemui/util/animation/MeasurementInput;)V

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v2, v1, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/DisappearParameters;->deepCopy()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/DisappearParameters;->hashCode()I

    move-result v2

    iget v3, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->lastDisappearHash:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    iput v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->lastDisappearHash:I

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_7
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    if-ne v1, p0, :cond_8

    goto :goto_2

    :cond_8
    iput-boolean p0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_9
    :goto_2
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    check-cast p1, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expansion:F

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpansion()F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->squishFraction:F

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getSquishFraction()F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getVisible()Z

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getFalsingProtectionNeeded()Z

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/DisappearParameters;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    return v1
.end method

.method public final getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    return-object p0
.end method

.method public final getExpandedMatchesParentHeight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expandedMatchesParentHeight:Z

    return p0
.end method

.method public final getExpansion()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expansion:F

    return p0
.end method

.method public final getFalsingProtectionNeeded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    return p0
.end method

.method public final getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    return-object p0
.end method

.method public final getShowsOnlyActiveMedia()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    return p0
.end method

.method public final getSquishFraction()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->squishFraction:F

    return p0
.end method

.method public final getVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/MeasurementInput;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expansion:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->squishFraction:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/DisappearParameters;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setExpansion(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expansion:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->expansion:F

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setMeasurementInput(Lcom/android/systemui/util/animation/MeasurementInput;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/animation/MeasurementInput;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
