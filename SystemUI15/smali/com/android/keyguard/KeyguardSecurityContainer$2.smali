.class public final Lcom/android/keyguard/KeyguardSecurityContainer$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->DECELERATE_QUINT:Landroidx/core/animation/DecelerateInterpolator;

    invoke-virtual {v0, p1}, Landroidx/core/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const p1, 0x3dccccd0    # 0.100000024f

    mul-float/2addr v0, p1

    const p1, 0x3f666666    # 0.9f

    add-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    sget p1, Lcom/android/keyguard/KeyguardSecurityContainer;->MIN_BACK_SCALE:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method
