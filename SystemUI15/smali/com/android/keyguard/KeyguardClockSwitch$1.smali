.class public final Lcom/android/keyguard/KeyguardClockSwitch$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardClockSwitch;

.field public final synthetic val$out:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$1;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch$1;->val$out:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$1;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$1;->val$out:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch$1;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
