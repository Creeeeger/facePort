.class Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefreshCarrierInfo(Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
