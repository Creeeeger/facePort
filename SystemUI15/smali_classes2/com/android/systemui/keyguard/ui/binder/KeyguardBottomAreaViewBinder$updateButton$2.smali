.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $messageDisplayer:Lkotlin/jvm/functions/Function1;

.field public final synthetic $vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final synthetic $view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Landroid/widget/ImageView;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;->$messageDisplayer:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;->$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;->$messageDisplayer:Lkotlin/jvm/functions/Function1;

    const v0, 0x7f130821

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;->$view:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07048a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;->$view:Landroid/widget/ImageView;

    neg-float v1, p1

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v1, v3

    div-float/2addr p1, v3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p1, v2, v1

    const-string/jumbo p1, "translationX"

    invoke-static {v0, p1, v2}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->ShakeAnimationDuration:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v0, Landroidx/core/animation/CycleInterpolator;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {v0, v1}, Landroidx/core/animation/CycleInterpolator;-><init>(F)V

    iput-object v0, p1, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;->$view:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2$onClick$$inlined$doOnEnd$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2$onClick$$inlined$doOnEnd$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroidx/core/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->Shake:Landroid/os/VibrationEffect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method
