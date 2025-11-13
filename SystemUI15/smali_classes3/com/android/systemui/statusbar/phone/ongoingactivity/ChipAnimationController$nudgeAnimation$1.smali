.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic $endDamping:F

.field public final synthetic $endStiffness:F

.field public final synthetic $v:Landroid/view/View;


# direct methods
.method public constructor <init>(FFLandroid/view/View;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;->$endDamping:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;->$endStiffness:F

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;->$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    new-instance p1, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;->$endDamping:F

    invoke-virtual {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;->$endStiffness:F

    invoke-virtual {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    new-instance p2, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;->$v:Landroid/view/View;

    sget-object p4, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, p3, p4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    invoke-virtual {p2, p1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;->$v:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method
