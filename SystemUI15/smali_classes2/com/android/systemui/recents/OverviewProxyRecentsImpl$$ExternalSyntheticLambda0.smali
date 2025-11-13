.class public final synthetic Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendThreeFingerGestureKeyEvent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverviewProxyRecentsImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const-string v1, "Failed to notify back action"

    const/4 v2, 0x0

    const-string v3, "OverviewProxyService"

    iget-object v4, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    packed-switch p0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    goto :goto_3

    :pswitch_2
    iget-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "notifyThreeFingerGestureBottom"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    goto :goto_3

    :pswitch_3
    iget-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, v4, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onOverviewToggle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    goto :goto_3

    :pswitch_4
    iget-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object p0, v4, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onQuickScrubEnd()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    goto :goto_3

    :pswitch_5
    iget-boolean p0, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object p0, v4, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onQuickScrubStart()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    iput-boolean v2, v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
