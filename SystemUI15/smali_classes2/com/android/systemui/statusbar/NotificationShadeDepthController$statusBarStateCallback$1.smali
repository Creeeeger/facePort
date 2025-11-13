.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shouldApplyShadeBlur()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    :cond_1
    :goto_0
    return-void
.end method
