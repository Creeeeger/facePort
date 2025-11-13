.class public final synthetic Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardInputViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardInputViewController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "102"

    const-string v0, "LSE2039E"

    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->dismissTips(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ForgotPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method
