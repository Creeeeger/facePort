.class public final Lcom/android/systemui/animation/TransitionAnimator$Interpolators;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

.field public final contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field public final positionInterpolator:Landroid/view/animation/Interpolator;

.field public final positionXInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionXInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    move-object p2, p1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    iget-object v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionInterpolator:Landroid/view/animation/Interpolator;

    iget-object v3, p1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionXInterpolator:Landroid/view/animation/Interpolator;

    iget-object v3, p1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionXInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    iget-object v3, p1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p1, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionXInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionXInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    iget-object p0, p0, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interpolators(positionInterpolator="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", positionXInterpolator="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentBeforeFadeOutInterpolator="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentAfterFadeInInterpolator="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
