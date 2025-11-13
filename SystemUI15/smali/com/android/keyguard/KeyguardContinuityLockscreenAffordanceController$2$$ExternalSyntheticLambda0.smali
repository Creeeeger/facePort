.class public final synthetic Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;->this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->access$500(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->mContinuityLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method
