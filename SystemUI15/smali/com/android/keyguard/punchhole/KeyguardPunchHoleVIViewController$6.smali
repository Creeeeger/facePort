.class public final Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangedLockStarData(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1800(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v1, "onChangedLockStarData is "

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->updatePunchHoleColor()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1900(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v3, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;

    invoke-direct {v3, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->setPunchHoleVI()V

    :goto_0
    return-void
.end method

.method public final request(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$2000(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LockStarCallback: request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "type"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PunchHole"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->updatePunchHoleColor()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
