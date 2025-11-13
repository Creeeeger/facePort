.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda25;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda25;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda25;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda25;->f$1:Z

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    move-result v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiStateWorker:Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWiFiToggle:Landroid/widget/Switch;

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
