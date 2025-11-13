.class Lcom/android/keyguard/KeyguardSimPersoViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSimStateChanged(III)V
    .locals 4

    const-string p2, "onSimStateChanged(subId="

    const-string v0, ",state="

    const-string v1, ")"

    invoke-static {p1, p3, p2, v0, v1}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardSimPersoView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    if-eq p3, v1, :cond_0

    if-eq p3, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->resetState()V

    goto :goto_1

    :cond_0
    if-ne p3, v1, :cond_1

    const-string v2, "Card Remove during SIM perso"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    const-string v2, "Card READY during SIM perso "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimState(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "Dismiss SIM perso View"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p1, v1, p2, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    :cond_3
    if-ne p3, p2, :cond_4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    if-eq p2, p1, :cond_4

    const-string p0, "READY already came. Skip this"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->resetState()V

    :goto_1
    return-void
.end method
