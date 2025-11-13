.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->access$getMView$p$s-1759132487(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    invoke-static {v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->access$getMView$p$s-1759132487(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
