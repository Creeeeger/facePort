.class public final Lcom/android/keyguard/KeyguardTextBuilder$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardTextBuilder;

.field public final synthetic val$passwordEntry:Landroid/widget/EditText;

.field public final synthetic val$securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardTextBuilder;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$passwordEntry:Landroid/widget/EditText;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/StrongAuthPopup;->dismiss()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    new-instance v0, Lcom/android/keyguard/StrongAuthPopup;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$passwordEntry:Landroid/widget/EditText;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/StrongAuthPopup;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;)V

    iput-object v0, p1, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    invoke-virtual {p1}, Lcom/android/keyguard/StrongAuthPopup;->updatePopup()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/StrongAuthPopup;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "102"

    const-string p1, "LSE1073"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method
