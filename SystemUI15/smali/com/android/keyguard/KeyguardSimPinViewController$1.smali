.class Lcom/android/keyguard/KeyguardSimPinViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPinViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSimStateChanged(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    iget p2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->showCurrentSecurityScreen()V

    return-void

    :cond_0
    const/4 p1, 0x5

    if-ne p3, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    :goto_0
    return-void
.end method
