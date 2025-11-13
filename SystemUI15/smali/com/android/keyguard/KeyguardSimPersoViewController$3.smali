.class public final Lcom/android/keyguard/KeyguardSimPersoViewController$3;
.super Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

.field public final synthetic val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final synthetic val$subId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;ILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$subId:I

    iput-object p4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onSimCheckResponse(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$400(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPersoView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$subId:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController$3;ZILcom/android/keyguard/KeyguardSecurityCallback;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
