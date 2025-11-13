.class public final Lcom/android/keyguard/KeyguardStatusViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardStatusViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardStatusViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sub-int/2addr p9, p7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, p9

    if-nez p1, :cond_1

    return-void

    :cond_1
    mul-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p3, 0x85

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p5

    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p7

    sub-long/2addr p5, p7

    add-long/2addr p3, p5

    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    const/4 p5, 0x0

    iput-object p5, p2, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    const/4 p5, 0x0

    filled-new-array {p1, p5}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p2, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardClockSwitchController;->mAodIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/keyguard/KeyguardStatusViewController$2$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/android/keyguard/KeyguardStatusViewController$2$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusAreaHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
