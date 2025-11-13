.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->initPost()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iput-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->notificationShadeView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    iget-object v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->registerMonitor(Landroid/view/View;Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$1;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$2;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x3

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->notificationShadeView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->fullscreenHelper:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;

    iput-object v0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->windowView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$init$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$init$1;-><init>(Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;)V

    iget-object p0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->handler:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$handler$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    iget-object v3, v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v3, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Z)V

    iget-object v0, v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;

    const-string v3, "IActivityManager#setHasTopUi"

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationShadeWindowController"

    const-string v1, "Failed to call setHasTopUi"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
