.class public abstract Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mPin:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, "KeyguardUCMPinView"

    const-string v0, "new CheckUcmPin"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onVerifyPinResponse(IILandroid/os/Bundle;)V
.end method

.method public final run()V
    .locals 7

    const-string v0, "KeyguardUCMPinView"

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->mPin:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mverifyPIN(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-boolean v4, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const-string v6, "In race condition, stop unlock operation"

    if-nez v4, :cond_0

    :try_start_1
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput-object v5, v1, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-static {v3, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgeneratePassword(Lcom/android/keyguard/KeyguardUCMViewController;I)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-boolean v4, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    if-nez v4, :cond_1

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput-object v5, v1, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    return-void

    :cond_1
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMViewController;->access$000(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUCMView;

    new-instance v4, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;[ILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    const-string v2, "Exception for verifyPIN : "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    new-instance v1, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
