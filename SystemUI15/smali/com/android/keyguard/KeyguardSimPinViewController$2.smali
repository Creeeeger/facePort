.class public final Lcom/android/keyguard/KeyguardSimPinViewController$2;
.super Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPinViewController;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onSimCheckResponse(Landroid/telephony/PinResult;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinViewController;->access$000(Lcom/android/keyguard/KeyguardSimPinViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;Landroid/telephony/PinResult;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
