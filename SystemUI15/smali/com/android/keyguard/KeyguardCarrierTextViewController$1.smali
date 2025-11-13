.class Lcom/android/keyguard/KeyguardCarrierTextViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController;->access$000(Lcom/android/keyguard/KeyguardCarrierTextViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierTextView;->updateVisibility()V

    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController;->access$100(Lcom/android/keyguard/KeyguardCarrierTextViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierTextView;->updateVisibility()V

    return-void
.end method
