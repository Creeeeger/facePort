.class public final Lcom/android/systemui/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field public static sWakeDisplaySensorState:Z = true


# instance fields
.field public final mAllowPulseTriggers:Z

.field public mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mContext:Landroid/content/Context;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

.field public final mHostCallback:Lcom/android/systemui/doze/DozeTriggers$2;

.field public mInAod:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mMachine:Lcom/android/systemui/doze/DozeMachine;

.field public mNotificationPulseTime:J

.field public final mProxCheck:Lcom/android/systemui/util/sensors/ProximityCheck;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field public mWantProxSensor:Z

.field public mWantSensors:Z

.field public mWantTouchScreenSensors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximityCheck;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeTriggers$1;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeTriggers$2;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeTriggers$2;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    new-instance v15, Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v7, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    new-instance v8, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    move-object v1, v15

    move-object/from16 v3, p5

    move-object/from16 v9, p10

    move-object/from16 v10, p8

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p17

    move-object/from16 v14, p19

    invoke-direct/range {v1 .. v14}, Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    iput-object v15, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mProxCheck:Lcom/android/systemui/util/sensors/ProximityCheck;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method

.method public static canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z
    .locals 4

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p0, v3, :cond_3

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p0, v3, :cond_3

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p0, v3, :cond_3

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public static runIfNotNull(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    iget-object v1, v0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v3, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    invoke-virtual {v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {v1}, Lcom/android/systemui/util/sensors/ProximitySensor;->destroy()V

    iget-object v1, v0, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    iget-object v2, v0, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/doze/DozeSensors;->mAuthControllerCallback:Lcom/android/systemui/doze/DozeSensors$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeSensors;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthController;->removeCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mProxCheck:Lcom/android/systemui/util/sensors/ProximityCheck;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximityCheck;->destroy()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mAodInterruptRunnable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " notificationPulseTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " DozeHost#isPulsePending="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DozeSensors:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mListening="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mDevicePosture="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DevicePostureController;->devicePostureToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mListeningTouchScreenSensors="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mSelectivelyRegisterProxSensors="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSelectivelyRegisterProxSensors:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mListeningProxSensors="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningProxSensors:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mScreenOffUdfpsEnabled="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mUdfpsEnrolled="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sensor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxSensor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final gentleWakeUp(I)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->requestWakeUp(I)V

    return-void
.end method

.method public final onScreenState(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    iget-object v6, v0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {v6, v5}, Lcom/android/systemui/util/sensors/ProximitySensor;->setSecondarySafe(Z)V

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    if-ne p1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v4

    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProxSensor:Z

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    iget-boolean v5, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeTriggers;->mInAod:Z

    iget-boolean v7, v0, Lcom/android/systemui/doze/DozeSensors;->mSelectivelyRegisterProxSensors:Z

    if-eqz v7, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    iget-boolean v1, v0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    if-ne v1, v2, :cond_7

    iget-boolean v1, v0, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    if-ne v1, v5, :cond_7

    iget-boolean v1, v0, Lcom/android/systemui/doze/DozeSensors;->mListeningProxSensors:Z

    if-ne v1, v3, :cond_7

    iget-boolean v1, v0, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    if-ne v1, v6, :cond_7

    goto :goto_5

    :cond_7
    iput-boolean v2, v0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    iput-boolean v5, v0, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    iput-boolean v3, v0, Lcom/android/systemui/doze/DozeSensors;->mListeningProxSensors:Z

    iput-boolean v6, v0, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    if-eqz v0, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    :cond_8
    return-void
.end method

.method public onSensor(IFF[F)V
    .locals 16

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v9, p4

    const/4 v0, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v11, v0, :cond_0

    move v3, v13

    goto :goto_0

    :cond_0
    move v3, v12

    :goto_0
    const/16 v0, 0x9

    if-ne v11, v0, :cond_1

    move v4, v13

    goto :goto_1

    :cond_1
    move v4, v12

    :goto_1
    const/4 v0, 0x3

    if-ne v11, v0, :cond_2

    move v14, v13

    goto :goto_2

    :cond_2
    move v14, v12

    :goto_2
    const/4 v0, 0x5

    if-ne v11, v0, :cond_3

    move v0, v13

    goto :goto_3

    :cond_3
    move v0, v12

    :goto_3
    const/4 v1, 0x7

    if-ne v11, v1, :cond_4

    move v1, v13

    goto :goto_4

    :cond_4
    move v1, v12

    :goto_4
    const/16 v2, 0x8

    if-ne v11, v2, :cond_5

    move v2, v13

    goto :goto_5

    :cond_5
    move v2, v12

    :goto_5
    const/16 v5, 0xa

    if-ne v11, v5, :cond_6

    move v8, v13

    goto :goto_6

    :cond_6
    move v8, v12

    :goto_6
    const/16 v5, 0xb

    if-ne v11, v5, :cond_7

    move v5, v13

    goto :goto_7

    :cond_7
    move v5, v12

    :goto_7
    if-nez v5, :cond_a

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v9, :cond_9

    array-length v6, v9

    if-lez v6, :cond_9

    aget v6, v9, v12

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_9

    goto :goto_8

    :cond_9
    move v6, v12

    goto :goto_9

    :cond_a
    :goto_8
    move v6, v13

    :goto_9
    const/4 v15, 0x0

    if-eqz v1, :cond_c

    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v15

    goto :goto_a

    :cond_b
    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    :goto_a
    invoke-virtual {v10, v6, v0, v11}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;I)V

    goto :goto_c

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v10, v11, v13, v15}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    goto :goto_c

    :cond_d
    if-nez v2, :cond_f

    if-eqz v5, :cond_e

    goto :goto_b

    :cond_e
    new-instance v7, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v12, v7

    move v7, v14

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/DozeTriggers;IZZFFZZ[F)V

    invoke-virtual {v10, v12, v13, v11}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    goto :goto_c

    :cond_f
    :goto_b
    if-eqz v6, :cond_10

    invoke-virtual {v10, v11, v13, v15}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    :cond_10
    :goto_c
    if-eqz v14, :cond_13

    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v10, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    sub-long/2addr v0, v2

    const-string v2, "doze.pickup.vibration.threshold"

    const v3, 0x7f0b004a

    iget-object v4, v10, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    move v12, v13

    goto :goto_d

    :cond_11
    const/4 v12, 0x0

    :goto_d
    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v1, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/doze/DozeLogger$logPickupWakeup$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPickupWakeup$2;

    const-string v4, "DozeLog"

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v4, v2, v3, v15}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v12, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz v12, :cond_12

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    goto :goto_e

    :cond_12
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    :goto_e
    iget v1, v0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    :cond_13
    return-void
.end method

.method public final onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logWakeDisplay$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logWakeDisplay$2;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "DozeLog"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput p3, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    sput-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;I)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->DOZING_UPDATE_WAKE_TIMEOUT:Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isNear()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance p2, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;

    move-object v0, p2

    move-object v1, p0

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mProxCheck:Lcom/android/systemui/util/sensors/ProximityCheck;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/systemui/util/sensors/ProximityCheck;->check(JLjava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string p1, "DozeTriggers"

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final registerCallbacks$4()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-boolean v1, v0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.doze.pulse"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeTriggers$2;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

    invoke-interface {v1, v0}, Lcom/android/systemui/util/IListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V
    .locals 8

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->extendPulse(I)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v5, v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v1, :cond_5

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    if-nez v2, :cond_5

    invoke-static {v5, p2}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move v6, p2

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;Lcom/android/systemui/doze/DozeMachine$State;ZI)V

    iget-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f05005b

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    const-string v2, "doze.pulse.proxcheck"

    invoke-static {v2, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-nez v1, :cond_6

    const-string p1, "requestPulse - !mAllowPulseTriggers"

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    if-eqz p1, :cond_7

    const-string p1, "requestPulse - pulsePending"

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-static {v5, p2}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "requestPulse - dozeState cannot pulse"

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_8
    :goto_4
    invoke-static {p3}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    return-void
.end method

.method public final setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeTriggers;->registerCallbacks$4()V

    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeTriggers$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-boolean p2, p1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p2, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeTriggers$2;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

    invoke-interface {p2, p1}, Lcom/android/systemui/util/IListenerSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    iget-boolean p1, v1, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    if-nez p1, :cond_2

    iget-boolean p1, v1, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    if-nez p1, :cond_2

    iget-boolean p1, v1, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v2, v1, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    iput-boolean v2, v1, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    iput-boolean v2, v1, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProxSensor:Z

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mInAod:Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    goto :goto_2

    :pswitch_2
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProxSensor:Z

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    goto :goto_2

    :pswitch_3
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProxSensor:Z

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    goto :goto_2

    :pswitch_4
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProxSensor:Z

    goto :goto_2

    :pswitch_5
    iput-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProxSensor:Z

    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mInAod:Z

    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    if-nez p1, :cond_3

    const/4 p1, 0x7

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;I)V

    goto :goto_2

    :pswitch_6
    iput-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProxSensor:Z

    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mInAod:Z

    goto :goto_2

    :pswitch_7
    iput-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    sput-boolean v3, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeTriggers;->registerCallbacks$4()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mInAod:Z

    iget-boolean v0, v1, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    if-ne v0, p1, :cond_4

    iget-boolean v0, v1, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    if-ne v0, p2, :cond_4

    iget-boolean v0, v1, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    if-ne v0, p0, :cond_4

    goto :goto_3

    :cond_4
    iput-boolean p1, v1, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    iput-boolean p2, v1, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    iput-boolean p0, v1, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
