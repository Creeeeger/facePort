.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public pendingRadius:I

.field public radius:F

.field public final springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object p1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iget-object p1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v1, 0x461c4000    # 10000.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;)V

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method
