.class public final Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public pos:F

.field public restingPosition:F

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/BackPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat$floatProp$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat$floatProp$1;-><init>(Ljava/lang/String;)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p2, p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object p1, p2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    :cond_2
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput p2, p3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    :cond_1
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    add-float/2addr p0, p1

    invoke-virtual {p3, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method


# virtual methods
.method public final setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public final snapTo(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    iget-object v0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    float-to-double v1, p1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanel;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method public final snapToRestingPosition()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    return-void
.end method

.method public final stretchBy(Ljava/lang/Float;F)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public final updateRestingPosition(Ljava/lang/Float;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    :goto_0
    return-void
.end method
