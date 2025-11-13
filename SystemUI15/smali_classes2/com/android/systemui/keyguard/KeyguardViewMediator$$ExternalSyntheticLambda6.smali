.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getShadeWindowControllerHelper()Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLockScreenRotationAllowed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/os/Message;

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$endHandleMsgTime$1;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$endHandleMsgTime$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {v0, v3}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3ec

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->CANCEL_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure$2()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    const-string p0, "cancel CANCEL_KEYGUARD_EXIT_ANIM"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_GOING_TO_SLEEP$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr v1, p1

    :goto_2
    if-nez v1, :cond_6

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->restoreKeyguardSurface()V

    :cond_6
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancel()V

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->START_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSET_OCCLUDED()I

    move-result p0

    if-ne p1, p0, :cond_a

    :goto_3
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancel()V

    :cond_a
    :goto_4
    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "com.verizon.mips.services"

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->extraUserPresentIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    move-object v1, v2

    :goto_5
    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewMediatorProvider;->userPresentIntent:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->extraUserPresentIntent:Landroid/content/Intent;

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->extraUserPresentIntent:Landroid/content/Intent;

    if-eqz v1, :cond_f

    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_EXTRA_USER_PRESENT:Z

    if-eqz v3, :cond_e

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_d
    :goto_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_e

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.verizon.mips.services exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardViewMediator"

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_8
    const-string v0, "com.sec.android.daemonapp"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v0, "com.samsung.android.privateaccesstokens"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_f
    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 p1, 0x67

    const/4 v0, 0x0

    if-eq v6, p1, :cond_10

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->curIsOccluded:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->scrimControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setFrontScrimToBlack(Z)V

    goto :goto_9

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_11
    :goto_9
    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/PluginAODManager;->updateRefreshRate(I)V

    :cond_12
    const/4 p1, 0x4

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->enableLooperLogController(IJ)V

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastWakeReason:I

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->wakeReason:I

    :cond_13
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const/4 v3, 0x0

    const/16 v7, 0xe

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->enableLooperLogController(IJ)V

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastSleepReason:I

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onStartedGoingToSleep$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onStartedGoingToSleep$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
