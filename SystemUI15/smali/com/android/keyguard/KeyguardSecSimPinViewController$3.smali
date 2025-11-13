.class public final Lcom/android/keyguard/KeyguardSecSimPinViewController$3;
.super Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

.field public final synthetic val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final synthetic val$subId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;Ljava/lang/String;IILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iput p4, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->val$subId:I

    iput-object p5, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onSimCheckResponse(Landroid/telephony/PinResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$000(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->val$subId:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v3, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$3;Landroid/telephony/PinResult;ILcom/android/keyguard/KeyguardSecurityCallback;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
