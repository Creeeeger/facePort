.class public final Lcom/android/systemui/doze/DozeScreenState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mApplyPendingScreenState:Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mAuthControllerCallback:Lcom/android/systemui/doze/DozeScreenState$1;

.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeScreenBrightness:Lcom/android/systemui/doze/DozeScreenBrightness;

.field public final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field public mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mHandler:Landroid/os/Handler;

.field public mIsExecutedClockTransition:Z

.field public final mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mPendingScreenState:I

.field public mPluginAODManagerLazy:Ldagger/Lazy;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public final mUdfpsControllerProvider:Ljavax/inject/Provider;

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/biometrics/AuthController;Ljavax/inject/Provider;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeScreenBrightness;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/doze/DozeHost;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/doze/DozeScreenBrightness;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeScreenState;I)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    new-instance v0, Lcom/android/systemui/doze/DozeScreenState$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeScreenState$1;-><init>(Lcom/android/systemui/doze/DozeScreenState;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthControllerCallback:Lcom/android/systemui/doze/DozeScreenState$1;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    new-instance p1, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const-string p2, "DozeScreenState"

    invoke-direct {p1, p5, p2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    iput-object p6, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p7, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsControllerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iput-object p9, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeScreenBrightness:Lcom/android/systemui/doze/DozeScreenBrightness;

    iput-object p10, p0, Lcom/android/systemui/doze/DozeScreenState;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenState;->updateUdfpsController()V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p0, :cond_0

    invoke-virtual {p6, v0}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final applyScreenState(IZ)V
    .locals 7

    if-eqz p1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyScreenState("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldWaitForTransitionToAodUi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeScreenState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_DOZE_AP_SLEEP:Z

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_3

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    goto :goto_3

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x80

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v5, "applyDrawWakeLock exception = "

    invoke-static {v5, v0, v1}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_5

    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_DOZE_AP_SLEEP:Z

    if-eqz v1, :cond_4

    if-ne p1, v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v4

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v0, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/PluginAODManager;->updateRefreshRate(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(IZ)V

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeScreenBrightness:Lcom/android/systemui/doze/DozeScreenBrightness;

    invoke-virtual {p1, v4}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    :cond_7
    iput v4, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p0, v4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_8
    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthControllerCallback:Lcom/android/systemui/doze/DozeScreenState$1;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthController;->removeCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 12

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v4, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_DOZE_AP_SLEEP:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    :pswitch_3
    move v4, v2

    goto :goto_1

    :pswitch_4
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz v0, :cond_1

    :cond_2
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHasPendingScreenOffCallbackChangeListener:Lcom/android/systemui/statusbar/phone/DozeServiceHost$HasPendingScreenOffCallbackChangeListener;

    invoke-interface {v5, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$HasPendingScreenOffCallbackChangeListener;->onHasPendingScreenOffCallbackChanged(Z)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v5, v6, :cond_3

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    :cond_3
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    iget-object v5, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    iget-object v6, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    iget-object v7, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    if-ne p2, v0, :cond_5

    iput v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(IZ)V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iput-boolean v1, p1, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/PluginAODManager;->updateRefreshRate(I)V

    :cond_4
    invoke-virtual {v5, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    return-void

    :cond_5
    if-nez v4, :cond_6

    return-void

    :cond_6
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    const-string v8, "DozeScreenState"

    if-ne p2, v0, :cond_7

    iget-boolean v9, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    const-string/jumbo v10, "transitionTo INITIALIZED shouldWaitForTransitionToAodUi : "

    invoke-static {v10, v8, v9}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_7
    move v9, v1

    :goto_2
    invoke-virtual {v7, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v10

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v11, :cond_9

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, v11, :cond_8

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v11, :cond_9

    :cond_8
    move v11, v2

    goto :goto_3

    :cond_9
    move v11, v1

    :goto_3
    if-ne p1, v0, :cond_a

    move p1, v2

    goto :goto_4

    :cond_a
    move p1, v1

    :goto_4
    if-nez v10, :cond_b

    if-nez p1, :cond_b

    if-nez v11, :cond_b

    invoke-virtual {p0, v4, v9}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(IZ)V

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_16

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    goto/16 :goto_b

    :cond_b
    iput v4, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_f

    iget-boolean p1, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mKeyguardVisible:Z

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldDelayDisplayDozeTransition()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_5
    move p1, v2

    goto :goto_7

    :cond_f
    :goto_6
    move p1, v1

    :goto_7
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_8

    :cond_10
    move v0, v1

    :goto_8
    sget-boolean v3, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-nez v10, :cond_13

    if-eqz v3, :cond_12

    const-string v3, "Display state changed to "

    const-string v10, " delayed by "

    invoke-static {v4, v3, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_11

    const/16 v4, 0xfa0

    goto :goto_9

    :cond_11
    move v4, v2

    :goto_9
    invoke-static {v4, v8, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_12
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v3, :cond_14

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    new-instance v3, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeScreenState;I)V

    invoke-virtual {v7, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    :cond_13
    if-eqz v3, :cond_14

    const-string v3, "Pending display state change to "

    invoke-static {v4, v3, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_a
    if-nez p1, :cond_15

    if-eqz v0, :cond_16

    :cond_15
    invoke-virtual {v5, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_16
    :goto_b
    if-eqz v9, :cond_18

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_18

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p1, p1, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->semSetScreenStatus(I)V

    :cond_17
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    iput-boolean v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final updateUdfpsController()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsController;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    :goto_0
    return-void
.end method
