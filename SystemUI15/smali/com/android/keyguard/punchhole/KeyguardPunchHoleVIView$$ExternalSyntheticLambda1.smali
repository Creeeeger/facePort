.class public final synthetic Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v1, "prepareVI() - VI is prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->startVI()V

    :cond_0
    return-void
.end method
