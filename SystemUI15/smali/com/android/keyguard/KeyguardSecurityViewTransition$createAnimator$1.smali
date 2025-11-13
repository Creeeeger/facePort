.class public final Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $runningSecurityShiftAnimator:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $shouldRestoreLayerType:Z

.field public final synthetic $v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZLandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/animation/ValueAnimator;",
            ">;Z",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$runningSecurityShiftAnimator:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$shouldRestoreLayerType:Z

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$runningSecurityShiftAnimator:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$shouldRestoreLayerType:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;->$v:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
