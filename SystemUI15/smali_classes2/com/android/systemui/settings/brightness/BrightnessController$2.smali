.class public final Lcom/android/systemui/settings/brightness/BrightnessController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    iget-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Lcom/android/systemui/settings/brightness/BrightnessController$6;

    invoke-interface {v2, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v2}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CentralSurfaces.BrightnessController"

    const-string v3, "Failed to register VR mode state listener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    iget-boolean v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;->mObserving:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;->mObserving:Z

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    sget-object v2, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->brightnessControllerObserver:Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->Companion:Lcom/android/systemui/settings/brightness/SecBrightnessController$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SYSTEM_BRIGHTNESS_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v2, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SEC_AUTO_BRIGHTNESS_TRANSITION_TIME_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessListener:Lcom/android/systemui/settings/brightness/BrightnessController$1;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v3, v3, Lcom/android/systemui/settings/brightness/BrightnessController;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    check-cast v1, Lcom/android/systemui/settings/DisplayTrackerImpl;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/settings/DisplayTrackerImpl;->addBrightnessChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMainExecutor:Ljava/util/concurrent/Executor;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$4;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController$4;->run()V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$5;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController$5;->run()V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
