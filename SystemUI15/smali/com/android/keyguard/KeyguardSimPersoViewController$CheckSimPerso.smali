.class public abstract Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mPin:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onSimCheckResponse(Z)V
.end method

.method public final run()V
    .locals 7

    const-string v0, "KeyguardSimPersoView"

    const-string v1, "CheckSimPerso supplyPersoForSubId(subId="

    const-wide/16 v2, 0x32

    :try_start_0
    const-string v4, "isemtelephony"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget v5, v5, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->mPin:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/ISemTelephony;->supplyPersoForSubId(ILjava/lang/String;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget v1, v1, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") returned : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$200(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v5, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;Z)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "RemoteException for supplyPerso:"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$300(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void
.end method
