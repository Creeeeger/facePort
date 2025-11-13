.class public final Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final handler:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$handler$1;

.field public final keyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

.field public needFullscreen:Z

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final statusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

.field public windowView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->keyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    iput-object p3, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->statusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    new-instance p1, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$handler$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$handler$1;-><init>(Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;)V

    iput-object p1, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->handler:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$handler$1;

    return-void
.end method

.method public static final access$setNeedFullscreen(Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->needFullscreen:Z

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->keyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isScreenOn()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->windowView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->needFullscreen:Z

    const-string v3, "needFullscreen("

    const-string v4, " >> "

    const-string v5, ") isScreenOn:"

    invoke-static {v3, v4, v5, v2, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isViewShown:"

    const-string v4, "SamsungNotificationShadeWindowFullscreenHelper"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->needFullscreen:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->handler:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$handler$1;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method
