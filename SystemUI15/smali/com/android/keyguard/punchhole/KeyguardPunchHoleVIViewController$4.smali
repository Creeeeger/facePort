.class public final Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$900(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenConfig()V

    return-void
.end method

.method public final onFolderStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$1000(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-boolean p1, p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsFaceRunning:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->stopVI()V

    :cond_0
    return-void
.end method
