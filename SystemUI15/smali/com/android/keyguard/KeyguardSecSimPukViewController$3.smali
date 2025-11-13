.class public final Lcom/android/keyguard/KeyguardSecSimPukViewController$3;
.super Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onSimLockChangedResponse(Landroid/telephony/PinResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$300(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPukView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController$3;Landroid/telephony/PinResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
