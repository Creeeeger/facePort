.class public final Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->isFlashlightBlinking()Z

    move-result p1

    const-string v0, "onTorchModeChanged enabled: "

    const-string v1, " isFlashlightBlinking: "

    const-string v2, "FlashlightController"

    invoke-static {v0, v1, v2, p2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iput-boolean p2, p1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsEnabled:Z

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "flashlight_enabled"

    invoke-interface {v1, v2, p2, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->updateFlashlightNotification(Z)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_3

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    iget-object v0, p1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mUiHandler:Landroid/os/Handler;

    if-eqz p2, :cond_2

    iget-object v1, p1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->getActivityState()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->startFlashActivity()V

    :goto_0
    new-instance v1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    if-eqz v1, :cond_3

    check-cast v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentSubScreen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    const-string v4, "SubroomFlashLightSettingsActivity"

    invoke-static {v3, v4, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setCameraAvailable(Z)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setTorchMode(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string p2, "flashlight_available"

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putInt(Ljava/lang/String;I)Z

    :cond_4
    return-void
.end method

.method public final onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setCameraAvailable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "flashlight_available"

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putInt(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setTorchMode(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->updateFlashlightNotification(Z)V

    :cond_2
    return-void
.end method

.method public final setCameraAvailable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    if-eq v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const-string v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchAvailabilityChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setTorchMode(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p1, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const-string v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchModeChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0, v4, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callback at : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->makeTime$1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
