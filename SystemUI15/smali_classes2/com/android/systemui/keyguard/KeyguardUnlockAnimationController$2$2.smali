.class public final Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$2$2;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "KeyguardUnlock"

    const-string/jumbo v0, "wallpaperCannedUnlockAnimator#onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$2$2;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation()V

    return-void
.end method
