.class public final Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialogManager$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/UdfpsAnimationViewController;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;->this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldHideAffordances(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;->this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->shouldHideAffordance()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->calculateAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x53

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0xc8

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$runDialogAlphaAnimator$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$runDialogAlphaAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogAlphaAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
