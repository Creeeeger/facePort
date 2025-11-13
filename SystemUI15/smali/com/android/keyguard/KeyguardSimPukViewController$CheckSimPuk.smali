.class public abstract Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mPin:Ljava/lang/String;

.field public final mPuk:Ljava/lang/String;

.field public final mSubId:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mPuk:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mPin:Ljava/lang/String;

    iput p4, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    return-void
.end method


# virtual methods
.method public abstract onSimLockChangedResponse(Landroid/telephony/PinResult;)V
.end method

.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->supplyIccLockPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$1200(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;Landroid/telephony/PinResult;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
