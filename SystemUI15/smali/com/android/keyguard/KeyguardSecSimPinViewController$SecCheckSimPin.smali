.class public abstract Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;
.super Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call supplyPinReportResultForSubscriber(subid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSimPinViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->supplyIccLockPin(Ljava/lang/String;)Landroid/telephony/PinResult;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    if-nez v0, :cond_0

    const-string v0, "Error result for supplyPinReportResult."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$700(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPinView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "supplyPinReportResult returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$800(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPinView;

    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;Landroid/telephony/PinResult;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
