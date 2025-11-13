.class public final Lcom/android/keyguard/KeyguardUCMViewController$2;
.super Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onVerifyPukResponse(IILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    new-instance v1, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUCMViewController$2;IILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
